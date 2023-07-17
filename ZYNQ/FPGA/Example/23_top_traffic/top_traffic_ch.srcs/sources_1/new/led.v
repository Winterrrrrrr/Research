//****************************************Copyright (c)***********************************//
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com 
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡFPGA & STM32���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved                                
//----------------------------------------------------------------------------------------
// File name:           led
// Last modified Date:  2018/6/8 9:26:44
// Last Version:        V1.0
// Descriptions:        �źŵƿ���ģ��
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2018/6/8 9:26:47
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
// Modified by:       ����ԭ��
// Modified date:     
// Version:         
// Descriptions:      
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module led (
    input              sys_clk   ,       //ϵͳʱ��
    input              sys_rst_n ,       //ϵͳ��λ
    input       [1:0]  state     ,       //��ͨ�Ƶ�״̬
    output reg  [5:0]  led               //�����LED�Ʒ���ʹ�� 
);

//parameter define
parameter  TWINKLE_CNT = 20_000_000;     //�ûƵ���˸�ļ�������

//reg define
reg    [24:0]     cnt;                   //�ûƵƲ�����˸Ч���ļ�����

//����ʱ��Ϊ0.2s�ļ������������ûƵ���˸                                                              
always @(posedge sys_clk or negedge sys_rst_n)begin                                  
    if(!sys_rst_n)                                                                   
        cnt <= 25'b0;                                                                
    else if (cnt < TWINKLE_CNT - 1'b1)                                                                                                        
        cnt <= cnt + 1'b1;                                                                                                                                                                                                                                                             
    else                                                                             
        cnt <= 25'b0;                                                                
end                                                                                  
                                                                                     
//�ڽ�ͨ�Ƶ��ĸ�״̬�ʹ��Ӧ��led�Ʒ���                                                              
always @(posedge sys_clk or negedge sys_rst_n)begin                                  
    if(!sys_rst_n)                                                                   
        led <= 6'b100100;                                                            
    else begin                                                                       
        case(state)                                                                   
            2'b00:led<=6'b100010;        //led�Ĵ����Ӹߵ��ͷֱ�������������                        
                                         //���̻Ƶƣ��ϱ�����̻Ƶ�                                            
            2'b01: begin                                                             
                led[5:1]<=5'b10000;                                                  
                if(cnt == TWINKLE_CNT - 1'b1)  //������0.2���ûƵƵ�����״���л�һ��
                                               //������˸��Ч��                                 
                    led[0] <= ~led[0];                                               
                else                                                                 
                    led[0] <= led[0];                                                
            end                                                                      
            2'b10:led<=6'b010100;                                                    
            2'b11: begin                                                             
                led[5:4]<=2'b00;                                                     
                led[2:0]<=3'b100;                                                    
                if(cnt == TWINKLE_CNT - 1'b1)                                            
                    led[3] <= ~led[3];                                               
                else                                                                 
                    led[3] <= led[3];                                               
            end                                                                      
            default:led<=6'b100100;                                                  
        endcase                                                                      
    end                                                                              
end  

endmodule                