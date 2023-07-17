//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           da_wave_send
// Last modified Date:  2020/05/04 9:19:08
// Last Version:        V1.0
// Descriptions:        DA����ģ��
//                      
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2019/05/04 9:19:08
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module da_wave_send(
    input                 clk         ,  //ϵͳʱ��
    input                 rst_n       ,  //ϵͳ��λ���͵�ƽ��Ч
    
    input        [9:0]    rd_data     ,  //ROM����������
    output  reg  [9:0]    rd_addr     ,  //��ROM��ַ
    //DA�ӿ�
    output                da_clk      ,  //DA����ʱ��
    output       [9:0]    da_data        //�����DA������  
    );

//parameter
//Ƶ�ʵ��ڿ���
parameter  FREQ_ADJ = 10'd5;  //Ƶ�ʵ���,FREQ_ADJ��Խ��,���������Ƶ��Խ��,��Χ0~255

//reg define
reg    [9:0]    freq_cnt  ;  //Ƶ�ʵ��ڼ�����

//*****************************************************
//**                    main code
//*****************************************************

//����rd_data����clk�������ظ��µģ�����DAоƬ��clk���½��������������ȶ���ʱ��
//��DAʵ������da_clk����������������,����ʱ��ȡ��,����clk���½����൱��da_clk��������
assign  da_clk = ~clk;        
assign  da_data = rd_data;    //��������ROM���ݸ�ֵ��DA���ݶ˿�

//Ƶ�ʵ��ڼ�����
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        freq_cnt <= 10'd0;
    else if(freq_cnt == FREQ_ADJ)    
        freq_cnt <= 10'd0;
    else         
        freq_cnt <= freq_cnt + 10'd1;
end

//��ROM��ַ
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        rd_addr <= 10'd0;
    else begin
        if(freq_cnt == FREQ_ADJ) begin
            rd_addr <= rd_addr + 10'd1;
        end    
    end            
end

endmodule