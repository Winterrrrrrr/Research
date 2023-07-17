//****************************************Copyright (c)***********************************//
//原子哥在线教学平台：www.yuanzige.com
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取ZYNQ & FPGA & STM32 & LINUX资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved	                               
//----------------------------------------------------------------------------------------
// File name:           lcd_display
// Last modified Date:  2019/05/28 11:12:36
// Last Version:        V1.1
// Descriptions:        RGB LCD字符显示模块
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
// Descriptions:	    在RGB LCD上显示汉字"正点原子"
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module lcd_display(
    input             lcd_pclk,                  //lcd驱动时钟
    input             sys_rst_n,                //复位信号
    
	input      [19:0] data ,
	
    input      [10:0] pixel_xpos,               //像素点横坐标
    input      [10:0] pixel_ypos,               //像素点纵坐标    
    output reg [23:0] pixel_data                //像素点数据,
);

//parameter define
localparam CHAR_POS_X  = 11'd1;                 //字符区域起始点横坐标
localparam CHAR_POS_Y  = 11'd1;                 //字符区域起始点纵坐标
localparam CHAR_WIDTH  = 11'd64;                //字符区域宽度
localparam CHAR_HEIGHT = 11'd16;                //字符区域高度

localparam WHITE  = 24'b11111111_11111111_11111111;     //背景色，白色
localparam BLACK  = 24'b00000000_00000000_00000000;     //字符颜色，黑色

//reg define
reg  [127:0]  char  [11:0] ;                    //字符数组

//wire define
wire   [3:0]              data0    ;        // 十万位数
wire   [3:0]              data1    ;        // 万位数
wire   [3:0]              data2    ;        // 千位数
wire   [3:0]              data3    ;        // 百位数
wire   [3:0]              data4    ;        // 十位数
wire   [3:0]              data5    ;        // 个位数

//*****************************************************
//**                    main code
//*****************************************************

assign  data5 = data / 17'd100000;           // 十万位数
assign  data4 = data / 14'd10000 % 4'd10;    // 万位数
assign  data3 = data / 10'd1000 % 4'd10 ;    // 千位数
assign  data2 = data /  7'd100 % 4'd10  ;    // 百位数
assign  data1 = data /  4'd10 % 4'd10   ;    // 十位数
assign  data0 = data %  4'd10;               // 个位数

 //给字符数组赋值，用于存储字模数据
always @(posedge lcd_pclk) begin
    char[0 ]  <= 128'h00000018244242424242424224180000 ; // "0"
    char[1 ]  <= 128'h000000107010101010101010107C0000 ; // "1"
    char[2 ]  <= 128'h0000003C4242420404081020427E0000 ; // "2"
    char[3 ]  <= 128'h0000003C424204180402024244380000 ; // "3"
    char[4 ]  <= 128'h000000040C14242444447E04041E0000 ; // "4"
    char[5 ]  <= 128'h0000007E404040586402024244380000 ; // "5"
    char[6 ]  <= 128'h0000001C244040586442424224180000 ; // "6"
    char[7 ]  <= 128'h0000007E444408081010101010100000 ; // "7"
    char[8 ]  <= 128'h0000003C4242422418244242423C0000 ; // "8"
    char[9 ]  <= 128'h0000001824424242261A020224380000 ; // "9"
    char[10]  <= 128'h000000E7424242427E42424242E70000 ; // "H"
    char[11]  <= 128'h000000000000007E44081010227E0000 ; // "z"
end

