//****************************************Copyright (c)***********************************//
//原子哥在线教学平台：www.yuanzige.com
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取ZYNQ & FPGA & STM32 & LINUX资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2022-2032
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           touch_top
// Last modified Date:  2018/08/20 13:20:51
// Last Version:        V1.0
// Descriptions:        LCD触摸顶层模块
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2022/04/22 14:38:00
// Version:             V1.1
// Descriptions:        优化代码
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module touch_top(
    input             clk          ,
    input             rst_n        ,
    //LCD触摸相关信号              
    output            touch_rst_n  , //触摸屏复位
    input             touch_int_in , //INT输入信号
    output            touch_int_dir, //INT方向控制信号
    output            touch_int_out, //INT输出信号    
    output            touch_scl    , //I2C的SCL时钟信号
    input             touch_sda_in , //I2C的SDA输入信号
    output            touch_sda_out, //I2C的SDA输出信号
    output            touch_sda_dir, //I2C的SDA方向控制   
    //用户端口
    input     [15:0]  lcd_id       , //LCD ID
    output            touch_valid  , //触摸标志
    output    [15:0]  tp_x_coord   , //X方向触摸点的坐标
    output    [15:0]  tp_y_coord     //Y方向触摸点的坐标          
);

//parameter define
parameter CLK_FREQ = 50_000_000   ;  //i2c_dri模块的驱动时钟频率(CLK_FREQ)
parameter I2C_FREQ = 250_000      ;  //I2C的SCL时钟频率
parameter REG_NUM_WID = 8         ;  //一次读写寄存器的个数的位宽
                                     
//wire define                        
wire  [6:0]             slave_addr;  //器件地址
wire                    i2c_exec  ;  //I2C触发执行信号
wire                    i2c_rh_wl ;  //I2C读写控制信号
wire  [15:0]            i2c_addr  ;  //I2C器件内地址
wire  [7:0]             i2c_data_w;  //I2C要写的数据
wire                    bit_ctrl  ;  //字地址位控制(0:8b,1:16b)
wire  [REG_NUM_WID-1:0] reg_num   ;  //一次读写寄存器的个数  
wire  [7:0]             i2c_data_r;  //I2C读出的数据
wire                    i2c_done  ;  //I2C操作完成
wire                    once_done ;  //一次读写操作完成
wire                    i2c_ack   ;  //应答标志
wire                    dri_clk   ;  //I2C驱动时钟

//*****************************************************
//**                    main code
//*****************************************************

//I2C驱动模块
i2c_dri_m  #(
    .CLK_FREQ      (CLK_FREQ),       //i2c_dri模块的驱动时钟频率(CLK_FREQ)
    .I2C_FREQ      (I2C_FREQ),       //I2C的SCL时钟频率
    .WIDTH         (REG_NUM_WID)     //一次读写寄存器的个数的位宽
    )                             
    u_i2c_dri_m(   
    .clk           (clk          ),  //i2c_dri模块的驱动时钟(CLK_FREQ)
    .rst_n         (rst_n        ),  //复位信号
                                 
    .slave_addr    (slave_addr   ),  //器件地址
    .i2c_exec      (i2c_exec     ),  //I2C触发执行信号
    .i2c_rh_wl     (i2c_rh_wl    ),  //I2C读写控制信号
    .i2c_addr      (i2c_addr     ),  //I2C器件内地址
    .i2c_data_w    (i2c_data_w   ),  //I2C要写的数据
    .bit_ctrl      (bit_ctrl     ),  //字地址位控制(16b/8b)
    .reg_num       (reg_num      ),  //一次读写寄存器的个数          
    .i2c_data_r    (i2c_data_r   ),  //I2C读出的数据
    .i2c_done      (i2c_done     ),  //I2C操作完成
    .once_done     (once_done    ),  //一次读写操作完成
    .scl           (touch_scl    ),  //I2C的SCL时钟信号
    .sda_in        (touch_sda_in ),  //I2C的SDA输入信号
    .sda_out       (touch_sda_out),  //I2C的SDA输出信号
    .sda_dir       (touch_sda_dir),  //I2C的SDA方向控制   
    .ack           (i2c_ack      ),  //应答标志
                                 
    .dri_clk       (dri_clk      )   //驱动I2C操作的驱动时钟
    );

//触摸驱动模块    
touch_dri  #(
    .WIDTH   (REG_NUM_WID)  //一次读写寄存器的个数的位宽     
     )
    u_touch_dri(
    .clk           (dri_clk       ),  //时钟信号
    .rst_n         (rst_n         ),  //复位信号（低有效）
                                  
    .slave_addr    (slave_addr    ),  //i2c器件地址
    .i2c_exec      (i2c_exec      ),  //i2c触发控制
    .i2c_rh_wl     (i2c_rh_wl     ),  //i2c读写控制
    .i2c_addr      (i2c_addr      ),  //i2c操作地址
    .i2c_data_w    (i2c_data_w    ),  //i2c写入的数据
    .bit_ctrl      (bit_ctrl      ),  //位控制信号 
    .reg_num       (reg_num       ),  //一次读写寄存器的个数
                                  
    .i2c_data_r    (i2c_data_r    ),  //i2c读出的数据
    .i2c_ack       (i2c_ack       ),  //i2c应答信号
    .i2c_done      (i2c_done      ),  //i2c操作结束标志
    .once_done     (once_done     ),  //一次读写操作完成    
     
    .lcd_id        (lcd_id        ),  //LCD ID
    .touch_valid   (touch_valid   ),  //触摸标志
    .tp_x_coord    (tp_x_coord    ),  //X方向触摸点的坐标
    .tp_y_coord    (tp_y_coord    ),  //Y方向触摸点的坐标   
    .touch_rst_n   (touch_rst_n   ),  //触摸屏复位
    .touch_int_in  (touch_int_in  ),  //INT输入信号
    .touch_int_dir (touch_int_dir ),  //INT方向控制信号
    .touch_int_out (touch_int_out )   //INT输出信号
    );

endmodule
