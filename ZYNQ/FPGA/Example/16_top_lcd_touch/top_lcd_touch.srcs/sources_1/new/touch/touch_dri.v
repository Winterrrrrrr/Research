//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2022-2032
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           touch_dri
// Last modified Date:  2018/08/20 13:20:51
// Last Version:        V1.0
// Descriptions:        LCD��������
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2022/04/22 14:38:00
// Version:             V1.1
// Descriptions:        �Ż�����
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module touch_dri #(parameter   WIDTH = 4'd8) //һ�ζ�д�Ĵ����ĸ�����λ��
(
    input                   clk          , //ʱ���ź�
    input                   rst_n        , //��λ�źţ�����Ч��
    //I2C�û��˿�                        
    output  reg [6:0]       slave_addr   , //i2c������ַ
    output  reg             i2c_exec     , //i2c��������
    output  reg             i2c_rh_wl    , //i2c��д����
    output  reg [15:0]      i2c_addr     , //i2c������ַ
    output  reg [7:0]       i2c_data_w   , //i2cд�������
    output  reg             bit_ctrl     , //�ֵ�ַλ����(0:8b,1:16b)
    output  reg [WIDTH-1:0] reg_num      , //һ�ζ�д�Ĵ����ĸ���
                                         
    input       [7:0]       i2c_data_r   , //i2c����������
    input                   i2c_ack      , //i2cӦ���ź�
    input                   i2c_done     , //i2c����������־
    input                   once_done    , //һ�ζ�д�������    
                                          
    //LCD��ض˿�                         
    input       [15:0]      lcd_id       , //LCD ID
    output  reg             touch_valid  , //������־
    output  reg [15:0]      tp_x_coord   , //X�������������
    output  reg [15:0]      tp_y_coord   , //Y�������������                           
    output  reg             touch_rst_n  , //��������λ
    input                   touch_int_in , //INT�����ź�
    output  reg             touch_int_dir, //INT��������ź�
    output  reg             touch_int_out  //INT����ź�
 );

//parameter define
//FTϵ��
localparam FT_SLAVE_ADDR    = 7'h38;     //FTϵ��������ַ
localparam FT_BIT_CTRL      = 1'b0;      //FTϵ��λ����
                                         
localparam FT_ID_LIB_VERSION= 8'hA1;     //�汾
localparam FT_DEVIDE_MODE   = 8'h00;     //ģʽ���ƼĴ���
localparam FT_ID_MODE       = 8'hA4;     //FT�ж�ģʽ���ƼĴ���
localparam FT_ID_THGROUP    = 8'h80;     //������Чֵ���üĴ���
localparam FT_ID_PERIOD_ACT = 8'h88;     //����״̬�������üĴ���
localparam FT_STATE_REG     = 8'h02;     //����״̬�Ĵ���
localparam FT_TP1_REG       = 8'h03;     //��һ�����������ݵ�ַ

//GTϵ��
localparam GT_SLAVE_ADDR    = 7'h14;     //GTϵ��������ַ
localparam GT_BIT_CTRL      = 1'b1;      //GTϵ��λ����
                                         
localparam GT_STATE_REG     = 16'h814E;  //����״̬�Ĵ���
localparam GT_TP1_REG       = 16'h8150;  //��һ�����������ݵ�ַ

localparam st_idle          = 7'b000_0001;//����״̬
localparam st_init          = 7'b000_0010;//�ϵ��ʼ��
localparam st_get_id        = 7'b000_0100;//��ȡ����оƬID
localparam st_cfg_reg       = 7'b000_1000;//���üĴ���
localparam st_check_touch   = 7'b001_0000;//��ⴥ��״̬
localparam st_get_coord     = 7'b010_0000;//��ȡ����������
localparam st_coord_handle  = 7'b100_0000;//��Բ��Գߴ�Ĵ������������ݽ��д���

//reg define                            
reg    [6:0]        cur_state   ;
reg    [6:0]        next_state  ;

reg                 cnt_1us_en  ;  //ʹ�ܼ�ʱ
reg    [19:0]       cnt_1us_cnt ;  //��ʱ������
reg    [15:0]       chip_version;  //оƬ�汾��
reg                 ft_flag     ;  //FTϵ��оƬ�ı�־
reg    [15:0]       touch_s_reg ;  //����״̬�Ĵ���
reg    [15:0]       coord_reg   ;  //����������Ĵ���
reg    [15:0]       tp_x_coord_t;  //X����������ʱ����
reg    [15:0]       tp_y_coord_t;  //Y����������ʱ����
reg    [3:0]        flow_cnt    ;  //���̼�����
reg                 st_done     ;  //��������ź�

