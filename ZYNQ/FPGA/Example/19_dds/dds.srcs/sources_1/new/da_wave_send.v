//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           da_wave_send
// Last modified Date:  2021/08/28 09:46:19
// Last Version:        V1.0
// Descriptions:        ͨ��wave_select��fre_select�����Ĵ�����ֵ���л����ı��ROM�ﲨ�����ݵĵ�ַ���ٶ�
//------------------------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2021/08/28 09:46:19
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

 module da_wave_send(
     input                 rst_n  ,      //��λ�źţ��͵�ƽ��Ч
     input                 clk,          
     input  key0_value           ,       //������İ���ֵ
     input  key0_flag            ,       //������İ���ֵ����Ч��־
     input  key1_value           ,       //������İ���ֵ
     input  key1_flag            ,       //������İ���ֵ����Ч��־
                                         
     input         [7:0]    rd_data,     //ROM����������
     output  reg  [8:0]    rd_addr,      //��ROM��ַ
     //DAоƬ�ӿ�                        
     output                da_clk ,      //DA(AD9708)����ʱ��,���֧��125Mhzʱ��
     output       [7:0]    da_data       //�����DA������  
     );
 
 //parameter
 //���ε��ڿ���
 parameter  sine_wave_addr     = 9'd0;   // ���Ҳ���ʼλ�� 
 parameter  square_wave_addr   = 9'd100; // ������ʼλ��  
 parameter  triangle_wave_addr = 9'd200; // ���ǲ���ʼλ��
 parameter  sawtooth_wave_addr = 9'd300; // ��ݲ���ʼλ�� 
 
 //Ƶ�ʵ��ڿ��ƣ�FREQ_ADJ��Խ��,���������Ƶ��Խ��,��Χ0~255
 parameter  FREQ_ADJ0 = 8'd0;            //����0��Ӧ���1Mhz����Ƶ��
 parameter  FREQ_ADJ1 = 8'd1;            //����1��Ӧ���500khz����Ƶ��
 parameter  FREQ_ADJ2 = 8'd3;            //����3��Ӧ���250khz����Ƶ��
 parameter  FREQ_ADJ3 = 8'd7;            //����7��Ӧ���125khz����Ƶ��
                                         
 //reg define                            
 reg    [7:0]     freq_adj    ;          //Ƶ�ʵ��ڲ����Ĵ���
 reg    [7:0]     freq_cnt    ;          //Ƶ�ʵ��ڼ�����
 reg    [1:0]     wave_select ;          //�л����ε�ַ�Ĵ���
 reg    [1:0]     freq_select ;          //�л�����Ƶ�ʼĴ���
 
 //*****************************************************
 //**                    main code
 //*****************************************************
 
 //����rd_data����clk_100M�������ظ��µģ�
 //����DAоƬ��clk_100M���½��������������ȶ���ʱ�̡�
 //��DAʵ������da_clk����������������,����ʱ��ȡ��,
 //���� clk_100M ���½����൱�� da_clk �������ء�           
 assign  da_clk =~clk;       
 assign  da_data = rd_data;  //��������ROM���ݸ�ֵ��DA���ݶ˿�
    
 //�л���������
 always @(posedge clk  or negedge rst_n) begin
     if(rst_n == 1'b0)
         wave_select <= 2'd0;
     else if((key0_flag == 1) && (key0_value == 0)) begin //ȷ������key0ȷʵ����Ч����
            if(wave_select < 2'd3)
                wave_select <= wave_select+1'd1;
            else  
                wave_select <= 0;
           end
          else 
              wave_select <= wave_select;
 end
 
 //�л�����Ƶ��
 always @(posedge clk or negedge rst_n) begin
     if(rst_n == 1'b0)
         freq_select <= 2'd0;
     else if((key1_flag ==1) && (key1_value ==0)) begin //ȷ������key1ȷʵ����Ч����
            if(freq_select < 2'd3)
               freq_select <= freq_select+1'd1;
            else  
                freq_select <= 0;
           end
          else 
              freq_select <= freq_select;
 end
 always @(posedge clk or negedge rst_n) begin
     if(rst_n == 1'b0)
       freq_adj <= 8'd0;
     else case(freq_select)
              2'd0:freq_adj <= FREQ_ADJ0;
              2'd1:freq_adj <= FREQ_ADJ1;   
              2'd2:freq_adj <= FREQ_ADJ2;
              2'd3:freq_adj <= FREQ_ADJ3;
             default:freq_adj <= FREQ_ADJ0;
          endcase
 end
 
 //Ƶ�ʵ��ڼ�����
 always @(posedge clk or negedge rst_n) begin
     if(rst_n == 1'b0)
         freq_cnt <= 8'd0;
     else if(freq_cnt == freq_adj)    
         freq_cnt <= 8'd0;
     else         
         freq_cnt <= freq_cnt + 8'd1;
 end
 
 //��ROM��ַ,����100M��Ƶ��ȥ��
 always @(posedge clk or negedge rst_n) begin
     if(rst_n == 1'b0)
        rd_addr <= 9'd0;
     else if(freq_cnt == freq_adj) begin
         case(wave_select)
             2'd0:
                 if(rd_addr >= sine_wave_addr && rd_addr <= sine_wave_addr+9'd99)    
                   if(rd_addr == sine_wave_addr+9'd99)  
                      rd_addr <= sine_wave_addr;
                   else 
                       rd_addr <= rd_addr+9'd1; 
                 else 
                     rd_addr <= sine_wave_addr;                          
             2'd1:
                 if(rd_addr >=  square_wave_addr && rd_addr <= square_wave_addr+9'd99)   
                   if(rd_addr == square_wave_addr+9'd99) 
                       rd_addr <= square_wave_addr;
                   else  
                       rd_addr <= rd_addr+9'd1;
                 else 
                     rd_addr <= square_wave_addr; 
             2'd2:
                 if(rd_addr >= triangle_wave_addr && rd_addr <= triangle_wave_addr+9'd99) 
                   if(rd_addr == triangle_wave_addr+9'd99) 
                       rd_addr <= triangle_wave_addr; 
                   else 
                       rd_addr <= rd_addr+9'd1;  
                 else  
                     rd_addr <= triangle_wave_addr;                    
             2'd3:
                 if(rd_addr >= sawtooth_wave_addr && rd_addr <= sawtooth_wave_addr+9'd99)   
                   if(rd_addr == sawtooth_wave_addr+9'd99)
                       rd_addr <= sawtooth_wave_addr;
                   else 
                       rd_addr <= rd_addr+9'd1;    
                 else  
                     rd_addr <= sawtooth_wave_addr;   
             default:
                 if(rd_addr >= sine_wave_addr && rd_addr <= sine_wave_addr+9'd99)    
                    if(rd_addr == sine_wave_addr+9'd99)  
                        rd_addr <= sine_wave_addr;
                    else 
                        rd_addr <= rd_addr+9'd1; 
                 else 
                     rd_addr <= sine_wave_addr;            
         endcase
     end
          else  rd_addr <= rd_addr;             
 end
 endmodule
