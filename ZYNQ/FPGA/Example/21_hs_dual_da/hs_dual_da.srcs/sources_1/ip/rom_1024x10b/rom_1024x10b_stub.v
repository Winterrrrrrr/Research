// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Feb  2 17:11:41 2021
// Host        : abcoffice running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/ZYNQ/FPGA_Design/ZYNQ_7010/hs_dual_da/hs_dual_da.srcs/sources_1/ip/rom_1024x10b/rom_1024x10b_stub.v
// Design      : rom_1024x10b
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module rom_1024x10b(clka, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[9:0],douta[9:0]" */;
  input clka;
  input [9:0]addra;
  output [9:0]douta;
endmodule
