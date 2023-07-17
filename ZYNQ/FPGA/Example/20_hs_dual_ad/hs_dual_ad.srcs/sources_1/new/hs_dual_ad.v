//****************************************Copyright (c)***********************************//
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com 
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡFPGA & STM32���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved                                  
//----------------------------------------------------------------------------------------
// File name:           hs_dual_ad
// Last modified Date:  2018/1/30 11:12:36
// Last Version:        V1.1
// Descriptions:        ˫·ģ��ת��ģ��
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2018/1/29 10:55:56
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

 module hs_dual_ad(
     input                 sys_clk      ,   //ϵͳʱ��
     //AD0
     input     [9:0]       ad0_data     ,   //AD0����
     input                 ad0_otr      ,   //�����ѹ�������̱�־
     output                ad0_clk      ,   //AD0����ʱ��
     output                ad0_oe       ,   //AD0���ʹ��
     //AD1
     input     [9:0]       ad1_data     ,   //AD1����
     input                 ad1_otr      ,   //�����ѹ�������̱�־
     output                ad1_clk      ,   //AD1����ʱ��  
     output                ad1_oe           //AD1���ʹ��
     );
      
 //wire define
 wire clk_out1;
 wire clk_out2;
 //*****************************************************
 //**                    main code
 //*****************************************************  
 assign  ad0_oe =  1'b0;
 assign  ad1_oe =  1'b0;
 assign  ad0_clk = ~clk_out1;
 assign  ad1_clk = ~clk_out1;
 
 clk_wiz_0 u_clk_wiz_0
    (
     // Clock out ports
     .clk_out1(clk_out1),    // output clk_out1
     // Status and control signals
     .reset(1'b0), // input reset
     .locked(locked),        // output locked
    // Clock in ports
     .clk_in1(sys_clk));     // input clk_in1
     
 ila_0 u_ila_0 (
 	.clk(clk_out1),     // input wire clk
 	.probe0(ad1_otr),   // input wire [0:0]  probe0  
 	.probe1(ad0_data),  // input wire [9:0]  probe1
 	.probe2(ad0_otr),   // input wire [0:0]  probe0  
 	.probe3(ad1_data)   // input wire [9:0]  probe1
 );
 
 endmodule
