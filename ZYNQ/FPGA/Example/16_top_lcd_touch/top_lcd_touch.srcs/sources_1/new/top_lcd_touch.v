//****************************************Copyright (c)***********************************//
//原子哥在线教学平台：www.yuanzige.com
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取ZYNQ & FPGA & STM32 & LINUX资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2022-2032
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           top_lcd_touch
// Last modified Date:  2018/08/20 13:20:51
// Last Version:        V1.0
// Descriptions:        LCD触摸屏实验顶层模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2022/04/22 14:38:00
// Version:             V1.1
// Descriptions:        优化代码
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module top_lcd_touch(
    //时钟和复位接口
    input            sys_clk,    //晶振时钟
    input            sys_rst_n,  //按键复位
    //TOUCH 接口                 
    inout            touch_sda,  //TOUCH IIC数据
    output           touch_scl,  //TOUCH IIC时钟
    inout            touch_int,  //TOUCH INT信号
    output           touch_rst_n,//TOUCH 复位信号
    //RGB LCD接口
    output           lcd_de,     //LCD 数据使能信号
    output           lcd_hs,     //LCD 行同步信号
    output           lcd_vs,     //LCD 场同步信号
    output           lcd_bl,     //LCD 背光控制信号
    output           lcd_rst_n,  //LCD 复位
    output           lcd_clk,    //LCD 像素时钟
    inout    [23:0]  lcd_rgb     //LCD RGB颜色数据
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

//触摸驱动顶层模块    
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

//例化LCD显示模块
lcd_rgb_char  u_lcd_rgb_char
(
   .sys_clk         (clk_50m),
   .sys_rst_n       (rst_n  ),
   .data            (data   ),     //触摸点坐标
   //RGB LCD接口 
   .lcd_id          (lcd_id),
   .lcd_hs          (lcd_hs),       //LCD 行同步信号
   .lcd_vs          (lcd_vs),       //LCD 场同步信号
   .lcd_de          (lcd_de),       //LCD 数据输入使能
   .lcd_rgb         (lcd_rgb),      //LCD RGB颜色数据
   .lcd_bl          (lcd_bl),       //LCD 背光控制信号
   .lcd_clk         (lcd_clk)       //LCD 采样时钟
);

endmodule 