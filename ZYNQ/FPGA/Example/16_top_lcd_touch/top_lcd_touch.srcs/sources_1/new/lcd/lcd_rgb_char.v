//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com 
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved	                               
//----------------------------------------------------------------------------------------
// File name:           lcd
// Last modified Date:  2019/05/28 11:12:36
// Last Version:        V1.1
// Descriptions:        RGB LCD����ģ��
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2019/05/28 11:12:36
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
// Modified by:		    ����ԭ��
// Modified date:	    2019/05/28 11:12:36
// Version:			    V1.1
// Descriptions:	    RGB LCD����ģ��
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module  lcd_rgb_char(
    input              sys_clk     ,
    input              sys_rst_n   ,
	
	input      [31:0]  data ,  
	//RGB LCD�ӿ� 
    output             lcd_hs  ,       //LCD ��ͬ���ź�
    output             lcd_vs  ,       //LCD ��ͬ���ź�
    output             lcd_de  ,       //LCD ��������ʹ��
    inout      [23:0]  lcd_rgb ,       //LCD RGB��ɫ����
    output             lcd_bl  ,       //LCD ��������ź�
    output             lcd_clk ,       //LCD ����ʱ��
    output     [15:0]  lcd_id
);

//wire define
wire  [10:0]  pixel_xpos_w ;
wire  [10:0]  pixel_ypos_w ;
wire  [23:0]  pixel_data_w ;
wire  [23:0]  lcd_rgb_o    ;
wire          lcd_pclk     ;

//*****************************************************
//**                    main code
//*****************************************************

//RGB565�������
assign lcd_rgb = lcd_de ? lcd_rgb_o : {24{1'bz}};

//��rgb lcd ID ģ��
rd_id    u_rd_id(
    .clk          (sys_clk),
    .rst_n        (sys_rst_n),
    
    .lcd_rgb      (lcd_rgb),
    .lcd_id       (lcd_id)
);

//��Ƶģ�飬���ݲ�ͬ��LCD ID�����Ӧ��Ƶ�ʵ�����ʱ��
clk_div  u_clk_div(
    .clk          (sys_clk),
    .rst_n        (sys_rst_n),
    
    .lcd_id       (lcd_id),
    .lcd_pclk     (lcd_pclk)
);

lcd_display  u_lcd_display(          //lcd��ʾģ��
    .lcd_pclk       (lcd_pclk),
    .sys_rst_n      (sys_rst_n),
	.data           (data),
    .pixel_xpos     (pixel_xpos_w),
    .pixel_ypos     (pixel_ypos_w),
    .pixel_data     (pixel_data_w)
);   
	
//lcd����ģ��    
lcd_driver  u_lcd_driver(
    .lcd_pclk       (lcd_pclk),
    .sys_rst_n      (sys_rst_n),
	
    .lcd_id         (lcd_id),
	
    .lcd_hs         (lcd_hs),
    .lcd_vs         (lcd_vs),
    .lcd_de         (lcd_de),
    .lcd_bl         (lcd_bl),
    .lcd_clk        (lcd_clk),
	.lcd_rgb        (lcd_rgb_o),
    
	.pixel_data     (pixel_data_w),
    .pixel_xpos     (pixel_xpos_w),
    .pixel_ypos     (pixel_ypos_w)
); 

endmodule
