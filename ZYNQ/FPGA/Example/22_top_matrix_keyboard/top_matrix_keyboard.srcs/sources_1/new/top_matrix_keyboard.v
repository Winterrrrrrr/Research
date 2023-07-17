`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/16 14:12:32
// Design Name: 
// Module Name: top_matrix_keyboard
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module top_matrix_keyboard(
    input         sys_clk    ,
	input         sys_rst_n  ,
	input   [3:0] key_row    ,
	input   [7:0] swi        ,
	output  [3:0] key_col    ,
    output  [3:0] sel_t      ,
    output  [7:0] seg_led_t  ,
    output  [7:0] led	

    );

//wire define	
wire [3:0]    key_value    ;
wire          key_flag     ;

//*****************************************************
//**                    main code                      
//*****************************************************

//�������ɨ��ģ��
key_4x4    u_key_4x4(
    .sys_clk    (sys_clk  ),
	.sys_rst_n  (sys_rst_n),
	.key_row    (key_row  ),
    .key_col    (key_col  ),
	.key_value  (key_value),
	.key_flag   (key_flag )
);

//�������ʾģ��
seg_led    u_seg_led(
    .clk       (sys_clk  ),
	.rst_n     (sys_rst_n),
	.key_value (key_value),
	.key_flag  (key_flag ),
    .sel_t     (sel_t    ),
    .seg_led_t (seg_led_t) 	
);

//���뿪��ģ��
swi_led     u_swi_led(
    .clk     (sys_clk  ),
	.rst_n   (sys_rst_n),
	.swi     (swi      ),
    .led     (led      )
);
endmodule