//给不同的区域赋值不同的像素数据
always @(posedge lcd_pclk or negedge sys_rst_n) begin
    if (!sys_rst_n)  begin
        pixel_data <= BLACK;
    end
	else if((pixel_xpos >= CHAR_POS_X)                  && (pixel_xpos < CHAR_POS_X + CHAR_WIDTH/8*1)
		 && (pixel_ypos >= CHAR_POS_Y)                  && (pixel_ypos < CHAR_POS_Y + CHAR_HEIGHT)) begin
		if(char [data5] [ (CHAR_HEIGHT+CHAR_POS_Y - pixel_ypos)*8 - ((pixel_xpos-CHAR_POS_X)%8) -1 ] )
			pixel_data <= BLACK;         //显示字符为黑色
		else
			pixel_data <= WHITE;          //显示字符区域背景为白色
	end
	else if((pixel_xpos >= CHAR_POS_X + CHAR_WIDTH/8*1) && (pixel_xpos < CHAR_POS_X + CHAR_WIDTH/8*2)
		 && (pixel_ypos >= CHAR_POS_Y)                  && (pixel_ypos < CHAR_POS_Y + CHAR_HEIGHT)) begin
		if(char [data4] [ (CHAR_HEIGHT+CHAR_POS_Y - pixel_ypos)*8 - ((pixel_xpos-CHAR_POS_X)%8) -1 ]  )
			pixel_data <= BLACK;
		else
			pixel_data <= WHITE;
	end
	else if((pixel_xpos >= CHAR_POS_X + CHAR_WIDTH/8*2) && (pixel_xpos < CHAR_POS_X + CHAR_WIDTH/8*3)
		 && (pixel_ypos >= CHAR_POS_Y)                  && (pixel_ypos < CHAR_POS_Y + CHAR_HEIGHT)) begin
		if(char [data3] [ (CHAR_HEIGHT+CHAR_POS_Y - pixel_ypos)*8 - ((pixel_xpos-CHAR_POS_X)%8) -1 ]  )
			pixel_data <= BLACK;
		else
			pixel_data <= WHITE;
	end
	else if((pixel_xpos >= CHAR_POS_X + CHAR_WIDTH/8*3) && (pixel_xpos < CHAR_POS_X + CHAR_WIDTH/8*4)
		 && (pixel_ypos >= CHAR_POS_Y)                  && (pixel_ypos < CHAR_POS_Y + CHAR_HEIGHT)) begin
		if(char [data2] [ (CHAR_HEIGHT+CHAR_POS_Y - pixel_ypos)*8 - ((pixel_xpos-CHAR_POS_X)%8) -1 ]  )
			pixel_data <= BLACK;
		else
			pixel_data <= WHITE;
	end
	else if((pixel_xpos >= CHAR_POS_X + CHAR_WIDTH/8*4) && (pixel_xpos < CHAR_POS_X + CHAR_WIDTH/8*5)
		 && (pixel_ypos >= CHAR_POS_Y)                  && (pixel_ypos < CHAR_POS_Y + CHAR_HEIGHT)) begin
		if(char [data1] [ (CHAR_HEIGHT+CHAR_POS_Y - pixel_ypos)*8 - ((pixel_xpos-CHAR_POS_X)%8) -1 ]  )
			pixel_data <= BLACK;
		else
			pixel_data <= WHITE;
	end
	else if((pixel_xpos >= CHAR_POS_X + CHAR_WIDTH/8*5) && (pixel_xpos < CHAR_POS_X + CHAR_WIDTH/8*6)
		 && (pixel_ypos >= CHAR_POS_Y)                  && (pixel_ypos < CHAR_POS_Y + CHAR_HEIGHT)) begin
		if(char [data0] [ (CHAR_HEIGHT+CHAR_POS_Y - pixel_ypos)*8 - ((pixel_xpos-CHAR_POS_X)%8) -1 ] )
			pixel_data <= BLACK;
		else
			pixel_data <= WHITE;
	end
	else if((pixel_xpos >= CHAR_POS_X + CHAR_WIDTH/8*6) && (pixel_xpos < CHAR_POS_X + CHAR_WIDTH/8*7)
		 && (pixel_ypos >= CHAR_POS_Y)                  && (pixel_ypos < CHAR_POS_Y + CHAR_HEIGHT)) begin
		if(char [10]    [ (CHAR_HEIGHT+CHAR_POS_Y - pixel_ypos)*8 - ((pixel_xpos-CHAR_POS_X)%8) -1 ] )
			pixel_data <= BLACK;
		else
			pixel_data <= WHITE;
	end
	else if((pixel_xpos >= CHAR_POS_X + CHAR_WIDTH/8*7) && (pixel_xpos < CHAR_POS_X + CHAR_WIDTH)
		 && (pixel_ypos >= CHAR_POS_Y)                  && (pixel_ypos < CHAR_POS_Y + CHAR_HEIGHT)) begin
		if(char [11]    [ (CHAR_HEIGHT+CHAR_POS_Y - pixel_ypos)*8 - ((pixel_xpos-CHAR_POS_X)%8) -1 ] )
			pixel_data <= BLACK;
		else
			pixel_data <= WHITE;
	end	
	else begin
		pixel_data <= WHITE;              //绘制屏幕背景为白色
	end
end

endmodule 