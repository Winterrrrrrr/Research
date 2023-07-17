//****************************************Copyright (c)***********************************//
//原子哥在线教学平台：www.yuanzige.com
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取ZYNQ & FPGA & STM32 & LINUX资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved	                               
//----------------------------------------------------------------------------------------
// File name:           lcd
// Last modified Date:  2019/05/28 11:12:36
// Last Version:        V1.1
// Descriptions:        RGB LCD顶层模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2019/05/28 11:12:36
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
// Modified by:		    正点原子
// Modified date:	    2019/05/28 11:12:36
// Version:			    V1.1
// Descriptions:	    RGB LCD顶层模块
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module  lcd_rgb_char(
    input              sys_clk     ,
    input              sys_rst_n   ,
	
	input      [19:0]  data ,  
	//RGB LCD接口 
    output             lcd_hs  ,       //LCD 行同步信号
    output             lcd_vs  ,       //LCD 场同步信号
    output             lcd_de  ,       //LCD 数据输入使能
    inout      [23:0]  lcd_rgb ,       //LCD RGB565颜色数据
    output             lcd_bl  ,       //LCD 背光控制信号
    output             lcd_clk        //LCD 采样时钟
);

//wire define
wire  [10:0]  pixel_xpos_w ;
wire  [10:0]  pixel_ypos_w ;
wire  [23:0]  pixel_data_w ;
wire  [15:0]  lcd_id  ;
wire  [23:0]  lcd_rgb_o ;
wire          lcd_pclk ;

//*****************************************************
//**                    main code
//*****************************************************

//RGB565数据输出
assign lcd_rgb = lcd_de ? lcd_rgb_o : {24{1'bz}};

//读rgb lcd ID 模块
rd_id    u_rd_id(
    .clk          (sys_clk),
    .rst_n        (sys_rst_n),
    
    .lcd_rgb      (lcd_rgb),
    .lcd_id       (lcd_id)
);

//分频模块，根据不同的LCD ID输出相应的频率的驱动时钟
clk_div  u_clk_div(
    .clk          (sys_clk),
    .rst_n        (sys_rst_n),
    
    .lcd_id       (lcd_id),
    .lcd_pclk     (lcd_pclk)
);

lcd_display  u_lcd_display(          //lcd显示模块
    .lcd_pclk       (lcd_pclk),
    .sys_rst_n      (sys_rst_n),
	.data           (data),
    .pixel_xpos     (pixel_xpos_w),
    .pixel_ypos     (pixel_ypos_w),
    .pixel_data     (pixel_data_w)
);   
	
//lcd驱动模块    
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
