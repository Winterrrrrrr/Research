//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           clk_test
// Last modified Date:  2019/05/28 11:12:36
// Last Version:        V1.0
// Descriptions:        ʵ������ż������Ƶ
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2019/05/28 11:12:36
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module clk_test #(parameter DIV_N = 7'd100)    //��Ƶϵ��
    (
     //Դʱ��
     input        clk_in     ,                 // ����ʱ��
     input        rst_n      ,                 // ��λ�ź�
     //��Ƶ���ʱ��
     output  reg  clk_out                      // ���ʱ��
);

//reg define
reg [9:0] cnt;                                 // ʱ�ӷ�Ƶ����

//*****************************************************
//**                    main code
//*****************************************************

//ʱ�ӷ�Ƶ������500KHz�Ĳ���ʱ��
always @(posedge clk_in or negedge rst_n) begin
    if(rst_n == 1'b0) begin
        cnt     <= 0;
        clk_out <= 0;
    end
    else begin
        if(cnt == DIV_N/2 - 1'b1) begin
            cnt     <= 10'd0;
            clk_out <= ~clk_out;
        end
        else
            cnt <= cnt + 1'b1;
    end
end

endmodule