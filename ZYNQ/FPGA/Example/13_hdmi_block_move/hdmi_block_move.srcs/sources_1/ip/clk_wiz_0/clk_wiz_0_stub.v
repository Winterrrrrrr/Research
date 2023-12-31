// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug  9 20:18:09 2021
// Host        : LAPTOP-ID3APBIA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/ZYNQ7020/7010/RLT/15_hdmi_block_move/hdmi_block_move.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(pixel_clk_74_25m, pixel_clk_x5_371_25m, 
  reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="pixel_clk_74_25m,pixel_clk_x5_371_25m,reset,locked,clk_in1" */;
  output pixel_clk_74_25m;
  output pixel_clk_x5_371_25m;
  input reset;
  output locked;
  input clk_in1;
endmodule
