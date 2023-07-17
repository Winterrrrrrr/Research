//****************************************Copyright (c)***********************************//
//原子哥在线教学平台：www.yuanzige.com
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取ZYNQ & FPGA & STM32 & LINUX资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           ip_fifo
// Last modified Date:  2019/05/10 11:31:26
// Last Version:        V1.0
// Descriptions:        FIFO实验顶层模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2019/05/10 11:31:51
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module ip_fifo(
    input    sys_clk ,  // 时钟信号
    input    sys_rst_n  // 复位信号
);

//wire define
 wire         fifo_wr_en         ;  // FIFO写使能信号
 wire         fifo_rd_en         ;  // FIFO读使能信号
 wire  [7:0]  fifo_din           ;  // 写入到FIFO的数据
 wire  [7:0]  fifo_dout          ;  // 从FIFO读出的数据
 wire         almost_full        ;  // FIFO将满信号
 wire         almost_empty       ;  // FIFO将空信号
 wire         fifo_full          ;  // FIFO满信号
 wire         fifo_empty         ;  // FIFO空信号
 wire  [7:0]  fifo_wr_data_count ;  // FIFO写时钟域的数据计数
 wire  [7:0]  fifo_rd_data_count ;  // FIFO读时钟域的数据计数

//*****************************************************
//**                    main code
//*****************************************************

//例化FIFO IP核
fifo_generator_0  u_fifo_generator_0(
  .wr_clk(sys_clk),                // input wire wr_clk
  .rd_clk(sys_clk),                // input wire rd_clk
  .din(fifo_din),                      // input wire [7 : 0] din
  .wr_en(fifo_wr_en),                  // input wire wr_en
  .rd_en(fifo_rd_en),                  // input wire rd_en
  .dout(fifo_dout),                    // output wire [7 : 0] dout
  .full(fifo_full),                    // output wire full
  .almost_full(almost_full),      // output wire almost_full
  .empty(fifo_empty),                  // output wire empty
  .almost_empty(almost_empty),    // output wire almost_empty
  .rd_data_count(fifo_rd_data_count),  // output wire [7 : 0] rd_data_count
  .wr_data_count(fifo_wr_data_count)  // output wire [7 : 0] wr_data_count
);

//例化写FIFO模块
fifo_wr  u_fifo_wr(
    .clk            ( sys_clk    ),   // 写时钟
    .rst_n          ( sys_rst_n  ),   // 复位信号

    .fifo_wr_en     ( fifo_wr_en )  , // fifo写请求
    .fifo_wr_data   ( fifo_din    ) , // 写入FIFO的数据
    .almost_empty   ( almost_empty ), // fifo空信号
    .almost_full    ( almost_full  )  // fifo满信号
);

//例化读FIFO模块
fifo_rd  u_fifo_rd(
    .clk          ( sys_clk    ),      // 读时钟
    .rst_n        ( sys_rst_n  ),      // 复位信号

    .fifo_rd_en   ( fifo_rd_en ),      // fifo读请求
    .fifo_dout    ( fifo_dout  ),      // 从FIFO输出的数据
    .almost_empty ( almost_empty ),    // fifo空信号
    .almost_full  ( almost_full  )     // fifo满信号
);

ila_0 ila_0 (
	.clk       (sys_clk           ), // input wire clk

	.probe0    (fifo_wr_en        ), // input wire [0:0]  probe0  
	.probe1    (fifo_rd_en        ), // input wire [0:0]  probe1 
	.probe2    (fifo_din          ), // input wire [7:0]  probe2 
	.probe3    (fifo_dout         ), // input wire [7:0]  probe3 
	.probe4    (almost_full       ), // input wire [0:0]  probe4 
	.probe5    (almost_empty      ), // input wire [0:0]  probe5 
	.probe6    (fifo_full         ), // input wire [0:0]  probe6 
	.probe7    (fifo_empty        ), // input wire [0:0]  probe7 
	.probe8    (fifo_wr_data_count), // input wire [7:0]  probe8 
	.probe9    (fifo_rd_data_count)  // input wire [7:0]  probe9
);

endmodule 