//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           hs_dual_da
// Last modified Date:  2020/05/04 9:19:08
// Last Version:        V1.0
// Descriptions:        ˫·DAʵ��
//                      
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2019/05/04 9:19:08
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module hs_dual_da(
    input                 sys_clk     ,  //ϵͳʱ��
    input                 sys_rst_n   ,  //ϵͳ��λ���͵�ƽ��Ч
    //DA�ӿ�
    output                da_clk      ,  //DA����ʱ��
    output    [9:0]       da_data     ,  //DA��������
    output                da_clk1     ,  //DA����ʱ��
    output    [9:0]       da_data1       //DA��������	 
);

//wire define 
wire      [9:0]    rd_addr;              //ROM��ַ?
wire      [9:0]    rd_data;              //ROM����

//*****************************************************
//**                    main code
//*****************************************************

assign  da_clk1 = da_clk;
assign  da_data1 = da_data;

//ʱ��ģ��
clk_wiz_0  u_clk_wiz_0(
	.clk_in1 (sys_clk),
	.clk_out1 (clk)
);

//DA����ģ��
da_wave_send u_da_wave_send(
    .clk         (clk), 
    .rst_n       (sys_rst_n),
    .rd_data     (rd_data),
    .rd_addr     (rd_addr),
    .da_clk      (da_clk),  
    .da_data     (da_data)
    );

//ROMģ�� 
rom_1024x10b  u_rom_1024x10b(
    .addra     (rd_addr),
    .clka      (clk),
    .douta     (rd_data)
);

endmodule