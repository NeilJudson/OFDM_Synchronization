// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Mon Nov 28 15:19:04 2016
// Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/multiplier_ip_42_42/multiplier_ip_42_42_stub.v
// Design      : multiplier_ip_42_42
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0,Vivado 2015.2.1" *)
module multiplier_ip_42_42(CLK, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[41:0],B[41:0],P[83:0]" */;
  input CLK;
  input [41:0]A;
  input [41:0]B;
  output [83:0]P;
endmodule
