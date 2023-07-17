//****************************************Copyright (c)***********************************//
//����֧�֣�www.openedv.com                                                                      
//�Ա����̣�http://openedv.taobao.com                                                            
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡFPGA & STM32���ϡ�                                                    
//��Ȩ���У�����ؾ���                                                                                
//Copyright(C) ����ԭ�� 2018-2028                                                               
//All rights reserved                                                                       
//----------------------------------------------------------------------------------------  
// File name:           top_traffic                                                             
// Last modified Date:  2018/6/8 9:26:44                                                    
// Last Version:        V1.0                                                                
// Descriptions:        ��ͨ�źŵƶ���ģ��                                                             
//----------------------------------------------------------------------------------------  
// Created by:          ����ԭ��                                                                
// Created date:        2018/6/8 9:26:47                                                    
// Version:             V1.0                                                                
// Descriptions:        The original version                                                
//                                                                                          
//----------------------------------------------------------------------------------------  
// Modified by:         ����ԭ��                                                                  
// Modified date:                                                                           
// Version:                                                                                 
// Descriptions:                                                                            
//                                                                                          
//----------------------------------------------------------------------------------------  
//****************************************************************************************//

module top_traffic( 
    input                  sys_clk   ,    //ϵͳʱ���ź�
    input                  sys_rst_n ,    //ϵͳ��λ�ź�
    
    output       [3:0]     sel       ,    //�����λѡ�ź�
    output       [7:0]     seg_led   ,    //����ܶ�ѡ�ź�
    output	     [5:0]	   led            //LEDʹ���ź�,�����LED��
);

//wire define    
wire   [5:0]  ew_time;                    //��������״̬ʣ��ʱ������
wire   [5:0]  sn_time;                    //�ϱ�����״̬ʣ��ʱ������ 
wire   [1:0]  state  ;                    //��ͨ�Ƶ�״̬�����ڿ���LED�Ƶĵ���

//*****************************************************
//**                    main code                      
//*****************************************************
//��ͨ�ƿ���ģ��    
traffic_light u0_traffic_light(
    .sys_clk                (sys_clk),   
    .sys_rst_n              (sys_rst_n),      
    .ew_time                (ew_time),
    .sn_time                (sn_time),
    .state                  (state)
);

//�������ʾģ��	
seg_led    u1_seg_led(
    .sys_clk                (sys_clk)  ,
    .sys_rst_n              (sys_rst_n),
    .ew_time                (ew_time),
    .sn_time                (sn_time), 
    .en                     (1'b1),   
    .sel                    (sel), 
    .seg_led                (seg_led)
);

//led�ƿ���ģ��
led   u2_led(
    .sys_clk                (sys_clk  ),
    .sys_rst_n              (sys_rst_n),
    .state                  (state    ),
    .led                    (led      )
); 
   
endmodule        