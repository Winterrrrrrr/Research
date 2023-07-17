// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Sep  9 11:12:13 2021
// Host        : USER-20180123QP running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               g:/ZYNQ/ZYNQ7020/7010/RLT/6_ip_clk_wiz/ip_clk_wiz.srcs/sources_1/ip/clk_wiz_0_1/clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(clk_out1_100m, clk_out2_100m_180, 
  clk_out3_50m, clk_out4_25m, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1_100m,clk_out2_100m_180,clk_out3_50m,clk_out4_25m,reset,locked,clk_in1" */;
  output clk_out1_100m;
  output clk_out2_100m_180;
  output clk_out3_50m;
  output clk_out4_25m;
  input reset;
  output locked;
  input clk_in1;
endmodule
