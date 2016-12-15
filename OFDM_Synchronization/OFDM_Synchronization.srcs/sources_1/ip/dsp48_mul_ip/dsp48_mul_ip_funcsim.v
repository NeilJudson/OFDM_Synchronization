// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Wed Dec 14 00:35:41 2016
// Host        : FUTURE2 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               G:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/dsp48_mul_ip/dsp48_mul_ip_funcsim.v
// Design      : dsp48_mul_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp48_mul_ip,xbip_dsp48_macro_v3_0,{}" *) (* core_generation_info = "dsp48_mul_ip,xbip_dsp48_macro_v3_0,{x_ipProduct=Vivado 2015.2.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xbip_dsp48_macro,x_ipVersion=3.0,x_ipCoreRevision=9,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG,C_VERBOSITY=0,C_MODEL_TYPE=0,C_XDEVICEFAMILY=zynq,C_HAS_CE=0,C_HAS_INDEP_CE=0,C_HAS_CED=0,C_HAS_CEA=0,C_HAS_CEB=0,C_HAS_CEC=0,C_HAS_CECONCAT=0,C_HAS_CEM=0,C_HAS_CEP=0,C_HAS_CESEL=0,C_HAS_SCLR=0,C_HAS_INDEP_SCLR=0,C_HAS_SCLRD=0,C_HAS_SCLRA=0,C_HAS_SCLRB=0,C_HAS_SCLRC=0,C_HAS_SCLRM=0,C_HAS_SCLRP=0,C_HAS_SCLRCONCAT=0,C_HAS_SCLRSEL=0,C_HAS_CARRYCASCIN=0,C_HAS_CARRYIN=0,C_HAS_ACIN=0,C_HAS_BCIN=0,C_HAS_PCIN=0,C_HAS_A=1,C_HAS_B=1,C_HAS_D=0,C_HAS_CONCAT=0,C_HAS_C=0,C_A_WIDTH=18,C_B_WIDTH=18,C_C_WIDTH=48,C_D_WIDTH=18,C_CONCAT_WIDTH=48,C_P_MSB=47,C_P_LSB=0,C_SEL_WIDTH=0,C_HAS_ACOUT=0,C_HAS_BCOUT=0,C_HAS_CARRYCASCOUT=0,C_HAS_CARRYOUT=0,C_HAS_PCOUT=0,C_CONSTANT_1=1,C_LATENCY=128,C_OPMODES=000100100000010100000000,C_REG_CONFIG=00000000000000000011000001000100,C_TEST_CORE=0}" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
  (* C_REG_CONFIG = "00000000000000000011000001000100" *) 
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
(* C_P_MSB = "47" *) (* C_REG_CONFIG = "00000000000000000011000001000100" *) (* C_SEL_WIDTH = "0" *) 
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
  (* C_REG_CONFIG = "00000000000000000011000001000100" *) 
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
GCD2Z0yWty3EgPI7OOpLGKr5MavGcmIdC+UtKME61qks8VoOy4DAzJPJjEAmG5Dxp5bm4oMmolN7
43toLVKfw/VCKYm+BwBz5CLh3x+KkpdgP5JHwSFYCAqXcotSEgEr6xxDLPcJd0YowfxIXAyuu/NE
dMKvMPYyUJgJN1ZGTBfjUa9FwkqvWbCoNGNbyUqqjy0GnGF2kNjYiq/tECqgCyRFjgdfLVo59e77
rFDLhtGK/gMHwF66JyUynZEMPQ9QECWYKkBDcpyD8VQgVfpbhMWfWTJ3A0Kme5+w8cAXd8XMiJVC
mE08qsHc8Lq+YYtFLVqpyUSNg5NM58RdTydmVQ==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
tY2G0xjmdKa78ZjK6cpKedFtSQEaVPFr20ndugKPFrkKRkb8IvaKBFrVa3fxqd5U68LGmC9jNvKE
SHDVsULNf7VUKpgAwRS7ktc0y76ZpafyH95hvInDrseuOx4b3bea3rE3Wd89i/QVTS3hcpnoHEwL
Zl1n4HsiHX1gdah5vtlkV7LiOajAg4W9Ql6kbTwEksugbTnE9W8SnDPDuwopF+T6rPdpT82znei1
lZ7Oygd1IegUFwoBe4gYo6stYIEhaLW48aLeu13KWU2UY+KrBZzz01Th/ns6UoI5c901oOIdnQ7E
CbPB0Yb/IlgtPYbfn0pAhZpdf0x0fN1GAWRmlg==


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
GCD2Z0yWty3EgPI7OOpLGKr5MavGcmIdC+UtKME61qks8VoOy4DAzJPJjEAmG5Dxp5bm4oMmolN7
43toLVKfw/VCKYm+BwBz5CLh3x+KkpdgP5JHwSFYCAqXcotSEgEr6xxDLPcJd0YowfxIXAyuu/NE
dMKvMPYyUJgJN1ZGTBfjUa9FwkqvWbCoNGNbyUqqjy0GnGF2kNjYiq/tECqgCyRFjgdfLVo59e77
rFDLhtGK/gMHwF66JyUynZEMPQ9QECWYKkBDcpyD8VQgVfpbhMWfWTJ3A0Kme5+w8cAXd8XMiJVC
mE08qsHc8Lq+YYtFLVqpyUSNg5NM58RdTydmVQ==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
tY2G0xjmdKa78ZjK6cpKedFtSQEaVPFr20ndugKPFrkKRkb8IvaKBFrVa3fxqd5U68LGmC9jNvKE
SHDVsULNf7VUKpgAwRS7ktc0y76ZpafyH95hvInDrseuOx4b3bea3rE3Wd89i/QVTS3hcpnoHEwL
Zl1n4HsiHX1gdah5vtlkV7LiOajAg4W9Ql6kbTwEksugbTnE9W8SnDPDuwopF+T6rPdpT82znei1
lZ7Oygd1IegUFwoBe4gYo6stYIEhaLW48aLeu13KWU2UY+KrBZzz01Th/ns6UoI5c901oOIdnQ7E
CbPB0Yb/IlgtPYbfn0pAhZpdf0x0fN1GAWRmlg==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5536)
`pragma protect data_block
brqIui7Ty7brG/Ki2zunLqshXuO4YzGQqgix6fMmT4FuIpkbRdZlJ59TKGMKveLYNlNRQSSyCDuo
QJzxP8GoqrfI4z0huY4c8NUoduqUWUItmCdkGxiph1KnOEBggb263NBMcAPPCld8KbaHD/vZsh0g
ykYwmaQKyZhZn3nnZ5KQQmP3wG+Uqm5oMGhEBC46o1qlizS6oLdiM5oI4KadOo4G3G6sQT7N3TSz
jhgmyEH94cSn5+7mR3EnrNMItZZtnAGF7eImmzruv3PVhKd1Q7hy67S6XxEBdil3DISTOKnf/rWS
OlkGk9TFZs26CLzF8B3KReXJY2squG+Cg42QPXoi+jotFAPQ3cPBEzG+t39t0gUg9O5gY+Dr6iNX
Jsejtb5Gd7f77lzFr37wx6JZ1B9s2WQ1Enp/90dEFDXoWE2HmQjsC65kEaaFVhHzhkSg40m+SVQm
+rgP/Oxio9Y/rlGS2UKA35MrjPEvOZzMtx5VefNqM94ctPE643wzF7kGQZ1miCf0eIP8AYH8/JGb
3mNAMw1RIk4C8yVV7fQU0CWSZZqhVu59E5hk/ge/jBtsudlRam+RjjMF9cBuIix8Y6K+feny644f
GxBSkElUJqRoh73pGKQiyTv8Z9npygBsJPZ1l43DGylMHMWAcvrh9ohCmO3lnZEqi9atTfHkuTbk
t0EHknpcuisO3A9wbwCKrSOEs3aC1fLA2g8EmLDIoDGe2lIkb8iNPmkCwU6Hoaq2YcN9K8BbkThY
o40TBQAJTS//6KLjav28v13J387snvkdFmOvxtDqjwndJhI/XEplhkRjEFdsXSSh63Idf7llupL5
Ss87iQ/x2MNKQf6CRbTG8Ivj8x6kkdfpv+CBcwQMfeDbjEfDA4RRn+WjbA9jr76jL7AHyPNwGi0N
SimEwp9KH0YNTblKFFJBwY4OkZKE81REmV+ARzTljbLnTmVdj4xB+Gi4k7pkNWw1+Coh0Y7Afr5P
ekLbN9xl/fyLywbz9/TgyON3bTiys5Y0iUz7128ZwZDr+iLG9koWynDJ7jjQe7lKZKqu3T6OqXyE
wclFiNhxSP+FtKBGqUjYuciTdvdBxhHcIHhhBR4+hz5Ct3kLnIS4JTPQFEEzwhKoloRagMoMGxSM
nS7wX57Eixp9IvXCCvVz8iEwM7I8ujkjhLHEhQHpyd59Q13UH7VJdw1DO6S6HNr/VfH2IqAAV2D/
IrI16d8h4Q5kn+3YnpWJYpK0X/MexIQD8TZRleaDgphwzxtw+AH9fceTjQw5a6ZJKpdNOwXi+MB+
/BvLXuXElBdUvcQdW1VBJr17qDiHwwSNTDub2F2xg44jqygEztsCCGw0A1ER++IUqsoAnjhllRN2
dTr7VENe2kIwUqbC3xlpXWARKNJrLRiMcI+XgQVyrBuTl9bfStgMQmtsj7YvmzHwNZEoDOi/5mgi
zwymrjPl/S3eye8dzMHtEv2jyMrLA5aptWFVXr1C+rBlwc4dWxta0RZ522vOTyfxrqXK/C8Ek5BX
i0Jd3CAqKJkmBJsy5u3BJBqAovZebRRpdCKlJJj9E6Oxn+pWwCNjW2tTJkvhsSuBGPhy1slBcBwy
GG9Ok2A5qBIEdKHqAtCoUkcN/L0CNcchGs40fnjLrvifgik8/YPVbXcYLwNTh/PmNP3fswV3kMIW
2kktW1b79VSG2Cznr5uZdd3GwYkiwHr35KfJvuvR9jrOTfdxQBFQShd30pOFgd13Ci3gE1LPcV90
mEk7qew3cAtmjRgsxmDn0ulN4PKL6Zd2ZYIY72mq9wdLmF3QmBy6UYHi9z3VeDL1v0eDXBjSln7+
9lxUObOo1zNCOtfXWv4ehUpi2hWYdGcEtY8AIHGNV05ZKWZRJ9r8Yurtk1x6pTt8GGWKeSI3wX7M
nvrhC7C3q43W/Nuvi0nlOrQshJpPbQ3FaKmAIlrEOtycqIa3fkIgL0/j0PKpkJ+9liSwc6mLkHTd
Nkr6r427kQmIqpN4794LZ5dJhLSykI8sFs1O2jfgjLCUq43naeJ3fajc0dMiWkWpYDp8TW11qA8/
qbryDEel7MGjxiXGR4HfjuiXHCrgC3TmCiG3Y2S2ACo0J9Q9XWfuPUcmgUmLajcwdb5LShavTvZc
T1jUjDUnMmWxRlgDoRpP1Hcs7j8S3tWU4KBgHpX2fgJMYPDTTpz+mQKNyf2o09VY8U9FZJhkPXp5
sIo8m+XHYQRixOHw9WvBGjVbrMuRlo4SYn5Loq8O7DaEVWOjFgSEcV1xJKipIkFQ1yloyCC79dMA
3pifVLVG5/c/YTGpGjbNFcgGpwKdekekDRUrOpvlJ9mPItg7fa3X3973kowhJNtDb+2NKkqWFgzf
uO4ChaCfecfCjNT+wu/XsycseT245sX5B69oSpw+Rn4GdpLZ/VrDfpxpzTV7Nlg44m96dIbbiC1w
v6wnJD1k8OctJO/utN+i/qb0+/arIljDNuCAMKvN3eOTJTLuamPgiEsUMQrctMn9nxzk3CGLMko2
SZFJTaLyyHvCZIxne09vAyyvlP/M8RZBIGYuGSmuqLX8qn7ACpqluVEy7MwBQioE98Gv7S7MP46Z
GjK5GcNcZ4Gicv3sziotn8eGYHLwPoTIplIHpJxTRp3bDhIyVggdViuon98joVCfNdd/FkD0rwqH
+xKA5pa+Y0IoIzTLRz7Lt+ZQCVgdyzLic0Erp2NZ9gRsVosVXSNIGJGYHl/LkTeTo4Gqp/2swLQw
etDWsBpH+RtyFblwsHIbzhPs0niLcOxS5RRm/Sa9J7UIU/1+BqacTXQwTHZwYRyZm3In7lSEXmw5
y0zeuiY3NC2rSGbw7LsZvgNyUe+dlNDaD2XdBJCUlL+Vx3DkQCLoU9B+2WR5OxvP2DazMivThO9K
QCeGPtHUSj7k+I59KniE3ckjEGK9oI+AhMIbik/bN+D8jpAhO/QgpzIX6DDx6cvpY5q6jBaDVl1A
GVHddhs8tn0lsxVKLDZu133NXoOpPW/DOwMStXiwR9NgCIlyDko5p5A/qCLlrHkE1LwQCHD6PsJ1
czx10hHnaH5fY+sfhr7ww2nr2ZOECsuTsGlc05GtDtxvAS3lXczmpYAjDfIwoNaakWQQGdjN4X3H
W2NZyXXykIC7FJZrxnFMylZt62hqSqyD08kmTTzleeYin6QtDjW7TaWoLnEGVajYMGiTsQvyKKbb
mlMMC45I4riiEFyzC+KVb2pGMFH5DZZAEjadARV2P4FvIzCqCKEySOtjZHbYYaAi8MFGwzGCHMYI
pYhiv1UKUw+bfUAmg0/r1M8h3lVggjdB6ND64sH39ZU8luMYAOAbQ0Bv9cYcGQawD1lhKYUIkULj
QIQOgVm9x3N17nd3mgJiU+0iNxKJbPPM6mkxpZmK7ABwKdzTPtYk/kY7lmZxdy+wlk4oaKtnJB52
j7XXovENOWmLBZgJwaJCZerUNNSwhaMon3fanfpQ1jd+tcZMINxJGIx2t+wdQQXIiLqr/FVwuyr6
hH6HlI8ztGc78swgmd1iCuKfOPRhYQjR29RSw8GWJuSMQWUMm6jsiyhUbeaAgXRkzIzCKcXLQSUn
ORwC81hqD9LdH4FVx0pG159R1wG/RzU547wVcvc+4SCU4DdBXbXY2qHYp6Fj1oRMGK8oB+G88LlA
OPRawew6uU8cSDhLNyyn/NTvA+xOpMbbWwtdaRT0PwMqGym4CmQ2hhjQt98N8OzArGzRipquBQB8
WY5xpDXnUaSoyg5f6eNwyd16t5GizXcllu+QkwhHgaItRrEKLUvW5zdQMLhIrY+PeSp00dyVljYg
nEILM49PzPXqBiYeoTfnI9phoT88Nn1tzB0nkAHp0wtvTxOMhDHhFSYUtwD4pXzjHUdD8ze5Ga19
MpM9fp+JiRvKa1rJtcvw7FouxPwTISxFLRyH0ctfn7vBS1Xsrt5M8m19tEA6a65owI384v727FpQ
iV13ul2yLOF2MyBHBi0y9/91RpywisTrIlQneWASuWSCJS3nz5Y34km88LPWrp4NbjDHe7wyTB8b
3fOA78U5xHlnZOZKfNPX61AXIl6TXw/Wojdxl9Y3J3wDjb+pTKjsPl9vWTRZJ02iHqDIpOLX56FG
Nh8/+i/bSA+HbDKsjWvHHV58PwyEhUN61Y3ZzOoryNjSpbBvwO3m02rUK2tXF7pF7O9W4LNuvZWD
4L9ApnpbLEKFBEbhymlm2Fkd0vf3bzoJi2V7M+c/AUsp0mBLhYD/CiSjyPlrNe0Va8CFcGbWwxW1
h5qlE9gQjG2k74ay+TeQfuxdR+mpVPAaeFHolac/iNw2MbkpUa25oGETJRFE9aOYfM0r2bKzVNTD
UO8lJWQut0y81fg7ax4LnL0W00QXJ/asFI2MTeGC8L0Ns2r1OpwqpcoZIEDdp/TnT9sfBjBLW2GX
UyJIapSki1RPfOXF5UE6mK3BQ0RHaxIaWu6Dn0rUEm4ZvC3nid7eKpkAl0a5KJ7Y22FNwPptFZ8s
ODA5+kwjrKQ0v6ULT50PRAf+miwS+9LyhywHUyqAOJggbIPai6FgMBkGsG3t8Anjyn76dgciES+a
R+yQbR1A879ZkSdjfwbhDKXMdDcLcTeiucyMT9B+1GJ4QPzUkuQ5StrxGKgWG7rRAuCNJ7753Dwv
HCJWbXKIRwrNUiK3lvwwlisAkqi9nRMqq5JOhzf5QqdBO8TC7w/GHAmnCWuBesvxgk3IINLmx2xH
QTwymq6XCJlOxHFC1HNs7Bxlo6u3IBZMzQa+VMBLFzIuctvbzJ0bQYvgHOE4vJTniAem7sCs8/bC
ZtLaoLC3lQTiOiqRR48xmKd5pMkeXpbyKKCX0yxTC9dcStFnbzoNfDn4Cf3Oig6HozMFnp9XM1mT
sVe5tK9M8UlCzE7Qqtfg1PQcn1ziM9cWc18nA5PhXBg1ChxcZnlaUSoWRYK/ttRtz2wCnDvBPaA4
8kmbXqqwLS0P5lTqJi62yzILp3I44oxcGz4IA2yKEwL7SMDrGOf39gd49FG5T10WvxcjYrsz9Kx2
xqNWZxjkqcn5GUs0Nnhhgu2ME4C0xdc/jPhJpK0LnwZ9I+OPMRPmjEWxm0H3rEjQikxU/JeNNq3g
VYte7ROgyu53P1k/GoiTaGvThThgHizQCWB7ngHVYHuzQRwg5RdwLWMEwrwEwe8pbYCPk8wwCFI6
vDDFJaAFkKrDy9MkyxdVJ9ISij1hA8ZKTJtr7hORQPBjZaMlRAKSkdFFrwO8rNDLb6pJYcZmYOA2
n1V0WBBw6WCzS0XnvgV7ST+T6a+uYXt+/W6OveBVTSPss62DQCT5/AbROhEn0A0gVluJK72prbo9
S0Kfp0a0r65FBRL3k/bJG4+S8QGM9kkz01Agq6ftzp0U38jUhGn0gNmBqJeebFFCBoWEYwZBcpUY
EmSupBugGggCjd8qn4bEBmQhIRc4CuunnHOc9Bj/p9eqFxOkbADOscrZ0gCJmWbDYXkcCpUD0KhB
LR0A4r2OfRJtCYsG95PlLP9Ndoe30/TRFSLztlr9uWhmCuuAMSWpSxzhjAhokbPSoffache8hz0w
jzS3YqmdhsIGcFQPBVWzBEkoAwGVxK536Knxxz0j/0NgXDcwwgkMwA5jFq1kLgmgRDpIs8PSB3RG
EuOrqqXVZr2DgzCEBIrmG/NyoaM3vAWAOExh3Ug4jG1WpKGnJjggf+3Ex/77Do6YHAL2LZc7l28A
OK5Oo02QW0PenbTcmtX2AtAGUQH8rR5oM5pbLW7wP8YcBcpbzA7Jy0ntQgrJA+m9ciVG0IyPQKiP
UFEpa6It0A52JkCHyE13eTkOdzOANGRbStoxQ1Z67/NnzyU+plGKMw/oT1hyDaN6AmZClQeMnwjE
5oTZcANh47fPwO4S0l6AXHo3QzSY4s514xJZCO/rfCAxnCnO+IG3SmC2RgHyrZjz0YFHZdlzfufO
/B8ljcdJ2as29rbjD88C1bBhkPTGzrRR7Q2/Z2GeY8EA6kItmdv3fXIUwiAhh17tHoSGPhB8wKET
+o3Suy4rUxWhTUiIipsGVcatbtiwXBjp5+PwYTXt3zFfCqumff7babdsDRYgbgMmNA8zmqEElpnI
L3APg3sDWjWE5Ur73QItlKXZa8IYnd5P5jRVEbGLbo5t9LdzQuO4Q2alh5HH3FKHITczW2rk1W3G
O1IYO1ynQN73Fql5CrUDUJy1SFAe2YIZpxg0FshTBuSgCo2SgdhZs/eMsSRIcr3ozFyjGFXl/kQX
kA7yBnDs+v3hwrhQf3Wl49A1/VaF6m8d5jvqT0CT6Pa/eYhDly9kSEKqY8xhyPi9aOWwigvp3e23
zVuniINXSNBvVPQxBjLHUTZcqtT2w2gXJusoKi+ODm1lvTZZUY7k6LkqMpnjHtBoAoFlxoiqy+Ul
frjO7gtDEMiVj3Pl8zr+K9mu3aUwDy2Yc1ERL9srhpJZGA4GRGx5lZ4LMqeMQa0RtgX+7IrcYYxl
7g8ub/SF34AUtzqksC+8zKu2j8W5uQ8DyOVCBMKmatlI/weYreSsg1GAGEYT6GuoFxpPhoEfMVtr
ahZzNMjj4VuPrr78tdHBfpCFY2ClyyvafdrnJJWMI2M9NLCaBoVs76n5lNoc2bmp53PWTHAJn/d7
EXivX1ppY2hT2m0yVrNytn8o2EAfk0f6HRCXOSL+urunkxWuJiYjkz2BDyuaPwaCHOWJ+B/pylU3
FW+FbrJxa7IldsxSZ7xiiqVgLO4UVgVAIBq3kmQmXA1VY8B5AYdFU4Cqeg8l4c7yUB7lkEzK5cbf
oeqU9042+bxfy1lAwPLbPF+hXmdh3f/3nm3tOuUHfWlOLPxhUFxlU3QhcIZ5VK4W4OByBtn22vLE
j8KDyIpKtmS2s4PMixMkVIvhOqWV/A6GvXOII+pSTFCiNfvTsYcUi/fV1sGP1HM776i5C080ArEa
N7RrdkPJiYFD7onoaztFSMazAMLg3C1tMiG6hRFuuOl+l/eqml0WFqVFeu18JlGZCPSr5Ke1H2+q
k/mVl21phaw5fxnbuRVGArB+dHgaqhDKNB4+relw6w2X4Cizu6RkT1o0V7CojCD3z4sFns6pbPPB
hyRj/haykIy0/3eDXd5aHRaXvifZ+0oWAkSB8msOh1DEzevlidoqohHPLGODyybCAP99bjk+27FS
o1n9jAmPT4US+wcKlu+popVIOZMSlsbDZvJ6qOxa8QC2hgHE0mJhGRYnPrYoxYC7YdX/Q4MpYXJP
7WKx1X6DKlBzSkaQZjmCGm4/mzeqqYwxJPt4MqRsbJ7n37U5uroyJAEWTHI00Gah1VpzhdCnv0jc
3p/6/4QEle46fO406dVcfX/2JWnOiPf7Oe+qJ0J7BVja7gNiRYVJQhaR8hTqlfRKzCpxg7WyOSgX
cJZotIbv5w==
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
