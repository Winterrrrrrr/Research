//****************************************Copyright (c)***********************************//
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com 
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡFPGA & STM32���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved                                
//----------------------------------------------------------------------------------------
// File name:           traffic_light
// Last modified Date:  2018/6/8 9:26:44
// Last Version:        V1.0
// Descriptions:        ��ͨ�ƿ���ģ��
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

module  traffic_light(
    //input
    input               sys_clk   ,        //ϵͳʱ��
    input               sys_rst_n ,        //ϵͳ��λ

    output  reg  [1:0]  state     ,        //��ͨ�Ƶ�״̬�����ڿ���LED�Ƶĵ���
    output  reg  [5:0]  ew_time   ,        //��ͨ�ƶ����������Ҫ��ʾ��ʱ������
    output  reg  [5:0]  sn_time            //��ͨ���ϱ��������Ҫ��ʾ��ʱ������
    );
  
//parameter define
parameter  TIME_LED_Y    = 3;              //�ƵƷ����ʱ��
parameter  TIME_LED_R    = 30;             //��Ʒ����ʱ��
parameter  TIME_LED_G    = 27;             //�̵Ʒ����ʱ��
parameter  WIDTH         = 25_000_000;     //����Ƶ��Ϊ1hz��ʱ��
  
//reg define
reg    [5:0]     time_cnt;                 //�����������ʾʱ��ļ�����    
reg    [24:0]    clk_cnt;                  //���ڲ���clk_1hz�ļ�����
reg              clk_1hz;                  //1hzʱ��

//*****************************************************
//**                    main code                      
//*****************************************************
//��������Ϊ0.5s�ļ�����  
always @ (posedge sys_clk or negedge sys_rst_n)begin
    if(!sys_rst_n)
        clk_cnt <= 25'b0;
    else if (clk_cnt < WIDTH - 1'b1)
        clk_cnt <= clk_cnt + 1'b1;
    else 
        clk_cnt <= 25'b0;
end 

//����Ƶ��Ϊ1hz��ʱ��
always @(posedge sys_clk or negedge sys_rst_n)begin
    if(!sys_rst_n)
        clk_1hz <= 1'b0;
    else  if(clk_cnt == WIDTH - 1'b1)
        clk_1hz <= ~ clk_1hz;
    else  
        clk_1hz <=  clk_1hz;
end

//�л���ͨ�źŵƹ�����4��״̬�������������Ҫ��ʾ��ʱ������
always @(posedge clk_1hz or negedge sys_rst_n)begin
    if(!sys_rst_n)begin        
        state <= 2'd0;
        time_cnt <= TIME_LED_G ;            //״̬1������ʱ��
    end 
    else begin
        case (state)
            2'b0:  begin                    //״̬1
                ew_time <= time_cnt + TIME_LED_Y - 1'b1;//�������������Ҫ��ʾ��ʱ������
                sn_time <= time_cnt - 1'b1;             //�ϱ����������Ҫ��ʾ��ʱ������
                if (time_cnt > 1)begin      //time_cnt����1��ʱ���л�״̬
                    time_cnt <= time_cnt - 1'b1;
                    state <= state;
                end 
                else begin
                    time_cnt <= TIME_LED_Y; //״̬2������ʱ��
                    state <= 2'b01;         //�л���״̬2
                end 
            end 
            2'b01:  begin                   //״̬2
                ew_time <= time_cnt  - 1'b1;
                sn_time <= time_cnt  - 1'b1; 
                if (time_cnt > 1)begin
                    time_cnt <= time_cnt - 1'b1;
                    state <= state;
                end 
                else begin
                    time_cnt <= TIME_LED_G; //״̬3������ʱ��
                    state <= 2'b10;         //�л���״̬3
                end 
            end 
            2'b10:  begin                   //״̬3
                ew_time <= time_cnt  - 1'b1;
                sn_time <= time_cnt + TIME_LED_Y - 1'b1; 
                if (time_cnt > 1)begin
                    time_cnt <= time_cnt - 1'b1;
                    state <= state;
                end 
                else begin
                    time_cnt <= TIME_LED_Y; //״̬4������ʱ��
                    state <= 2'b11;         //�л���ת̬4
                end 
            end 
            2'b11:  begin                   //״̬4
                ew_time <= time_cnt  - 1'b1;
                sn_time <= time_cnt  - 1'b1; 
                if (time_cnt > 1)begin
                    time_cnt <= time_cnt - 1'b1;
                    state <= state;
                end 
                else begin
                    time_cnt <= TIME_LED_G;
                    state <= 2'b0;          //�л���״̬1
                end 
            end         
            default: begin
                state <= 2'b0;
                time_cnt <= TIME_LED_G;  
            end 
        endcase
    end 
end                 

endmodule 