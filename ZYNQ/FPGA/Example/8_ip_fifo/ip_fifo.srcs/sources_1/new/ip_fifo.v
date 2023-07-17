//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           ip_fifo
// Last modified Date:  2019/05/10 11:31:26
// Last Version:        V1.0
// Descriptions:        FIFOʵ�鶥��ģ��
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2019/05/10 11:31:51
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module ip_fifo(
    input    sys_clk ,  // ʱ���ź�
    input    sys_rst_n  // ��λ�ź�
);

//wire define
 wire         fifo_wr_en         ;  // FIFOдʹ���ź�
 wire         fifo_rd_en         ;  // FIFO��ʹ���ź�
 wire  [7:0]  fifo_din           ;  // д�뵽FIFO������
 wire  [7:0]  fifo_dout          ;  // ��FIFO����������
 wire         almost_full        ;  // FIFO�����ź�
 wire         almost_empty       ;  // FIFO�����ź�
 wire         fifo_full          ;  // FIFO���ź�
 wire         fifo_empty         ;  // FIFO���ź�
 wire  [7:0]  fifo_wr_data_count ;  // FIFOдʱ��������ݼ���
 wire  [7:0]  fifo_rd_data_count ;  // FIFO��ʱ��������ݼ���

//*****************************************************
//**                    main code
//*****************************************************

//����FIFO IP��
fifo_generator_0  u_fifo_generator_0(
  .wr_clk(sys_clk),                // input wire wr_clk
  .rd_clk(sys_clk),                // input wire rd_clk
  .din(fifo_din),                      // input wire [7 : 0] din
  .wr_en(fifo_wr_en),                  // input wire wr_en
  .rd_en(fifo_rd_en),                  // input wire rd_en
  .dout(fifo_dout),                    // output wire [7 : 0] dout
  .full(fifo_full),                    // output wire full
  .almost_full(almost_full),      // output wire almost_full
  .empty(fifo_empty),                  // output wire empty
  .almost_empty(almost_empty),    // output wire almost_empty
  .rd_data_count(fifo_rd_data_count),  // output wire [7 : 0] rd_data_count
  .wr_data_count(fifo_wr_data_count)  // output wire [7 : 0] wr_data_count
);

//����дFIFOģ��
fifo_wr  u_fifo_wr(
    .clk            ( sys_clk    ),   // дʱ��
    .rst_n          ( sys_rst_n  ),   // ��λ�ź�

    .fifo_wr_en     ( fifo_wr_en )  , // fifoд����
    .fifo_wr_data   ( fifo_din    ) , // д��FIFO������
    .almost_empty   ( almost_empty ), // fifo���ź�
    .almost_full    ( almost_full  )  // fifo���ź�
);

//������FIFOģ��
fifo_rd  u_fifo_rd(
    .clk          ( sys_clk    ),      // ��ʱ��
    .rst_n        ( sys_rst_n  ),      // ��λ�ź�

    .fifo_rd_en   ( fifo_rd_en ),      // fifo������
    .fifo_dout    ( fifo_dout  ),      // ��FIFO���������
    .almost_empty ( almost_empty ),    // fifo���ź�
    .almost_full  ( almost_full  )     // fifo���ź�
);

ila_0 ila_0 (
	.clk       (sys_clk           ), // input wire clk

	.probe0    (fifo_wr_en        ), // input wire [0:0]  probe0  
	.probe1    (fifo_rd_en        ), // input wire [0:0]  probe1 
	.probe2    (fifo_din          ), // input wire [7:0]  probe2 
	.probe3    (fifo_dout         ), // input wire [7:0]  probe3 
	.probe4    (almost_full       ), // input wire [0:0]  probe4 
	.probe5    (almost_empty      ), // input wire [0:0]  probe5 
	.probe6    (fifo_full         ), // input wire [0:0]  probe6 
	.probe7    (fifo_empty        ), // input wire [0:0]  probe7 
	.probe8    (fifo_wr_data_count), // input wire [7:0]  probe8 
	.probe9    (fifo_rd_data_count)  // input wire [7:0]  probe9
);

endmodule 