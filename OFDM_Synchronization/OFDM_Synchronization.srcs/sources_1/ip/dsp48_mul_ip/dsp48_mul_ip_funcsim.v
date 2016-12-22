// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Fri Dec 16 14:58:32 2016
// Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/dsp48_mul_ip/dsp48_mul_ip_funcsim.v
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
f6iJYI9UWUdhLMCAzt4mtnVd0xLMEj91ehqtMYtQqxIyT7shVRH5qIcdU2Ck7c8xjG5Gu/1nmG+p
JiPtAABxdM2LNY0FONujQvEN9P6yQeLpOCSwKX/d1LmBDpsJLA5RVcGtjtq+N2aqScl8gZ5RWhPW
MjAH9KXMyWNPmBwrGNnLy7eUhHQ3ZsZAGM9snW074XejSHqC7VvHsCXZ6T4NvsOW9fRFmTfeT/oM
UUBQYJzq1HY7RNIXSEDbYiBQKvzcruJABMhNtgQCkp+iVvuo37jWtBNw3dB4BFrMP1T6j/y8+/K+
Gcds1Qi1KqqvudL7vJocyAoDa7m1yjyRuXHVpQ==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
eVlXuVWkoeyLAu7ZBfofXFAu4D4Yx0LjFh5Lm7y5OCJr1QpuAKuveum31UJG6JqZdvmm4CQe8uc7
U8sRPWicW0l3fNdWhfgBVa4X3/dJ48FP0PWrxoCe9xiu7sRX/IiVt5QM/sxRbCrmTId7U7YiVri9
ByfL+imSU4zhkjEoYSNPpMXlT2KSoPwQY/ik2QILBdrYIFr8s0wt2Ctos2RKCExYWOwAuXIE5Wqh
8s9VBh/JcZjxygMsQCzqNoFdRlFuXaLhEwqwfDr4GErmX+lzVgzhQthkHuFi0iPd7KTOsfOpoAUL
ANMrW+NznsB87aMOqHHkWJo67ElXa90jbY5Ugg==


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
f6iJYI9UWUdhLMCAzt4mtnVd0xLMEj91ehqtMYtQqxIyT7shVRH5qIcdU2Ck7c8xjG5Gu/1nmG+p
JiPtAABxdM2LNY0FONujQvEN9P6yQeLpOCSwKX/d1LmBDpsJLA5RVcGtjtq+N2aqScl8gZ5RWhPW
MjAH9KXMyWNPmBwrGNnLy7eUhHQ3ZsZAGM9snW074XejSHqC7VvHsCXZ6T4NvsOW9fRFmTfeT/oM
UUBQYJzq1HY7RNIXSEDbYiBQKvzcruJABMhNtgQCkp+iVvuo37jWtBNw3dB4BFrMP1T6j/y8+/K+
Gcds1Qi1KqqvudL7vJocyAoDa7m1yjyRuXHVpQ==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
eVlXuVWkoeyLAu7ZBfofXFAu4D4Yx0LjFh5Lm7y5OCJr1QpuAKuveum31UJG6JqZdvmm4CQe8uc7
U8sRPWicW0l3fNdWhfgBVa4X3/dJ48FP0PWrxoCe9xiu7sRX/IiVt5QM/sxRbCrmTId7U7YiVri9
ByfL+imSU4zhkjEoYSNPpMXlT2KSoPwQY/ik2QILBdrYIFr8s0wt2Ctos2RKCExYWOwAuXIE5Wqh
8s9VBh/JcZjxygMsQCzqNoFdRlFuXaLhEwqwfDr4GErmX+lzVgzhQthkHuFi0iPd7KTOsfOpoAUL
ANMrW+NznsB87aMOqHHkWJo67ElXa90jbY5Ugg==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5536)
`pragma protect data_block
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
QmMVbJ2z4Q==
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
