//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           top_cymometer
// Last modified Date:  2019/05/28 11:12:36
// Last Version:        V1.0
// Descriptions:        �Ⱦ���Ƶ�ʼ�ģ�飬���������ź�Ƶ��
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2019/05/28 11:12:36
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module top_cymometer(
    //system clock
    input              sys_clk  ,    // ʱ���ź�
    input              sys_rst_n,    // ��λ�ź�

    //cymometer interface
    input              clk_fx   ,    // ����ʱ��
    output             clk_out  ,    // ���ʱ��

	//RGB LCD�ӿ� 
	output             lcd_hs  ,     //LCD ��ͬ���ź�
	output             lcd_vs  ,     //LCD ��ͬ���ź�
	output             lcd_de  ,     //LCD ��������ʹ��
	inout      [23:0]  lcd_rgb ,     //LCD RGB565��ɫ����
	output             lcd_bl  ,     //LCD ��������ź�
	output             lcd_clk      //LCD ����ʱ��
	
);

//parameter define
parameter    CLK_FS = 26'd50000000;  // ��׼ʱ��Ƶ��ֵ

//wire define
wire    [19:0]       data_fx;        // �����źŲ���ֵ

//*****************************************************
//**                    main code
//*****************************************************

//�����Ⱦ���Ƶ�ʼ�ģ��
cymometer #(.CLK_FS(CLK_FS)              // ��׼ʱ��Ƶ��ֵ
) u_cymometer(
    //system clock
    .clk_fs      (sys_clk  ),            // ��׼ʱ���ź�
    .rst_n       (sys_rst_n),            // ��λ�ź�
    //cymometer interface
    .clk_fx      (clk_fx   ),            // ����ʱ���ź�
    .data_fx     (data_fx  )             // ����ʱ��Ƶ�����
);
    
//��������ʱ��ģ�飬��������ʱ��
clk_test #(.DIV_N(7'd100)                // ��Ƶϵ��
) u_clk_test(
    //Դʱ��
    .clk_in      (sys_clk  ),            // ����ʱ��
    .rst_n       (sys_rst_n),            // ��λ�ź�
    //��Ƶ���ʱ��
    .clk_out     (clk_out  )             // ����ʱ��
);

//����LCD��ʾģ��
lcd_rgb_char  u_lcd_rgb_char
(
   .sys_clk    (sys_clk),
   .sys_rst_n  (sys_rst_n),
   .data       (data_fx),
   //RGB LCD�ӿ� 
   .lcd_hs     (lcd_hs),       //LCD ��ͬ���ź�
   .lcd_vs     (lcd_vs),       //LCD ��ͬ���ź�
   .lcd_de     (lcd_de),       //LCD ��������ʹ��
   .lcd_rgb    (lcd_rgb),      //LCD RGB565��ɫ����
   .lcd_bl     (lcd_bl),       //LCD ��������ź�
   .lcd_clk    (lcd_clk)      //LCD ����ʱ��
);

endmodule