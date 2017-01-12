// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Wed Jan 11 14:49:50 2017
// Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/multiplier_69_18_1dsp_ip/multiplier_69_18_1dsp_ip_stub.v
// Design      : multiplier_69_18_1dsp_ip
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "multiplier_69_18_1dsp,Vivado 2015.2.1" *)
module multiplier_69_18_1dsp_ip(i_clk, i_rst, i_en, i_a, i_b, o_in_en, o_c_en, o_c)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_rst,i_en,i_a[68:0],i_b[17:0],o_in_en,o_c_en,o_c[85:0]" */;
  input i_clk;
  input i_rst;
  input i_en;
  input [68:0]i_a;
  input [17:0]i_b;
  output o_in_en;
  output o_c_en;
  output [85:0]o_c;
endmodule
