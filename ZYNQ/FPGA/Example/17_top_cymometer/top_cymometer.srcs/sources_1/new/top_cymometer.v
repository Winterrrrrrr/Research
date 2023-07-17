//****************************************Copyright (c)***********************************//
//原子哥在线教学平台：www.yuanzige.com
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取ZYNQ & FPGA & STM32 & LINUX资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           top_cymometer
// Last modified Date:  2019/05/28 11:12:36
// Last Version:        V1.0
// Descriptions:        等精度频率计模块，测量被测信号频率
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2019/05/28 11:12:36
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module top_cymometer(
    //system clock
    input              sys_clk  ,    // 时钟信号
    input              sys_rst_n,    // 复位信号

    //cymometer interface
    input              clk_fx   ,    // 被测时钟
    output             clk_out  ,    // 输出时钟

	//RGB LCD接口 
	output             lcd_hs  ,     //LCD 行同步信号
	output             lcd_vs  ,     //LCD 场同步信号
	output             lcd_de  ,     //LCD 数据输入使能
	inout      [23:0]  lcd_rgb ,     //LCD RGB565颜色数据
	output             lcd_bl  ,     //LCD 背光控制信号
	output             lcd_clk      //LCD 采样时钟
	
);

//parameter define
parameter    CLK_FS = 26'd50000000;  // 基准时钟频率值

//wire define
wire    [19:0]       data_fx;        // 被测信号测量值

//*****************************************************
//**                    main code
//*****************************************************

//例化等精度频率计模块
cymometer #(.CLK_FS(CLK_FS)              // 基准时钟频率值
) u_cymometer(
    //system clock
    .clk_fs      (sys_clk  ),            // 基准时钟信号
    .rst_n       (sys_rst_n),            // 复位信号
    //cymometer interface
    .clk_fx      (clk_fx   ),            // 被测时钟信号
    .data_fx     (data_fx  )             // 被测时钟频率输出
);
    
//例化测试时钟模块，产生测试时钟
clk_test #(.DIV_N(7'd100)                // 分频系数
) u_clk_test(
    //源时钟
    .clk_in      (sys_clk  ),            // 输入时钟
    .rst_n       (sys_rst_n),            // 复位信号
    //分频后的时钟
    .clk_out     (clk_out  )             // 测试时钟
);

//例化LCD显示模块
lcd_rgb_char  u_lcd_rgb_char
(
   .sys_clk    (sys_clk),
   .sys_rst_n  (sys_rst_n),
   .data       (data_fx),
   //RGB LCD接口 
   .lcd_hs     (lcd_hs),       //LCD 行同步信号
   .lcd_vs     (lcd_vs),       //LCD 场同步信号
   .lcd_de     (lcd_de),       //LCD 数据输入使能
   .lcd_rgb    (lcd_rgb),      //LCD RGB565颜色数据
   .lcd_bl     (lcd_bl),       //LCD 背光控制信号
   .lcd_clk    (lcd_clk)      //LCD 采样时钟
);

endmodule