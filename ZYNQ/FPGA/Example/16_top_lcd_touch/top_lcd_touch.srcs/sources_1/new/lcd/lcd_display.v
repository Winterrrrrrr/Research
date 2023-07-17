//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com 
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved	                               
//----------------------------------------------------------------------------------------
// File name:           lcd_display
// Last modified Date:  2019/05/28 11:12:36
// Last Version:        V1.1
// Descriptions:        RGB LCD�ַ���ʾģ��
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
// Descriptions:	    ��RGB LCD����ʾ����"����ԭ��"
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module lcd_display(
    input             lcd_pclk,                  //lcd����ʱ��
    input             sys_rst_n,                //��λ�ź�
    
	input      [31:0] data ,
	
    input      [10:0] pixel_xpos,               //���ص������
    input      [10:0] pixel_ypos,               //���ص�������    
    output reg [23:0] pixel_data                //���ص�����,
);

//parameter define
localparam CHAR_POS_X  = 11'd1;                 //�ַ�������ʼ�������
localparam CHAR_POS_Y  = 11'd1;                 //�ַ�������ʼ��������
localparam CHAR_WIDTH  = 11'd144;                //�ַ�������
localparam CHAR_HEIGHT = 11'd32;                //�ַ�����߶�

localparam WHITE  = 24'b11111111_11111111_11111111;     //����ɫ����ɫ
localparam BLACK  = 24'b00000000_00000000_00000000;     //�ַ���ɫ����ɫ

//reg define
reg  [511:0]  char  [11:0] ;                    //�ַ�����

//wire define
wire   [3:0]              data0    ;        // ʮ��λ��
wire   [3:0]              data1    ;        // ��λ��
wire   [3:0]              data2    ;        // ǧλ��
wire   [3:0]              data3    ;        // ��λ��
wire   [3:0]              data4    ;        // ʮλ��
wire   [3:0]              data5    ;        // ��λ��
wire   [3:0]              data6    ;        

//*****************************************************
//**                    main code
//*****************************************************
assign  data6 = data[31:16] / 10'd1000 % 4'd10 ;  // X������ǧλ��          
assign  data5 = data[31:16] / 7'd100 % 4'd10   ;  // X�������λ��
assign  data4 = data[31:16] / 4'd10 % 4'd10    ;  // X������ʮλ��
assign  data3 = data[31:16] % 4'd10            ;  // X�������λ��
assign  data2 = data[15:0]  / 7'd100 % 4'd10   ;  // Y�������λ��
assign  data1 = data[15:0]  / 4'd10 % 4'd10    ;  // Y������ʮλ��
assign  data0 = data[15:0]  % 4'd10            ;  // Y�������λ��

 //���ַ����鸳ֵ�����ڴ洢��ģ����
