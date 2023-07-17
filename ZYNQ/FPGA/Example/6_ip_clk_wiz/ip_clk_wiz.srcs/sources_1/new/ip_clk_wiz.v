//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com 
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved                               
//----------------------------------------------------------------------------------------
// File name:           ip_clk_wiz
// Last modified Date:  2019/5/07 10:41:06
// Last Version:        V1.0
// Descriptions:        IP��֮MMCM/PLLʵ��
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2019/5/07 10:41:06
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module  ip_clk_wiz(
    input               sys_clk        ,  //ϵͳʱ��
    input               sys_rst_n      ,  //ϵͳ��λ���͵�ƽ��Ч
    //���ʱ��
    output              clk_100m       ,  //100Mhzʱ��Ƶ��
    output              clk_100m_180deg,  //100Mhzʱ��Ƶ��,��λƫ��180��
    output              clk_50m        ,  //50Mhzʱ��Ƶ��
    output              clk_25m           //25Mhzʱ��Ƶ��
    );

//wire define
wire        locked;

//*****************************************************
//**                    main code
//*****************************************************

//MMCM/PLL IP�˵�����
clk_wiz_0  clk_wiz_0
(
	// Clock out ports
	.clk_out1_100m     (clk_100m),         // output clk_out1_100m
	.clk_out2_100m_180 (clk_100m_180deg),  // output clk_out2_100m_180
	.clk_out3_50m      (clk_50m),          // output clk_out3_50m
	.clk_out4_25m      (clk_25m),          // output clk_out4_25m
	// Status and control signals
	.reset             (~sys_rst_n),       // input reset
	.locked            (locked),           // output locked
	// Clock in ports
	.clk_in1           (sys_clk)           // input clk_in1
);      

endmodule