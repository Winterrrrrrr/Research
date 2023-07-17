// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Oct 27 10:34:49 2021
// Host        : USER-20180123QP running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [23:0]douta;

  wire [13:0]addra;
  wire clka;
  wire [23:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [23:0]NLW_U0_doutb_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [23:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "7" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.379368 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "10000" *) 
  (* C_READ_DEPTH_B = "10000" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "24" *) 
  (* C_READ_WIDTH_B = "24" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "10000" *) 
  (* C_WRITE_DEPTH_B = "10000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "24" *) 
  (* C_WRITE_WIDTH_B = "24" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[23:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[23:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec
   (ena_array,
    addra,
    ena);
  output [0:0]ena_array;
  input [2:0]addra;
  input ena;

  wire [2:0]addra;
  wire ena;
  wire [0:0]ena_array;

  LUT4 #(
    .INIT(16'h1000)) 
    \ENOUT_inferred__3/i_ 
       (.I0(addra[1]),
        .I1(addra[0]),
        .I2(addra[2]),
        .I3(ena),
        .O(ena_array));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra,
    ena);
  output [23:0]douta;
  input clka;
  input [13:0]addra;
  input ena;

  wire [13:0]addra;
  wire clka;
  wire [23:0]douta;
  wire ena;
  wire [4:4]ena_array;
  wire [8:0]ram_douta;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[3].ram.r_n_7 ;
  wire \ramloop[3].ram.r_n_8 ;
  wire \ramloop[3].ram.r_n_9 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_9 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_10 ;
  wire \ramloop[5].ram.r_n_11 ;
  wire \ramloop[5].ram.r_n_12 ;
  wire \ramloop[5].ram.r_n_13 ;
  wire \ramloop[5].ram.r_n_14 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_8 ;
  wire \ramloop[5].ram.r_n_9 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_1 ;
  wire \ramloop[6].ram.r_n_2 ;
  wire \ramloop[6].ram.r_n_3 ;
  wire \ramloop[6].ram.r_n_4 ;
  wire \ramloop[6].ram.r_n_5 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_1 ;
  wire \ramloop[7].ram.r_n_2 ;
  wire \ramloop[7].ram.r_n_3 ;
  wire \ramloop[7].ram.r_n_4 ;
  wire \ramloop[7].ram.r_n_5 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:11]),
        .ena(ena),
        .ena_array(ena_array));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .DOPADOP(\ramloop[2].ram.r_n_8 ),
        .addra(addra[13:11]),
        .clka(clka),
        .douta(douta),
        .\douta[16] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\douta[16]_0 ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .\douta[17] (\ramloop[4].ram.r_n_8 ),
        .\douta[17]_0 (\ramloop[3].ram.r_n_8 ),
        .\douta[23] ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 ,\ramloop[5].ram.r_n_8 ,\ramloop[5].ram.r_n_9 ,\ramloop[5].ram.r_n_10 ,\ramloop[5].ram.r_n_11 ,\ramloop[5].ram.r_n_12 ,\ramloop[5].ram.r_n_13 ,\ramloop[5].ram.r_n_14 }),
        .\douta[23]_0 ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 }),
        .\douta[23]_1 ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 }),
        .\douta[7] ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .\douta[8] (\ramloop[1].ram.r_n_8 ),
        .ena(ena),
        .ram_douta(ram_douta));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[3].ram.r_n_9 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ram_douta(ram_douta));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[1].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[4].ram.r_n_9 ),
        .addra(addra[11:0]),
        .clka(clka));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.DOADO({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .DOPADOP(\ramloop[2].ram.r_n_8 ),
        .addra(addra[10:0]),
        .clka(clka),
        .ena_array(ena_array));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[3].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .ena(ena),
        .ena_0(\ramloop[3].ram.r_n_9 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[4].ram.r_n_8 ),
        .addra(addra),
        .addra_12_sp_1(\ramloop[4].ram.r_n_9 ),
        .clka(clka),
        .ena(ena));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 ,\ramloop[5].ram.r_n_8 ,\ramloop[5].ram.r_n_9 ,\ramloop[5].ram.r_n_10 ,\ramloop[5].ram.r_n_11 ,\ramloop[5].ram.r_n_12 ,\ramloop[5].ram.r_n_13 ,\ramloop[5].ram.r_n_14 }),
        .addra(addra[10:0]),
        .clka(clka),
        .ena_array(ena_array));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[3].ram.r_n_9 ),
        .addra(addra[11:0]),
        .clka(clka));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[4].ram.r_n_9 ),
        .addra(addra[11:0]),
        .clka(clka));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux
   (douta,
    addra,
    ena,
    clka,
    DOADO,
    \douta[7] ,
    ram_douta,
    DOPADOP,
    \douta[8] ,
    \douta[23] ,
    \douta[16] ,
    \douta[16]_0 ,
    \douta[17] ,
    \douta[17]_0 ,
    \douta[23]_0 ,
    \douta[23]_1 );
  output [23:0]douta;
  input [2:0]addra;
  input ena;
  input clka;
  input [7:0]DOADO;
  input [7:0]\douta[7] ;
  input [8:0]ram_douta;
  input [0:0]DOPADOP;
  input [0:0]\douta[8] ;
  input [14:0]\douta[23] ;
  input [7:0]\douta[16] ;
  input [7:0]\douta[16]_0 ;
  input [0:0]\douta[17] ;
  input [0:0]\douta[17]_0 ;
  input [5:0]\douta[23]_0 ;
  input [5:0]\douta[23]_1 ;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [2:0]addra;
  wire clka;
  wire [23:0]douta;
  wire [7:0]\douta[16] ;
  wire [7:0]\douta[16]_0 ;
  wire [0:0]\douta[17] ;
  wire [0:0]\douta[17]_0 ;
  wire [14:0]\douta[23] ;
  wire [5:0]\douta[23]_0 ;
  wire [5:0]\douta[23]_1 ;
  wire [7:0]\douta[7] ;
  wire [0:0]\douta[8] ;
  wire ena;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[2]_i_1_n_0 ;
  wire [8:0]ram_douta;
  wire [2:0]sel_pipe;

  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[0]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[0]),
        .I2(sel_pipe[2]),
        .I3(\douta[7] [0]),
        .I4(sel_pipe[1]),
        .I5(ram_douta[0]),
        .O(douta[0]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[10]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[23] [1]),
        .I2(sel_pipe[2]),
        .I3(\douta[16] [1]),
        .I4(sel_pipe[1]),
        .I5(\douta[16]_0 [1]),
        .O(douta[10]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[11]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[23] [2]),
        .I2(sel_pipe[2]),
        .I3(\douta[16] [2]),
        .I4(sel_pipe[1]),
        .I5(\douta[16]_0 [2]),
        .O(douta[11]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[12]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[23] [3]),
        .I2(sel_pipe[2]),
        .I3(\douta[16] [3]),
        .I4(sel_pipe[1]),
        .I5(\douta[16]_0 [3]),
        .O(douta[12]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[13]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[23] [4]),
        .I2(sel_pipe[2]),
        .I3(\douta[16] [4]),
        .I4(sel_pipe[1]),
        .I5(\douta[16]_0 [4]),
        .O(douta[13]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[14]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[23] [5]),
        .I2(sel_pipe[2]),
        .I3(\douta[16] [5]),
        .I4(sel_pipe[1]),
        .I5(\douta[16]_0 [5]),
        .O(douta[14]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[15]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[23] [6]),
        .I2(sel_pipe[2]),
        .I3(\douta[16] [6]),
        .I4(sel_pipe[1]),
        .I5(\douta[16]_0 [6]),
        .O(douta[15]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[16]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[23] [7]),
        .I2(sel_pipe[2]),
        .I3(\douta[16] [7]),
        .I4(sel_pipe[1]),
        .I5(\douta[16]_0 [7]),
        .O(douta[16]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[17]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[23] [8]),
        .I2(sel_pipe[2]),
        .I3(\douta[17] ),
        .I4(sel_pipe[1]),
        .I5(\douta[17]_0 ),
        .O(douta[17]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[18]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[23] [9]),
        .I2(sel_pipe[2]),
        .I3(\douta[23]_0 [0]),
        .I4(sel_pipe[1]),
        .I5(\douta[23]_1 [0]),
        .O(douta[18]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[19]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[23] [10]),
        .I2(sel_pipe[2]),
        .I3(\douta[23]_0 [1]),
        .I4(sel_pipe[1]),
        .I5(\douta[23]_1 [1]),
        .O(douta[19]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[1]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[1]),
        .I2(sel_pipe[2]),
        .I3(\douta[7] [1]),
        .I4(sel_pipe[1]),
        .I5(ram_douta[1]),
        .O(douta[1]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[20]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[23] [11]),
        .I2(sel_pipe[2]),
        .I3(\douta[23]_0 [2]),
        .I4(sel_pipe[1]),
        .I5(\douta[23]_1 [2]),
        .O(douta[20]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[21]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[23] [12]),
        .I2(sel_pipe[2]),
        .I3(\douta[23]_0 [3]),
        .I4(sel_pipe[1]),
        .I5(\douta[23]_1 [3]),
        .O(douta[21]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[22]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[23] [13]),
        .I2(sel_pipe[2]),
        .I3(\douta[23]_0 [4]),
        .I4(sel_pipe[1]),
        .I5(\douta[23]_1 [4]),
        .O(douta[22]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[23]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[23] [14]),
        .I2(sel_pipe[2]),
        .I3(\douta[23]_0 [5]),
        .I4(sel_pipe[1]),
        .I5(\douta[23]_1 [5]),
        .O(douta[23]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[2]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[2]),
        .I2(sel_pipe[2]),
        .I3(\douta[7] [2]),
        .I4(sel_pipe[1]),
        .I5(ram_douta[2]),
        .O(douta[2]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[3]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[3]),
        .I2(sel_pipe[2]),
        .I3(\douta[7] [3]),
        .I4(sel_pipe[1]),
        .I5(ram_douta[3]),
        .O(douta[3]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[4]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[4]),
        .I2(sel_pipe[2]),
        .I3(\douta[7] [4]),
        .I4(sel_pipe[1]),
        .I5(ram_douta[4]),
        .O(douta[4]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[5]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[5]),
        .I2(sel_pipe[2]),
        .I3(\douta[7] [5]),
        .I4(sel_pipe[1]),
        .I5(ram_douta[5]),
        .O(douta[5]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[6]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[6]),
        .I2(sel_pipe[2]),
        .I3(\douta[7] [6]),
        .I4(sel_pipe[1]),
        .I5(ram_douta[6]),
        .O(douta[6]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[7]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[7]),
        .I2(sel_pipe[2]),
        .I3(\douta[7] [7]),
        .I4(sel_pipe[1]),
        .I5(ram_douta[7]),
        .O(douta[7]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[8]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOPADOP),
        .I2(sel_pipe[2]),
        .I3(\douta[8] ),
        .I4(sel_pipe[1]),
        .I5(ram_douta[8]),
        .O(douta[8]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[9]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(\douta[23] [0]),
        .I2(sel_pipe[2]),
        .I3(\douta[16] [0]),
        .I4(sel_pipe[1]),
        .I5(\douta[16]_0 [0]),
        .O(douta[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1 
       (.I0(addra[0]),
        .I1(ena),
        .I2(sel_pipe[0]),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1 
       (.I0(addra[1]),
        .I1(ena),
        .I2(sel_pipe[1]),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[2]_i_1 
       (.I0(addra[2]),
        .I1(ena),
        .I2(sel_pipe[2]),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe[2]_i_1_n_0 ),
        .Q(sel_pipe[2]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
   (ram_douta,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    addra);
  output [8:0]ram_douta;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [11:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]ram_douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .clka(clka),
        .ram_douta(ram_douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1
   (DOADO,
    DOPADOP,
    clka,
    ena_array,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [0:0]ena_array;
  input [10:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [10:0]addra;
  wire clka;
  wire [0:0]ena_array;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    ena_0,
    clka,
    addra,
    ena);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output ena_0;
  input clka;
  input [13:0]addra;
  input ena;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire clka;
  wire ena;
  wire ena_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena(ena),
        .ena_0(ena_0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra_12_sp_1,
    clka,
    addra,
    ena);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output addra_12_sp_1;
  input clka;
  input [13:0]addra;
  input ena;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire addra_12_sn_1;
  wire clka;
  wire ena;

  assign addra_12_sp_1 = addra_12_sn_1;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .addra_12_sp_1(addra_12_sn_1),
        .clka(clka),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    ena_array,
    addra);
  output [14:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input [0:0]ena_array;
  input [10:0]addra;

  wire [14:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [10:0]addra;
  wire clka;
  wire [0:0]ena_array;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [5:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [11:0]addra;

  wire [5:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [5:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [11:0]addra;

  wire [5:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
   (ram_douta,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [8:0]ram_douta;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [11:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]ram_douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hB7862D27FFFFFFFFFFFFFFFEFFFFB8F6FFFFFFFFFFFFFFFFCFFFF8FE77FFFFFF),
    .INITP_01(256'hFFFFFFFFFEFFFFE69753C3FFFFFFFFFFFFF5CF3448857D7FFFFFFFFFFFFF366F),
    .INITP_02(256'h5F57D5F0C63FFFFFFFFFFFFFFA7469C93C8FFFFFFFFFFFFFEC72FEF47FFB7FFF),
    .INITP_03(256'hF3FFFFFFFFFFF3FB01F0C40EBFFFFFFFFFFFFCDF02C769B777FFFFFFFFFFFFDC),
    .INITP_04(256'h8FF217F9677E3B33FFFFFFFFF1E50D4B78FF834E3FFFFFFFFFF9CA35CECDDD68),
    .INITP_05(256'h3E7B4FFFFFFFFD17CBBC8FF4FFCFE8FFFFFFFFBCEF1FCB0BFFF9F0FFFFFFFFFF),
    .INITP_06(256'hFF08B2A5CC6AD54BEBAFFFFFFFFDE501DB9C51E1735AFFFFFFFF59B92F0797FC),
    .INITP_07(256'hA49F80B4FFFFFFFFAAC2D7A70FFF90019FFFFFFFF3B71CF83D864E2209FFFFFF),
    .INITP_08(256'hFFFFFED4033B9575D0FD32FFFFFFFFCE90FC23BAFFFE0F5FFFFFFFFC5C0EC44F),
    .INITP_09(256'hD41E81DA3F5FFFFFFFFBD812ED1E2A7DCDA9FFFFFFFFFB020237FA4F13EBFFFF),
    .INITP_0A(256'hFFFFFFFFF61801BFCC9E96FB7FFFFFFFFBA1603ED8617398B9FFFFFFFFDF0143),
    .INITP_0B(256'h00073BC19C868FFFFFFFFFFF400465D5B5B8698FFFFFFFFBD0008C9A0358352D),
    .INITP_0C(256'h7CDFFFFFFFFFC000C1CBF430FDEBFFFFFFFFA600002BAF33F483DFFFFFFFFFE0),
    .INITP_0D(256'hB440A218927E50FC9FFFFFFFFFE400605C0D6D4B7FFFFFFFFFFC20084A32D444),
    .INITP_0E(256'hE05D0CFFFFFFFFFD24008471BF351B8FFFFFFFFDE00110CE1108FDFBFFFFFFFF),
    .INITP_0F(256'hFFFE9AC410146E9CBCABFFFFFFFFF20806109D8F6440BFFFFFFFFF640060008B),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFDFCFDFEFFFFFFFFFEFEFEFEFEFFFFFEFFFDFEFEFFFFFFFFFEFFFFFFFFFFFE),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFDFAFFFFFDFAFAFAFAFBFFFEFEF9FAF7FAFDFEFFFEFCFFFFFEFEFDFAFEFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFFFFFEFEFEFEFFFFFEFEFEFCF9FAF9),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFDFEFEFCFCFFFEFBFCFDFFFDFCFBFAFBFEFFFDFAF9F9FCFEFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFBFDFFFFFCFCFDFFFDFDFEFDFCFDFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFCFEF8F9FFFFFFFFFAF6F7FBFCFAF8F9FBFEFFFFFFFEFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFEFDFBFCFCFBFEFFFEFFFFFEFEFFFFFFFFFDFDFEFDFEFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hD8CBCEE8FFFFFFFFFAFAFAFCFEFFFFFFFEFDFCFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFDFCFBFCFEFDFFFFFFFEFDFFFFFFF5DAC0D6DFE6EDF2F9F7EEE9E1),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'h80B2EAFFFFFEFEFDFCFEFFFFFEF8FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFDFBFBFDFFFFFFFEFDFDFFFFE9C0843E63B5BCC6CFDDE5EAEAE2D9D2C7C39D50),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFAF9FBFDFEFEFEFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hFFFFFEFBFEFFF0AB0B1B7AA0B5B6B9C5CED9E1E5E3E0D6D0C7BFB0AF8F53299F),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9FAFF),
    .INIT_19(256'hFFFDF8F6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hE37500006690929AA2A9B3BEC9D2D9DCDBD8D3C7BBB4A79F979C8A250893FFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAFCFDFFFDF8FF),
    .INIT_1C(256'hFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'h80818B939C9CABB1B9BFC6C9CAC7C7BDB1A79D968F888689410054E4FFFAF9FB),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFCFCFEFEFFA421000663),
    .INIT_1F(256'hFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'h91AACAD6E4ECF4F5F8F8F6F1EEE9D9CAAB91726A74570006ABFFFFFEFFFDFFFE),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFDF9FAFFE34B04000E746D6E72797F),
    .INIT_22(256'hFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFEFAFBFBFFFFFCFCFFFFFFF6E5C4A7745E32000C8FFFFFFEFEFEFCFBFCFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFFFFCFBFFFDF9FAFCFFD12E000B11546360576692B8E0F2FFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hF6F9FEFBFAFAFEFCFEFEFEFFF9B58B33000073FAFFFEFFFDFDFEFFFFFDFBFAFC),
    .INIT_27(256'hFFFFFFFFFEFDFFFBF9F7FFDE00010B084C5143599DD0FFFFFFFFFCFFFFFEFAF7),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'hFFFFFFFEFFFEFDFFFFFFF7D43A00006CFFFAFCFFFDFDFEFFFCFCFBFDFFFFFFFF),
    .INIT_2A(256'hFFFFFDFEFFFFDF1B040C032E452B78D6FFFFFEFBF9FBFBFBFFFFFFFFFFFCFFFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'hCDDCEAF0FFFFFAFFFFC50D0077F7F9FBFDFDFBFDFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hFFD500000B091F3957CFFFFFFCFEFCFDFFFFFCF9FFFFFDF4EDE2CCC7BEB9BABC),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF6),
    .INIT_2F(256'h7BA0F6FFFFFFE77300AFFFFFFFFEFCF9FEFFFCFDFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'h09000D7AF6FFF6FAFFFFFDFCFDFFFFFFCCA99B94908B84837F7B746E6C696C6F),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFED38000B),
    .INIT_32(256'h81D0FFFFA900B4FFFDFDF8F8FEFFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'hFFFEF9FBFDFBFFFFF0B888716E72787E7A7C737674716C6B635C554C42383342),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFBFDF8FF53000D0F070ACAFF),
    .INIT_35(256'hFFD543D7FFFCF9FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'hF7FFF8BC7064616B6C7178786F6B5D5A5B5B5955463F3536373A3D2E223163BE),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFBF8FFAF00080F0611B2FFFBF7FDFBF8),
    .INIT_38(256'hFFFEF8FBFEFFFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'h595A61635E626C7C91A5B8C4CACDCDCBC5BCA4906E522F20181F0A005DCEDA97),
    .INIT_3A(256'hFFFFFFFFFFFDFDFFFFFFFDFBF9FCE628020B0615D8FFFFFBFFFCFAFCF0AF523B),
    .INIT_3B(256'hFEFFF9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3C(256'h6D9AC5E7F9FBFFFFFFFFFFFFFFFFFFFFF9E9A0712D040A020001C2F7EBFFFAF9),
    .INIT_3D(256'hFFFCFBFFFFFFFDFBF7FF7D050E0914B1FFFBFDFBFEFFFFFF6C363E464C524849),
    .INIT_3E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'hFFFDFAFBFBFDFEFCFDFEFBF8FDFFFFFFFFF7621C0509005EFFFFFCFEFFFEFCFD),
    .INIT_40(256'hFFFFFEFAFFF70006100E064AFFFEFEFCFFFFA5162D3F3F3B424D99ECFFFFFFFF),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFF),
    .INIT_42(256'hF9FFFFFFFFFFFFFFFFFFFFFCFEFFFFEE700000008BFFFEFFFEF9FCFFFFFFFFFF),
    .INIT_43(256'hFE99000C0D0D0D0089FFF6FFFFB60A2430392424A9ECFFFAF7FDFFFEFDF9F8F9),
    .INIT_44(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFFFFFFFFFC),
    .INIT_45(256'hDCD6D5DEE6EDF8F8FFFFFFFFFFFF780B008BFFFAFFFFFEFEFFFFFFFFFFFFFFFF),
    .INIT_46(256'h0D0C0F0F0087FFFF680122231D1EA9FFFFFFFCFFFDFBFCF9FDFFFFFFFAF9F3E2),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFEFFFFFFE411060E),
    .INIT_48(256'hD7D6D0CED6D4E0FFFFFFFFC72200FFFAF9F9F8FAFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'h0D08B78D071824044CC0FFFEFBFEFCF9F9FAFDFFFFEED7DACFCDCBCED1D1D3D6),
    .INIT_4A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAFDFFFCFFC1000F0E0F0D0E0F),
    .INIT_4B(256'hD3CBC9CBD9E3FDFFFC73C1FFFCF7FBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4C(256'h0E121161FFFFFDF8FAFEFEFBFEFEE3DBC3BBB7C8D6D7D5D7D6D6D8D7DCE2DDDA),
    .INIT_4D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF9FAFFFEFF3B00130D0E0C0D0D0D0D0705),
    .INIT_4E(256'hD2BACCEAFFFFD3FEFEF8FDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'hFFFFFCFDFFFEFDFFF1B3A2B4C9CBCACECFCDCCCED0D1D0D0D3D7D9D9DBE1EBE8),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFEFBF9FEFFF70005120C0C0D0E0F0B10090A0A0077FE),
    .INIT_51(256'hBAE4FFFFFEFEFAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'hFDFEF9FAFFDAA3B6C0C5C2C0C3C2C4C6C9CBD0D0D0D0D4D8D9D9DDDDE2E2E0C4),
    .INIT_53(256'hFFFFFFFFFFFFFEFCF8FAFF9F00080E0B0A0D0F0E0E0E0E0E003DFFFEFEFEFDFC),
    .INIT_54(256'hFFFFF9FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_55(256'hFDFFE293B3C2BCBDBEC0C2C4C6C8C9CACFD4D1D3D9DAD7D4DADFDFE1DCC8BCFB),
    .INIT_56(256'hFFFFFDFBFBFDFF7E000D0D0C0A0C0E100F110E0F0810F1FFFEFFFCF7F9FCFAF8),
    .INIT_57(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_58(256'h93A6BEC0C0BFC2C4C5C5C4C7CACACED1D7D4CFD2DDE7E4E2D9E1CCE4FFFCFEFF),
    .INIT_59(256'hFEFFE63300070D0D0C0C0E0E0E100D100F0500B3FFFFFDFAFEFDFEFFFCF9FFFE),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9),
    .INIT_5B(256'hB3B4BBBDBDC1C3C3C3C4CCCFCCD1D4D8D8D9DCE4E0DFD1DCFFFBFAFDFFFFFFFF),
    .INIT_5C(256'h09080D0D0F0C0E0D0B0B0E0E14120303BDFFFDF7FFFFFFFEF9FAFEFFEF909AB5),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8FEFFCB07),
    .INIT_5E(256'hB4B8C2C4C3C5C6C9CACDD1D4D5D5DADDE0E0D0DDFEFCFDFEFFFFFFFFFFFFFFFF),
    .INIT_5F(256'h0C0C0D0D0E0F0E0D13140906026FFFFFFEFEFFFDFDFEFFF9FDFBA08EB6B8BCB6),
    .INIT_60(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFAFFC40005080A0C),
    .INIT_61(256'hC4C3C7C6C8CBCDCFD3D4D6D7DBDDD1DDFEFCFEFDFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'h0F0F0C0E0F120B0C09006CF6FFFEFEFEFDFEFCF8FAFFFDB68DB9B6B0B5BBBFC1),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF7FFBA0006090B0B0A0D0B0C),
    .INIT_64(256'hC7CACDCDD0D0D1D5D8DCCFDCFFFDFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'h0C0E0F100B0D0032FEFFFCFBFDFAF6FBFFFDFBFFC688AFB4B5B8BBC0C1C0C5C3),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF7FFAA00050807090B0C0D0C0D0F0C0D),
    .INIT_67(256'hCDCECCD1D5D9CFDCFFFDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_68(256'h0D0A0F0248F3FFFCFBF8F5FCFDFEF6FCFFCD81B2B7B5B7BABBBEC1C2C4C7C9CB),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFEF7FFA4000504080B0A0B0D0D0C0E0C0E0A0A1013),
    .INIT_6A(256'hD0D4CBD7FFFDFAFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'h0003D3FFFBF8F8F8FDFFFDFDFDFFE08AAABAB5AFB3BBBEC0C3C3C4C5C7C9CACE),
    .INIT_6C(256'hFFFFFFFFFFFFFFFEF8FFB4000009070B090A0C0B0E0E0A0D0D0B0A0E0E141414),
    .INIT_6D(256'hFFFCFBFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFF6FBFFFDFEFCFDFCFEFFF5839EBFB4AFB8B8BDC0C0C2C4C7C9C7CDCED1C6D9),
    .INIT_6F(256'hFFFFFFFEF8FFC100040506080A0B0C0C0E0E0B0C100F0A0B0F141613090016B9),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hFDFEF9FBF8F8FAFFFF9F8DB9BCB4B6B7BABDBEC2C5C6C6CBC9CBBEE1FFFAFDFF),
    .INIT_72(256'hF9FFC700030A070909090B0A0D0E0B0B12140F0C0B0C0D1110120B0092FFFFFD),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_74(256'hFAFAFCFDFFF9988CBAB3B2B6B6B8BBBCC2C2C7CAC6C7B7E2FFF9FCFFFFFFFFFF),
    .INIT_75(256'h02050909080A0A0B0D0D0A0B0E0F0E0D0C09080C12151106078FFFFFFAFEFCF7),
    .INIT_76(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFD515),
    .INIT_77(256'hFBFFFFB188AEB0B1B6B5B7B9BCBDC6C8C2C2B2E3FFF8FEFEFFFFFFFFFFFFFFFF),
    .INIT_78(256'h08090A090D0C0B0B09090B0D0D0E0B0E0F120B0D09006BE9FFFBFFFDFEFCFFFE),
    .INIT_79(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFF85200070707),
    .INIT_7A(256'hB786B2B5AFB1B7B7B9BBC0C4C1C6B0E5FFFBFEFCFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'h080D0F0A0B0D0D0C0D0C0E0F11130D1011090242FFFFFDFEFDFDFFFFFBFCFFFF),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFB3000004030909090A),
    .INIT_7D(256'hA8A9B4B8B8B5BCB9C1CAA8F8FFFFFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7E(256'h0D120E0C0B090E0E121212100F0D0E020FD1FCF8FAFFFEFAFCFFFDFCFFBDA3B1),
    .INIT_7F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFCFFFFF9FFFF5D0201050808060A0A0C0D),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],ram_douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],ram_douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [11:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hDE5B295BFFFFFFFFFFA3A080806B716F39FFFFFFFF97D00808036FF08C6FFFFF),
    .INITP_01(256'hFFFFFFFFCDFFFFCDE868AB3FFFFFFFFC397CE7DEE7ADC875FFFFFFFFEDBD4001),
    .INITP_02(256'h78792EBADFCEFFFFFFFFF4D067FBF751B635FFFFFFFFFC779BC889D724DC47FF),
    .INITP_03(256'hFFFFFFFFFFFD389A85FB039FFBFFFFFFFFE6F46F8295968E9BDFFFFFFFFDF7DB),
    .INITP_04(256'hF5BDFFFBBF2AFEFFFFFFFFFFFEEFF86BF3B8AFB7FFFFFFFFFF92E27597ED5D21),
    .INITP_05(256'h7DEEFFFFFFFFFFC32BFFFFF929CD5FFFFFFFFFFEE1B14E4BD9A8FFFFFFFFFFFF),
    .INITP_06(256'hFF3CBD5B68C4C74F6CFFF37FFFFFDE71A3F3E49C70CFFFFFFFFFFECE0752D250),
    .INITP_07(256'h6E6FD90FFE855FFBDE01B998017AB0F9FF0EF9FFB2DF3C142853E1ABFFFF7FEF),
    .INITP_08(256'hC9000609FDE0265C14CD900AC93FFFE4119FFFFF994D990004190062500A6442),
    .INITP_09(256'h3BFFF9F73A81127FFFFFBFFFFFDA3AF9DFFFFFC6BAFA68D06C01F732066EFFCE),
    .INITP_0A(256'h09F55664A3D881CE7C0C6520267A6399F835DE7241AB645109FC741EB0CCCB1D),
    .INITP_0B(256'h60FE7FFF3FE555FFECA419CFFCBFAD8E31FD7F37FFC1B442B6946BF2CBAF4634),
    .INITP_0C(256'hE13F278CDDDDFDB39C64D5D97BF47C534F75E4974444A76673D373B57C632ED0),
    .INITP_0D(256'h39E50E4F9FFFC3565FC57CEFFF415B07F7533F7FF5F567A85B2AFFFB3F6FB06B),
    .INITP_0E(256'h896DFABF719B86FEC6D7EE4FFFEB004BCF7C63DBE9B954FCEBD8B54E36C5EB81),
    .INITP_0F(256'h1AD91D5497DD8FCB3B9D7371F3FFFF2193C5FA30263F1B4DABB07E55FF757AA8),
    .INIT_00(256'hB5B0BAB6BBC2A6FDFCFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'h110F0E0C0C0A110A0A100800004FFFFAFBFCFBF9FCFDFFFF9684AAB2ADA7ACB6),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFDFCFDFFFEFDFDFBFFCE4500000003080C06090D09090C),
    .INIT_03(256'hB69FEBFEF1FDFBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'h080A080000012B95F5FFFFFEFEFCFBFEFAFFE1838CA49F9699A5AEB3B4B2B5B6),
    .INIT_05(256'hFFFFFFFFFFFAFBFEFBF9FDFF3A95FFFFED9E2A050000050F0D0C0F1114140E0D),
    .INIT_06(256'hF5FCFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'h86C3E7FFFFFBFDFDFFFFFEFFFFCF8588A6A472CA9391B5B4B1B0B4B2BB91FDFC),
    .INIT_08(256'hFFFDFFFEF8FDFFFFC93893F3FFFFE6CB745A1600000000000000000000002857),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFCFCFCFBFCFDFFE79C718D9E967BC8FFE6939DADA7ACB0B1A7A5FFFDFDFCFEFF),
    .INIT_0B(256'hFDFEFBFEFF9D4C6BBDF8FFFFFFFFE7CDC0AF998C83919FB3C6CEF5FFFFFFFFFA),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFB),
    .INIT_0D(256'hFFFFB26E7E9A998D79BCFFFFFFE67A9BA5A5A8B09CDBFFFEFFFDFDFFFFFFFFFF),
    .INIT_0E(256'hFFFF5F7A5C81E0FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFCFBFDFBFDFAFC),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFEFFFAFBFE),
    .INIT_10(256'h948E7775FFFFFDFBFCFFE38AA4A7A49F9CFCFAFEFDFFFEFEFFFFFFFFFFFFFFFF),
    .INIT_11(256'h7A885374D7ECFCFFFAF9F7FAF9FEFEFAFAFEFBF9F9FDFEFDFFFFF4E7B0577096),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFCF7FAFCFBFFFC6E),
    .INIT_13(256'hFFF6FCFBFAFCFFC699ACAA82CCFFFDFEFBFEFDFDFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'h745299DCF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5CF69627086908F8157A0F9),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF8F9FDFAF6F9E9F96F628C86),
    .INIT_16(256'hF5FFB6749FA0919FFFFCFDFEF7FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'h6F68789DCDE3E5E5E3E3E5D3AE82646B656D868E8D8A7A608DE5FFFFFCFDFEF9),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAFFFFFDFAFFD293FFC34C6A838B7971),
    .INIT_19(256'hA29B85E8FAF6FFFEF7FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'h787C7A79716F7C7A7A76727D89908E87795089C3FAFFFCFCFEFDFEFEFFC1769F),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFEFDFFFFFEFDFEFFAE80FFE4AD555C8189877C7374),
    .INIT_1C(256'hF5FAFFFDF9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'h928F908F8F8985827D705F7298D4FFFFFAF9FCFEFCF9FFFFA367969F9D73D8FF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFF734AE9FFEFC08E7A606B8184878A8D8C),
    .INIT_1F(256'hF9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'h6F6E706C668DBCE4FFFFFFF9FBFCFDFDFFFFE79B708D98A375A1FFFEFDFDFFFD),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFEFEFFF46856CCFFFFFFE6BAA56F6C6E6B6B6C6E726D6E),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFDF7FBFFFEFEFAFBFFF4CD58749592977D91FCF9FAFFFEFFFDFBFCFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFEFAFFFF6A3A9BE1FFFFFFFFFFFFE9C6A498969897989EAFD3FF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFAF6FDFEFFFFFFE0775F8F8C8A91766EFFFEF4FBFFFCFCFFFCFCFEFFFFFFFFFF),
    .INIT_27(256'hFFFFFCF9F8FFE5656D58C8FFFFFFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFEFBF6F8),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'hF2C6566388898F8D8C6885FFFFFFFFFFFDF8F9FFFEFAFEFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'hFFFAFFFF687776509CE4FFFFFFFEFDFEFAFAFFFDFDFDFAFDFDFFFFFFFCF7FFFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'h888588875688FEFFF8FCFFFFFBF6FCFFFEFAFEFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hF0616185756F74ADFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFCA7270717D89),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFAFF),
    .INIT_2F(256'hB8FFFFFEFCF9FEFFFCF9FEFFFEFAFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'h8888796F5E759699BDDAF6FDFEFDFDF7DDC095917C666C7681898C8A85847862),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCF8F9FEFEFFFF8A62),
    .INIT_32(256'hFCF9F8F9FEFEFEFFFFFEFEFFFFFFFFFFFFFFFFFFFFFEFEFEFEFDFFFFFFFFFFFF),
    .INIT_33(256'h8879656172787C80817F7F7D7A7266667A8A8B8986898B8B84607BD1FFFAF7FF),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAF9FBFEFCF9FCFEBE616A918B),
    .INIT_35(256'hFEFCFFFEFBFBFFFFFFFFFFFFFFFFFFFFFCFAFAFAF9F9FCFCFFFFFFFFFEFEFEFF),
    .INIT_36(256'h8C938C8A86898A888E8F8B89898986858889766A79ABFFFFFCF7FDFFFEFDF6FA),
    .INIT_37(256'hFFFFFFFFFFFFFFFDFDFFFFFFFFFFFEFCFDFFFEFEFCF9FCFFF09F696D908C8787),
    .INIT_38(256'hF9FBFFFFFFFFFFFFFFFFFFFFFEFCFDFDFBFBFDFAFCFCFEFFFBF9FAFBFFFFFFFF),
    .INIT_39(256'h858584848582868887878D8B79515D98FFFFFCFCF9FAFFFFFFFFFBFDFDF7FDFE),
    .INIT_3A(256'hFFFFFFFEFEFFFEFCFDFDFDFFFFFFFFFFFEFDFEFCFFFFDC8C4F6987898A868584),
    .INIT_3B(256'hFEFEFEFFFDFDFFFEFEFFFFFFFEFEFEFCFEFCFDFDFEFBFEFEFFFFFFFFFFFFFFFF),
    .INIT_3C(256'h84878481796E676588F0FFFFFDFAF9FDFCFAFDFFFEFAFEFFFCF9FEFFFEFFFFFF),
    .INIT_3D(256'hFFFFFEFCF9F9F8FCFFFFFFFFFFFFFCFEF5EEFFFFFFBD666C6972808483878885),
    .INIT_3E(256'hFBFBFCFBFBFEFFFDF9FAFFFFFFFEFBFDFFFFFEFFFCFDFDFDFDFDFDFDFDFDFBFF),
    .INIT_3F(256'hA5D0D7F6FFFCFBF5FBFFFFFEFDFBFBFEFEFBF9FEFDFDFFFEFEFDFEFFFBFBFBFC),
    .INIT_40(256'hFFFCFAFDFFFFFFFFFFFFFEFFFDFEFEFFFBFDFEEAD1C383594F4D4D514D485267),
    .INIT_41(256'hFFFEFFFFFAFCFFFDFFFEFEFFFEFFFCFEFCFBFBFBFBFBFBFBFBFCFBFDFEFFFFFF),
    .INIT_42(256'hFEFEFBFBFBFFFDF8F7FCFDFEFFFDFFFEFFFDFAF7F4F8FBFEFFFFFFFFFFFFFFFF),
    .INIT_43(256'hFEFEFEFEFEFEFEFEFCFDFFFFFFFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_44(256'hF9FBFCFBFAF7FAFDFAF7FBFFFEFDFFFEFEFFFDFDFFFFFEFBFCFEFEFEFBFCFEFF),
    .INIT_45(256'hFBFEFAF4FAFFFEFFFEFAFBFAFCFCFDFDFBFBF8FCFFFFFFFFFFFFFFFFFEF7FEFF),
    .INIT_46(256'hFAFBFAFCFBF8FEFEFEFDF8FAFBFDF7F9FCFDFEFEFCFDFEF9F7FBFDFEFBFBFBF9),
    .INIT_47(256'hFDFBFBFEFCFAFAFAFBFBFBFBFBFBF9F9FBFAFBF9FBFBF9F5FAFCFFFCFBFBFBFC),
    .INIT_48(256'hFDFFFFFFFCF9FFF8F6FEFDFFFFFFF9F8FBFBFBFBFBFBFBFAFCFDFBF8F8FBFDFE),
    .INIT_49(256'hFBFAF8F9FBFBFCFBF6F4FAFEFEFFFCFBF8FDFFFEFBFEFFFEFCFAFCFFFDF9FAF6),
    .INIT_4A(256'hFDFFFCF9FBFBFBFBFBFDFCFCFCFDFCFCF8F4F7FAFFFDFAFCF9FBFAFBFAFAFBFB),
    .INIT_4B(256'hFDFDFDF6F9FFFDFEFFFFFFFEFEFEFEFEFDFDFEFDFFFFFAF7FFFFFDFFFFFEF9FB),
    .INIT_4C(256'hFBFFFFFFFBF9FBFFFDFEFDFDFDFEFFFFFEFFFFFEFAFBFBFEFDFBFFFFFFFCFAFE),
    .INIT_4D(256'hFEFEFEFDFFFFFFFFFEFFFFFDFAFCFFFFFFFDFDFFFDFDFFFEFFFFFEFDFFFEFAF9),
    .INIT_4E(256'hEDECF0EBEDEBEEEFEFEFEFEFEFEFEEEEEEEEEDF3EAE6FFFCFBFAFCFBFEFDFEFF),
    .INIT_4F(256'hF5F8F9E7F9FDF9FFFFFFFFFFFFFFFFFFFFFFFFFFE4C8E5D5DBFCF6FEFFFFF7FA),
    .INIT_50(256'hE8E9E8E8E9EAE8E6E9ECE3FFF7F8F2EFF5F3F4F4F4F4F4F4F3F5F5F4F4F3F3F4),
    .INIT_51(256'hD2D1D8DBD7D6DBD9DBD8DCDDD8D8D4DFCCBBFFFAF5FDE5EAEBE4E5ECEBE8E9E9),
    .INIT_52(256'hE9FFF6E6EDF0EEEEF0F0F0EEF0F0F0F3E0DEEDD7D8FFF6FDFFFDFBFFCEC6DDD1),
    .INIT_53(256'hDCDEDFD7DEE1C2FDF5F7EBBDD6D3D0D1D4D2D2D4D5D6D5D0CED1D1D5D5D6DBA5),
    .INIT_54(256'hDCE4EBE7E4D9D9DFD6DCD3D8CEC1FFFEF6FFCDE1DCD2D4E3DEDCDDDDDDDDDCDD),
    .INIT_55(256'hD1DCD6D5D8DCD8D4D8DDDDD4DBE5E5DBDAFFF9FAFFFFFEFFF0B0E0D3D4D3D9DA),
    .INIT_56(256'hDFE1C3FEF9FEFFC9CBD6CDCCD5D0D4D6D9D6CCD2D0D1CFD3E3E2E9CDF0FFFFDC),
    .INIT_57(256'hDAE3DCDFDDE0DCDDD7D1FFFEF7FFDFECE1E4E8DFD6E0E1DFDFE1DFE1DDE0E6DF),
    .INIT_58(256'hD4D2CFCED4D2D0D3DCE0E1D4D7FFFEFEFEFFFEFFFCDDDDDEDCDDDBDBE2DEDEDA),
    .INIT_59(256'hF9FCFFE0D2DCDDD9D9DCE5E1E2DFD7DCDCDAD6D9DFE4E8CEF0FCF7FFBDD0D3D2),
    .INIT_5A(256'hFFFFFFFFFFFFF7FEFEFFC3E2E2E7E4E5D4D3DADCD2CBCFD5DADBD9D4D7DBC7FD),
    .INIT_5B(256'hEAE6E4EDE4DBE0CFD7FFFEFFF9F7FCFFFBFFFFFFFFFFFFFFFCCDE1DAD4FFFFFF),
    .INIT_5C(256'hFFFFFFFFFFE3CDD8CFDCFFFFFFFFFFFFEBD8E3C8EFFEF5FEDCE1E4E5E9E5E3E6),
    .INIT_5D(256'hFBF8FAFFFCFDDABBE8EADACFFDFEFBFDFBF6FAFEFEFDFEF9FAFFFCFFFBF6FBFF),
    .INIT_5E(256'hEAD8E4CEDEFFFFFFFFFAFBFEF5F6FCF9FBFEFFF8F6C7E3DCCBFEF8FBFCF7F9FF),
    .INIT_5F(256'hD9DED9DDDBD2D1D1D5D6C5D3EDD5E0C3EFFFFAF7FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_60(256'hF6FBFECAC7E7D9BCE1FFF7FDFFF8FEFFF9F9FFFBF9FEFFFFFEFDF5CBCDCDCED4),
    .INIT_61(256'hE1EBE6EBDCECFFFFFBFBFCFAFCFFFBF8F8C6DFDACBFCFAFFF1F2F5F1F7F6FFFE),
    .INIT_62(256'hD4D6DED3DEE1D5DEEFD3DCC2EEFFFFF3DBE8E5E3E6E6E6E7E8E5E3E8DFD4DBD1),
    .INIT_63(256'hB9C8DBDFBBE3FFF9FDFFFFFFFCFAFEFEFFFFFEFEFEFFF6D0E0DBDBD7D6D8D3D6),
    .INIT_64(256'hABD4FFFCFFFDFDFFFDFEFBFDF9C5DBD4CCFDFAFF98A7B9A1D1FFFEFEF9F9FDFF),
    .INIT_65(256'hD0DAD0DCF0D3D9BEEEFFFFEBB0C0C0C4C9C8C7C9CDC9C2C5CFDADADDD0C9C0CC),
    .INIT_66(256'hD5AEF7FAFAFFFBFDFFFEFEFFFCFAFCFEFBF9F5CCDAD8CBC6C0C0BFC4C2C0C3C3),
    .INIT_67(256'hFDFFFDFFFEFEFFFFF7C1D2CFC9FFF8FFB1D5DCBFDBFFFDF9FAF5FBFFF7AED2E2),
    .INIT_68(256'hECCBD7B0EBFCFAF1C5D1DCDBC7BEC2C5C2C3BDBCBDC2C4C3BACCD7D5C5DCFFF7),
    .INIT_69(256'hF9FEF7FBFDFDFDFFFBF4F6FBFAF8F5C5DCD4C3FFFFFFFFFFFFFFFFFFB8D7CEDB),
    .INIT_6A(256'hFFFFFFFFF9B5D0CCC8FEF8FFAFC9D4B8D5FBFAFAF8FCFAFDFFF3AFD5DDD4B0F6),
    .INIT_6B(256'hEBFEFAEDBECFDACDE5DEDFDFDFDFDFDEDFE1E0E2DFCDD1D8BEDCFFF1F6FFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFBF8F5BED5D5C8D7B5BEB9B7BCBEC1C7C1D8C7D2EAC9DAAD),
    .INIT_6D(256'hC2CFD2CCC0FDFDFFA6CBD5BED9FFFFFFFCFFFFFFFFFFE0C4D0CEB6F3FFFFFFFF),
    .INIT_6E(256'hB8C9CBB4FFFFFFFFFFFEFFFFFFFEFFFFFFCACFD5B8DAFFFFB8ADBAB3B6B7BBBE),
    .INIT_6F(256'hC2BEBBA0FFFEF4BFD6D2C5DFB3BEC2C5C1BEBDBFD8D6C2CFECC7D6B1ECFEFDED),
    .INIT_70(256'hC1FDFAFFA7C8D3B7D6FFFEFCF6FFB4B7C4BFCCCDD4D1CBCFBFBEBFB8BDC2BDBE),
    .INIT_71(256'hFFF6FDFEF4F8FEFBF5F6F9FEFFC5D0D5B3D8FFFFE4A3DCD5D1D2D2D4D8CECBCB),
    .INIT_72(256'hFFFEF2BAD4D0BCFBA8B5BCBDBDBBB5B8D6D4C2D4EAC1CEA9EBFDFCECB5CECAB1),
    .INIT_73(256'hA7C3CEB3D6FFFEF9FCFFD39DCEC5C4C8CDD1CBC2C3C7C9C9CAC8C8CACACBC39C),
    .INIT_74(256'hFDFFFFFEFDFFFDFFFFC3CBD2B4D9FFF6F7B2ACB1A7ACACA9B7C0C9CABEFCF9FF),
    .INIT_75(256'hCAC6B4FBEBF4F0F1F1F1F2F4B6CEC0D6E8BCCFACEBFFFEE5AACEC0ADFFFDFFFF),
    .INIT_76(256'hD6FFFEF9FFFEF6ADBBBBC3CEC9CDC8BCBBC2BFBFB6B4BBBDBBBDB991FFFFF1B8),
    .INIT_77(256'hFCFBFDFBFFCBC5CFB2D9FFF5FAFEF6F7F7F8F8F9F1B2CCCAB9FCF9FFA4C2CDB2),
    .INIT_78(256'hFFFFFFFFFFFFFFFFACCCBED1E9BBCFADEAFFFFEF8FBFC2B5FFF8F9FBFCFDFCFD),
    .INIT_79(256'hFFFBFFDAC3CDD1C3CACCBBCAC9CBC9C6C1C2C7C6C6C9C8AFFFFFF49EC2C7BDFF),
    .INIT_7A(256'h9FB6C8CBAAD3FFFDF9F7FFFFFDFDFFFFF3ABC9BFB3FBFFFFA2BDCAAED3FFFEF9),
    .INIT_7B(256'h8E8F9392C9C6B9CAE9BCC4A3E9FFFBFFFFAAAEC3A397A0A1989EA0A29E9BA1A4),
    .INIT_7C(256'hFFFFF3AECBC49FF0FFFFFEFFFFFFFFFFFFFFFFFFFCF7FFFFACB4BB998F868C89),
    .INIT_7D(256'h9BCFFFFDFEFAFAFFFDFAFCFFF3ADC3B9B2FCFFFFA1BDC7ABD2FFFEF9FDFFF9FF),
    .INIT_7E(256'hACAAA2BDEBBAC0A0EAFFFAF7FAFEAFA0B8B3BAB9ADB2B7B9B4AFB1BBB4B2B6BB),
    .INIT_7F(256'hC2C1A2ECFFFEFDFEFEFEFEFEFEFEFFFEFBFCF8F8F6B39DB3ADB1BEC3C0C1AEA8),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1
   (DOADO,
    DOPADOP,
    clka,
    ena_array,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [0:0]ena_array;
  input [10:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [10:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h8E23F7CF3F4F673A178A40786DE81C579F3AD36FEB5DE6560D65AD2A71A755ED),
    .INITP_01(256'hF9F051DB6AB4150A3BA2A0DB1FCCCFFE161714FE5E76DFF97CCEC0DBC18619BF),
    .INITP_02(256'h467EE5FD1D771286D9845AF31DD645C38B01E7FD4BECE93AD9E2D2FB31314A9E),
    .INITP_03(256'hFFE7E16F4C3B710194604C43C2240E5DFFEBF6DF5EFFBDFFFFFFFD35DBA73931),
    .INITP_04(256'h5F22AF291C9EF600B2FE031FB9D5BDE4A1F877CFFF6FFED9FF9D9E28FF9FF73D),
    .INITP_05(256'hFFFFFFFFEFFEFE6FDFB27B9DF9FCFFFFFE5BA7C62232EF15EE4F00037FE7B0FB),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'h000000000000000000000000000000000000000000000000000000000000FFFF),
    .INIT_00(256'hFDF8FBFFFFFBFEFFF4ABBCB6AFFCFDFF98B8C4A8D2FFFEF8F9FEF9F9FDFFEFAF),
    .INIT_01(256'hE0B5C39AE7FFFFF8F5FFFFDECBCDCEC7CDD6C9C2D1D5CDD0D0D7DAD3B3E0FEFB),
    .INIT_02(256'hFFFDFCFCFDFCFFFFFFFDFAFBFDFEFAFAFFFFE2D7DFC2BCC0B6BFD6D5D8D5CCDA),
    .INIT_03(256'hFEFDFDFFF09DB7BAAFFAF9FF98B2C2A5D1FFFEFAF9FEFCFCFEFFEEAFBDBFA0EB),
    .INIT_04(256'hE7FFFAF8FFC8BFC5BCFDF2DBDFD7F3F6D3E1D2F2C4C7C3C2FFFFFAFCFEF8F8FE),
    .INIT_05(256'hF9FAFFFDFFFDF6F6FFFFFFFEFFD3C2C2BFCDB5C5ADBEF5C3CBBDF2FFCFB2C298),
    .INIT_06(256'hED96BBB9ABFAF9FF92AFBEA2D1FFFDFBFDFBFBFEFEFFF0B0BDC0A1EBFFFEFFFC),
    .INIT_07(256'hF28E948795FF8D9C9A8BFAC795A981EB8D94977BF4FFFCFDFEFCFCFFFFFFFFFF),
    .INIT_08(256'hFFFFF9F8FFFEF9FFE38B9E7CB6C6A9C0ADBEEC829A7BC2FFC9AFBF91E6FFF9FA),
    .INIT_09(256'hAAFFFFFF93AEB79ED4FFFFF8FFFEFDFBFBFFEEAAB9BFA3EAFFFFFFFDFCFAFBFE),
    .INIT_0A(256'hC9FF7FB9A8ACFFB5B7BD9CFAC8A3C09FE7FDFAFFFFFFFFFFFFFFFFFFF395B9B6),
    .INIT_0B(256'hFFFFF6FFC498C695F8C5A9B9A9B8FF91B6BBA4FFCBA9B894E9FEF9FFE8AABD9E),
    .INIT_0C(256'h9EAEB5A8BCC2FEFDFFFFFFFCF9FFEC99B5BEA2F0FFFFFFFFFFFFFFFFFFFFFCF8),
    .INIT_0D(256'h9ACFE487BA9CCEFFCC82B8B09EF7FFE2B9D5D3CECFD1D1D4D2A4B9B6ADD6D2DA),
    .INIT_0E(256'h99ACA59FFFCA8FB1A7B9F1D49AC0A0DCD7A9B494E9FCF6FF9FA3B09BF2DEA1B2),
    .INIT_0F(256'hA96EF9FFFDFFFFFFFEFFF7A794B1ADBDA9ACB0B0B1B1B4B2B394DCFFFFFFFDFF),
    .INIT_10(256'hC196D1FFEEA0BAB38DF2FFE67CA4AB9BA2A0A5A4A7B5B4B2B2A6A5A3B4B6B5B9),
    .INIT_11(256'hFFFFB984A9AD86FF92B9A1B6D186B890E5FDFAFF83A9AE99FFC9ADB786E8DC8F),
    .INIT_12(256'hFCFFFFFEFBFCFFFFC7819CB1B2ADA8A9ADAFAEADAC88D6FFFEFEFFD694B69FCE),
    .INIT_13(256'hFFAD959E75B9FFFFBE849D979E9690949694939694959596969C97979162FAFF),
    .INIT_14(256'h969C86FF9F879E6CFDDC9666E2FFFFDE759084B9F07A998FA2FF8C8F9173FEFC),
    .INIT_15(256'hFDFDFCFBFFFAA785A29F969597969A95956BD1FFFDFEFF917E9C8CF4FDFDFFEA),
    .INIT_16(256'hBED8FFF8ECB3C1BFC3BEBCBDC0BFBFBFBFBFBEBEC0C0BDBFBDAAFDFAFFFFFFFD),
    .INIT_17(256'hDBA9BAA2D6FFF4B2E4FFFFF1D3DACFF2F5BBCFC8E1FFC9CBC6BEFFFBFAE2BEC9),
    .INIT_18(256'hF8FFF7BEBBC0C0BFBDBDBFBFBEACE7FFFEFFF1A6ADAEC4FFFEF6FBFFECB3A1FD),
    .INIT_19(256'hFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFDFEF9FDFA),
    .INIT_1A(256'hFBFCFFFFFFF7FCFFFFFFFFFFFBFFFFFFFFFEFFFFFFFFF9FFFBFFFFFFFFFFFFF7),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFBFDFDFFFFFFFFFFFAF6F7FFF7F8FFFFFAFEFFFFFF),
    .INIT_1C(256'hFEFFFFFEFFFEFFFFFEFEFFFFFFFFFEFAFDFFFFFBFFFFFFFDFCFDFAFBF9F9FBFF),
    .INIT_1D(256'hFEFCFEFDF4F5FEFEFBFBFEFBFFFEFCFEFEF9F8FEFDFBFCFDF7FCFFFDFDFFF9F8),
    .INIT_1E(256'hFAF9FCFDFBFAFBFEFEFEFFFFFFFEFBF9FEFEFFFCF7FDFFFFFCFFFFFEFFFFFFFC),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFCF9F9FDFFFEFFFFFFFEFEFEFBFBFDFEFFFCFFFDFBFB),
    .INIT_20(256'hFCFAFEFFFFFFFCF9FEFCFBFDFCFCFBFEFAFCFDFDFFFFFBFDFDFFFEFCFDFEFEFF),
    .INIT_21(256'hFCFAFDFFFEFCFDFAFDFBF6F9FFFFFAFCFEFEFCFCFEFEFFFBFCFCFEFEFFFFFDFE),
    .INIT_22(256'hFFFFFFFFFFFFFDFCFCFDFFFFFFFFFFFFFFFFFCFEFFFFFCFCF9FCFCFCFDFEFFFF),
    .INIT_23(256'hFCFDFDF8FDF9FCFBFDFFFFFFF9FBFBFDFFFFFBFBFEFFFEFBFBFBFDFFFFFFFFFF),
    .INIT_24(256'hFEFDFBF8FEFBF9FAFDFDF9FAFDFFFDFBFCFCFFFFFCF9F9FEFFFDFBFCFFFFFEFD),
    .INIT_25(256'hFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9FAFEFFFEFFFFFEFDFDFCFFFF),
    .INIT_26(256'hFAF8FBFFFEFDFEFEFFFCFFFFFEFEFFFFFFFFFEFEFBFBFBFDFFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFEFEFFFCFFFEFFFEFEFFFFFBFEFFFFFEFAF8FCFCFCFBFAFFFFF9FCFAFDFFFF),
    .INIT_28(256'hFFFEFDFFFDFEFFFFFFFFFFFFFDFDFFFFFFFFFDFEFDFFFCFBFAFFFCFDFFFDFDFF),
    .INIT_29(256'hFCF6FAFFFFFBFEFDF9FEFFFFFFFFFFFFFEFFFDFCFFFFFFFFFFFFFFFFFCF9FDFF),
    .INIT_2A(256'hFBFEF9FDFCFBFFFEF8FEFFFFFFFEFEFFFCFFFEFCFCFDF8FDFDFAFDFFFDFAFDFF),
    .INIT_2B(256'hFBFDFFFFFFFFFFFFFAFAFFFFFEFCF8FAFDFFFEFEFDFFFBFCFFFEFEFFFDFEFFFD),
    .INIT_2C(256'hFFFEFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFFFFFEFEFF),
    .INIT_2D(256'hFEFEFFFEFCFEFFFFFFFFFFFFFFFFFFFFFEFFFCFEFFFDFEFFFFFEFFFFFDFDFEFF),
    .INIT_2E(256'hFFFFFFFFFDFEFFFFFFFDFEFCFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFCFE),
    .INIT_2F(256'hFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'hFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_31(256'hFEFFFFFFFFFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_38(256'h00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    ena_0,
    clka,
    addra,
    ena);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  output ena_0;
  input clka;
  input [13:0]addra;
  input ena;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [13:0]addra;
  wire clka;
  wire ena;
  wire ena_0;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h5C339B9FFFFFFFFFFFFFFBE7BFF8FFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFF5A77BFF9EB3FFFFFFFFFFFFFFFDDA1684A5FFFFFFFFFFFFFFDF7E),
    .INITP_02(256'h8FBBCFDBF9FFFFFFFFFFFFFF3BBCAA4598DBFFFFFFFFFFFFF4FBF94C4C07BFFF),
    .INITP_03(256'hFFFFFFFFFFFFF3FD9853CE5EFFFFFFFFFFFFFFF1EC26E6D37FFFFFFFFFFFFFF7),
    .INITP_04(256'hFA2867E8A27FDFA9FFFFFFFFBFF1CEF3E8FA22FEFFFFFFFFFBFF28CE7FC877EF),
    .INITP_05(256'hFF263FFFFFFFFFC5B2E40FCA3FE679FFFFFFFFEF0621CA3BFD2AFD9FFFFFFFFC),
    .INITP_06(256'hFFF0FBF1F3BDA614FBFFFFFFFFFF31EBD7603B31F5F5FFFFFFFFEEFBECCF0DB4),
    .INITP_07(256'hC551AAEFFFFFFFFFF7CFA3ECDEFFCCAE1FFFFFFFFFF90CCC8EE99066B1FFFFFF),
    .INITP_08(256'hFFFFFEF5DB9DA1FF787D3FFFFFFFFF948CFF63535FEF25FFFFFFFFF9A4B8584E),
    .INITP_09(256'hD1F7171DC57FFFFFFFFF77174F6743E4F9DEFFFFFFFFE5489BFBF92A43E61FFF),
    .INITP_0A(256'hFFFFFFFFFEA3C3FE57C4D7594FFFFFFFFEF257355887E5EA6CFFFFFFFFFF716F),
    .INITP_0B(256'h082FCED8052C9EFFFFFFFFE4D71B6C14D26BDC9FFFFFFFFD69378E7E3D02DB99),
    .INITP_0C(256'hE9FFFFFFFFF87FF7D5D370B99FEEFFFFFFFFCF296166BC8C9BC4EFFFFFFFFFC3),
    .INITP_0D(256'hFC7EBF30FB2FA681FFFFFFFFFF43A2137F9CCB136FFFFFFFFF9ED95C0FFD8CB6),
    .INITP_0E(256'hFDEB0FFFFFFFFFEF38631F7EC820D89FFFFFFFFEF156CCEF8F6AE07FFFFFFFFF),
    .INITP_0F(256'hFFFEDA9E3AA438BEBDFCFFFFFFFFC727EFAB3C73F6629FFFFFFFFC5883288DE6),
    .INIT_00(256'hFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFF7F),
    .INIT_03(256'hFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFEFEFF7F7F7FFFFFFFFEFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF7FFFFF7FFFFFFEFE),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFE7F7E7E7FFFFE7E7E7FFFFFFFFCFD7DFE7EFE7E7E7FFE7CFE7F7F7EFD7EFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF7FFEFEFFFFFE7D7FFFFE7EFE),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'h7EFEFFFEFDFE7E7E7E7E7E7D7F7DFFFEFF7F7FFE7F7FFF7DFEFDFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFE7E7FFFFEFEFF7E7EFE7EFF7F7EFEFEFD7E7E7E),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'h7D7DFDFD7E7FFFFFFEFDFE7EFF7F7F7F7FFE7EFEFF7F7FFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFE7DFEFFFF7FFF7E7EFF7FFEFDFD7DFEFFFFFFFFFF7DFD7F),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hF069E9F4FFFFFF7DFDFFFF7FFE7E7EFE7FFF7FFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFEFEFFFE7F7FFF7F7FFEFDFF7EFDFFFFFF7AEFE4EF73F477FAFD7D787775),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'hC4D8F4FFFF7EFEFF7E7F7FFE7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'h7FFFFFFD7EFFFD7D7DFDFFFF73DEC5A63A62E7EA6EF47879FAF874706A6CD9B0),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE),
    .INIT_16(256'hFFFFFEFE7FFEFFFF7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'h7EFEFCFD7FFF77D4848F465CE46066EAEEF2F5F6767572EE6CE9E5E7D52E954E),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF7F7EFD),
    .INIT_19(256'hFD7E7F7F7FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hF1B980003DD6D4D75BE064E96C6EF1F271706D6CE7E6E15C5B5FD31C05C9FFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFF7E7E7EFD7EFFFF),
    .INIT_1C(256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'h4F4CD1D75C5DE163E4E6696A6A69E864605EDCD9D7D453D4A780A8F3FFFE7F7F),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFF7FFD7CFFFF530F000539),
    .INIT_1F(256'h7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'h52DD6A6FF4F8FB7C7C7CFCFBFAF7F1EBE056C9474C360080D7FF7FFD7EFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFF7FFFFFFFFFFFFFFFFEFEFFFF7F7EFF7223800089434447CA4ECD),
    .INIT_22(256'hFD7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFF7FFF7F7FFFFEFFFFFEFF7F7F7869DC48C3A0808448FFFF7DFE7E7F7F7FFF7F),
    .INIT_24(256'hFF7FFF7FFFFFFFFFFFFEFE7FFEFE7EFF691580008931BEC0BE4353E37179FF7F),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFEFD7EFFFFFE7D7D7EFFFFFFFFE54F1E000039FCFF7E7E7E7E7E7EFEFEFFFFFF),
    .INIT_27(256'hFEFEFEFF7FFFFFFE7FFDFF6E008080832FB7B3BBD8ECFFFFFF7DFE7E7E7E7E7E),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EFE7F),
    .INIT_29(256'hFFFFFFFFFFFF7FFF7F7F7FEC1B0080B5FFFFFFFEFD7DFFFEFE7FFFFFFFFFFFFF),
    .INIT_2A(256'h7FFF7FFF7EFFEE8D0081001AB1A7C7EEFFFFFFFE7CFEFEFDFEFE7D7FFFFF7FFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFF7FFDFEFF),
    .INIT_2C(256'h6E7376FAFFFF7FFFFF6105003CFEFFFFFF7FFE7FFDFFFEFEFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hFFE90080818010A2B56DFFFFFC7E7FFF7FFF7FFFFFFFFEFAF774EB6865E367E8),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD7FFF7F7EFFFF7F7EFE7D),
    .INIT_2F(256'hCA59FDFFFFFFF2380056FF7EFF7FFD7FFFFF7EFEFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'h00808C437AFFFDFE7DFEFFFFFFFFFFFF6E5ED8D3D3D1D0CF4D4C4AC843C142C4),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFF7F7FFFFF7EFD7EFF74990082),
    .INIT_32(256'hC9EBFFFF5480D9FF7DFDFFFFFF7FFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'hFF7D7E7E7EFDFEFFFA63D0C546494ED04F4F4C4CCCCA4847C542BE3AB53129AF),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFEFEFDFD7EFFA90080008002E6FF),
    .INIT_35(256'hFF6A1E6B7F7DFEFFFFFE7DFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'hFFFF7B61C2BEC0C54648C8CA45443F3E3D3EBDBA34B0AF3031302E279FA3B35D),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFF7E7F7FFF7EFD7E7EFF5A8080008087D8FF7EFFFFFEFF),
    .INIT_38(256'hFFFEFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'h3B3CBE3FBEBEC34952DB6367EAE9E9696563DA51C237289F1F1F0A802DE770CA),
    .INIT_3A(256'hFFFFFFFFFFFEFE7EFF7FFC7DFEFF7212800180086DFFFF7D7EFEFEFF7BDFB52D),
    .INIT_3B(256'hFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3C(256'h4255EAFAFEFFFFFF7FFFFFFFFF7FFFFF7D7A58C2240B07800080657B747EFEFF),
    .INIT_3D(256'hFFFFFE7FFF7FFDFEFEFF3D0080000659FFFDFEFE7D7DFFFFBBA73034B6383332),
    .INIT_3E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'hFDFF7FFFFFFE7F7E7F7F7E7EFEFF7FFFFF78AE0D0080002FFFFF7EFFFEFEFEFF),
    .INIT_40(256'h7FFEFF7F7F7A0000800000A4FFFFFE7EFEFF5616A028AC2CAFB1D5FCFFFFFFFF),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E),
    .INIT_42(256'hFDFFFFFFFFFFFFFFFFFFFF7FFEFFFFF7B700808045FFFE7EFFFF7F7FFFFFFFFF),
    .INIT_43(256'hFF4B80000000000044FF7DFDFF5B0DA022251E9EDBF9FFFF7EFF7E7DFE7EFFFF),
    .INIT_44(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFDFEFF7E7F),
    .INIT_45(256'h64E1E063E86EFAFBFEFFFFFFFFFF3C0300C4FFFDFF7F7EFFFFFFFFFFFFFFFFFF),
    .INIT_46(256'h0080810080C3FFFF3403189B9A9BD8FFFFFF7EFCFE7DFEFDFFFFFF7FFCFBF3EA),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EFEFF7F7E7EFF71888080),
    .INIT_48(256'hD1D154D4DAE06CFFFFFFFFE20E00FFFF7FFF7F7FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'h80005DC5018C13062B66FF7F7DFFFD7EFE7EFFFFFFF263DC53515151D0CFCFD0),
    .INIT_4A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7EFFFFFDFEFF5F80808000008081),
    .INIT_4B(256'h4B46CA50DE6BFFFFFDBA60FF7C7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4C(256'h80850630FFFFFFFCFD7FFD7E7F7F6CDB4B4541C64CCE4E50D0D0D0D150D15352),
    .INIT_4D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFF7FFEFFFF1C0000000080800080000080),
    .INIT_4E(256'h4C45D5EC7FFFEA7CFDFC7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'h7F7E7DFC7E7FFF7FF64BB8BC43C64849CA4B4A4DCCCD4DCC4CCCCECFD0D1D4D3),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFF7F7F7EFFFB80800080808000800000000080003CFE),
    .INIT_51(256'h49EBFFFFFDFC7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'h7F7F7F7EFFE0B53D434143C5C6C7C7C7C848C8C8C9C9CB4DCFD0D1505354D145),
    .INIT_53(256'hFFFFFFFFFFFFFEFF7F7EFF51000000000080800080800001801FFF7FFEFFFD7E),
    .INIT_54(256'h7FFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_55(256'hFEFF672E3BC040C1C0424444C4C4C44646C8CACACC4C505153D2D2D2CFC8517D),
    .INIT_56(256'hFFFE7EFFFF7DFF40000180800182008080808080808778FF7EFE7E7FFFFF7D7E),
    .INIT_57(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_58(256'h2FB23CBDBE3EBF3F414042C34546C749CB4C4C4ED0D152D453534A69FFFE7F7F),
    .INIT_59(256'hFFFFF21A0000800000800000808180808000005AFF7DFE7F7F7FFD7E7EFDFFFF),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5B(256'hB8393ABBBD3D40C0424345C8C8CA494C4E50D152D255CFDBFFFE7E7FFFFFFFFF),
    .INIT_5C(256'h80808080000000808000800080808080DEFFFFFE7F7DFFFE7E7EFEFF75B4AC39),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFEFF6582),
    .INIT_5E(256'h3CBD3FBE4042C4C5C647C94A4C4DCED0D154D0DCFFFE7EFFFFFFFFFFFFFFFFFF),
    .INIT_5F(256'h80008000000080008000000080B6FFFF7DFDFEFF7FFEFEFEFFFEBF273637B9B9),
    .INIT_60(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F7EFDFF618000800000),
    .INIT_61(256'h3EC042C2C5C5C8C9CACBCDCE50D14EDBFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'h00008000808080000000B57DFFFEFDFEFEFD7EFEFEFFFD4C25B536B73ABC3DBC),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EFFDB800080008080800000),
    .INIT_64(256'h4343444647C84ACBCD4FCCDAFFFD7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'h0080808080010096FFFF7DFEFEFFFE7CFCFCFFFF582933B537B93A3BBD3FC1C1),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5300008000800080008080800080),
    .INIT_67(256'hC6C6C8C94B4DCBD8FFFD7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_68(256'h8080018024F9FFFE7EFFFF7E7C7D7EFEFFE01E323635B83ABC3C3F3FC141C344),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFF7FFF7FFFD00000808080008080008000000080000000),
    .INIT_6A(256'hC94BC8D6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'h000069FFFE7EFEFE7DFEFFFEFDFFEBA9AFB4B538B93A3CBCBE3F4142C3454647),
    .INIT_6C(256'hFFFFFFFFFF7F7EFEFFFF58000001000000808000008080008000808100008000),
    .INIT_6D(256'hFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFFE7FFD7DFFFE7EFEFFFF77A1A7373537B8B93CBCBE4042C343C4C648C9C659),
    .INIT_6F(256'hFFFFFEFE7FFF6080000000000080008000008080008080810180808080008ADB),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hFDFEFFFF7E7E7EFF7EC1A3B3B537B738B93C3D3EC1C1C2C4C5C7C2DEFF7F7FFF),
    .INIT_72(256'h7EFF638080000180800080008080808080000000008080000000000048FFFF7E),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE),
    .INIT_74(256'hFE7E7DFEFFFD392134B5B4B737B93CBCC040C0424346BFE5FF7FFFFFFFFFFFFF),
    .INIT_75(256'h00800000808000008000808000808081008000808080818081C4FF7FFE7EFF7E),
    .INIT_76(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7F7DFFEA8A),
    .INIT_77(256'h7EFFFFCD25B133B4B7B8BABABCBD3FC041C33DECFF7E7F7EFFFFFFFFFFFFFFFF),
    .INIT_78(256'h80008000800080808080000080008001008080808080B5F5FF7DFEFE7EFDFE7D),
    .INIT_79(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFBAA80000000),
    .INIT_7A(256'h4CA2B2B435B6B7B93A3ABEBFC043BD6DFFFF7E7DFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'h000000800000808000000080800000800000801FFFFFFEFDFEFEFD7FFD7EFFFF),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF7FFF7DFF5A0000808000800000),
    .INIT_7D(256'h3233B53538393C3D3EBF3C7AFF7E7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7E(256'h008080808000000000808080808180800368FF7F7E7F7FFF7EFEFEFFFFC8A9B1),
    .INIT_7F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7F7DFF7FFFFF2E01008000808001000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h02)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(ena),
        .I1(addra[12]),
        .I2(addra[13]),
        .O(ena_0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra_12_sp_1,
    clka,
    addra,
    ena);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  output addra_12_sp_1;
  input clka;
  input [13:0]addra;
  input ena;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [13:0]addra;
  wire addra_12_sn_1;
  wire clka;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_12_sp_1 = addra_12_sn_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h5CFB86F9FFFFFFFFFFBF5D1066CE707399FFFFFFFFFDCDAE17DED3890E3FFFFF),
    .INITP_01(256'hFFFFFFE4C7EFFD67C17D9A6FFFFFFFFCFDBF66FC1725D8EFFFFFFFFF9F9F7BB0),
    .INITP_02(256'hA5E222BB4EF7FFFFFFFFB9F92FFFF963EBC59FFFFFFFFC7D19D8BFF95F73C6FF),
    .INITP_03(256'hFFFFFFFFFFFB5002098FC339DFFFFFFFFFFF2E2A1AF91D7B697FFFFFFFFF9DE0),
    .INITP_04(256'hDC1EFFFDBE097FCFFFFFFFFFFCEBF826FAFE3BBEFFFFFFFFFFD2F60007D6E42F),
    .INITP_05(256'hF6A7FFFFFFFFFFE147FFFFDA9367FFFFFFFFFFFEE8FCC47F8DCF9FFFFFFFFFFF),
    .INITP_06(256'h01E3BFE193508353F7FF67FFFFFFF46B0AEC14ACE73FFFFFFFFFFC0F2BA0002F),
    .INITP_07(256'h8C4AE97FFF76FFFDF53CFA936EFC0760807FC7FF9EF38E2E2C60FCFFBF221C38),
    .INITP_08(256'h9EFFEBFFFED7BF8B1BFEF80DFFC30F1FFFF3FEFF0F737CFF8784FFFEBFF9DC00),
    .INITP_09(256'h45FFF86D1001373FFFFF3FFFFF7D898A8FFFFFCE203048BF4F6DDA6A5CCA0009),
    .INITP_0A(256'hF47C04003D00000E0004FD004803C00001E1BFD4FE8E07B800007FE9056DFF0E),
    .INITP_0B(256'h04DADFFFAFDFF0FFFC300138D2FD8D813842C32F49C0A39E2B59C860000778F0),
    .INITP_0C(256'h7FC38798597FE40F18F0004067D4BA5DA3C2BC00000609C02F4FC613A2FDFF70),
    .INITP_0D(256'hB63001A70FFF87000BA5BF2FFFE24508754F6C399C7A7D82FFE51FF506400027),
    .INITP_0E(256'h187C68B8650000041C91071FFFC71EC78E602000E15008F1FBF83800F8FC7118),
    .INITP_0F(256'h0E707C0000E600003C70307FF1FFFEA001871000027FC38E3C24EE73FF00E8CB),
    .INIT_00(256'h3538B9BABCBC3D7EFFFE7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'h0080008000008080008180800027FFFFFF7FFF7FFE7EFFFF3C24AC2F32B4B534),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFF7F7F7EFDFEFF7F7FFF6720008080000000010000800080),
    .INIT_03(256'hBAAE6AFF7EFF7EFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'h80008000800295CAF9FFFCFEFEFF7E7E7FFF6C281DABADA62C30B13334363538),
    .INIT_05(256'hFFFFFFFF7FFF7FFEFF7F7FFF0AB8FFFFF5CE1583800000818080008080008000),
    .INIT_06(256'hFEFE7EFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hC1E1F3FFFF7E7DFD7DFDFDFFFF5FA39DAB2918D62FA530B0333335B6B8297FFE),
    .INIT_08(256'hFFFFFEFEFF7EFEFF58003CF8FFFFF3E4BAAC08808080800080000000000095AB),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'h7F7F7D7E7FFFFF7131131F27A0175EFF6C2BA4AFB0B1B3B5AFBCFFFE7F7D7F7F),
    .INIT_0B(256'h7EFE7DFEFFBD008F53FCFFFFFFFF7266DFD6CAC5C147CF596366FBFFFFFF7F7F),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFF7F),
    .INIT_0D(256'hFFFFC99A1220A31B1950FFFEFF6B20282E30B0B32CDEFF7EFF7EFE7FFFFFFFFF),
    .INIT_0E(256'hFFFF9309082967FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFEFF7EFD7EFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFEFEFE7D),
    .INIT_10(256'h1F1C1420FCFFFFFEFDFF6DA9A9AF2F2ABAFEFFFEFFFF7FFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'h0B0D009DDE727EFF7FFF7E7FFDFEFEFDFEFE7EFE7DFEFDFFFFFF79EB450A091B),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE7FFFFF7E7DFDFF7FA5),
    .INIT_13(256'hFFFD7EFE7FFFFFD9222D2E9F5DFFFFFEFF7F7FFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'h068CBB6879FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D99C890996999894083F7B),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7DFD7F7FFF7E7DFDF0FF99039690),
    .INIT_16(256'hFDFFCE1527A99F3DFF7D7E7FFF7E7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'h891523B75666EFEFEFEFEB5AC5AD9B900302101795948F062D6EFFFFFEFF7D7D),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFDFE7FFE7D7EFFE7C0FFD7840816970A01),
    .INIT_19(256'hA6A7A2ECFF7EFD7FFFFEFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'h0F1093931494118F0E8C0B8F141594930B00A7D67DFF7DFE7E7F7DFEFFD71525),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFF7F7FFFFF7F7FFFFE7EFFD0B5FF6F4500008E93130F8B0C),
    .INIT_1C(256'h7E7D7EFF7FFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'h9313151516961592100A02143A5FFFFF7F7DFE7E7FFEFFFFC19322A3A30DDFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF2A0C70FFF2D42C930308111193139493),
    .INIT_1F(256'hFFFF7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'h06070B11192FD3EBFFFF7FFEFD7E7E7D7FFFF136109D1F22953EFF7F7D7D7F7F),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFF7FFE7FF89D8A5BFFFFFFEAD1BD1A170D0A060504850706),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFF7FFEFE7DFE7F7FFF78D90D0E9E9C1E1432FDFF7DFDFDFEFEFFFFFF7F),
    .INIT_24(256'hFFFFFFFFFFFFFFFFFF7A14003E69FFFFFFFFFFFFE75643BEBE3C3D3EBD45D9F8),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'h7E7E7EFEFFFFFFEA20049698181C11177FFF7EFD7E7D7FFEFEFF7FFFFFFFFFFF),
    .INIT_27(256'hFFFF7F7E7FFFE80F0585537EFFFF7EFEFFFFFFFFFFFFFFFFFFFFFFFF7EFEFD7E),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'hF4588E020F949516180FAA7EFF7EFDFE7FFF7FFEFEFF7EFEFFFFFFFFFFFFFFFF),
    .INIT_2A(256'h7E7FFF7A918E0803BB6DFFFF7F7FFDFD7F7EFFFFFF7FFDFFFFFDFE7DFD7FFFFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E),
    .INIT_2C(256'h1617941300B07DFFFD7DFDFFFF7F7FFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hF29B06128C9026C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF592B13119093),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFE7EFF7CFF),
    .INIT_2F(256'h52FFFF7EFC7EFFFF7FFEFEFE7FFF7EFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'h93958E0A8613B13E53E3F2FC7D7E7D75E5D43FB49789070F1515941394150E8A),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFEFE7DFEFFFFB008),
    .INIT_32(256'h7D7DFFFFFFFEFE7EFFFF7EFEFFFFFFFFFFFFFFFFFF7FFFFFFF7F7FFFFFFFFFFF),
    .INIT_33(256'h941009070F93179E9E9F9F98940F080A8F139495141494150F0121DFFFFF7F7E),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7DFDFEFEFFFEFFFDD20B051693),
    .INIT_35(256'hFEFEFD7E7F7E7EFFFFFFFFFF7F7FFF7FFFFF7FFFFF7F7FFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'h1494139292931293941415151695141495168F0AA3CAFFFFFF7F7EFEFEFEFFFE),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EFDFEFF7FFFFE7EFFFFF4BF8E0815171796),
    .INIT_38(256'h7FFEFE7F7F7F7F7FFFFF7FFF7FFEFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'h9594931514121696159415138D0091BAFFFFFFFDFFFFFFFEFF7FFE7E7E7F7E7E),
    .INIT_3A(256'h7EFF7FFFFEFFFFFF7EFFFF7FFFFF7F7F7F7F7EFEFFFF622F0007921495139493),
    .INIT_3B(256'h7F7FFFFFFFFFFFFFFF7EFC7E7E7EFEFEFEFFFFFFFE7EFFFEFE7E7E7E7E7E7E7E),
    .INIT_3C(256'h94949392108B0B102E6BFFFFFF7F7C7EFEFFFF7FFFFDFF7F7F7F7F7F7FFFFFFE),
    .INIT_3D(256'hFEFEFFFEFEFF7F7FFFFFFFFF7F7FFF7EFF7EFFFFFF4D19900B10919392939313),
    .INIT_3E(256'h7F7F7F7F7F7F7E7FFF7FFFFFFF7FFF7F7E7D7E7EFEFEFEFEFEFEFEFEFEFFFFFE),
    .INIT_3F(256'hAE526877FFFFFE7DFF7FFEFFFE7FFF7FFE7EFF7F7FFFFF7F7FFDFD7EFF7F7F7F),
    .INIT_40(256'hFFFFFF7E7F7FFEFEFEFE7F7E7F7FFD7DFFFFFEF1DE419804000000000000010A),
    .INIT_41(256'h7F7F7FFF7FFFFEFF7EFFFEFEFF7FFF7FFFFF7F7F7FFFFFFF7FFF7FFFFE7E7EFF),
    .INIT_42(256'hFEFEFEFE7D7D7FFE7E7EFE7EFF7F7EFEFE7EFD7F7FFDFFFF7F7F7F7F7F7F7F7F),
    .INIT_43(256'hFFFFFEFEFFFFFFFE7FFFFF7EFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_44(256'h7EFD7EFF7F7F7EFE7F7F7FFFFF7F7F7FFFFF7F7F7FFFFF7F7F7F7F7FFFFE7D7E),
    .INIT_45(256'hFDFE7E7DFEFD7EFEFFFF7FFF7E7E7DFE7EFEFF7F7EFEFEFEFFFFFEFEFDFDFD7F),
    .INIT_46(256'hFEFEFEFE7F7E7F7EFE7F7F7EFEFEFFFD7EFFFEFEFEFF7E7F7E7F7FFE7EFE7FFF),
    .INIT_47(256'h7EFE7EFF7EFE7F7FFFFFFFFFFFFF7F7FFFFFFFFFFFFF7E7EFE7D7E7EFEFF7EFE),
    .INIT_48(256'hFE7EFFFF7F7F7E7E7DFCFC7EFDFEFE7FFEFEFEFEFEFEFEFEFE7EFF7E7EFE7D7E),
    .INIT_49(256'hFEFEFEFFFF7E7E7FFF7FFF7EFDFF7EFC7EFF7E7F7F7F7FFFFF7F7EFFFEFF7EFE),
    .INIT_4A(256'h7E7E7EFE7D7D7D7D7DFE7E7EFEFE7D7EFEFD7D7D7E7E7F7FFE7EFFFFFEFEFFFF),
    .INIT_4B(256'hFEFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D7F7EFD7D7E),
    .INIT_4C(256'hFFFFFFFFFFFFFFFFFD7DFEFDFDFF7DFEFEFF7F7FFEFF7E7F7FFFFFFF7F7EFFFF),
    .INIT_4D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'h70EDEE6D6E6D6D6E6DEE6E6EEEEEEEED6E6EED6EED6EFF7F7F7EFFFFFFFFFFFF),
    .INIT_4F(256'h71F1F16DFBFE7E7FFFFFFFFFFFFFFFFFFFFF7FFF6B53595265FFFDFEFEFFFD7F),
    .INIT_50(256'hEAEA6A6AEAEAEA6AEAEA6A7EFEFE75EF71F17171F1F17171717172F1F171F271),
    .INIT_51(256'h4946484947464747484848474848474944C6FFFEFE7FEB69EA6AEA6AEA6AEA6A),
    .INIT_52(256'hF2FFFEF0EC6F707070F170EF6FF06F755C464A435DFFFEFE7FFF7EFFD84148C7),
    .INIT_53(256'h464747474848C6FAFFFFEC41C847474747C748C74747C848C84848474746C637),
    .INIT_54(256'h4ACC4D4D4D494748494747494349FFFEFE7F4844474746484847484847474847),
    .INIT_55(256'h3A4345454445464444454543494E4E47E07FFFFF7EFFFEFF763F494949484848),
    .INIT_56(256'h4C4BCAFAFFFF7ECF414747454746464847474346464546444B4F503EF3FFFF64),
    .INIT_57(256'hCDDEDD5C5D5D5C5D59DAFF7E7FFF504B4FCD4E4C4C4C4B4B4B4B4B4B4C4C4B4C),
    .INIT_58(256'h4243444242434242484ECB44DEFF7FFF7F7FFE7E7EE4D95D5DDDDCDD5E4B4C4E),
    .INIT_59(256'hFF7FFFEBDE62E36262E5E9E969E5E2E262616163574C4E3CF3FFFFFF3A3F4443),
    .INIT_5A(256'hFF7FFFFFFFFFFD7E7CFF484ACCCE4B544ECD4BCCCB4A4DCFD0CF4C4DCE4E4E7A),
    .INIT_5B(256'h6867666A5C48CC435DFFFEFE7FFFFE7FFEFFFF7F7FFF7FFF79C64A4ACEFDFFFF),
    .INIT_5C(256'h7F7FFFFF7F67C84FC85EFF7F7F7FFFFFE2464C3C73FFFFFFE866EAE867E7E767),
    .INIT_5D(256'hFF7F7D7E7DFF61414DCA4855FE7DFCFD7CFC7DFD7D7DFD7DFDFD7DFEFEFD7F7F),
    .INIT_5E(256'hEC43CA40E0FFFFFFFFFF7D7FFEFE7F7FFE7FFFFF75C4C949C978FEFDFFFFFEFF),
    .INIT_5F(256'h50D2474B4849D24F4FCE495BE6454B3BF3FFFE7FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_60(256'h7EFF7F583E4A493F65FFFD7EFFFFFFFFFEFEFFFFFFFF7F7EFDFEF9CF4E4ECD4E),
    .INIT_61(256'hD7E965E662F5FFFDFEFE7E7F7EFFFEFF7542484849F8FFFFF8F8F8F67CFD7F7E),
    .INIT_62(256'h434242404647415769424A38F2FFFF78E26866E66665E6E666E565695A43C943),
    .INIT_63(256'h4842CB48BEEAFFFD7F7E7FFFFFFEFF7F7F7EFE7F7FFFF8C74747454142424242),
    .INIT_64(256'h3464FF7D7DFE7DFEFDFEFEFFF5C0484748F7FFFFC0BDC33761FF7FFFFF7F7FFF),
    .INIT_65(256'h434841D6E7424A36F2FFFFF0364140403F3F403F4040404043C7494945423E40),
    .INIT_66(256'h443DFAFF7E7EFE7EFEFE7E7EFEFE7EFD7EFF7846454646CCCBCAC8C8C9C9CACD),
    .INIT_67(256'h7F7FFFFFFFFFFFFFF5C0464648F8FFFF4042463A64FF7E7FFD7FFDFFF7BF4648),
    .INIT_68(256'hE73F483672FFFF713C4547453F3D3F3F3E3F3D3E3F3F3D3E404448463EE7FFFE),
    .INIT_69(256'hFF7EFE7E7EFEFDFE7FFF7EFE7EFFF7C545424AFFFFFFFFFFFFFFFFFF364740D5),
    .INIT_6A(256'h7FFFFFFFF8BF47454878FFFF413E473962FFFD7F7DFCFBFDFFFA3743C741BFFA),
    .INIT_6B(256'hF2FFFFF13DC54346685F60DF5FDFDE5F60615D5EE44F43483CE6FFFCFDFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFF7FFF7844454148DF4D515051D2D2D2553E453FD4E73E4634),
    .INIT_6D(256'h3AC0C14043F7FFFF3D3EC437E2FFFFFDFE7DFFFFFFFF6B4245443EFAFFFFFFFF),
    .INIT_6E(256'h39443EC2FFFFFFFFFFFFFFFFFFFFFFFFFF523F4338E6FFFF4932383838373739),
    .INIT_6F(256'hC1414036FFFFF8C3413E4B68333C3C3C3C3C3C3C44433B52E73D433071FFFFF0),
    .INIT_70(256'h44F8FFFF3C3D433660FF7F7F7EFFC7BCC1C1C6C344C44042C14141C0C040C1C0),
    .INIT_71(256'hFF7DFE7EFEFFFE7E7FFEFEFEFF4F3E433866FFFFE93241414140414042404140),
    .INIT_72(256'hFFFF77C2413EC67B34393DBCBB3CBCBC41423B53E73B413171FFFF7038433EC2),
    .INIT_73(256'hBB3B4335E0FFFE7FFFFFDD2F403F40C14342403F3F3F3D3E3E3E3F3F3E3F3F32),
    .INIT_74(256'hFFFFFFFFFFFFFFFFFF4E3B413665FFFEFB4CBDC040C0C0C0C2BE403E4278FFFF),
    .INIT_75(256'h3F3EC37DF27372F2F2F1F3753342384FE439C03071FFFFEE33403CC2FFFFFFFF),
    .INIT_76(256'h60FFFE7F7E7E79C0373A3A3F4141BE3B3A3A39393938383938393A2D7EFF76BF),
    .INIT_77(256'h75F6F6F6FB4F3C3F3464FF7C7DFE7BFBFB7B7BFDF13A3E3EC177FFFFB93A4033),
    .INIT_78(256'hFFFFFFFFFFFFFFFF2E42364EE439402C71FFFFF5AE393DC17FF7767675F6F676),
    .INIT_79(256'h7CFCFF67D055D23C3F40BD51D4D454D353D252D2D2D353CB7FFF78B4393CC57F),
    .INIT_7A(256'h2E39BF3F3264FFFD7DFDFF7FFFFFFFFF73B63D39BF77FFFFB8383F325FFFFFFF),
    .INIT_7B(256'h272628283F4037D0E3363E2AF1FF7DFF7FC035392C2F2E2D2C2D2B2C2C2D2E2E),
    .INIT_7C(256'hFFFF78393D3CB878FFFFFFFFFFFFFFFFFFFFFFFFFE7CFFFF3F36362929252726),
    .INIT_7D(256'h2C62FF7E7E7FFEFFFFFEFFFFF1B33C383EF7FFFF38373D2F5FFF7FFF7E7FFEFF),
    .INIT_7E(256'h34332CC8E433BD29F0FF7F7D7F7F432836373736373736373837373635363637),
    .INIT_7F(256'h3B3CB874FFFF7FFFFF7FFEFE7F7F7FFEFF7F7CFE7BC7273234363C3E3C3A3434),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(addra_12_sn_1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h08)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[12]),
        .I1(ena),
        .I2(addra[13]),
        .O(addra_12_sn_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra);
  output [14:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [10:0]addra;

  wire [14:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_20 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_70 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 ;
  wire [10:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h15B50035003B002C505F7FFF7E7F7E7E7EFD7DFE7E7F7CFF7E7E7FFF66F40838),
    .INIT_01(256'h7CFF7F7E7F7F7CFF7DFF7FFE7F7E7FFF64F1053300B90037123D6A767FFF7FFF),
    .INIT_02(256'h2DCD2A4F2A4C2ACC2B502AD02CCF29CD2E502ED22E522FD1254160EA7FFF7D7F),
    .INIT_03(256'h3E5C0032003B002866F07FFF7EFE7E7C7F7F7FFF7FFF566628482ACB294F2A50),
    .INIT_04(256'h7FFF7FFF5EEB36593CDE22C9003601BA003515C33F5A3C5939DC3CDB34D051E2),
    .INIT_05(256'h7FFF7FFE7EFE7FFF7FFE7F7F7E7F7DFF7FFF7FFD7F7D7FFE7F7F7E7F7DFF7D7E),
    .INIT_06(256'h4FDD7FFF7EFF7F7E7FFF7DFF7CFF7D7E7E7E7FFF69F409380038003A09B46F73),
    .INIT_07(256'h7F7F7FFE7FFE7FFF687107B00037003712BC6BF77FFF7FFF16B500330039002B),
    .INIT_08(256'h54DF59E756606B734D59465747D651587CFF7CFD7EFD7D7D7DFF7FFE7FFD7E7F),
    .INIT_09(256'h66707FFF7F7E7DFD7DFF54DF4BD74F5B4DD5797B67F353E6596351DE71F67277),
    .INIT_0A(256'h4FDA4BDC003202380031304D78F94856465C42D472757FFF37D2003100390025),
    .INIT_0B(256'h7FFE7FFE7EFF7D7F7E7F7F7E7EFE7EFF7F7F7EFF7CFF7CFF7FFF5E64485A455A),
    .INIT_0C(256'h7FFF7F7E7EFF7E7F7F7E7FFF697308B5003800390A346EF37FFF7EFE7D7F7F7F),
    .INIT_0D(256'h6971082F0037003512396DF67FFF7FFF13B3003100B800294FDD7FFF7CFD7EFE),
    .INIT_0E(256'h0FAD00240026001D79FA7FFF7DFD7D7E7E7D7F7D7F7E7EFE7EFE7F7E7E7E7FFF),
    .INIT_0F(256'h737606AA0025002022B97FFF1530002B002B0AAA797C47D40023022E03226E71),
    .INIT_10(256'h002E33CB6FF1001F0026001746557FFF36D3003000370022676F7FFF7CFE7FFF),
    .INIT_11(256'h7DFF7F7E7D7F7DFF7FFE7F7E7DFF7FFF666C04250027001E3BCC52D9002D01B7),
    .INIT_12(256'h7FFD7FFF69F308B3003700360A336EF37FFF7FFE7E7F7F7F7FFE7FFF7FFE7DFF),
    .INIT_13(256'h13B974FB7FFF7FFF173400300034002754607FFF7EFF7DFD7FFE7FFE7FFE7FFF),
    .INIT_14(256'h57687FFF7DFE7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF6EF506AE00350033),
    .INIT_15(256'h48D87FFF001E0031002E27C57FFF2443002F00340DAF7EFC2FCE002C01B70028),
    .INIT_16(256'h00350033213C7FFF38D2002C0036002166EF7FFF7CFE7FFF5F69052E00370026),
    .INIT_17(256'h7FFD7FFD7F7F7FFF3F54002600360027797C5059002D0035002E31C97FFF18B2),
    .INIT_18(256'h003400340B3073F77FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7D7F7EFF),
    .INIT_19(256'h0D3100300133002B304949D87CFE7FFE7F7E7FFE7F7F7DFF7D7D7FFF67F204AC),
    .INIT_1A(256'h4550495E47DD475E495D4ADC495D4BDF3F5503AE003300320CB442D94ADD4FE1),
    .INIT_1B(256'h00294B5E686E0024003400293CD57FFF5A6000220033003016B578FA7FFF6EF1),
    .INIT_1C(256'h42D4002A0034001D67EF7FFF7D7F7FFF223A002B0032012C6D735E66002502B2),
    .INIT_1D(256'h0E310031002C19337FFF595F00250032002D24C375F65AE70026003300AB5361),
    .INIT_1E(256'h26C1243F24C023C02341234123C0253F26C01BB367EB7FFF7F7E7F7E7F7F7FFF),
    .INIT_1F(256'h002C00127DFD7FFF7F7F7FFE7F7F7E7F7D7E7D7F797A2EC301AA002F06312143),
    .INIT_20(256'h00270025002700270028013101B000B0002F0028002700250030003103300132),
    .INIT_21(256'h003500245B627FFF6E7312B30032003009266F747FFF6F7201A0002200280027),
    .INIT_22(256'h6A6D7FFF7FFF7FFF0BA7002E002D18347FFF49560028003301A16DF14D5E0022),
    .INIT_23(256'h7FFF7FFF3FD00020002D002C1AAB7FFF0022002F002733C94A55001D0032001B),
    .INIT_24(256'h002C002B002B002C002D00195C637FFF7E7F7F7F7FFF5AE200260034002B41D4),
    .INIT_25(256'h7FFF7FFE7FFF7F7F7DFD7E7E7EFF7FFF47D900200027002E002B002B002C002C),
    .INIT_26(256'h002500240024002600250025002500250025002600240025002600127DFE7E7F),
    .INIT_27(256'h7FFF2F42001F002800184B557FFF7FFF4050001D002500260026002500260026),
    .INIT_28(256'h00180026001B3D4D767708A10022002021BA7FFF1EB200210023001C787C7FFF),
    .INIT_29(256'h0FAB002210A97FFF2CBE001E0029001B7FFF646A11AB000D636D7FFF7FFF65E9),
    .INIT_2A(256'h002700135B627FFF7F7E7FFF7F7F2436001E0026122C7AF97DFF7D7F7FFF6AF0),
    .INIT_2B(256'h7EFE7EFE7DFE7D7D7FFF78FA263B001F00260026002500250025002500260026),
    .INIT_2C(256'h485548D54854485447D54654495449D54855424C7C7E7FFE7FFE7FFE7FFE7EFF),
    .INIT_2D(256'h485560677FFF7FFF6E7448CF495448D44854495447D447D549554954495448D4),
    .INIT_2E(256'h77F94ED54FDC4D5864ED7FFF56DD4EDA505950D77FFF7E7E7FFF66EB48534D58),
    .INIT_2F(256'h62EA283C23C11F3857E17FFF74764CD270F27F7F7EFF74F6555F5A6558DE73F6),
    .INIT_30(256'h7F7F7F7F75F62D3F263C1FB844D07FFF7E7F7DFD7FFD7FFF6B7135452EBC7F7F),
    .INIT_31(256'h7EFC7FFF78795056465146534452445246D246D3445343D344D43ECA6F717FFF),
    .INIT_32(256'h7FFF7FFF7FFF7FFF7FFF7FFF7D7F7F7E7FFF7FFF7FFE7EFE7F7F7D7C7DFF7CFD),
    .INIT_33(256'h7EFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_34(256'h7FFF7AFE7FFF7FFF7FFF7FFF7DFE7E7E7DFD7FFF7FFF7FFF7FFF7FFF7E7E7C7E),
    .INIT_35(256'h7AFC7F7D7FFF7FFF7FFE7B7E7AFE7EFF7FFF7FFF7FFF7F7F7F7F7FFF7FFF7FFF),
    .INIT_36(256'h7FFF7FFF7E7F7E7F7DFC7F7D79FE7C7E7FFF7FFF7D7F7DFF7FFF7FFF7EFF7DFF),
    .INIT_37(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7EFE7EFE7DFE7B7E7C7F),
    .INIT_38(256'h7F7F7DFF7D7F7F7F7FFF7FFF7FFF7EFF7E7E7EFE7E7E7EFE7CFD7CFD7FFF7FFF),
    .INIT_39(256'h7EFF7F7E7F7E7F7F7F7E7F7E7F7E7F7E7F7E7F7E7F7E7F7E7F7F7E7E7F7E7FFE),
    .INIT_3A(256'h7EFE7EFF7F7E7F7F7EFE7DFF7CFF7EFF7F7E7FFD7E7F7E7F7FFF7F7F7F7F7DFF),
    .INIT_3B(256'h7F7E7EFE7E7D7F7C7F7F7FFF7DFF7CFF7F7F7F7D7F7D7F7E7F7F7DFF7EFE7FFE),
    .INIT_3C(256'h7FFF7FFE7C7E7DFF7E7F7EFF7FFF7CFF7F7F7FFF7FFF7FFF7FFE7FFD7FFD7F7E),
    .INIT_3D(256'h7F7F7F7E7F7E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7EFF7EFF7FFF7FFF7FFF7DFF),
    .INIT_3E(256'h7FFF7FFF7FFF7F7F7F7F7F7F7F7F7FFF7DFF7D7F7DFF7D7F7E7F7F7F7EFF7F7F),
    .INIT_3F(256'h7FFE7FFE7FFE7FFE7FFE7FFE7FFE7FFE7FFF7E7F7F7F7F7F7FFE7F7F7E7F7FFE),
    .INIT_40(256'h7FFF7F7E7DFE7EFF7FFE7DFE7FFF7FFF7FFE7FFD7F7E7EFF7F7F7F7F7EFE7FFE),
    .INIT_41(256'h7E7F7F7F7E7E7F7E7E7F7EFE7FFE7FFF7FFD7FFF7FFE7FFE7E7F7EFF7FFF7F7F),
    .INIT_42(256'h7E7F7E7E7F7E7CFF7E7F7F7E7F7E7EFF7EFE7EFF7FFD7EFF7CFF7E7F7FFD7FFD),
    .INIT_43(256'h7EFF7FFF7E7F7E7F7F7F7FFF7FFF7EFF7DFF7F7E7FFF7EFF7D7F7D7F7FFE7FFE),
    .INIT_44(256'h7FFF7FFF7FFF7FFF7DFF7DFF7EFE7EFE7FFE7FFE7FFF7EFF7EFF7F7F7EFF7EFF),
    .INIT_45(256'h7FFF7FFF7FFF7FFF7FFF7E7F7CFF7EFF7FFF7F7F7DFF7EFF7FFF7FFF7FFF7FFF),
    .INIT_46(256'h7F7E7C7F7D7F7DFF7F7E7FFD7F7E7FFF7F7F7CFF7E7F7FFF7FFF7FFF7FFF7FFF),
    .INIT_47(256'h7E7F7F7F7EFF7EFF7FFE7EFF7F7F7EFF7D7F7CFF7E7F7CFF7EFF7FFD7FFF7F7F),
    .INIT_48(256'h7E7F7F7F7FFE7D7F7D7F7EFF7FFF7E7F7BFF7CFF7F7F7FFF7DFF7D7F7E7F7FFF),
    .INIT_49(256'h7F7F7FFF7FFF7DFF7BFF7F7F7F7E7DFF7D7F7CFF7FFF7FFE7FFE7FFD7FFF7EFF),
    .INIT_4A(256'h7DFF7EFF7FFE7FFD7FFE7FFE7EFE7E7F7F7F7EFF7EFF7EFF7F7F7FFF7EFF7E7F),
    .INIT_4B(256'h7FFE7FFE7C7F7CFF7FFE7EFF7C7F7EFF7FFF7FFF7F7F7F7F7F7F7FFF7FFF7FFF),
    .INIT_4C(256'h7E7F7EFF7DFF7EFF7F7F7CFF7E7F7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_4D(256'h7FFF7E7F7F7F7DFF7C7F7C7F7F7F7E7F7F7E7FFF7E7F7D7E7FFE7EFE7E7E7BFF),
    .INIT_4E(256'h7DFE7FFE7E7F7F7F7F7F7F7F7E7F7FFF7F7D7F7F7CFF7E7F7FFE7F7F7EFF7D7F),
    .INIT_4F(256'h7EFF7EFF7F7F7F7E7EFF7E7F7DFF7FFE7F7E7F7E7F7E7E7F7FFF7F7E7FFD7DFF),
    .INIT_50(256'h7E7F7F7E7F7F7F7F7F7F7F7E7FFE7FFE7F7E7E7F7F7F7F7F7EFF7F7F7FFE7F7E),
    .INIT_51(256'h7FFE7F7E7F7F7F7E7FFF7FFF7E7F7EFF7EFF7FFF7FFF7FFE7F7E7FFE7F7E7DFF),
    .INIT_52(256'h7F7E7F7F7F7F7FFE7FFE7FFE7FFE7FFE7FFE7FFE7FFE7FFE7FFF7FFE7DFF7DFF),
    .INIT_53(256'h7EFF7F7F7FFD7F7E7FFE7FFF7E7F7DFF7FFE7F7D7F7D7F7E7FFF7EFF7BFF7D7F),
    .INIT_54(256'h7FFE7F7E7E7F7E7F7FFE7F7E7F7F7F7E7FFD7FFE7F7F7C7F7F7E7F7D7F7E7DFF),
    .INIT_55(256'h7F7F7F7F7EFF7E7F7E7F7EFF7EFE7EFF7FFE7E7F7F7F7E7F7EFF7FFE7F7E7FFE),
    .INIT_56(256'h7E7F7EFF7FFE7FFE7F7F7CFF7F7F7F7F7E7F7EFF7FFE7FFD7FFF7C7F7CFE7FFE),
    .INIT_57(256'h7FFF7FFF7EFF7E7F7EFF7FFF7FFF7FFF7FFE7FFE7EFF7DFF7EFF7FFF7FFF7FFF),
    .INIT_58(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_59(256'h7FFF7FFF7FFF7F7F7FFF7FFF7FFF7FFF7FFF7F7F7F7F7F7F7FFF7FFF7FFF7FFF),
    .INIT_5A(256'h7FFF7FFF7FFF7FFF7FFE7FFF7FFF7F7F7FFF7FFF7FFF7F7F7FFF7FFF7FFF7FFF),
    .INIT_5B(256'h7F7F7FFF7FFF7FFF7FFF7FFF7F7F7F7F7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7F),
    .INIT_5C(256'h7FFF7F7F7F7F7F7F7FFF7FFF7FFF7FFF7FFF7F7F7F7F7FFF7FFF7FFF7FFF7F7F),
    .INIT_5D(256'h7F7F7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_5E(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_5F(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_60(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_61(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_62(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_63(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_64(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_65(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_66(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_67(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_68(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_69(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_6A(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_6B(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_6C(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_6D(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_6E(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_6F(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_70(256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_20 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_70 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [5:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [11:0]addra;

  wire [5:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_29 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 ;
  wire [11:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_01(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_02(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_03(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_04(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_05(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_06(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_07(256'h3F3E3F3E3F3F3F3F3F3F3E3D3E3F3F3F3E3F3F3F3F3F3F3F3F3F3E3F3F3F3F3F),
    .INIT_08(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F3E3F3F3F3E3F3F3F3F3E3E3F3F),
    .INIT_09(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_0A(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F3F3F3F3F3F3E3F3F3F3F3F3F3F3F3F3F),
    .INIT_0B(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3D3E3F3F3F3E3F3E3F),
    .INIT_0C(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_0D(256'h3F3F3F3F3F3F3F3F3F3F3F3E3F3F3E3E3E3F3F3F3F3E3F3F3F3F3F3F3F3F3F3F),
    .INIT_0E(256'h3F3F3F3F3F3F3F3F3F3F3F3E3F3F3F3F3F3E3E3F3F3F3F3E3F3F3F3F3F3F3E3F),
    .INIT_0F(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_10(256'h3D393A3C3F3F3F3F3F3F3E3F3F3F3F3F3F3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_11(256'h3F3F3F3F3F3E3F3F3E3E3E3F3F3E3E3F3F3F3F3D3B373B3D3D3D3E3F3F3E3E3E),
    .INIT_12(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_13(256'h2F373D3F3F3F3F3F3F3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_14(256'h3F3D3E3F3F3E3F3F3F3F3F3F3C362D222B3D3C3D3D3E3E3F3F3E3D3E3E3E3926),
    .INIT_15(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_16(256'h3F3F3E3E3F3F3F3F3F3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_17(256'h3F3F3F3E3F3F3E371A24373D3D3C3C3D3D3D3E3E3E3E3D3E3D3C3D3F3B322133),
    .INIT_18(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F),
    .INIT_19(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_1A(256'h3C2B2322393D3B3A3B3C3B3D3D3D3D3E3E3E3E3F3E3D3D3E3D3F3F2F28373F3F),
    .INIT_1B(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F),
    .INIT_1C(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_1D(256'h3A3937363A3C3A3B3A3A3B3B3C3C3B3B39393B3C3C3C3D3F352B2F3C3F3E3E3E),
    .INIT_1E(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3E3F3F3F3227272838),
    .INIT_1F(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_20(256'h3738393B3D3E3E3E3E3E3E3E3E3E3C3A393938393F3D2F2E353F3F3F3F3F3F3F),
    .INIT_21(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3E3F3F3C2924292B393737373737),
    .INIT_22(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_23(256'h3F3F3E3F3E3F3F3F3F3F3F3F3F3F3B39353B39352D363F3F3F3E3F3F3E3E3D3F),
    .INIT_24(256'h3F3F3E3F3F3F3F3F3F3F3F3F3F3F3F3F3625262C2A373636333334383C3F3F3F),
    .INIT_25(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_26(256'h3E3F3F3F3F3F3F3F3E3E3F3F3F3A3A34342E363F3F3D3F3F3F3F3E3F3F3F3F3F),
    .INIT_27(256'h3F3F3F3F3F3F3E3E3F3F3F381B282D283434302F343B3F3F3F3F3E3F3F3F3F3F),
    .INIT_28(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_29(256'h3F3F3F3F3F3F3F3E3F3F3F3F2E3030373F3E3E3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_2A(256'h3F3F3E3E3F3F381B2A2A2830332A2F3A3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_2B(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_2C(256'h3D3D3D3F3F3F3E3F3F3A2C29373F3F3F3F3F3E3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_2D(256'h3F3718292A292C2E2C3B3F3F3F3F3E3E3F3E3F3F3F3F3F3E3D3D3B3B3A3A3B3C),
    .INIT_2E(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F3F3E3F3F3F3E),
    .INIT_2F(256'h31363F3F3F3F3D3324373F3F3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_30(256'h2A2823303E3F3E3F3F3F3F3F3F3F3F3F3B3536373838393A3A3939393A383735),
    .INIT_31(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F3D3D3F3F3F3F3D252528),
    .INIT_32(256'h333A3F3F381F343F3D3F3F3F3F3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_33(256'h3F3F3F3E3F3E3E3F3E37343336383838383B3B3B3A3A39393A3A3A3A39373535),
    .INIT_34(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F3D3D3F3F3E3F26222A2A2724373F),
    .INIT_35(256'h3F3B213A3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_36(256'h3E3F3E3730323336383A39393737363535363536363636383A3B3B3934333237),
    .INIT_37(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3D3F321C292A2621353F3E3D3E3E3E),
    .INIT_38(256'h3F3F3F3F3E3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_39(256'h353638383534343434363839393A3A3A3939383632323637393E372C333B372B),
    .INIT_3A(256'h3F3F3F3F3F3F3F3F3E3F3F3F3E3F3D21242825203C3F3F3F3E3D3F3F3E362D2D),
    .INIT_3B(256'h3E3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_3C(256'h30343C3E3E3F3F3F3F3F3F3F3F3F3F3F3E3E3B342E2D3A3C372A3A3F3B3E3F3F),
    .INIT_3D(256'h3F3F3F3F3E3F3F3E3D3F2A21272724373F3E3E3F3F3E3F3F2B2A32343436332F),
    .INIT_3E(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_3F(256'h3F3F3F3F3F3F3F3E3E3E3F3F3F3F3F3F3F3F312D323A2F333F3E3D3F3F3F3F3F),
    .INIT_40(256'h3E3F3F3E3F3E1B24272921253F3E3F3F3F3F34212F3433322F2B353F3F3F3E3F),
    .INIT_41(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_42(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3D362E3531373F3E3F3F3F3F3F3F3F3F3F),
    .INIT_43(256'h3F2F202627272720303F3D3D3F33252F30302B283A3E3F3F3F3F3F3F3F3F3E3F),
    .INIT_44(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F),
    .INIT_45(256'h2D2A292A2C30383C3E3F3F3F3F3F34322E353F3F3E3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_46(256'h272625271E313F3F2B22302F2B26343F3F3F3F3F3E3E3F3E3F3F3F3F3D3B342F),
    .INIT_47(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3C182425),
    .INIT_48(256'h14121313181F2D3B3F3F3F3A2D233F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_49(256'h27203831222C2C2529383F3F3E3E3F3F3D3E3F3F3F362E26201E1B1B18171515),
    .INIT_4A(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F3F3F361C252625262626),
    .INIT_4B(256'h0907060B1A2B3B3F3F28393F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_4C(256'h292B222B3F3F3E3E3F3E3E3F3F3E34291D1715161818171715141211100D0A09),
    .INIT_4D(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F3F3F222225252627272628282424),
    .INIT_4E(256'h0706172A3E3F3A3D3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_4F(256'h3F3E3F3F3F3E3E3F3A22131316161616161615151312100E0D0C090809090907),
    .INIT_50(256'h3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F3F13242524262727262728282828212E3F),
    .INIT_51(256'h11293C3E3D3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_52(256'h3F3E3F3F3F2D111213131413131211100F0E0C0B090809080707090B0A090505),
    .INIT_53(256'h3F3F3F3F3F3F3F3F3E3F3F311A2424242424252527282727262A3F3E3E3D3F3F),
    .INIT_54(256'h3F3F3E3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_55(256'h3F3F310E0F1010100F0F0F0E0C0A090807070807080808090A09090A08061C3D),
    .INIT_56(256'h3F3F3F3E3E3F3F291E242324232325262627282928213C3F3D3E3F3E3E3F3F3F),
    .INIT_57(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_58(256'h0D090B0B0B0A0A0909090808080807080708090908080807090908263F3F3F3F),
    .INIT_59(256'h3F3F3B2122232324242526272725272827271D323F3F3F3F3E3F3F3F3F3F3F3E),
    .INIT_5A(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E),
    .INIT_5B(256'h070707070809090A0A0908080708080908080909080708183F3F3F3F3F3F3F3F),
    .INIT_5C(256'h2323232325242425262627272829261D363F3F3F3F3F3E3F3F3F3E3F39100308),
    .INIT_5D(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3618),
    .INIT_5E(256'h070708090A0909080808070808080809090A09153F3F3E3E3F3F3F3F3F3F3F3F),
    .INIT_5F(256'h24242425252627272728292B1F2B3F3F3F3F3E3F3E3E3E3E3F3F160206060405),
    .INIT_60(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F341523232323),
    .INIT_61(256'h090909080808070707080808090909163F3F3E3E3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_62(256'h262626272728282928202A3E3F3D3E3F3E3F3F3E3E3F3D1E0105060606050608),
    .INIT_63(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F34152322232323242424),
    .INIT_64(256'h0909090808080808080808163F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_65(256'h26272928282B22213D3F3F3E3F3F3E3E3F3E3F3F250606070505050607080908),
    .INIT_66(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3416232122222323242425252626),
    .INIT_67(256'h08080808080808163F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_68(256'h28292B24203F3F3E3D3D3E3F3F3F3F3E3F2D0005050506060507080809090809),
    .INIT_69(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F321723202222222324242525262625262929),
    .INIT_6A(256'h080707173F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_6B(256'h271F3B3F3D3E3F3F3F3F3F3F3F3F320703050505050606070809090808090808),
    .INIT_6C(256'h3F3F3F3F3F3F3F3F3F3F3517222121222223232425252526272726262929282A),
    .INIT_6D(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_6E(256'h3F3F3F3F3F3F3E3F3F3F3F3A0301050505050507080808090809080808070719),
    .INIT_6F(256'h3F3F3F3F3F3F341523202121222223242425252527272627282929292A292233),
    .INIT_70(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_71(256'h3E3F3E3E3E3E3F3F3D1700070506050606070708090908080807061E3F3E3F3F),
    .INIT_72(256'h3F3F34132121222122222323242424252627272727282A2A292A29202E3F3E3D),
    .INIT_73(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_74(256'h3E3F3F3F3F3E1400070605060606070708080908080807243F3F3F3F3F3F3F3F),
    .INIT_75(256'h202021212122232324242425252627262728292929292A2A212E3F3E3E3F3E3E),
    .INIT_76(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3718),
    .INIT_77(256'h3E3F3F1F0205060505050506070808080908082D3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_78(256'h21222223242424242525252727282728292A292B2B212E3D3F3F3F3E3F3F3F3F),
    .INIT_79(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F3F221B202121),
    .INIT_7A(256'h1E0206050605050607070708090808333F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_7B(256'h232424242524242628282727282A292A2B2B23273F3F3F3F3F3F3F3F3E3E3F3F),
    .INIT_7C(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F3F320F1A212121202122),
    .INIT_7D(256'h050605060605070708050B3B3F3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_7E(256'h2525252626272829282929292B2A2C2A1E393F3F3F3F3F3F3F3E3E3F3F1A0205),
    .INIT_7F(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F23161D1F21222123232325),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_29 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [5:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [11:0]addra;

  wire [5:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_29 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 ;
  wire [11:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0705060607040F3F3F3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_01(256'h272728282A292A282C2D29251C253F3F3F3F3E3E3F3F3F3F1604050605050505),
    .INIT_02(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F3821131B22232223242425252526),
    .INIT_03(256'h05012C3F3F3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_04(256'h28282725252124303F3F3E3F3F3F3F3F3F3F350B000606010606040506060605),
    .INIT_05(256'h3F3F3F3F3F3E3E3F3F3F3F3F031A3F3F3D2E20181C1D20222425252526272728),
    .INIT_06(256'h3F3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_07(256'h2E383C3F3F3D3F3F3F3F3F3F3F2E0B01060600240C0206060505060504013F3F),
    .INIT_08(256'h3F3F3F3F3F3F3F3F2B001E3C3F3F3B362825201B181A1C1E20201E1C1C202727),
    .INIT_09(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_0A(256'h3F3E3F3E3F3F3F381601030704012D3F330C03060506060601103F3F3E3F3F3F),
    .INIT_0B(256'h3F3F3F3F3F1C0005283D3F3F3F3F3D373433302F2E31333535383F3F3F3F3F3F),
    .INIT_0C(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_0D(256'h3F3F21070104060306243F3E3F3305040606060504273F3F3E3F3E3F3F3F3F3F),
    .INIT_0E(256'h3F3F07000012333F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F3E3E3F3F3F3F3F),
    .INIT_0F(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3E3F3F3F3F),
    .INIT_10(256'h0403010C3C3F3F3F3D3F340A04060602133F3E3F3F3F3E3F3F3F3F3F3F3F3F3F),
    .INIT_11(256'h0000000B2E393F3F3F3F3F3F3E3F3F3E3E3E3D3E3F3F3F3F3F3F3C3520010002),
    .INIT_12(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3E3E3F3F3F10),
    .INIT_13(256'h3F3E3F3F3E3D3F26000506002A3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_14(256'h00051B343C3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F372C0C020002040400001C3D),
    .INIT_15(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3E3F3F3F373F0B000301),
    .INIT_16(256'h3F3F2401060600173F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_17(256'h000A10192A3237373737352C20140C05000001020304010014363F3F3D3E3F3E),
    .INIT_18(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3E3E3F3F3F3F3F3F3F331F3F2B000003030000),
    .INIT_19(256'h070608343F3F3F3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_1A(256'h04050505050505040200000204060502000011293E3F3F3F3F3E3F3F3F290005),
    .INIT_1B(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F281A3F37220000000303020000),
    .INIT_1C(256'h3F3F3F3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_1D(256'h0504040404040402010000081C2F3F3F3F3E3F3F3F3F3F3F1F02050606002D3F),
    .INIT_1E(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F1505383F392815060000010203040404),
    .INIT_1F(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_20(256'h000001060A1427353F3F3F3E3F3F3F3F3F3F381800040706011B3F3F3F3F3F3F),
    .INIT_21(256'h3F3F3F3F3F3F3F3F3F3F3F3F3C0E042C3F3F3F33281D0A090200000000000000),
    .INIT_22(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_23(256'h3F3F3F3F3E3E3E3E3E3E3F3F3C2B030003040500163E3F3F3F3F3F3F3F3F3E3F),
    .INIT_24(256'h3F3F3F3F3F3F3F3E3F3D09001D353F3F3F3F3F3F3128201F1F1E1E1F1F212B3B),
    .INIT_25(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_26(256'h3E3F3F3F3F3F3F3510000303030300083F3F3F3F3F3E3F3F3F3F3F3F3F3F3F3F),
    .INIT_27(256'h3F3F3F3E3F3F33060001293F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E),
    .INIT_28(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_29(256'h392B0500010203040400143F3F3E3F3F3E3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_2A(256'h3E3E3F3D060000001D363F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3E3F3F3F3F3F),
    .INIT_2B(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_2C(256'h0404040300163E3F3F3E3F3F3E3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_2D(256'h380B0003010312213F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F2B1606030104),
    .INIT_2E(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F3F),
    .INIT_2F(256'h283F3F3F3E3F3F3F3E3F3F3F3F3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_30(256'h020300000006171E2730393E3F3F3E3931281F1A080000000203030404040101),
    .INIT_31(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F1600),
    .INIT_32(256'h3E3F3F3F3F3F3F3F3E3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_33(256'h0402000002060A0D0D0D0D0A06020000010304040404040401000F2F3F3F3F3E),
    .INIT_34(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F3F3F3E2902000403),
    .INIT_35(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F3F3F3E3F3F3F3F3F3F3F3F3F),
    .INIT_36(256'h04040202020303020304040304040404030401000F253F3F3F3F3F3E3F3F3F3F),
    .INIT_37(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F391E040003030303),
    .INIT_38(256'h3F3F3E3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_39(256'h0404040403040404040304030000061C3F3F3F3E3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_3A(256'h3F3F3F3F3F3F3F3F3F3F3E3F3F3F3F3F3F3F3F3F3F3F2F160000010303030304),
    .INIT_3B(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_3C(256'h030401010201020816353F3F3F3F3E3F3F3F3F3F3F3F3F3E3E3E3E3E3F3F3E3E),
    .INIT_3D(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F260C050003020302030302),
    .INIT_3E(256'h3F3F3F3F3F3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_3F(256'h1328343B3F3F3F3E3F3E3D3E3E3F3F3F3E3F3F3F3E3F3F3D3F3F3F3F3F3F3F3F),
    .INIT_40(256'h3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F372E1E06000000000000000001),
    .INIT_41(256'h3F3F3F3F3F3E3F3F3F3F3F3F3F3F3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_42(256'h3F3F3F3F3F3F3E3F3F3F3F3F3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_43(256'h3F3F3F3F3F3F3F3F3E3D3E3E3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_44(256'h3F3E3F3F3F3F3F3F3F3F3E3E3F3F3F3F3F3F3F3F3F3F3F3F3F3E3E3F3F3F3F3F),
    .INIT_45(256'h3F3F3F3F3E3E3F3F3E3E3F3E3E3F3F3F3F3F3E3E3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_46(256'h3F3F3F3F3F3F3F3F3E3E3F3F3F3F3F3F3F3F3F3F3F3E3F3F3F3F3F3E3E3F3F3F),
    .INIT_47(256'h3F3F3F3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3E3E3F3F3E3E3F3F3F3F3F),
    .INIT_48(256'h3E3D3E3E3F3F3F3F3F3F3F3F3E3E3E3F3F3F3F3F3F3F3F3F3F3F3F3F3E3E3F3E),
    .INIT_49(256'h3F3F3F3F3E3E3E3E3E3E3E3F3D3D3F3F3F3D3F3F3F3F3E3F3F3F3F3F3E3F3F3F),
    .INIT_4A(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3E3E3F3E3F3E3E3E3E3E3E),
    .INIT_4B(256'h3F3F3D3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F3E3E3F),
    .INIT_4C(256'h3F3F3F3F3F3F3F3F3F3E3E3F3F3E3F3F3F3F3F3F3E3F3F3F3E3E3E3E3E3F3E3E),
    .INIT_4D(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_4E(256'h312A2B2D2B2D2D2C2C2C2C2C2C2C2C2B2C2D2D2C2A2F3F3F3E3F3F3F3F3F3F3F),
    .INIT_4F(256'h302F2F2E3C3F3E3E3F3F3F3F3F3F3F3F3F3F3F3F2A1214112A3F3F3F3F3E3D3F),
    .INIT_50(256'h292929292928292928272B3A3F3F372E2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F30),
    .INIT_51(256'h00000000000000000000000000000000000A3F3F3D3D2B2728292A2828292929),
    .INIT_52(256'h313F3C2E292B2A2A2A2A2B2C2C2B2A2D150000001E3F3F3F3F3E3F3F19000000),
    .INIT_53(256'h00000000000006323F3F2C030102020101020101010101010101010102010200),
    .INIT_54(256'h000101000000000000000000000A3F3F3F3E0700000000000000000000000000),
    .INIT_55(256'h000000000000000000000000000000001F3F3F3F3F3F3F3F3305000000000000),
    .INIT_56(256'h00000A333F3F3E0F0000000000000000000000000000000000000000323F3F27),
    .INIT_57(256'h0211151415141515131B3F3F3F3F0B0001000000000000000000000000000000),
    .INIT_58(256'h000000000000000000000100203F3F3E3F3F3F3D3D2711141414151611020000),
    .INIT_59(256'h3F3F3F302020202124201F1E1F232321212223250F000000323F3F3B00000000),
    .INIT_5A(256'h3F3F3F3F3D3E3F3F3F3F090000000108070705060809090908090B0A09081134),
    .INIT_5B(256'h29292A2A13000100203F3F3E3E3F3E3E3F3F3E3F3F3F3E3F3304000009343F3F),
    .INIT_5C(256'h3D3D3D3E3F260607061D3F3C3C3C3D3F1D000100313F3E3F2D27272829292929),
    .INIT_5D(256'h3F3F3E3F3F3F2200000000133C3D3B3A3B3C3C3C3C3C3C3C3C3B3C3E3F3F3F3D),
    .INIT_5E(256'h22000000223F3F3F3F3F3F3F3F3F3F3F3F3F3F3F330400000A363F3F3F3F3F3F),
    .INIT_5F(256'h0D0B000000030F0E0D0D0C2020000000313F3E3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_60(256'h3E3E3C1C00000000283F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3A110D0F0F0F),
    .INIT_61(256'h1326262626363F3F3F3F3F3F3F3D3E3F310400000B353F3E393838373D3F3E3F),
    .INIT_62(256'h000000000000001522000000323F3F3A25252727262625252525272814000000),
    .INIT_63(256'h0F00010002293F3E3F3F3E3E3F3F3E3F3F3F3E3E3E3F39050000000000000000),
    .INIT_64(256'h00293F3F3F3E3F3F3F3E3F3F320300000A353F3F130909062C3F3F3E3D3D3F3F),
    .INIT_65(256'h0001001521000000323F3F330000000000000000000000000000000000000000),
    .INIT_66(256'h00053A3F3F3F3F3E3E3E3E3E3E3F3F3E3E3F39070000040E0F0F0F0F0F0F0F0F),
    .INIT_67(256'h3E3F3F3F3F3F3F3F330400000A363F3F0A000000293F3F3E3E3E3E3F36060000),
    .INIT_68(256'h22000000323F3F34000000000000000000000000000000000000010000293F3D),
    .INIT_69(256'h3F3F3F3F3F3F3F3F3F3F3F3E3F3F390600000F3F3F3F3F3F3F3F3F3F00000015),
    .INIT_6A(256'h3F3F3F3F3404000009353F3F0B000000293F3F3F3E3D3F3F3F3C000000000B3C),
    .INIT_6B(256'h323F3F32000000051D1B1A1A1B1A1A1A1A1A1A1B1D0A0000002A3F3C3C3F3E3E),
    .INIT_6C(256'h3F3F3F3F3F3F3F3F3F3F390700000E261B1D1D1C1C1B1B1B0000001622000000),
    .INIT_6D(256'h000001000A363F3F0C000000273F3F3F3D3E3F3F3F3F2C030000073C3F3F3F3F),
    .INIT_6E(256'h0000000F3F3F3F3F3F3F3F3F3F3F3F3F3F190000002A3F3F1700000000000000),
    .INIT_6F(256'h05060605373F39070000102800000000000000000000001622000000333F3F33),
    .INIT_70(256'h0A353F3F0C000000273F3F3F3F3F130406060600000001050606060606060606),
    .INIT_71(256'h3F3F3F3F3F3F3E3E3F3F3F3E3F180000002A3F3F2A0000000000000000000100),
    .INIT_72(256'h383F390700000F3704010000000002020000001621000100323F3F330000000C),
    .INIT_73(256'h0B000000283F3F3F3E3F23000000000000000100000000000000000000000000),
    .INIT_74(256'h3F3F3F3F3F3F3F3F3F180000002A3F3F3D1B0A0C0D0C0C0D090100000A363F3F),
    .INIT_75(256'h00000C3D36333434333335370000001622000000323F3F320000000C3F3F3F3F),
    .INIT_76(256'h283F3F3F3F3F3B0E0000000000000000000000000000000000000000393F3906),
    .INIT_77(256'h3635353538140000002B3F3F3F3E3B3C3D3C3B3E310300000A373F3F0B000000),
    .INIT_78(256'h3F3F3F3F3F3F3F3F0000001723000000323F3F390100000B3935353436353435),
    .INIT_79(256'h3F3F3F2E191C1602000003181B1B1C1C1C1C1C1C1C1B1B1A3C3F3A0600000C3F),
    .INIT_7A(256'h00000000002B3F3F3F3E3F3F3F3F3F3F340200000A363F3F0B000000283F3F3F),
    .INIT_7B(256'h000000000000001623000000333F3E3F3F120000000000000000000000000000),
    .INIT_7C(256'h3F3F38050000073B3F3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F0F00010000000000),
    .INIT_7D(256'h00293F3E3E3F3F3E3F3F3F3F330200000A353F3F0C000000283F3F3F3F3E3E3F),
    .INIT_7E(256'h0000001324000100323F3F3F3F3F110000000000000000000000000000000000),
    .INIT_7F(256'h000005373F3F3F3F3F3E3F3F3F3F3F3F3F3F3F3F3D1600000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_29 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (douta,
    clka,
    addra,
    ena);
  output [23:0]douta;
  input clka;
  input [13:0]addra;
  input ena;

  wire [13:0]addra;
  wire clka;
  wire [23:0]douta;
  wire ena;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* C_ADDRA_WIDTH = "14" *) (* C_ADDRB_WIDTH = "14" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "7" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.379368 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "10000" *) (* C_READ_DEPTH_B = "10000" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "24" *) (* C_READ_WIDTH_B = "24" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "10000" *) 
(* C_WRITE_DEPTH_B = "10000" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "24" *) (* C_WRITE_WIDTH_B = "24" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [13:0]addra;
  input [23:0]dina;
  output [23:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [13:0]addrb;
  input [23:0]dinb;
  output [23:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [13:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [23:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [23:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [13:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [13:0]addra;
  wire clka;
  wire [23:0]douta;
  wire ena;

  assign dbiterr = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_synth
   (douta,
    clka,
    addra,
    ena);
  output [23:0]douta;
  input clka;
  input [13:0]addra;
  input ena;

  wire [13:0]addra;
  wire clka;
  wire [23:0]douta;
  wire ena;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
