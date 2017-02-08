// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Wed Feb 08 14:45:30 2017
// Host        : FUTURE3 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/dsp48_mul_ip/dsp48_mul_ip_funcsim.v
// Design      : dsp48_mul_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp48_mul_ip,xbip_dsp48_macro_v3_0,{}" *) (* core_generation_info = "dsp48_mul_ip,xbip_dsp48_macro_v3_0,{x_ipProduct=Vivado 2015.2.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xbip_dsp48_macro,x_ipVersion=3.0,x_ipCoreRevision=9,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG,C_VERBOSITY=0,C_MODEL_TYPE=0,C_XDEVICEFAMILY=zynq,C_HAS_CE=0,C_HAS_INDEP_CE=0,C_HAS_CED=0,C_HAS_CEA=0,C_HAS_CEB=0,C_HAS_CEC=0,C_HAS_CECONCAT=0,C_HAS_CEM=0,C_HAS_CEP=0,C_HAS_CESEL=0,C_HAS_SCLR=0,C_HAS_INDEP_SCLR=0,C_HAS_SCLRD=0,C_HAS_SCLRA=0,C_HAS_SCLRB=0,C_HAS_SCLRC=0,C_HAS_SCLRM=0,C_HAS_SCLRP=0,C_HAS_SCLRCONCAT=0,C_HAS_SCLRSEL=0,C_HAS_CARRYCASCIN=0,C_HAS_CARRYIN=0,C_HAS_ACIN=0,C_HAS_BCIN=0,C_HAS_PCIN=0,C_HAS_A=1,C_HAS_B=1,C_HAS_D=0,C_HAS_CONCAT=0,C_HAS_C=0,C_A_WIDTH=18,C_B_WIDTH=18,C_C_WIDTH=48,C_D_WIDTH=18,C_CONCAT_WIDTH=48,C_P_MSB=47,C_P_LSB=0,C_SEL_WIDTH=0,C_HAS_ACOUT=0,C_HAS_BCOUT=0,C_HAS_CARRYCASCOUT=0,C_HAS_CARRYOUT=0,C_HAS_PCOUT=0,C_CONSTANT_1=1,C_LATENCY=128,C_OPMODES=000100100000010100000000,C_REG_CONFIG=00000000000000000011000000000100,C_TEST_CORE=0}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "xbip_dsp48_macro_v3_0,Vivado 2015.2.1" *) 
(* NotValidForBitStream *)
module dsp48_mul_ip
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [47:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire CLK;
  wire [47:0]P;
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
  dsp48_mul_ip_xbip_dsp48_macro_v3_0 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
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
        .CLK(CLK),
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
(* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module dsp48_mul_ip_xbip_dsp48_macro_v3_0
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
  dsp48_mul_ip_xbip_dsp48_macro_v3_0_viv i_synth
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
jR9KABs8KiHdRY8jeenRepp+xBMYjRmmxG8XyPPhP8dAb8oR+rrLQiz7M8tYA+SeCKfK9v6W0T5j
tk/t7tnYEkI5GS6j48g9n0eEptiEWtk1HgC1RYcPrYK6JGdORzEEpUCNqGmYHbrdEsGJzISSbQWE
FNBGdVmz2MkSHjX6xx2ZVMeTnasm4VYuv+VHDwC6nmDfARqrwFcFKOsMGxqcLXf3o+FMZ+D4Uoqy
LcP1YKBNtRU7HiCnnhrnMh4l0bWv5bhLGAeNlwB7Ot6lh/YiPmfE1rWC/YT8AOvsLIS0t92tRXtI
kK2ZeTI2sVg3FQkGRKTvgaA8kKkTFvmgHjBbWw==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
C5nTUA9Ufgxpqc+WjUimCLqo1HU7Pf38s87SAEwz/eTVMgGaz0/RiFBdEZ7q++cJ9D+N9qtOfS+U
z6PlPomX6rxwMLdnMGrsmS+6TcHd75VKeAiOI/+PC8oD29+4m67JJ1cC7S5WEBfjIYWv6ulcRjf9
2QRTVbZRJ5kikxvz8dHhREYSLi5WIlLOgzo+GhcPLMijB/QJRhQpjsBdIr9O87hQGFeIaJzE1igm
MYcBWlaG7uyrbc5VuWt93kBxCV2OIHCOdgnet9VjfmRuUaqpLqFYhy1vVq6ENt6uaFn+Fknos+k3
hT9ul7DPk55kkJpLOCAZ5YVGSeY/aGgsUDCbtQ==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3696)
`pragma protect data_block
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
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
jR9KABs8KiHdRY8jeenRepp+xBMYjRmmxG8XyPPhP8dAb8oR+rrLQiz7M8tYA+SeCKfK9v6W0T5j
tk/t7tnYEkI5GS6j48g9n0eEptiEWtk1HgC1RYcPrYK6JGdORzEEpUCNqGmYHbrdEsGJzISSbQWE
FNBGdVmz2MkSHjX6xx2ZVMeTnasm4VYuv+VHDwC6nmDfARqrwFcFKOsMGxqcLXf3o+FMZ+D4Uoqy
LcP1YKBNtRU7HiCnnhrnMh4l0bWv5bhLGAeNlwB7Ot6lh/YiPmfE1rWC/YT8AOvsLIS0t92tRXtI
kK2ZeTI2sVg3FQkGRKTvgaA8kKkTFvmgHjBbWw==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
C5nTUA9Ufgxpqc+WjUimCLqo1HU7Pf38s87SAEwz/eTVMgGaz0/RiFBdEZ7q++cJ9D+N9qtOfS+U
z6PlPomX6rxwMLdnMGrsmS+6TcHd75VKeAiOI/+PC8oD29+4m67JJ1cC7S5WEBfjIYWv6ulcRjf9
2QRTVbZRJ5kikxvz8dHhREYSLi5WIlLOgzo+GhcPLMijB/QJRhQpjsBdIr9O87hQGFeIaJzE1igm
MYcBWlaG7uyrbc5VuWt93kBxCV2OIHCOdgnet9VjfmRuUaqpLqFYhy1vVq6ENt6uaFn+Fknos+k3
hT9ul7DPk55kkJpLOCAZ5YVGSeY/aGgsUDCbtQ==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5536)
`pragma protect data_block
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
otC381Detg==
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
