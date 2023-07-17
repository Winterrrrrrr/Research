//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2022-2032
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           touch_top
// Last modified Date:  2018/08/20 13:20:51
// Last Version:        V1.0
// Descriptions:        LCD��������ģ��
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2022/04/22 14:38:00
// Version:             V1.1
// Descriptions:        �Ż�����
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module touch_top(
    input             clk          ,
    input             rst_n        ,
    //LCD��������ź�              
    output            touch_rst_n  , //��������λ
    input             touch_int_in , //INT�����ź�
    output            touch_int_dir, //INT��������ź�
    output            touch_int_out, //INT����ź�    
    output            touch_scl    , //I2C��SCLʱ���ź�
    input             touch_sda_in , //I2C��SDA�����ź�
    output            touch_sda_out, //I2C��SDA����ź�
    output            touch_sda_dir, //I2C��SDA�������   
    //�û��˿�
    input     [15:0]  lcd_id       , //LCD ID
    output            touch_valid  , //������־
    output    [15:0]  tp_x_coord   , //X�������������
    output    [15:0]  tp_y_coord     //Y�������������          
);

//parameter define
parameter CLK_FREQ = 50_000_000   ;  //i2c_driģ�������ʱ��Ƶ��(CLK_FREQ)
parameter I2C_FREQ = 250_000      ;  //I2C��SCLʱ��Ƶ��
parameter REG_NUM_WID = 8         ;  //һ�ζ�д�Ĵ����ĸ�����λ��
                                     
//wire define                        
wire  [6:0]             slave_addr;  //������ַ
wire                    i2c_exec  ;  //I2C����ִ���ź�
wire                    i2c_rh_wl ;  //I2C��д�����ź�
wire  [15:0]            i2c_addr  ;  //I2C�����ڵ�ַ
wire  [7:0]             i2c_data_w;  //I2CҪд������
wire                    bit_ctrl  ;  //�ֵ�ַλ����(0:8b,1:16b)
wire  [REG_NUM_WID-1:0] reg_num   ;  //һ�ζ�д�Ĵ����ĸ���  
wire  [7:0]             i2c_data_r;  //I2C����������
wire                    i2c_done  ;  //I2C�������
wire                    once_done ;  //һ�ζ�д�������
wire                    i2c_ack   ;  //Ӧ���־
wire                    dri_clk   ;  //I2C����ʱ��

//*****************************************************
//**                    main code
//*****************************************************

//I2C����ģ��
i2c_dri_m  #(
    .CLK_FREQ      (CLK_FREQ),       //i2c_driģ�������ʱ��Ƶ��(CLK_FREQ)
    .I2C_FREQ      (I2C_FREQ),       //I2C��SCLʱ��Ƶ��
    .WIDTH         (REG_NUM_WID)     //һ�ζ�д�Ĵ����ĸ�����λ��
    )                             
    u_i2c_dri_m(   
    .clk           (clk          ),  //i2c_driģ�������ʱ��(CLK_FREQ)
    .rst_n         (rst_n        ),  //��λ�ź�
                                 
    .slave_addr    (slave_addr   ),  //������ַ
    .i2c_exec      (i2c_exec     ),  //I2C����ִ���ź�
    .i2c_rh_wl     (i2c_rh_wl    ),  //I2C��д�����ź�
    .i2c_addr      (i2c_addr     ),  //I2C�����ڵ�ַ
    .i2c_data_w    (i2c_data_w   ),  //I2CҪд������
    .bit_ctrl      (bit_ctrl     ),  //�ֵ�ַλ����(16b/8b)
    .reg_num       (reg_num      ),  //һ�ζ�д�Ĵ����ĸ���          
    .i2c_data_r    (i2c_data_r   ),  //I2C����������
    .i2c_done      (i2c_done     ),  //I2C�������
    .once_done     (once_done    ),  //һ�ζ�д�������
    .scl           (touch_scl    ),  //I2C��SCLʱ���ź�
    .sda_in        (touch_sda_in ),  //I2C��SDA�����ź�
    .sda_out       (touch_sda_out),  //I2C��SDA����ź�
    .sda_dir       (touch_sda_dir),  //I2C��SDA�������   
    .ack           (i2c_ack      ),  //Ӧ���־
                                 
    .dri_clk       (dri_clk      )   //����I2C����������ʱ��
    );

//��������ģ��    
touch_dri  #(
    .WIDTH   (REG_NUM_WID)  //һ�ζ�д�Ĵ����ĸ�����λ��     
     )
    u_touch_dri(
    .clk           (dri_clk       ),  //ʱ���ź�
    .rst_n         (rst_n         ),  //��λ�źţ�����Ч��
                                  
    .slave_addr    (slave_addr    ),  //i2c������ַ
    .i2c_exec      (i2c_exec      ),  //i2c��������
    .i2c_rh_wl     (i2c_rh_wl     ),  //i2c��д����
    .i2c_addr      (i2c_addr      ),  //i2c������ַ
    .i2c_data_w    (i2c_data_w    ),  //i2cд�������
    .bit_ctrl      (bit_ctrl      ),  //λ�����ź� 
    .reg_num       (reg_num       ),  //һ�ζ�д�Ĵ����ĸ���
                                  
    .i2c_data_r    (i2c_data_r    ),  //i2c����������
    .i2c_ack       (i2c_ack       ),  //i2cӦ���ź�
    .i2c_done      (i2c_done      ),  //i2c����������־
    .once_done     (once_done     ),  //һ�ζ�д�������    
     
    .lcd_id        (lcd_id        ),  //LCD ID
    .touch_valid   (touch_valid   ),  //������־
    .tp_x_coord    (tp_x_coord    ),  //X�������������
    .tp_y_coord    (tp_y_coord    ),  //Y�������������   
    .touch_rst_n   (touch_rst_n   ),  //��������λ
    .touch_int_in  (touch_int_in  ),  //INT�����ź�
    .touch_int_dir (touch_int_dir ),  //INT��������ź�
    .touch_int_out (touch_int_out )   //INT����ź�
    );

endmodule