//*****************************************************
//**                    main code
//*****************************************************

//��ʱ����
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt_1us_cnt <= 20'd0;
    end
    else if(cnt_1us_en)
        cnt_1us_cnt <= cnt_1us_cnt + 1'b1;
    else
        cnt_1us_cnt <= 20'd0;
end

//״̬��ת
always @ (posedge clk or negedge rst_n) begin
    if(!rst_n)
        cur_state <= st_idle;
    else
        cur_state <= next_state;
end

//����߼�״̬�ж�ת������
always @(*) begin
    case(cur_state)
        st_idle : begin
            if(st_done)
                next_state = st_init;
            else 
                next_state = st_idle;
        end
        st_init : begin
            if(st_done)
                next_state = st_get_id; 
            else
                next_state = st_init;
        end
        st_get_id : begin
            if(st_done) begin
                if(ft_flag)  //��FTϵ����Ҫ���üĴ���
                    next_state = st_cfg_reg;
                else
                    next_state = st_check_touch;
            end
            else
                next_state = st_get_id;
        end       
        st_cfg_reg : begin
            if(st_done)
                next_state = st_check_touch;
            else
                next_state = st_cfg_reg;
        end
        st_check_touch: begin
            if(st_done)
                next_state = st_get_coord;
            else
                next_state = st_check_touch;
        end
        st_get_coord : begin
            if(st_done)
                next_state = st_coord_handle;
            else
                next_state = st_get_coord;
        end
        st_coord_handle : begin
            if(st_done)
                next_state = st_check_touch;
            else
                next_state = st_coord_handle;        
        end
        default: next_state = st_idle;
    endcase
end

