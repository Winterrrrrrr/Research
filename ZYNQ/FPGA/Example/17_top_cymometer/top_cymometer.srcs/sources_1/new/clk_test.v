//****************************************Copyright (c)***********************************//
//原子哥在线教学平台：www.yuanzige.com
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取ZYNQ & FPGA & STM32 & LINUX资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           clk_test
// Last modified Date:  2019/05/28 11:12:36
// Last Version:        V1.0
// Descriptions:        实现任意偶数倍分频
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2019/05/28 11:12:36
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module clk_test #(parameter DIV_N = 7'd100)    //分频系数
    (
     //源时钟
     input        clk_in     ,                 // 输入时钟
     input        rst_n      ,                 // 复位信号
     //分频后的时钟
     output  reg  clk_out                      // 输出时钟
);

//reg define
reg [9:0] cnt;                                 // 时钟分频计数

//*****************************************************
//**                    main code
//*****************************************************

//时钟分频，生成500KHz的测试时钟
always @(posedge clk_in or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        cnt     <= 0;
        clk_out <= 0;
    end
    else begin
        if(cnt == DIV_N/2 - 1'b1) begin
            cnt     <= 10'd0;
            clk_out <= ~clk_out;
        end
        else
            cnt <= cnt + 1'b1;
    end
end

endmodule