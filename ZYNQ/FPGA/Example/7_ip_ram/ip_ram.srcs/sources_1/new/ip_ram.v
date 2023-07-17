//****************************************Copyright (c)***********************************//
//原子哥在线教学平台：www.yuanzige.com
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取ZYNQ & FPGA & STM32 & LINUX资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           ip_ram
// Last modified Date:  2019/05/08 8:41:06
// Last Version:        V1.0
// Descriptions:        IP核之RAM实验
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2019/05/08 8:41:06
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module ip_ram(
    input         sys_clk ,  //系统时钟
    input         sys_rst_n  //系统复位，低电平有效
    );

//wire define
wire             ram_en      ;  //RAM使能    
wire             ram_wea     ;  //ram读写使能信号,高电平写入,低电平读出 
wire    [4:0]    ram_addr    ;  //ram读写地址 
wire    [7:0]    ram_wr_data ;  //ram写数据  
wire    [7:0]    ram_rd_data ;  //ram读数据  

//*****************************************************
//**                    main code
//*****************************************************

//ram读写模块
ram_rw  u_ram_rw(
    .clk            (sys_clk     ),
    .rst_n          (sys_rst_n   ),
	//RAM
	.ram_en         (ram_en      ),
    .ram_wea        (ram_wea     ),
    .ram_addr       (ram_addr    ),
    .ram_wr_data    (ram_wr_data ),
    .ram_rd_data    (ram_rd_data )
    );

//ram ip核
blk_mem_gen_0  blk_mem_gen_0 (
	.clka  (sys_clk      ),  // input wire clka
	.ena   (ram_en       ),  // input wire ena	
	.wea   (ram_wea      ),  // input wire [0 : 0] wea
	.addra (ram_addr     ),  // input wire [4 : 0] addra
	.dina  (ram_wr_data  ),  // input wire [7 : 0] dina
	.douta (ram_rd_data  )  // output wire [7 : 0] douta
);

endmodule