always @ (posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt_1us_en   <= 1'b0;
        chip_version <= 1'b0;
        ft_flag      <= 1'b0;
        touch_s_reg  <= 1'b0;
        coord_reg    <= 1'b0;
        tp_x_coord_t <= 1'b0;
        tp_y_coord_t <= 1'b0;
        flow_cnt     <= 1'b0;
        st_done      <= 1'b0;
        touch_int_dir<= 1'b0;
        touch_int_out<= 1'b0;
        
        slave_addr   <= 1'b0;
        i2c_exec     <= 1'b0;
        i2c_rh_wl    <= 1'b0;
        i2c_addr     <= 1'b0;
        i2c_data_w   <= 1'b0;
        bit_ctrl     <= 1'b0;
        reg_num      <= 1'b0;
        
        touch_valid  <= 1'b0;
        tp_x_coord   <= 1'b0;
        tp_y_coord   <= 1'b0;
        touch_rst_n  <= 1'b0;
    end
    else begin
        i2c_exec <= 1'b0;
        st_done <= 1'b0;
        case(next_state)
            st_idle : begin
                cnt_1us_en <= 1'b1;
                touch_int_dir <= 1'b1;               //TOUCH INT�˿ڷ�������Ϊ���
                touch_int_out <= 1'b1;               //TOUCH INT�˿�����ߵ�ƽ
                if(cnt_1us_cnt >= 10) begin
                    st_done <= 1'b1;
                    cnt_1us_en <= 1'b0;
                end
            end
            st_init : begin
                cnt_1us_en <= 1'b1;
                if(cnt_1us_cnt < 10_000)             //��ʱ10ms
                    touch_rst_n <= 1'b0;             //��ʼ��λ
                else if(cnt_1us_cnt == 10_000)
                    touch_rst_n <= 1'b1;             //������λ
                else if(cnt_1us_cnt == 60_000) begin //�ٴ���ʱ50ms(60_000-10_000)
                    touch_int_dir <= 1'b0;           //��INT��������Ϊ��������
                    cnt_1us_en <= 1'b0;
                    st_done <= 1'b1;
                    flow_cnt <= 'd0;                 
                end    
            end
            st_get_id : begin
                case(flow_cnt)
                    'd0 : begin
                        //�⼸����Ļ��GTϵ��
                        if(lcd_id == 16'h4384 || lcd_id == 16'h4342 || 
                        lcd_id == 16'h1018) begin 
                            flow_cnt <= 'd5;
                            ft_flag  <= 1'b0;        //ft_flag=0,˵������оƬΪGTϵ�� 
                        end    
                        else
                            flow_cnt <= flow_cnt + 1'b1;
                    end
                    'd1 : begin  //��FTϵ�а汾��
                        i2c_exec <= 1'b1;
                        i2c_rh_wl <= 1'b1;
                        i2c_addr <= FT_ID_LIB_VERSION;
                        reg_num <= 'd2;
                        slave_addr <= FT_SLAVE_ADDR;
                        bit_ctrl <= FT_BIT_CTRL;
                        flow_cnt <= flow_cnt + 1'b1;
                    end
                    'd2 : begin
                        if(once_done) begin
                            chip_version[15:8] <= i2c_data_r;
                            flow_cnt <= flow_cnt + 1'b1;
                        end    
                        else if(i2c_done && i2c_ack) begin  //δӦ��,˵����GTϵ��
                            chip_version = "GT";
                            flow_cnt <= 'd4;
                        end
                    end
                    'd3 : begin
                        if(i2c_done) begin
                            chip_version[7:0] <= i2c_data_r;
                            flow_cnt <= flow_cnt + 1'b1;
                        end
                    end
                    'd4 : begin
                        flow_cnt <= flow_cnt + 1'b1;
                        //FTϵ�а汾:0X3003/0X0001/0X0002/CST340
                        if(chip_version == 16'h3003 || chip_version == 16'h0001  
                        || chip_version == 16'h0002 || chip_version == 16'h0000)
                            ft_flag <= 1'b1;         //ft_flag=1,˵������оƬΪFTϵ�� 
                        else 
                            ft_flag <= 1'b0;         //ft_flag=0,˵������оƬΪGTϵ�� 
                    end
                    'd5 : begin
                        st_done <= 1'b1;
                        flow_cnt <= 'd0;
                        if(ft_flag) begin            //����������ΪFTϵ��
                            touch_s_reg <= FT_STATE_REG;
                            coord_reg <= FT_TP1_REG;
                            bit_ctrl <= FT_BIT_CTRL;
                            slave_addr <= FT_SLAVE_ADDR;   
                        end
                        else begin                   //����������ΪGTϵ��
                            touch_s_reg <= GT_STATE_REG;
                            coord_reg <= GT_TP1_REG;
                            bit_ctrl <= GT_BIT_CTRL;
                            slave_addr <= GT_SLAVE_ADDR;   
                        end                        
                    end
                    default :;
                endcase    
            end
            st_cfg_reg : begin
                case(flow_cnt)
                    //����FTϵ��
                    'd0 : begin
                        i2c_exec <= 1'b1;
                        i2c_rh_wl <= 1'b0;
                        i2c_addr <= FT_DEVIDE_MODE;        
                        i2c_data_w <= 8'd0;          //��������ģʽ               
                        reg_num <= 'd1;
                        flow_cnt <= flow_cnt + 1'b1;  
                    end                          
                    'd1 : begin
                        if(i2c_done) begin
                            if(i2c_ack == 1'b0)      //I2CӦ��
                                flow_cnt <= flow_cnt + 1'b1;
                            else                     //I2CδӦ��
                                flow_cnt <= flow_cnt - 1'b1;
                        end        
                    end
                    'd2 : begin
                        i2c_exec <= 1'b1;
                        i2c_rh_wl <= 1'b0;
                        i2c_addr <= FT_ID_MODE;          
                        i2c_data_w <= 8'd0;          //��ѯģʽ         
                        reg_num <= 'd1;
                        flow_cnt <= flow_cnt + 1'b1;     
                    end                           
                    'd3 : begin
                        if(i2c_done) begin
                            if(i2c_ack == 1'b0)      //I2CӦ��
                                flow_cnt <= flow_cnt + 1'b1;
                            else                     //I2CδӦ��
                                flow_cnt <= flow_cnt - 1'b1;
                        end        
                    end
                    'd4 : begin
                        i2c_exec <= 1'b1;
                        i2c_rh_wl <= 1'b0;
                        i2c_addr <= FT_ID_THGROUP;       
                        i2c_data_w <= 8'd22;         //���ô�����Чֵ,ֵԽС,Խ����          
                        reg_num <= 'd1;
                        flow_cnt <= flow_cnt + 1'b1;    
                    end                        
                    'd5 : begin
                        if(i2c_done) begin
                            if(i2c_ack == 1'b0)      //I2CӦ��
                                flow_cnt <= flow_cnt + 1'b1;
                            else                     //I2CδӦ��
                                flow_cnt <= flow_cnt - 1'b1;
                        end        
                    end      
                    'd6 : begin
                        i2c_exec <= 1'b1;
                        i2c_rh_wl <= 1'b0;
                        i2c_addr <= FT_ID_PERIOD_ACT;       
                        i2c_data_w <= 8'd12;         //��������,12~14          
                        reg_num <= 'd1;
                        flow_cnt <= flow_cnt + 1'b1;  
                    end                          
                    'd7 : begin
                        if(i2c_done) begin
                            if(i2c_ack == 1'b0) begin//I2CӦ��
                                flow_cnt <= 'd0;
                                st_done <= 1'b1;
                            end    
                            else                     //I2CδӦ��
                                flow_cnt <= flow_cnt - 1'b1;
                        end
                    end
                    default : ;
                endcase                       
            end
            st_check_touch : begin
                case(flow_cnt)
                    'd0: begin  //��ʱ
                        cnt_1us_en <= 1'b1;
                        if(cnt_1us_cnt == 20_000) begin
                            flow_cnt <= flow_cnt + 1'b1;
                            cnt_1us_en <= 1'b0;
                        end    
                    end        
                    'd1 : begin
                        i2c_exec <= 1'b1;
                        i2c_rh_wl <= 1'b1;
                        i2c_addr <= touch_s_reg;     //��ȡ������״̬   
                        reg_num <= 'd1;
                        flow_cnt <= flow_cnt + 1'b1;
                    end
                    'd2 : begin
                        if(i2c_done) begin
                            if(i2c_ack == 1'b0)
                                flow_cnt <= flow_cnt + 1'b1;
                            else
                                flow_cnt <= flow_cnt - 1'b1;                                    
                        end
                    end
                    'd3 : begin
                        flow_cnt <= flow_cnt + 1'b1;
                        if(ft_flag) begin
                            if(i2c_data_r[3:0] > 4'd0 && i2c_data_r[3:0] <= 4'd5)
                                touch_valid <= 1'b1; //��⵽���� 
                            else
                                touch_valid <= 1'b0; //δ��⵽����
                        end
                        else begin
                            if(i2c_data_r[7]== 1'b1 && i2c_data_r[3:0] > 4'd0 
                            && i2c_data_r[3:0] <= 4'd5) begin      
                                touch_valid <= 1'b1; //��⵽���� 
                            end
                            else 
                                touch_valid <= 1'b0; //δ��⵽����
                        end
                    end
                    'd4 : begin
                        i2c_exec <= 1'b1;
                        i2c_rh_wl <= 1'b0;
                        i2c_addr <= touch_s_reg;
                        i2c_data_w <= 8'd0;          //���������־
                        reg_num <= 'd1;
                        flow_cnt <= flow_cnt + 1'b1;
                    end
                    'd5 : begin
                        if(i2c_done) begin
                            if(i2c_ack == 1'b0) begin
                                st_done <= touch_valid;
                                flow_cnt <= 1'b0;
                            end
                            else
                                flow_cnt <= flow_cnt - 1'b1;                                    
                        end                            
                    end
                    default : ;
                endcase    
            end
            st_get_coord : begin
                case(flow_cnt)   
                    'd0 : begin
                        i2c_exec <= 1'b1;
                        i2c_rh_wl <= 1'b1;
                        i2c_addr <= coord_reg;       //��ȡX��Y���������
                        reg_num <= 'd4;              //�������ĸ��Ĵ���
                        flow_cnt <= flow_cnt + 1'b1;
                    end
                    'd1 : begin
                        if(once_done) begin
                            if(i2c_ack == 1'b0) begin
                                tp_x_coord_t[7:0] <= i2c_data_r;
                                flow_cnt <= flow_cnt + 1'b1;
                            end    
                            else
                                flow_cnt <= 1'b0;                                    
                        end
                    end
                    'd2 : begin
                        if(once_done) begin
                            flow_cnt <= flow_cnt + 1'b1;
                            tp_x_coord_t[15:8] <= i2c_data_r;   
                        end                            
                    end
                    'd3 : begin
                        if(once_done) begin
                            flow_cnt <= flow_cnt + 1'b1;
                            tp_y_coord_t[7:0] <= i2c_data_r;    
                        end                            
                    end    
                    'd4 : begin
                        if(once_done) begin
                            st_done  <= 1'b1;
                            flow_cnt <= 'd0;
                            tp_y_coord_t[15:8] <= i2c_data_r;  
                        end                            
                    end
                    default:;
                endcase    
            end
            st_coord_handle : begin
                st_done <= 1'b1;
                if(ft_flag) begin                    //FTϵ���������������
                    tp_x_coord <= {4'd0,tp_y_coord_t[3:0],tp_y_coord_t[15:8]};
                    tp_y_coord <= {4'd0,tp_x_coord_t[3:0],tp_x_coord_t[15:8]};
                end
                else begin
                    tp_x_coord <= tp_x_coord_t;
                    tp_y_coord <= tp_y_coord_t;                        
                end
            end
            default : ;
        endcase
    end
end

endmodule 