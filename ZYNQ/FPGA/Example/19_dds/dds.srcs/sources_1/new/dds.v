//****************************************Copyright (c)***********************************//
//原子哥在线教学平台：www.yuanzige.com
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取ZYNQ & FPGA & STM32 & LINUX资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           dds
// Last modified Date:  2021/08/28 09:46:19
// Last Version:        V1.0
// Descriptions:        顶层模块，通过按下按键key0和key1去相应地切换不同的波形和频率
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2021/08/28 09:46:19
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//


module dds(
    input                 sys_clk     ,  //系统时钟
    input                 sys_rst_n   ,  //系统复位，低电平有效
    input                 key0        ,  //按键key0
    input                 key1        ,  //按键key1
    //DA芯片接口
    output                da_clk      ,  //DA(AD9708)驱动时钟,最大支持125Mhz时钟
    output    [7:0]       da_data     ,  //输出给DA的数据
    //AD芯片接口
    input     [7:0]       ad_data     ,  //AD输入数据
    //模拟输入电压超出量程标志(本次试验未用到)
    input                 ad_otr      ,  //0:在量程范围 1:超出量程
    output                ad_clk         //AD(AD9280)驱动时钟,最大支持32Mhz时钟 
);

//wire define 
wire      [8:0]     rd_addr;            //ROM读地址
wire      [7:0]     rd_data;            //ROM读出的数据
wire               key0_value;         //key0消抖后的按键值
wire               key0_flag;          //key0消抖后的按键值的效标志
wire               key1_value;         //key1消抖后的按键值
wire               key1_flag;          //key1消抖后的按键值的效标志
wire               clk_100M;          //da芯片的驱动时钟

//*****************************************************
//**                    main code
//*****************************************************

//例化按键消抖模块
key_debounce  u_key0_debounce(
    .sys_rst_n  (sys_rst_n),
    .clk        (clk_100M),
    .key        (key0),
    .key_value  (key0_value),
    .key_flag   (key0_flag)    
    );
    
//例化按键消抖模块
key_debounce  u_key1_debounce(
    .sys_rst_n  (sys_rst_n),
    .clk        (clk_100M),
    .key        (key1),
    .key_value  (key1_value),
    .key_flag   (key1_flag)     
    );  

//DA数据发送
da_wave_send u_da_wave_send(
    .clk         (clk_100M),
    .rst_n       (sys_rst_n),
    .key0_value  (key0_value),
    .key0_flag   (key0_flag),
    .key1_value  (key1_value),
    .key1_flag   (key1_flag),
    .rd_data     (rd_data),
    .rd_addr     (rd_addr),
    .da_clk      (da_clk),  
    .da_data     (da_data)
    );

 clk_wiz_0 u_clk_wiz_0
   (
    // Clock out ports
    .clk_out1(clk_100M),     // output clk_out1
    // Status and control signals
    .reset(~sys_rst_n), // input reset
    .locked(locked),       // output locked
   // Clock in ports
    .clk_in1(sys_clk)      // input clk_in1
    );      
    
//ROM存储波形
rom_400x8b u_rom_400x8b (
  .clka(clk_100M),      // input wire clka
  .addra(rd_addr),     // input wire [8 : 0] addra
  .douta(rd_data)     // output wire [7 : 0] douta
);

//AD数据接收
ad_wave_rec u_ad_wave_rec(
    .clk         (sys_clk),
    .rst_n       (sys_rst_n),
    .ad_data     (ad_data),
    .ad_otr      (ad_otr),
    .ad_clk      (ad_clk)
    );    

//ILA采集AD数据
ila_0  ila_0 (
    .clk         (ad_clk ), // input wire clk
    .probe0      (ad_otr ), // input wire [0:0]  probe0  
    .probe1      (ad_data)  // input wire [7:0]  probe0 
);

endmodule
