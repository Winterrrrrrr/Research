//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           e2prom_top
// Last modified Date:  2019/05/04 9:19:08
// Last Version:        V1.0
// Descriptions:        E2PROM��д���Զ���ģ��
//                      
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2019/05/04 9:19:08
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module e2prom_top(
    input               sys_clk    ,      //ϵͳʱ��
    input               sys_rst_n  ,      //ϵͳ��λ
    //eeprom interface
    output              iic_scl    ,      //eeprom��ʱ����scl
    inout               iic_sda    ,      //eeprom��������sda
    //user interface
    output              led               //led��ʾ
);

//parameter define
parameter    SLAVE_ADDR = 7'b1010000     ; //������ַ(SLAVE_ADDR)
parameter    BIT_CTRL   = 1'b1            ; //�ֵ�ַλ���Ʋ���(16b/8b)
parameter    CLK_FREQ   = 26'd50_000_000 ; //i2c_driģ�������ʱ��Ƶ��(CLK_FREQ)
parameter    I2C_FREQ   = 18'd250_000    ; //I2C��SCLʱ��Ƶ��
parameter    L_TIME     = 17'd125_000    ; //led��˸ʱ�����

//wire define
wire           dri_clk   ; //I2C����ʱ��
wire           i2c_exec  ; //I2C��������
wire   [15:0]  i2c_addr  ; //I2C������ַ
wire   [ 7:0]  i2c_data_w; //I2Cд�������
wire           i2c_done  ; //I2C����������־
wire           i2c_ack   ; //I2CӦ���־ 0:Ӧ�� 1:δӦ��
wire           i2c_rh_wl ; //I2C��д����
wire   [ 7:0]  i2c_data_r; //I2C����������
wire           rw_done   ; //E2PROM��д�������
wire           rw_result ; //E2PROM��д���Խ�� 0:ʧ�� 1:�ɹ� 

//*****************************************************
//**                    main code
//*****************************************************

//e2prom��д����ģ��
e2prom_rw u_e2prom_rw(
    .clk         (dri_clk   ),  //ʱ���ź�
    .rst_n       (sys_rst_n ),  //��λ�ź�
    //i2c interface
    .i2c_exec    (i2c_exec  ),  //I2C����ִ���ź�
    .i2c_rh_wl   (i2c_rh_wl ),  //I2C��д�����ź�
    .i2c_addr    (i2c_addr  ),  //I2C�����ڵ�ַ
    .i2c_data_w  (i2c_data_w),  //I2CҪд������
    .i2c_data_r  (i2c_data_r),  //I2C����������
    .i2c_done    (i2c_done  ),  //I2Cһ�β������
    .i2c_ack     (i2c_ack   ),  //I2CӦ���־ 
    //user interface
    .rw_done     (rw_done   ),  //E2PROM��д�������
    .rw_result   (rw_result )   //E2PROM��д���Խ�� 0:ʧ�� 1:�ɹ�
);

//i2c����ģ��
i2c_dri #(
    .SLAVE_ADDR  (SLAVE_ADDR),  //EEPROM�ӻ���ַ
    .CLK_FREQ    (CLK_FREQ  ),  //ģ�������ʱ��Ƶ��
    .I2C_FREQ    (I2C_FREQ  )   //IIC_SCL��ʱ��Ƶ��
) u_i2c_dri(
    .clk         (sys_clk   ),  
    .rst_n       (sys_rst_n ),  
    //i2c interface
    .i2c_exec    (i2c_exec  ),  //I2C����ִ���ź�
    .bit_ctrl    (BIT_CTRL  ),  //������ַλ����(16b/8b)
    .i2c_rh_wl   (i2c_rh_wl ),  //I2C��д�����ź�
    .i2c_addr    (i2c_addr  ),  //I2C�����ڵ�ַ
    .i2c_data_w  (i2c_data_w),  //I2CҪд������
    .i2c_data_r  (i2c_data_r),  //I2C����������
    .i2c_done    (i2c_done  ),  //I2Cһ�β������
    .i2c_ack     (i2c_ack   ),  //I2CӦ���־
    .scl         (iic_scl   ),  //I2C��SCLʱ���ź�
    .sda         (iic_sda   ),  //I2C��SDA�ź�
    //user interface
    .dri_clk     (dri_clk   )   //I2C����ʱ��
);

//ledָʾģ��
led_alarm #(.L_TIME(L_TIME  )   //����led��˸ʱ��
) u_led_alarm(
    .clk         (dri_clk   ),  
    .rst_n       (sys_rst_n ), 
    
    .rw_done     (rw_done   ),  
    .rw_result   (rw_result ),
    .led         (led       )    
);

endmodule
