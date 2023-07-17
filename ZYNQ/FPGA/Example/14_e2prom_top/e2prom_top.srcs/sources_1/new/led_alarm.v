//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           led_alarm
// Last modified Date:  2019/05/04 9:19:08
// Last Version:        V1.0
// Descriptions:        PL_LED0�Ƴ�����ʾ��д������ȷ��PL_LED0��˸��ʾ��д���Դ���
//                      
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2019/05/04 9:19:08
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module led_alarm 
    #(parameter L_TIME = 25'd25_000_000 
    )
    (
    input        clk       ,  //ʱ���ź�
    input        rst_n     ,  //��λ�ź�
                 
    input        rw_done   ,  //�����־
    input        rw_result ,  //E2PROM��д�������
    output  reg  led          //E2PROM��д���Խ�� 0:ʧ�� 1:�ɹ�
);

//reg define
reg          rw_done_flag;    //��д������ɱ�־
reg  [24:0]  led_cnt     ;    //led����

//*****************************************************
//**                    main code
//*****************************************************

//��д������ɱ�־
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        rw_done_flag <= 1'b0;
    else if(rw_done)
        rw_done_flag <= 1'b1;
end        

//�����־Ϊ1ʱPL_LED0��˸������PL_LED0����
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        led_cnt <= 25'd0;
        led <= 1'b0;
    end
    else begin
        if(rw_done_flag) begin
            if(rw_result)                          //��д������ȷ
                led <= 1'b1;                       //led�Ƴ���
            else begin                             //��д���Դ���
                led_cnt <= led_cnt + 25'd1;
                if(led_cnt == L_TIME - 1'b1) begin
                    led_cnt <= 25'd0;
                    led <= ~led;                   //led����˸
                end                    
            end
        end
        else
            led <= 1'b0;                           //��д�������֮ǰ,led��Ϩ��
    end    
end

endmodule