always @(posedge lcd_pclk) begin
    char[0 ]  <= {8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h03,8'hC0,8'h06,8'h20,
                  8'h0C,8'h30,8'h18,8'h18,8'h18,8'h18,8'h18,8'h08,8'h30,8'h0C,8'h30,8'h0C,8'h30,8'h0C,8'h30,8'h0C,
                  8'h30,8'h0C,8'h30,8'h0C,8'h30,8'h0C,8'h30,8'h0C,8'h30,8'h0C,8'h30,8'h0C,8'h18,8'h08,8'h18,8'h18,
                  8'h18,8'h18,8'h0C,8'h30,8'h06,8'h20,8'h03,8'hC0,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00} ; // "0"
    char[1 ]  <= {8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h80,8'h01,8'h80,
                  8'h1F,8'h80,8'h01,8'h80,8'h01,8'h80,8'h01,8'h80,8'h01,8'h80,8'h01,8'h80,8'h01,8'h80,8'h01,8'h80,
                  8'h01,8'h80,8'h01,8'h80,8'h01,8'h80,8'h01,8'h80,8'h01,8'h80,8'h01,8'h80,8'h01,8'h80,8'h01,8'h80,
                  8'h01,8'h80,8'h01,8'h80,8'h03,8'hC0,8'h1F,8'hF8,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00} ; // "1"
    char[2 ]  <= {8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h07,8'hE0,8'h08,8'h38,
                  8'h10,8'h18,8'h20,8'h0C,8'h20,8'h0C,8'h30,8'h0C,8'h30,8'h0C,8'h00,8'h0C,8'h00,8'h18,8'h00,8'h18,
                  8'h00,8'h30,8'h00,8'h60,8'h00,8'hC0,8'h01,8'h80,8'h03,8'h00,8'h02,8'h00,8'h04,8'h04,8'h08,8'h04,
                  8'h10,8'h04,8'h20,8'h0C,8'h3F,8'hF8,8'h3F,8'hF8,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00} ; // "2"
    char[3 ]  <= {8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h07,8'hC0,8'h18,8'h60,
                  8'h30,8'h30,8'h30,8'h18,8'h30,8'h18,8'h30,8'h18,8'h00,8'h18,8'h00,8'h18,8'h00,8'h30,8'h00,8'h60,
                  8'h03,8'hC0,8'h00,8'h70,8'h00,8'h18,8'h00,8'h08,8'h00,8'h0C,8'h00,8'h0C,8'h30,8'h0C,8'h30,8'h0C,
                  8'h30,8'h08,8'h30,8'h18,8'h18,8'h30,8'h07,8'hC0,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00} ; // "3"
    char[4 ]  <= {8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h60,8'h00,8'h60,
                  8'h00,8'hE0,8'h00,8'hE0,8'h01,8'h60,8'h01,8'h60,8'h02,8'h60,8'h04,8'h60,8'h04,8'h60,8'h08,8'h60,
                  8'h08,8'h60,8'h10,8'h60,8'h30,8'h60,8'h20,8'h60,8'h40,8'h60,8'h7F,8'hFC,8'h00,8'h60,8'h00,8'h60,
                  8'h00,8'h60,8'h00,8'h60,8'h00,8'h60,8'h03,8'hFC,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00} ; // "4"
    char[5 ]  <= {8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h0F,8'hFC,8'h0F,8'hFC,
                  8'h10,8'h00,8'h10,8'h00,8'h10,8'h00,8'h10,8'h00,8'h10,8'h00,8'h10,8'h00,8'h13,8'hE0,8'h14,8'h30,
                  8'h18,8'h18,8'h10,8'h08,8'h00,8'h0C,8'h00,8'h0C,8'h00,8'h0C,8'h00,8'h0C,8'h30,8'h0C,8'h30,8'h0C,
                  8'h20,8'h18,8'h20,8'h18,8'h18,8'h30,8'h07,8'hC0,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00} ; // "5"
    char[6 ]  <= {8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h01,8'hE0,8'h06,8'h18,
                  8'h0C,8'h18,8'h08,8'h18,8'h18,8'h00,8'h10,8'h00,8'h10,8'h00,8'h30,8'h00,8'h33,8'hE0,8'h36,8'h30,
                  8'h38,8'h18,8'h38,8'h08,8'h30,8'h0C,8'h30,8'h0C,8'h30,8'h0C,8'h30,8'h0C,8'h30,8'h0C,8'h18,8'h0C,
                  8'h18,8'h08,8'h0C,8'h18,8'h0E,8'h30,8'h03,8'hE0,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00} ; // "6"
    char[7 ]  <= {8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h1F,8'hFC,8'h1F,8'hFC,
                  8'h10,8'h08,8'h30,8'h10,8'h20,8'h10,8'h20,8'h20,8'h00,8'h20,8'h00,8'h40,8'h00,8'h40,8'h00,8'h40,
                  8'h00,8'h80,8'h00,8'h80,8'h01,8'h00,8'h01,8'h00,8'h01,8'h00,8'h01,8'h00,8'h03,8'h00,8'h03,8'h00,
                  8'h03,8'h00,8'h03,8'h00,8'h03,8'h00,8'h03,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00} ; // "7"
    char[8 ]  <= {8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h07,8'hE0,8'h0C,8'h30,
                  8'h18,8'h18,8'h30,8'h0C,8'h30,8'h0C,8'h30,8'h0C,8'h38,8'h0C,8'h38,8'h08,8'h1E,8'h18,8'h0F,8'h20,
                  8'h07,8'hC0,8'h18,8'hF0,8'h30,8'h78,8'h30,8'h38,8'h60,8'h1C,8'h60,8'h0C,8'h60,8'h0C,8'h60,8'h0C,
                  8'h60,8'h0C,8'h30,8'h18,8'h18,8'h30,8'h07,8'hC0,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00} ; // "8"
    char[9 ]  <= {8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h07,8'hC0,8'h18,8'h20,
                  8'h30,8'h10,8'h30,8'h18,8'h60,8'h08,8'h60,8'h0C,8'h60,8'h0C,8'h60,8'h0C,8'h60,8'h0C,8'h60,8'h0C,
                  8'h70,8'h1C,8'h30,8'h2C,8'h18,8'h6C,8'h0F,8'h8C,8'h00,8'h0C,8'h00,8'h18,8'h00,8'h18,8'h00,8'h10,
                  8'h30,8'h30,8'h30,8'h60,8'h30,8'hC0,8'h0F,8'h80,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00} ; // "9"
    char[10]  <= {8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h7C,8'h3E,8'h18,8'h08,
                  8'h18,8'h10,8'h0C,8'h10,8'h0C,8'h20,8'h06,8'h20,8'h06,8'h40,8'h03,8'h40,8'h03,8'h80,8'h01,8'h80,
                  8'h01,8'h80,8'h01,8'h80,8'h01,8'hC0,8'h02,8'hC0,8'h02,8'h60,8'h04,8'h60,8'h04,8'h70,8'h08,8'h30,
                  8'h08,8'h30,8'h18,8'h18,8'h10,8'h1C,8'h7C,8'h3E,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00}; // "X"
    char[11]  <= {8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h7E,8'h3E,8'h38,8'h08,
                  8'h18,8'h08,8'h18,8'h10,8'h0C,8'h10,8'h0C,8'h10,8'h0C,8'h20,8'h06,8'h20,8'h06,8'h20,8'h03,8'h40,
                  8'h03,8'h40,8'h03,8'h80,8'h01,8'h80,8'h01,8'h80,8'h01,8'h80,8'h01,8'h80,8'h01,8'h80,8'h01,8'h80,
                  8'h01,8'h80,8'h01,8'h80,8'h01,8'h80,8'h07,8'hE0,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00,8'h00}; // "Y"
end

//����ͬ������ֵ��ͬ����������
always @(posedge lcd_pclk or negedge sys_rst_n) begin
    if (!sys_rst_n)  begin
        pixel_data <= BLACK;
    end
    else if((pixel_xpos >= CHAR_POS_X)                  && (pixel_xpos < CHAR_POS_X + CHAR_WIDTH/9*1)
		 && (pixel_ypos >= CHAR_POS_Y)                  && (pixel_ypos < CHAR_POS_Y + CHAR_HEIGHT)) begin
		if(char [data6] [ (CHAR_HEIGHT+CHAR_POS_Y - pixel_ypos)*16 - ((pixel_xpos-CHAR_POS_X)%16) -1 ]  )
			pixel_data <= BLACK;
		else
			pixel_data <= WHITE;
	end	   
	else if((pixel_xpos >= CHAR_POS_X/9*1)                  && (pixel_xpos < CHAR_POS_X + CHAR_WIDTH/9*2)
		 && (pixel_ypos >= CHAR_POS_Y)                  && (pixel_ypos < CHAR_POS_Y + CHAR_HEIGHT)) begin
		if(char [data5] [ (CHAR_HEIGHT+CHAR_POS_Y - pixel_ypos)*16 - ((pixel_xpos-CHAR_POS_X)%16) -1 ] )
			pixel_data <= BLACK;         //��ʾ�ַ�Ϊ��ɫ
		else
			pixel_data <= WHITE;          //��ʾ�ַ����򱳾�Ϊ��ɫ
	end
	else if((pixel_xpos >= CHAR_POS_X + CHAR_WIDTH/9*2) && (pixel_xpos < CHAR_POS_X + CHAR_WIDTH/9*3)
		 && (pixel_ypos >= CHAR_POS_Y)                  && (pixel_ypos < CHAR_POS_Y + CHAR_HEIGHT)) begin
		if(char [data4] [ (CHAR_HEIGHT+CHAR_POS_Y - pixel_ypos)*16 - ((pixel_xpos-CHAR_POS_X)%16) -1 ]  )
			pixel_data <= BLACK;
		else
			pixel_data <= WHITE;
	end
	else if((pixel_xpos >= CHAR_POS_X + CHAR_WIDTH/9*3) && (pixel_xpos < CHAR_POS_X + CHAR_WIDTH/9*4)
		 && (pixel_ypos >= CHAR_POS_Y)                  && (pixel_ypos < CHAR_POS_Y + CHAR_HEIGHT)) begin
		if(char [data3] [ (CHAR_HEIGHT+CHAR_POS_Y - pixel_ypos)*16 - ((pixel_xpos-CHAR_POS_X)%16) -1 ]  )
			pixel_data <= BLACK;
		else
			pixel_data <= WHITE;
	end
	else if((pixel_xpos >= CHAR_POS_X + CHAR_WIDTH/9*4) && (pixel_xpos < CHAR_POS_X + CHAR_WIDTH/9*5)
		 && (pixel_ypos >= CHAR_POS_Y)                  && (pixel_ypos < CHAR_POS_Y + CHAR_HEIGHT)) begin
		if(char [10] [ (CHAR_HEIGHT+CHAR_POS_Y - pixel_ypos)*16 - ((pixel_xpos-CHAR_POS_X)%16) -1 ]  )
			pixel_data <= BLACK;
		else
			pixel_data <= WHITE;
	end	
	else if((pixel_xpos >= CHAR_POS_X + CHAR_WIDTH/9*5) && (pixel_xpos < CHAR_POS_X + CHAR_WIDTH/9*6)
		 && (pixel_ypos >= CHAR_POS_Y)                  && (pixel_ypos < CHAR_POS_Y + CHAR_HEIGHT)) begin
		if(char [data2] [ (CHAR_HEIGHT+CHAR_POS_Y - pixel_ypos)*16 - ((pixel_xpos-CHAR_POS_X)%16) -1 ]  )
			pixel_data <= BLACK;
		else
			pixel_data <= WHITE;
	end
	else if((pixel_xpos >= CHAR_POS_X + CHAR_WIDTH/9*6) && (pixel_xpos < CHAR_POS_X + CHAR_WIDTH/9*7)
		 && (pixel_ypos >= CHAR_POS_Y)                  && (pixel_ypos < CHAR_POS_Y + CHAR_HEIGHT)) begin
		if(char [data1] [ (CHAR_HEIGHT+CHAR_POS_Y - pixel_ypos)*16 - ((pixel_xpos-CHAR_POS_X)%16) -1 ] )
			pixel_data <= BLACK;
		else
			pixel_data <= WHITE;
	end
	else if((pixel_xpos >= CHAR_POS_X + CHAR_WIDTH/9*7) && (pixel_xpos < CHAR_POS_X + CHAR_WIDTH/9*8)
		 && (pixel_ypos >= CHAR_POS_Y)                  && (pixel_ypos < CHAR_POS_Y + CHAR_HEIGHT)) begin
		if(char [data0]    [ (CHAR_HEIGHT+CHAR_POS_Y - pixel_ypos)*16 - ((pixel_xpos-CHAR_POS_X)%16) -1 ] )
			pixel_data <= BLACK;
		else
			pixel_data <= WHITE;
	end
	else if((pixel_xpos >= CHAR_POS_X + CHAR_WIDTH/9*8) && (pixel_xpos < CHAR_POS_X + CHAR_WIDTH)
		 && (pixel_ypos >= CHAR_POS_Y)                  && (pixel_ypos < CHAR_POS_Y + CHAR_HEIGHT)) begin
		if(char [11]    [ (CHAR_HEIGHT+CHAR_POS_Y - pixel_ypos)*16 - ((pixel_xpos-CHAR_POS_X)%16) -1 ] )
			pixel_data <= BLACK;
		else
			pixel_data <= WHITE;
	end	
	else begin
		pixel_data <= WHITE;              //������Ļ����Ϊ��ɫ
	end
end
endmodule 