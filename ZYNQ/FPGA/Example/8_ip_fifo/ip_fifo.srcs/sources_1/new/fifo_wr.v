//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           fifo_wr
// Last modified Date:  2019/05/10 13:38:04
// Last Version:        V1.0
// Descriptions:        дFIFOģ��
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2019/05/10 13:38:14
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module fifo_wr(
    //mudule clock
    input                  clk    ,           // ʱ���ź�
    input                  rst_n  ,           // ��λ�ź�
    //FIFO interface       
    input                  almost_empty,      // FIFO�����ź�
    input                  almost_full ,      // FIFO�����ź�
	output    reg          fifo_wr_en ,       // FIFOдʹ��
    output    reg  [7:0]   fifo_wr_data       // д��FIFO������
);

//reg define
reg  [1:0]  state            ; //����״̬
reg  		almost_empty_d0  ;  //almost_empty �ӳ�һ��
reg  		almost_empty_syn ;  //almost_empty �ӳ�����
reg  [3:0]  dly_cnt          ; //�ӳټ�����
//*****************************************************
//**                    main code
//*****************************************************

//��Ϊ almost_empty �ź�������FIFO��ʱ�����
//����Ҫ����ͬ����дʱ������
always@( posedge clk ) begin
	if( !rst_n ) begin
		almost_empty_d0  <= 1'b0 ;
		almost_empty_syn <= 1'b0 ;
	end
	else begin
		almost_empty_d0  <= almost_empty ;
		almost_empty_syn <= almost_empty_d0 ;
	end
end

//��FIFO��д������
always @(posedge clk ) begin
    if(!rst_n) begin
        fifo_wr_en   <= 1'b0;
        fifo_wr_data <= 8'd0;
        state        <= 2'd0;
		dly_cnt      <= 4'd0;
    end
    else begin
        case(state)
            2'd0: begin 
                if(almost_empty_syn) begin  //�����⵽FIFO��������
                    state <= 2'd1;        //�ͽ�����ʱ״̬
                end 
                else
                    state <= state;
            end 
			2'd1: begin
                if(dly_cnt == 4'd10) begin  //��ʱ10��
											//ԭ����FIFO IP���ڲ�״̬�źŵĸ��´�����ʱ
											//�ӳ�10���Եȴ�״̬�źŸ������                   
                    dly_cnt    <= 4'd0;
					state      <= 2'd2;     //��ʼд����
					fifo_wr_en <= 1'b1;     //��дʹ��
				end
				else
					dly_cnt <= dly_cnt + 4'd1;
            end             
			2'd2: begin
                if(almost_full) begin        //�ȴ�FIFO����д��
                    fifo_wr_en   <= 1'b0;  //�ر�дʹ��
                    fifo_wr_data <= 8'd0;
                    state        <= 2'd0;  //�ص���һ��״̬
                end
                else begin                 //���FIFOû�б�д��
                    fifo_wr_en   <= 1'b1;  //�������дʹ��
                    fifo_wr_data <= fifo_wr_data + 1'd1;  //��д����ֵ�����ۼ�
                end
            end 
			default : state <= 2'd0;
        endcase
    end
end

endmodule