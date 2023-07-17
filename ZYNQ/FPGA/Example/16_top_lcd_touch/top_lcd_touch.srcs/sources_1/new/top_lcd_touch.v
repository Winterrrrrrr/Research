//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2022-2032
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           top_lcd_touch
// Last modified Date:  2018/08/20 13:20:51
// Last Version:        V1.0
// Descriptions:        LCD������ʵ�鶥��ģ��
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2022/04/22 14:38:00
// Version:             V1.1
// Descriptions:        �Ż�����
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module top_lcd_touch(
    //ʱ�Ӻ͸�λ�ӿ�
    input            sys_clk,    //����ʱ��
    input            sys_rst_n,  //������λ
    //TOUCH �ӿ�                 
    inout            touch_sda,  //TOUCH IIC����
    output           touch_scl,  //TOUCH IICʱ��
    inout            touch_int,  //TOUCH INT�ź�
    output           touch_rst_n,//TOUCH ��λ�ź�
    //RGB LCD�ӿ�
    output           lcd_de,     //LCD ����ʹ���ź�
    output           lcd_hs,     //LCD ��ͬ���ź�
    output           lcd_vs,     //LCD ��ͬ���ź�
    output           lcd_bl,     //LCD ��������ź�
    output           lcd_rst_n,  //LCD ��λ
    output           lcd_clk,    //LCD ����ʱ��
    inout    [23:0]  lcd_rgb     //LCD RGB��ɫ����
);

//wire define
wire          clk_50m      ;
wire          locked       ;
wire          rst_n        ;

wire          touch_int_in ;
wire          touch_int_dir;
wire          touch_int_out;
wire          touch_sda_in ;
wire          touch_sda_out;
wire          touch_sda_dir;

wire  [31:0]  data         ;
wire  [15:0]  lcd_id       ;
wire          touch_valid  ;
wire  [15:0]  tp_x_coord   ;
wire  [15:0]  tp_y_coord   ;

//*****************************************************
//**                    main code
//*****************************************************

assign rst_n = sys_rst_n & locked;
assign data = {tp_x_coord,tp_y_coord};
assign lcd_rst_n = 1'b1;
assign touch_sda = touch_sda_dir ? touch_sda_out : 1'bz;
assign touch_sda_in = touch_sda;
assign touch_int = touch_int_dir ? touch_int_out : 1'bz;
assign touch_int_in = touch_int;

clk_wiz_0 u_clk_wiz_0
   (
    // Clock out ports
    .clk_out1     (clk_50m  ),        // output clk_out1
    // Status and control signals
    .reset        (~sys_rst_n),       // input reset
    .locked       (locked    ),       // output locked
   // Clock in ports
    .clk_in1      (sys_clk   )        // input clk_in1
    );     

//������������ģ��    
touch_top  u_touch_top(
    .clk            (clk_50m),
    .rst_n          (rst_n),

    .touch_rst_n    (touch_rst_n  ),
    .touch_int_in   (touch_int_in ),
    .touch_int_dir  (touch_int_dir),
    .touch_int_out  (touch_int_out),
    .touch_scl      (touch_scl    ),
    .touch_sda_in   (touch_sda_in ),
    .touch_sda_out  (touch_sda_out),
    .touch_sda_dir  (touch_sda_dir),

    .lcd_id         (lcd_id     ),
    .touch_valid    (touch_valid),
    .tp_x_coord     (tp_x_coord ),
    .tp_y_coord     (tp_y_coord )
    ); 

//����LCD��ʾģ��
lcd_rgb_char  u_lcd_rgb_char
(
   .sys_clk         (clk_50m),
   .sys_rst_n       (rst_n  ),
   .data            (data   ),     //����������
   //RGB LCD�ӿ� 
   .lcd_id          (lcd_id),
   .lcd_hs          (lcd_hs),       //LCD ��ͬ���ź�
   .lcd_vs          (lcd_vs),       //LCD ��ͬ���ź�
   .lcd_de          (lcd_de),       //LCD ��������ʹ��
   .lcd_rgb         (lcd_rgb),      //LCD RGB��ɫ����
   .lcd_bl          (lcd_bl),       //LCD ��������ź�
   .lcd_clk         (lcd_clk)       //LCD ����ʱ��
);

endmodule 