//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           dds
// Last modified Date:  2021/08/28 09:46:19
// Last Version:        V1.0
// Descriptions:        ����ģ�飬ͨ�����°���key0��key1ȥ��Ӧ���л���ͬ�Ĳ��κ�Ƶ��
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2021/08/28 09:46:19
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//


module dds(
    input                 sys_clk     ,  //ϵͳʱ��
    input                 sys_rst_n   ,  //ϵͳ��λ���͵�ƽ��Ч
    input                 key0        ,  //����key0
    input                 key1        ,  //����key1
    //DAоƬ�ӿ�
    output                da_clk      ,  //DA(AD9708)����ʱ��,���֧��125Mhzʱ��
    output    [7:0]       da_data     ,  //�����DA������
    //ADоƬ�ӿ�
    input     [7:0]       ad_data     ,  //AD��������
    //ģ�������ѹ�������̱�־(��������δ�õ�)
    input                 ad_otr      ,  //0:�����̷�Χ 1:��������
    output                ad_clk         //AD(AD9280)����ʱ��,���֧��32Mhzʱ�� 
);

//wire define 
wire      [8:0]     rd_addr;            //ROM����ַ
wire      [7:0]     rd_data;            //ROM����������
wire               key0_value;         //key0������İ���ֵ
wire               key0_flag;          //key0������İ���ֵ��Ч��־
wire               key1_value;         //key1������İ���ֵ
wire               key1_flag;          //key1������İ���ֵ��Ч��־
wire               clk_100M;          //daоƬ������ʱ��

//*****************************************************
//**                    main code
//*****************************************************

//������������ģ��
key_debounce  u_key0_debounce(
    .sys_rst_n  (sys_rst_n),
    .clk        (clk_100M),
    .key        (key0),
    .key_value  (key0_value),
    .key_flag   (key0_flag)    
    );
    
//������������ģ��
key_debounce  u_key1_debounce(
    .sys_rst_n  (sys_rst_n),
    .clk        (clk_100M),
    .key        (key1),
    .key_value  (key1_value),
    .key_flag   (key1_flag)     
    );  

//DA���ݷ���
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
    
//ROM�洢����
rom_400x8b u_rom_400x8b (
  .clka(clk_100M),      // input wire clka
  .addra(rd_addr),     // input wire [8 : 0] addra
  .douta(rd_data)     // output wire [7 : 0] douta
);

//AD���ݽ���
ad_wave_rec u_ad_wave_rec(
    .clk         (sys_clk),
    .rst_n       (sys_rst_n),
    .ad_data     (ad_data),
    .ad_otr      (ad_otr),
    .ad_clk      (ad_clk)
    );    

//ILA�ɼ�AD����
ila_0  ila_0 (
    .clk         (ad_clk ), // input wire clk
    .probe0      (ad_otr ), // input wire [0:0]  probe0  
    .probe1      (ad_data)  // input wire [7:0]  probe0 
);

endmodule
