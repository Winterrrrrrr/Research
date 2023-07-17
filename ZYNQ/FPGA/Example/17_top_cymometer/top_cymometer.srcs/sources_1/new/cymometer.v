//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           cymometer
// Last modified Date:  2019/05/28 11:12:36
// Last Version:        V1.0
// Descriptions:        �Ⱦ���Ƶ�ʼ�ģ�飬���������ź�Ƶ��
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2019/05/28 11:12:36
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module cymometer
   #(parameter    CLK_FS = 26'd50_000_000) // ��׼ʱ��Ƶ��ֵ
    (   //system clock
        input                 clk_fs ,     // ��׼ʱ���ź�
        input                 rst_n  ,     // ��λ�ź�

        //cymometer interface
        input                 clk_fx ,     // ����ʱ���ź�
        output   reg [19:0]   data_fx      // ����ʱ��Ƶ�����
);

//parameter define
localparam   MAX       =  6'd32;           // ����fs_cnt��fx_cnt�����λ��
localparam   GATE_TIME = 16'd5_000;        // �ſ�ʱ������

//reg define
reg                gate        ;           // �ſ��ź�
reg                gate_fs     ;           // ͬ������׼ʱ�ӵ��ſ��ź�
reg                gate_fs_r   ;           // ����ͬ��gate�źŵļĴ���
reg                gate_fs_d0  ;           // ���ڲɼ���׼ʱ����gate�½���
reg                gate_fs_d1  ;           // 
reg                gate_fx_d0  ;           // ���ڲɼ�����ʱ����gate�½���
reg                gate_fx_d1  ;           // 
reg    [   63:0]   data_fx_t    ;          // 
reg    [   15:0]   gate_cnt    ;           // �ſؼ���
reg    [MAX-1:0]   fs_cnt      ;           // �ſ�ʱ���ڻ�׼ʱ�ӵļ���ֵ
reg    [MAX-1:0]   fs_cnt_temp ;           // fs_cnt ��ʱֵ
reg    [MAX-1:0]   fx_cnt      ;           // �ſ�ʱ���ڱ���ʱ�ӵļ���ֵ
reg    [MAX-1:0]   fx_cnt_temp ;           // fx_cnt ��ʱֵ

//wire define
wire               neg_gate_fs;            // ��׼ʱ�����ſ��ź��½���
wire               neg_gate_fx;            // ����ʱ�����ſ��ź��½���

//*****************************************************
//**                    main code
//*****************************************************

//���ؼ�⣬�����ź��½���
assign neg_gate_fs = gate_fs_d1 & (~gate_fs_d0);
assign neg_gate_fx = gate_fx_d1 & (~gate_fx_d0);

//�ſ��źż�������ʹ�ñ���ʱ�Ӽ���
always @(posedge clk_fx or negedge rst_n) begin
    if(!rst_n)
        gate_cnt <= 16'd0; 
    else if(gate_cnt == GATE_TIME + 5'd20)
        gate_cnt <= 16'd0;
    else
        gate_cnt <= gate_cnt + 1'b1;
end

//�ſ��źţ�����ʱ��ΪGATE_TIME��ʵ��ʱ������
always @(posedge clk_fx or negedge rst_n) begin
    if(!rst_n)
        gate <= 1'b0;
    else if(gate_cnt < 4'd10)
        gate <= 1'b0;     
    else if(gate_cnt < GATE_TIME + 4'd10)
        gate <= 1'b1;
    else if(gate_cnt <= GATE_TIME + 5'd20)
        gate <= 1'b0;
    else 
        gate <= 1'b0;
end

//���ſ��ź�ͬ������׼ʱ����
always @(posedge clk_fs or negedge rst_n) begin
    if(!rst_n) begin
        gate_fs_r <= 1'b0;
        gate_fs   <= 1'b0;
    end
    else begin
        gate_fs_r <= gate;
        gate_fs   <= gate_fs_r;
    end
end

//���Ĳ��ſ��źŵ��½��أ�����ʱ���£�
always @(posedge clk_fx or negedge rst_n) begin
    if(!rst_n) begin
        gate_fx_d0 <= 1'b0;
        gate_fx_d1 <= 1'b0;
    end
    else begin
        gate_fx_d0 <= gate;
        gate_fx_d1 <= gate_fx_d0;
    end
end

//���Ĳ��ſ��źŵ��½��أ���׼ʱ���£�
always @(posedge clk_fs or negedge rst_n) begin
    if(!rst_n) begin
        gate_fs_d0 <= 1'b0;
        gate_fs_d1 <= 1'b0;
    end
    else begin
        gate_fs_d0 <= gate_fs;
        gate_fs_d1 <= gate_fs_d0;
    end
end

 //�ſ�ʱ���ڶԱ���ʱ�Ӽ���
always @(posedge clk_fx or negedge rst_n) begin
    if(!rst_n) begin
        fx_cnt_temp <= 32'd0;
        fx_cnt <= 32'd0;
    end
    else if(gate)
        fx_cnt_temp <= fx_cnt_temp + 1'b1;
    else if(neg_gate_fx) begin
        fx_cnt_temp <= 32'd0;
        fx_cnt   <= fx_cnt_temp;
    end
end 

//�ſ�ʱ���ڶԻ�׼ʱ�Ӽ���
always @(posedge clk_fs or negedge rst_n) begin
    if(!rst_n) begin
        fs_cnt_temp <= 32'd0;
        fs_cnt <= 32'd0;
    end
    else if(gate_fs)
        fs_cnt_temp <= fs_cnt_temp + 1'b1;
    else if(neg_gate_fs) begin
        fs_cnt_temp <= 32'd0;
        fs_cnt <= fs_cnt_temp;
    end
end

//���㱻���ź�Ƶ��
always @(posedge clk_fs or negedge rst_n) begin
    if(!rst_n) begin
        data_fx_t <= 64'd0;
    end
    else if(gate_fs == 1'b0)
        data_fx_t <= CLK_FS * fx_cnt ;
end

always @(posedge clk_fs or negedge rst_n) begin
    if(!rst_n) begin
        data_fx <= 20'd0;
    end
    else if(gate_fs == 1'b0)
        data_fx <= data_fx_t / fs_cnt ;
end

endmodule
 