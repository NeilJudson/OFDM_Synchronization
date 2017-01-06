// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Fri Jan 06 15:54:09 2017
// Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/complex_abs_power2_18_ip/complex_abs_power2_18_ip_funcsim.v
// Design      : complex_abs_power2_18_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "complex_abs_power2_18_ip,complex_abs_power2_18,{}" *) (* CORE_GENERATION_INFO = "complex_abs_power2_18_ip,complex_abs_power2_18,{x_ipProduct=Vivado 2015.2.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=complex_abs_power2_18,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "complex_abs_power2_18,Vivado 2015.2.1" *) 
(* NotValidForBitStream *)
module complex_abs_power2_18_ip
   (i_clk,
    i_data_valid,
    i_data_i,
    i_data_q,
    o_data_valid,
    o_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input i_clk;
  input i_data_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [17:0]i_data_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [17:0]i_data_q;
  output o_data_valid;
  output [35:0]o_data;

  wire i_clk;
  wire [17:0]i_data_i;
  wire [17:0]i_data_q;
  wire i_data_valid;
  wire [35:0]o_data;
  wire o_data_valid;

  complex_abs_power2_18_ip_complex_abs_power2_18 inst
       (.i_clk(i_clk),
        .i_data_i(i_data_i),
        .i_data_q(i_data_q),
        .i_data_valid(i_data_valid),
        .o_data(o_data),
        .o_data_valid(o_data_valid));
endmodule

(* ORIG_REF_NAME = "complex_abs_power2_18" *) 
module complex_abs_power2_18_ip_complex_abs_power2_18
   (o_data,
    o_data_valid,
    i_clk,
    i_data_i,
    i_data_q,
    i_data_valid);
  output [35:0]o_data;
  output o_data_valid;
  input i_clk;
  input [17:0]i_data_i;
  input [17:0]i_data_q;
  input i_data_valid;

  wire i_clk;
  wire [17:0]i_data_i;
  wire [17:0]i_data_q;
  wire i_data_valid;
  wire [35:0]o_data;
  wire o_data_valid;
  wire [2:1]p_0_in;
  wire [47:0]u2_C;

  FDRE \i_data_valid_reg_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_data_valid),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \i_data_valid_reg_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \i_data_valid_reg_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(o_data_valid),
        .R(1'b0));
  complex_abs_power2_18_ip_dsp48_mul_ip u1_dsp48_mul_ip
       (.P(u2_C),
        .i_clk(i_clk),
        .i_data_i(i_data_i));
  complex_abs_power2_18_ip_dsp48_mul_add_ip u2_dsp48_mul_add_ip
       (.P(u2_C),
        .i_clk(i_clk),
        .i_data_q(i_data_q),
        .o_data(o_data));
endmodule

(* ORIG_REF_NAME = "dsp48_mul_add_ip" *) 
module complex_abs_power2_18_ip_dsp48_mul_add_ip
   (o_data,
    i_clk,
    i_data_q,
    P);
  output [35:0]o_data;
  input i_clk;
  input [17:0]i_data_q;
  input [47:0]P;

  wire [47:0]P;
  wire U0_n_100;
  wire U0_n_101;
  wire U0_n_102;
  wire U0_n_103;
  wire U0_n_104;
  wire U0_n_105;
  wire U0_n_106;
  wire U0_n_107;
  wire U0_n_108;
  wire U0_n_109;
  wire U0_n_98;
  wire U0_n_99;
  wire i_clk;
  wire [17:0]i_data_q;
  wire [35:0]o_data;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000000000011010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* DONT_TOUCH *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  complex_abs_power2_18_ip_xbip_dsp48_macro_v3_0__parameterized1 U0
       (.A(i_data_q),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(i_data_q),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C(P),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(i_clk),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P({U0_n_98,U0_n_99,U0_n_100,U0_n_101,U0_n_102,U0_n_103,U0_n_104,U0_n_105,U0_n_106,U0_n_107,U0_n_108,U0_n_109,o_data}),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule

(* ORIG_REF_NAME = "dsp48_mul_ip" *) 
module complex_abs_power2_18_ip_dsp48_mul_ip
   (P,
    i_clk,
    i_data_i);
  output [47:0]P;
  input i_clk;
  input [17:0]i_data_i;

  wire [47:0]P;
  wire i_clk;
  wire [17:0]i_data_i;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* DONT_TOUCH *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  complex_abs_power2_18_ip_xbip_dsp48_macro_v3_0 U0
       (.A(i_data_i),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(i_data_i),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(i_clk),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule

(* C_A_WIDTH = "18" *) (* C_B_WIDTH = "18" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "48" *) (* C_D_WIDTH = "18" *) 
(* C_HAS_A = "1" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "1" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "0" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "0" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "128" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000100100000010100000000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "47" *) (* C_REG_CONFIG = "00000000000000000011000001000100" *) (* C_SEL_WIDTH = "0" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0" *) 
module complex_abs_power2_18_ip_xbip_dsp48_macro_v3_0
   (CLK,
    CE,
    SCLR,
    SEL,
    CARRYCASCIN,
    CARRYIN,
    PCIN,
    ACIN,
    BCIN,
    A,
    B,
    C,
    D,
    CONCAT,
    ACOUT,
    BCOUT,
    CARRYOUT,
    CARRYCASCOUT,
    PCOUT,
    P,
    CED,
    CED1,
    CED2,
    CED3,
    CEA,
    CEA1,
    CEA2,
    CEA3,
    CEA4,
    CEB,
    CEB1,
    CEB2,
    CEB3,
    CEB4,
    CECONCAT,
    CECONCAT3,
    CECONCAT4,
    CECONCAT5,
    CEC,
    CEC1,
    CEC2,
    CEC3,
    CEC4,
    CEC5,
    CEM,
    CEP,
    CESEL,
    CESEL1,
    CESEL2,
    CESEL3,
    CESEL4,
    CESEL5,
    SCLRD,
    SCLRA,
    SCLRB,
    SCLRCONCAT,
    SCLRC,
    SCLRM,
    SCLRP,
    SCLRSEL);
  input CLK;
  input CE;
  input SCLR;
  input [0:0]SEL;
  input CARRYCASCIN;
  input CARRYIN;
  input [47:0]PCIN;
  input [29:0]ACIN;
  input [17:0]BCIN;
  input [17:0]A;
  input [17:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [47:0]P;
  input CED;
  input CED1;
  input CED2;
  input CED3;
  input CEA;
  input CEA1;
  input CEA2;
  input CEA3;
  input CEA4;
  input CEB;
  input CEB1;
  input CEB2;
  input CEB3;
  input CEB4;
  input CECONCAT;
  input CECONCAT3;
  input CECONCAT4;
  input CECONCAT5;
  input CEC;
  input CEC1;
  input CEC2;
  input CEC3;
  input CEC4;
  input CEC5;
  input CEM;
  input CEP;
  input CESEL;
  input CESEL1;
  input CESEL2;
  input CESEL3;
  input CESEL4;
  input CESEL5;
  input SCLRD;
  input SCLRA;
  input SCLRB;
  input SCLRCONCAT;
  input SCLRC;
  input SCLRM;
  input SCLRP;
  input SCLRSEL;

  wire [17:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [17:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire [47:0]C;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYIN;
  wire CARRYOUT;
  wire CE;
  wire CEA;
  wire CEA1;
  wire CEA2;
  wire CEA3;
  wire CEA4;
  wire CEB;
  wire CEB1;
  wire CEB2;
  wire CEB3;
  wire CEB4;
  wire CEC;
  wire CEC1;
  wire CEC2;
  wire CEC3;
  wire CEC4;
  wire CEC5;
  wire CECONCAT;
  wire CECONCAT3;
  wire CECONCAT4;
  wire CECONCAT5;
  wire CED;
  wire CED1;
  wire CED2;
  wire CED3;
  wire CEM;
  wire CEP;
  wire CESEL;
  wire CESEL1;
  wire CESEL2;
  wire CESEL3;
  wire CESEL4;
  wire CESEL5;
  wire CLK;
  wire [47:0]CONCAT;
  wire [17:0]D;
  wire [47:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SCLRA;
  wire SCLRB;
  wire SCLRC;
  wire SCLRCONCAT;
  wire SCLRD;
  wire SCLRM;
  wire SCLRP;
  wire SCLRSEL;
  wire [0:0]SEL;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  complex_abs_power2_18_ip_xbip_dsp48_macro_v3_0_viv i_synth
       (.A(A),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
        .B(B),
        .BCIN(BCIN),
        .BCOUT(BCOUT),
        .C(C),
        .CARRYCASCIN(CARRYCASCIN),
        .CARRYCASCOUT(CARRYCASCOUT),
        .CARRYIN(CARRYIN),
        .CARRYOUT(CARRYOUT),
        .CE(CE),
        .CEA(CEA),
        .CEA1(CEA1),
        .CEA2(CEA2),
        .CEA3(CEA3),
        .CEA4(CEA4),
        .CEB(CEB),
        .CEB1(CEB1),
        .CEB2(CEB2),
        .CEB3(CEB3),
        .CEB4(CEB4),
        .CEC(CEC),
        .CEC1(CEC1),
        .CEC2(CEC2),
        .CEC3(CEC3),
        .CEC4(CEC4),
        .CEC5(CEC5),
        .CECONCAT(CECONCAT),
        .CECONCAT3(CECONCAT3),
        .CECONCAT4(CECONCAT4),
        .CECONCAT5(CECONCAT5),
        .CED(CED),
        .CED1(CED1),
        .CED2(CED2),
        .CED3(CED3),
        .CEM(CEM),
        .CEP(CEP),
        .CESEL(CESEL),
        .CESEL1(CESEL1),
        .CESEL2(CESEL2),
        .CESEL3(CESEL3),
        .CESEL4(CESEL4),
        .CESEL5(CESEL5),
        .CLK(CLK),
        .CONCAT(CONCAT),
        .D(D),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SCLRA(SCLRA),
        .SCLRB(SCLRB),
        .SCLRC(SCLRC),
        .SCLRCONCAT(SCLRCONCAT),
        .SCLRD(SCLRD),
        .SCLRM(SCLRM),
        .SCLRP(SCLRP),
        .SCLRSEL(SCLRSEL),
        .SEL(SEL));
endmodule

(* C_A_WIDTH = "18" *) (* C_B_WIDTH = "18" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "48" *) (* C_D_WIDTH = "18" *) 
(* C_HAS_A = "1" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "1" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "1" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "0" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "128" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000000000011010100000000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "47" *) (* C_REG_CONFIG = "00000000000000000011000001000100" *) (* C_SEL_WIDTH = "0" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0" *) 
module complex_abs_power2_18_ip_xbip_dsp48_macro_v3_0__parameterized1
   (CLK,
    CE,
    SCLR,
    SEL,
    CARRYCASCIN,
    CARRYIN,
    PCIN,
    ACIN,
    BCIN,
    A,
    B,
    C,
    D,
    CONCAT,
    ACOUT,
    BCOUT,
    CARRYOUT,
    CARRYCASCOUT,
    PCOUT,
    P,
    CED,
    CED1,
    CED2,
    CED3,
    CEA,
    CEA1,
    CEA2,
    CEA3,
    CEA4,
    CEB,
    CEB1,
    CEB2,
    CEB3,
    CEB4,
    CECONCAT,
    CECONCAT3,
    CECONCAT4,
    CECONCAT5,
    CEC,
    CEC1,
    CEC2,
    CEC3,
    CEC4,
    CEC5,
    CEM,
    CEP,
    CESEL,
    CESEL1,
    CESEL2,
    CESEL3,
    CESEL4,
    CESEL5,
    SCLRD,
    SCLRA,
    SCLRB,
    SCLRCONCAT,
    SCLRC,
    SCLRM,
    SCLRP,
    SCLRSEL);
  input CLK;
  input CE;
  input SCLR;
  input [0:0]SEL;
  input CARRYCASCIN;
  input CARRYIN;
  input [47:0]PCIN;
  input [29:0]ACIN;
  input [17:0]BCIN;
  input [17:0]A;
  input [17:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [47:0]P;
  input CED;
  input CED1;
  input CED2;
  input CED3;
  input CEA;
  input CEA1;
  input CEA2;
  input CEA3;
  input CEA4;
  input CEB;
  input CEB1;
  input CEB2;
  input CEB3;
  input CEB4;
  input CECONCAT;
  input CECONCAT3;
  input CECONCAT4;
  input CECONCAT5;
  input CEC;
  input CEC1;
  input CEC2;
  input CEC3;
  input CEC4;
  input CEC5;
  input CEM;
  input CEP;
  input CESEL;
  input CESEL1;
  input CESEL2;
  input CESEL3;
  input CESEL4;
  input CESEL5;
  input SCLRD;
  input SCLRA;
  input SCLRB;
  input SCLRCONCAT;
  input SCLRC;
  input SCLRM;
  input SCLRP;
  input SCLRSEL;

  wire [17:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [17:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire [47:0]C;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYIN;
  wire CARRYOUT;
  wire CE;
  wire CEA;
  wire CEA1;
  wire CEA2;
  wire CEA3;
  wire CEA4;
  wire CEB;
  wire CEB1;
  wire CEB2;
  wire CEB3;
  wire CEB4;
  wire CEC;
  wire CEC1;
  wire CEC2;
  wire CEC3;
  wire CEC4;
  wire CEC5;
  wire CECONCAT;
  wire CECONCAT3;
  wire CECONCAT4;
  wire CECONCAT5;
  wire CED;
  wire CED1;
  wire CED2;
  wire CED3;
  wire CEM;
  wire CEP;
  wire CESEL;
  wire CESEL1;
  wire CESEL2;
  wire CESEL3;
  wire CESEL4;
  wire CESEL5;
  wire CLK;
  wire [47:0]CONCAT;
  wire [17:0]D;
  wire [47:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SCLRA;
  wire SCLRB;
  wire SCLRC;
  wire SCLRCONCAT;
  wire SCLRD;
  wire SCLRM;
  wire SCLRP;
  wire SCLRSEL;
  wire [0:0]SEL;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000000000011010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  complex_abs_power2_18_ip_xbip_dsp48_macro_v3_0_viv__parameterized1 i_synth
       (.A(A),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
        .B(B),
        .BCIN(BCIN),
        .BCOUT(BCOUT),
        .C(C),
        .CARRYCASCIN(CARRYCASCIN),
        .CARRYCASCOUT(CARRYCASCOUT),
        .CARRYIN(CARRYIN),
        .CARRYOUT(CARRYOUT),
        .CE(CE),
        .CEA(CEA),
        .CEA1(CEA1),
        .CEA2(CEA2),
        .CEA3(CEA3),
        .CEA4(CEA4),
        .CEB(CEB),
        .CEB1(CEB1),
        .CEB2(CEB2),
        .CEB3(CEB3),
        .CEB4(CEB4),
        .CEC(CEC),
        .CEC1(CEC1),
        .CEC2(CEC2),
        .CEC3(CEC3),
        .CEC4(CEC4),
        .CEC5(CEC5),
        .CECONCAT(CECONCAT),
        .CECONCAT3(CECONCAT3),
        .CECONCAT4(CECONCAT4),
        .CECONCAT5(CECONCAT5),
        .CED(CED),
        .CED1(CED1),
        .CED2(CED2),
        .CED3(CED3),
        .CEM(CEM),
        .CEP(CEP),
        .CESEL(CESEL),
        .CESEL1(CESEL1),
        .CESEL2(CESEL2),
        .CESEL3(CESEL3),
        .CESEL4(CESEL4),
        .CESEL5(CESEL5),
        .CLK(CLK),
        .CONCAT(CONCAT),
        .D(D),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SCLRA(SCLRA),
        .SCLRB(SCLRB),
        .SCLRC(SCLRC),
        .SCLRCONCAT(SCLRCONCAT),
        .SCLRD(SCLRD),
        .SCLRM(SCLRM),
        .SCLRP(SCLRP),
        .SCLRSEL(SCLRSEL),
        .SEL(SEL));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
TYC2a98Y1yysY91l546ob+IXQg6fiMRAm6syn2FqZ8C4J00TJH9s9pBK99lKAlmxD58wDHg2XKOB
4+D4sI/OnA==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
IYo4LY638jReFPtBZA8oIrfMNP47X7knj8vR4HmvueYKSZWAAwFtiSPbhdiHrQdj/Jr2MVzYEcfd
vRsRxe3v7ynxxUMH5timX7mlzx07A/AyIO+uhqGDAbSyVKFJ3Gken+AeMGyZtQm6kssqDVNq8+FO
qY6FIJeeOJAkf6HKLQ4=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
fCKxKqpijP/7rpIjfkXBt9viSVW6GhZmaQb8SCQ2AOAPWdxNwyVH+kSJghpmUfV3WyKheuuDbIua
PCbiAqbP4Q1WffU+QdbKAV1MD11yHylQagVgeUsl1HbG1U2WlOD/Yfj48ksMn+llZDhZ2W8YLK6x
awmnT/y8PZrICy2D9+0a7TpZScZ+8g8rmgNvFJdoTmUW1rYs4TG5y6IkW6i7e7EWh6lY1/xXJVvc
suiWg5Gywy9NNWPJVgvTTj+QlsXTKD7aniyg/Wf5EByN0lEizV5utPNRLxORI1T5AH2PLQxwTnAb
CpRxZb+Ymkw3M4mCSn+rnWWQQBJNZ40mqgAs2Q==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
CdJL3sB+6k2qfKx5AIlvhCqnCiYX0XkkBTKRNyzFcWV1F9+uS+QEiM7C+8DTOsm+fS98iciviKiK
3d0IwMUKnQnjT9PPYtCdkpcD/XLOFsBAPIYR9jt+ubCrOFBXRAViIZf3mMIeydWehrRxX0z9azPn
met3gl41ccDQOhZacM4=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
Joy/Zu48hyfOuMcFFUFc9UX77pQ/evKtrfBnlX022U+1AY594DoKNkUlYrXk7xS6/ZR6OI3xkmlo
PoXSY7UY5SpLjztMrPQkKdQJcwNonE05xLJDWTeI3ydFZw73Pma4oypwaIleDBnnXtiw0KxzaXr9
X1OrDRrFCkO3cKBy9567w6E1Bj4tKgcZkLaT74LaC43otaBprzCmC3qfMzgptdOb8ZpoXa1Ndito
Z96ueEadkxFzAj/pubMwLGv/ZVI2s/THLgYf1NRowC9HKXaFngSCso+vhsMW7j1PDrwBFAQopepK
auZlkKb6gBUD1HQXwwpr5R0j4cXE6xCTecFqIg==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
edV43W71M0xrWDWYhKf6xR8wJFIAixGwdFfv7Z3CPPgFVhMzL4xQn7SNu/r3uVZGHL8yDTdjj8n7
vw3FRVzam1BryoBQM6BQodRqh1vOEyceZemRYIykW4PpYOf5/cncLtGh1CZXMVl3wXsYSYi58an4
XmNypjPe4tJTDRSHxjPYhPBMbozPD2uuR1iAhPhc78cb35Ft9t6ov0INoNFaTXYhLtzQ2L4irtAg
ENP+vcoIVNGHvHmdTkrF/IO0Md3+QWqy4J4wz4+CbAUhD+eT87t53iDYj40T3c51qRjz/sITz0Eg
ObHFpf9dGhkY/kyag7/67PN/MAerl7XZ7v/s1w==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
SlJ92Sxvy+nAuJMnZzbs6BRUT6caP3sLxdRHpEGn8ddXWKDvBp4zXIAJWiuFEzBoehuOzRTxrC5P
K01yrwxEz7co+LcF3nlwl3KZ+k8SzAmqpFp7otI4rIq1d/OgsTo2RGdthxJnm91QD3XcnCK2Zirt
JFNTFe4UpOVLMUyFnuZgy5hi8CAjfIafBso7DY7a6fLkvtDWsZ5u5zOtAaDIzWEP0YUOjrs0Ot8D
YnLlo1oWX29Q0zU9k9ikh1rufyBsWktEotqZrsR80wA4RF9BL58qYGoZMeFoC5UWffxpVDV3GbpO
W/PeAetz+Sp4qZyGaj5Q4IMXLd8hxT+tnGAsyA==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
qy4=
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
TYC2a98Y1yysY91l546ob+IXQg6fiMRAm6syn2FqZ8C4J00TJH9s9pBK99lKAlmxD58wDHg2XKOB
4+D4sI/OnA==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
IYo4LY638jReFPtBZA8oIrfMNP47X7knj8vR4HmvueYKSZWAAwFtiSPbhdiHrQdj/Jr2MVzYEcfd
vRsRxe3v7ynxxUMH5timX7mlzx07A/AyIO+uhqGDAbSyVKFJ3Gken+AeMGyZtQm6kssqDVNq8+FO
qY6FIJeeOJAkf6HKLQ4=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
fCKxKqpijP/7rpIjfkXBt9viSVW6GhZmaQb8SCQ2AOAPWdxNwyVH+kSJghpmUfV3WyKheuuDbIua
PCbiAqbP4Q1WffU+QdbKAV1MD11yHylQagVgeUsl1HbG1U2WlOD/Yfj48ksMn+llZDhZ2W8YLK6x
awmnT/y8PZrICy2D9+0a7TpZScZ+8g8rmgNvFJdoTmUW1rYs4TG5y6IkW6i7e7EWh6lY1/xXJVvc
suiWg5Gywy9NNWPJVgvTTj+QlsXTKD7aniyg/Wf5EByN0lEizV5utPNRLxORI1T5AH2PLQxwTnAb
CpRxZb+Ymkw3M4mCSn+rnWWQQBJNZ40mqgAs2Q==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
CdJL3sB+6k2qfKx5AIlvhCqnCiYX0XkkBTKRNyzFcWV1F9+uS+QEiM7C+8DTOsm+fS98iciviKiK
3d0IwMUKnQnjT9PPYtCdkpcD/XLOFsBAPIYR9jt+ubCrOFBXRAViIZf3mMIeydWehrRxX0z9azPn
met3gl41ccDQOhZacM4=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
Joy/Zu48hyfOuMcFFUFc9UX77pQ/evKtrfBnlX022U+1AY594DoKNkUlYrXk7xS6/ZR6OI3xkmlo
PoXSY7UY5SpLjztMrPQkKdQJcwNonE05xLJDWTeI3ydFZw73Pma4oypwaIleDBnnXtiw0KxzaXr9
X1OrDRrFCkO3cKBy9567w6E1Bj4tKgcZkLaT74LaC43otaBprzCmC3qfMzgptdOb8ZpoXa1Ndito
Z96ueEadkxFzAj/pubMwLGv/ZVI2s/THLgYf1NRowC9HKXaFngSCso+vhsMW7j1PDrwBFAQopepK
auZlkKb6gBUD1HQXwwpr5R0j4cXE6xCTecFqIg==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
edV43W71M0xrWDWYhKf6xR8wJFIAixGwdFfv7Z3CPPgFVhMzL4xQn7SNu/r3uVZGHL8yDTdjj8n7
vw3FRVzam1BryoBQM6BQodRqh1vOEyceZemRYIykW4PpYOf5/cncLtGh1CZXMVl3wXsYSYi58an4
XmNypjPe4tJTDRSHxjPYhPBMbozPD2uuR1iAhPhc78cb35Ft9t6ov0INoNFaTXYhLtzQ2L4irtAg
ENP+vcoIVNGHvHmdTkrF/IO0Md3+QWqy4J4wz4+CbAUhD+eT87t53iDYj40T3c51qRjz/sITz0Eg
ObHFpf9dGhkY/kyag7/67PN/MAerl7XZ7v/s1w==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
SlJ92Sxvy+nAuJMnZzbs6BRUT6caP3sLxdRHpEGn8ddXWKDvBp4zXIAJWiuFEzBoehuOzRTxrC5P
K01yrwxEz7co+LcF3nlwl3KZ+k8SzAmqpFp7otI4rIq1d/OgsTo2RGdthxJnm91QD3XcnCK2Zirt
JFNTFe4UpOVLMUyFnuZgy5hi8CAjfIafBso7DY7a6fLkvtDWsZ5u5zOtAaDIzWEP0YUOjrs0Ot8D
YnLlo1oWX29Q0zU9k9ikh1rufyBsWktEotqZrsR80wA4RF9BL58qYGoZMeFoC5UWffxpVDV3GbpO
W/PeAetz+Sp4qZyGaj5Q4IMXLd8hxT+tnGAsyA==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11248)
`pragma protect data_block
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
g1yJq42RHWm3P8w9EhrdamR/0g==
`pragma protect end_protected
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
