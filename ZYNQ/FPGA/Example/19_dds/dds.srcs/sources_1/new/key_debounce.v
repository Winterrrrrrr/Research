//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           key_debounce
// Last modified Date:  2021/08/28 09:49:50
// Last Version:        V1.0
// Descriptions:        ͨ������������е��������
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2021/08/28 09:49:50
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module key_debounce(
    input        sys_rst_n ,
    input        clk ,
    input        key ,         //�ⲿ����İ���ֵ
    output  reg  key_value ,   //������İ���ֵ
    output  reg  key_flag      //������İ���ֵ��Ч��־
);

//reg define
reg [19:0] cnt ;
reg        key_reg ;

//*****************************************************
//**                    main code
//*****************************************************

//����ֵ����
always @ (posedge clk or negedge sys_rst_n) begin
    if(!sys_rst_n) begin
        cnt <= 20'd0;
        key_reg <= 1'b1;
    end
    else begin
        key_reg <= key;           //������ֵ�ӳ�һ��
        if(key_reg != key) begin  //�����ǰ����ֵ��ǰһ�ĵİ���ֵ��һ���������������»��ɿ�
 //            cnt <= 20'd200_0000;  //�򽫼�������Ϊ20'd200_0000��
                                  //����ʱ200_0000 * 10ns(1s/100MHz) = 20ms
            cnt<=20'd10;          //�����ڷ���                               
        end
        else begin                //�����ǰ����ֵ��ǰһ������ֵһ����������û�з����仯
            if(cnt > 20'd0)       //��������ݼ���0
                cnt <= cnt - 1'b1;  
            else
                cnt <= 20'd0;
        end
    end
end

//������������յİ���ֵ�ͳ�ȥ
always @ (posedge clk or negedge sys_rst_n) begin
    if(!sys_rst_n) begin
        key_value <= 1'b1;
        key_flag  <= 1'b0;
    end
	//�ڼ������ݼ���1ʱ�ͳ�����ֵ
    else if(cnt == 20'd1) begin
		key_value <= key;
		key_flag  <= 1'b1;
        end
    else begin
		key_value <= key_value;
		key_flag  <= 1'b0;
    end
end

endmodule
