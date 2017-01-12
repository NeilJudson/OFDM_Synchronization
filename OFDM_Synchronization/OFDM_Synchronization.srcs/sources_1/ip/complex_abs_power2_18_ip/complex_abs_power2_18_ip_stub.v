// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Tue Jan 10 19:43:04 2017
// Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/complex_abs_power2_18_ip/complex_abs_power2_18_ip_stub.v
// Design      : complex_abs_power2_18_ip
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "complex_abs_power2_18,Vivado 2015.2.1" *)
module complex_abs_power2_18_ip(i_clk, i_data_valid, i_data_i, i_data_q, o_data_valid, o_data)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_data_valid,i_data_i[17:0],i_data_q[17:0],o_data_valid,o_data[35:0]" */;
  input i_clk;
  input i_data_valid;
  input [17:0]i_data_i;
  input [17:0]i_data_q;
  output o_data_valid;
  output [35:0]o_data;
endmodule
