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
    
	input      [19:0] data ,
	
    input      [10:0] pixel_xpos,               //���ص������
    input      [10:0] pixel_ypos,               //���ص�������    
    output reg [23:0] pixel_data                //���ص�����,
);

//parameter define
localparam CHAR_POS_X  = 11'd1;                 //�ַ�������ʼ�������
localparam CHAR_POS_Y  = 11'd1;                 //�ַ�������ʼ��������
localparam CHAR_WIDTH  = 11'd64;                //�ַ�������
localparam CHAR_HEIGHT = 11'd16;                //�ַ�����߶�

localparam WHITE  = 24'b11111111_11111111_11111111;     //����ɫ����ɫ
localparam BLACK  = 24'b00000000_00000000_00000000;     //�ַ���ɫ����ɫ

//reg define
reg  [127:0]  char  [11:0] ;                    //�ַ�����

//wire define
wire   [3:0]              data0    ;        // ʮ��λ��
wire   [3:0]              data1    ;        // ��λ��
wire   [3:0]              data2    ;        // ǧλ��
wire   [3:0]              data3    ;        // ��λ��
wire   [3:0]              data4    ;        // ʮλ��
wire   [3:0]              data5    ;        // ��λ��

//*****************************************************
//**                    main code
//*****************************************************

assign  data5 = data / 17'd100000;           // ʮ��λ��
assign  data4 = data / 14'd10000 % 4'd10;    // ��λ��
assign  data3 = data / 10'd1000 % 4'd10 ;    // ǧλ��
assign  data2 = data /  7'd100 % 4'd10  ;    // ��λ��
assign  data1 = data /  4'd10 % 4'd10   ;    // ʮλ��
assign  data0 = data %  4'd10;               // ��λ��

 //���ַ����鸳ֵ�����ڴ洢��ģ����
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

//����ͬ������ֵ��ͬ����������
always @(posedge lcd_pclk or negedge sys_rst_n) begin
    if (!sys_rst_n)  begin
        pixel_data <= BLACK;
    end
	else if((pixel_xpos >= CHAR_POS_X)                  && (pixel_xpos < CHAR_POS_X + CHAR_WIDTH/8*1)
		 && (pixel_ypos >= CHAR_POS_Y)                  && (pixel_ypos < CHAR_POS_Y + CHAR_HEIGHT)) begin
		if(char [data5] [ (CHAR_HEIGHT+CHAR_POS_Y - pixel_ypos)*8 - ((pixel_xpos-CHAR_POS_X)%8) -1 ] )
			pixel_data <= BLACK;         //��ʾ�ַ�Ϊ��ɫ
		else
			pixel_data <= WHITE;          //��ʾ�ַ����򱳾�Ϊ��ɫ
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
		pixel_data <= WHITE;              //������Ļ����Ϊ��ɫ
	end
end

endmodule 