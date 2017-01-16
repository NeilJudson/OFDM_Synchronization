// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Tue Jan 10 19:43:04 2017
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
  (* C_REG_CONFIG = "00000000000000000011000000000100" *) 
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
(* C_P_MSB = "47" *) (* C_REG_CONFIG = "00000000000000000011000000000100" *) (* C_SEL_WIDTH = "0" *) 
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
  (* C_REG_CONFIG = "00000000000000000011000000000100" *) 
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
bwvFMWysE4jEu2iTNniNYR5bKEJRLkSqQHy1J/3G9t27g0ON6j5SFpJmEJIrhYYcc9Z6JobqUTJl
SLcpRtZsSvuk762nXz5Gqdcpfy2OgdDz1y+ThQttHVHuYi4zEzNYFu20J8y+I9bLSIiVFf2uhPcn
zTcONt1KDA2l5Mo12vAG/aj5PACper1uQpJajG29WwCWTr2x8F1t4X5VxDaYw2n2wKhfUQsAlHA3
SJLKHmLk5C71ps6E8RxJfW2XDDt2rRsj2q3FOmxshZAQndb2D76dybslWQeGqUYDvWY+SMkBrcQT
yzggt8iVuA9+fHmkoORrVym280iVk0R80mZjtw==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
iVovXkFfrpKKMbjSZejz6h0JjtxDo0zmCdrd2C/ehFHQ9Nyv+CnYtWg4br7SHjAr8eJKqPmEHddJ
JtW7PKZAUwjtl5Weu25fy76o3JTY8jBale1Zo+m1jNtagRSiNmiOHag+t5dKP86l26nE6URFkDI/
H78WN3v1sQNwkFQp4/DmjWxMLdaX16RWPahMLKZoIjRfS7/BsMdjo/VTLpVwcPMWX6DIZCy4MCbL
6PvKWJcIuzGASr+jjyasEX1f54RuymjSNT1yZ/OIiArR04r/hN8r1CpshHlKftizejBjEHehN7yR
jdbw1fsXYhNWDrTaEYY2yiyWfJdLvI6awwtrjg==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7200)
`pragma protect data_block
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
CK3yZi6MlfRsk0S4sJbv/cmO
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
bwvFMWysE4jEu2iTNniNYR5bKEJRLkSqQHy1J/3G9t27g0ON6j5SFpJmEJIrhYYcc9Z6JobqUTJl
SLcpRtZsSvuk762nXz5Gqdcpfy2OgdDz1y+ThQttHVHuYi4zEzNYFu20J8y+I9bLSIiVFf2uhPcn
zTcONt1KDA2l5Mo12vAG/aj5PACper1uQpJajG29WwCWTr2x8F1t4X5VxDaYw2n2wKhfUQsAlHA3
SJLKHmLk5C71ps6E8RxJfW2XDDt2rRsj2q3FOmxshZAQndb2D76dybslWQeGqUYDvWY+SMkBrcQT
yzggt8iVuA9+fHmkoORrVym280iVk0R80mZjtw==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
iVovXkFfrpKKMbjSZejz6h0JjtxDo0zmCdrd2C/ehFHQ9Nyv+CnYtWg4br7SHjAr8eJKqPmEHddJ
JtW7PKZAUwjtl5Weu25fy76o3JTY8jBale1Zo+m1jNtagRSiNmiOHag+t5dKP86l26nE6URFkDI/
H78WN3v1sQNwkFQp4/DmjWxMLdaX16RWPahMLKZoIjRfS7/BsMdjo/VTLpVwcPMWX6DIZCy4MCbL
6PvKWJcIuzGASr+jjyasEX1f54RuymjSNT1yZ/OIiArR04r/hN8r1CpshHlKftizejBjEHehN7yR
jdbw1fsXYhNWDrTaEYY2yiyWfJdLvI6awwtrjg==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11264)
`pragma protect data_block
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
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
