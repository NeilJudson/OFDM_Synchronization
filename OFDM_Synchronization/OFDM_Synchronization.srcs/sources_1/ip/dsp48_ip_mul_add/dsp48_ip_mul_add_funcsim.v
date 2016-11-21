// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Mon Nov 21 18:57:41 2016
// Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/dsp48_ip_mul_add/dsp48_ip_mul_add_funcsim.v
// Design      : dsp48_ip_mul_add
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp48_ip_mul_add,xbip_dsp48_macro_v3_0,{}" *) (* core_generation_info = "dsp48_ip_mul_add,xbip_dsp48_macro_v3_0,{x_ipProduct=Vivado 2015.2.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xbip_dsp48_macro,x_ipVersion=3.0,x_ipCoreRevision=9,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_VERBOSITY=0,C_MODEL_TYPE=0,C_XDEVICEFAMILY=zynq,C_HAS_CE=0,C_HAS_INDEP_CE=0,C_HAS_CED=0,C_HAS_CEA=0,C_HAS_CEB=0,C_HAS_CEC=0,C_HAS_CECONCAT=0,C_HAS_CEM=0,C_HAS_CEP=0,C_HAS_CESEL=0,C_HAS_SCLR=0,C_HAS_INDEP_SCLR=0,C_HAS_SCLRD=0,C_HAS_SCLRA=0,C_HAS_SCLRB=0,C_HAS_SCLRC=0,C_HAS_SCLRM=0,C_HAS_SCLRP=0,C_HAS_SCLRCONCAT=0,C_HAS_SCLRSEL=0,C_HAS_CARRYCASCIN=0,C_HAS_CARRYIN=0,C_HAS_ACIN=0,C_HAS_BCIN=0,C_HAS_PCIN=0,C_HAS_A=1,C_HAS_B=1,C_HAS_D=0,C_HAS_CONCAT=0,C_HAS_C=1,C_A_WIDTH=18,C_B_WIDTH=18,C_C_WIDTH=48,C_D_WIDTH=18,C_CONCAT_WIDTH=48,C_P_MSB=47,C_P_LSB=0,C_SEL_WIDTH=0,C_HAS_ACOUT=0,C_HAS_BCOUT=0,C_HAS_CARRYCASCOUT=0,C_HAS_CARRYOUT=0,C_HAS_PCOUT=0,C_CONSTANT_1=1,C_LATENCY=128,C_OPMODES=000000000011010100000000,C_REG_CONFIG=00000000000000000011000001000100,C_TEST_CORE=0}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "xbip_dsp48_macro_v3_0,Vivado 2015.2.1" *) 
(* NotValidForBitStream *)
module dsp48_ip_mul_add
   (CLK,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [47:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire [47:0]C;
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
  dsp48_ip_mul_add_xbip_dsp48_macro_v3_0 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C(C),
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
(* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module dsp48_ip_mul_add_xbip_dsp48_macro_v3_0
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
  dsp48_ip_mul_add_xbip_dsp48_macro_v3_0_viv i_synth
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
qw0K8UBrXqIstyrZdTB4VIYePaF/MSyBVpVq/y+e76JykMXSS6sMRfheWThKV3oF9LiZYPBKLPzi
DLvVpWcseQszc6cwEfZtsKCduTsIUMbRYLqrj78gWiDMepgJHCRS7fS2br0CZtByDldiC2kfeWBQ
Xirt0ikfOE8bkm3P8x37qF2BLpySiTzHR6BVjmK24I45dN3072DSruoTtGm0r26Z4g3S4GHRNw6i
zcXTNknc5c+JaSlmJ+ciCZerbu/5ebNbnCcFDhqhpXvjkZwYSXyBZLBv1qdG4Z5V1pgfm0cFi/Gj
EQLa7tK+WAdxu4GDDvTKdsvJnCMcqDxn8iO6nw==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
RHx0ig92WF+2IhP8rtbgoWA+AFNXzcZbOVRvA9ABlCIdbFQtDJTcdNCjFRcFhB/au1J1Se7bL6Tu
DXdKVe/BWQ0J1K/ulio7LuLKkUb7OcVMgbZ8WsIO11rnc2fa+BQsLof5YBPrVuE5IVv+5RC6XqSf
uzJC+WLsp1rJZtRrdXpfUQhu4aFiJ07KxRjLiAuGux9wmPgJtsoRra6ffeQ5rL/uMDEPosBsqejJ
8AejfA31jkWa/QMPUrbgLe3hfelY2O+R+7f+fljLOpUgKvrwIPWvgL6MiMb+hM7AKP5OHvIHNDBz
bKCOBQcfpZbbaw5/G6fLahNCTxYwvuSmP4A31g==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3504)
`pragma protect data_block
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
dW7tHOs2D8fB7VAWDlmJ7cYWok/19lAyxbc5
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
qw0K8UBrXqIstyrZdTB4VIYePaF/MSyBVpVq/y+e76JykMXSS6sMRfheWThKV3oF9LiZYPBKLPzi
DLvVpWcseQszc6cwEfZtsKCduTsIUMbRYLqrj78gWiDMepgJHCRS7fS2br0CZtByDldiC2kfeWBQ
Xirt0ikfOE8bkm3P8x37qF2BLpySiTzHR6BVjmK24I45dN3072DSruoTtGm0r26Z4g3S4GHRNw6i
zcXTNknc5c+JaSlmJ+ciCZerbu/5ebNbnCcFDhqhpXvjkZwYSXyBZLBv1qdG4Z5V1pgfm0cFi/Gj
EQLa7tK+WAdxu4GDDvTKdsvJnCMcqDxn8iO6nw==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
RHx0ig92WF+2IhP8rtbgoWA+AFNXzcZbOVRvA9ABlCIdbFQtDJTcdNCjFRcFhB/au1J1Se7bL6Tu
DXdKVe/BWQ0J1K/ulio7LuLKkUb7OcVMgbZ8WsIO11rnc2fa+BQsLof5YBPrVuE5IVv+5RC6XqSf
uzJC+WLsp1rJZtRrdXpfUQhu4aFiJ07KxRjLiAuGux9wmPgJtsoRra6ffeQ5rL/uMDEPosBsqejJ
8AejfA31jkWa/QMPUrbgLe3hfelY2O+R+7f+fljLOpUgKvrwIPWvgL6MiMb+hM7AKP5OHvIHNDBz
bKCOBQcfpZbbaw5/G6fLahNCTxYwvuSmP4A31g==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5616)
`pragma protect data_block
DzK6Klayaj9AIYYI82zVCeRa7YCJyQQ8bJM32JsYHo4cmrH/Av5tlqf5SQYOE3Fry2utrx/2Uzdn
8xKX53J+FAA64y/z1TYZSZKkv4/4cwoRSSsIQ7UJUE+S8F+F10/Vlw78Bk6ZFGfp3PmidD7Oj6r1
xAzCGexjbOcWjWzrh9hCLj8bBGcdlVWfYCIRh5qBFuq7YGRimBZBgV0g5hUOlWA6suKp/scNW+EC
moYmePukmuu2UQrcW28eovA3HtBOjAOnOgLWx90SIbaDTuo1e8f1XVoq7TBG5/gHAInMgbsl83ta
Z5jCydquHGpdH/ZCPvGygl6fVoG3xuYiabmisDvD5M9jRXkul2ok2WCVuIFSgfV6GuFq1TsaxO5W
Bei+QK1KOCvVIwtUnFZVK1Z40PoC+A/BHfqCuXFwfBKRLj3Sh8tpfCCnfqLYIw4LKR/bp8dzKaw7
gUrRCJH3YmK4C1X0jpGm2IVypoiRNohHPlNYZHiAG/8DFaTCbbwlYy6XLsfFgFLhN86b1hQ+nwsw
9qrGXTmUaKNJT16Luwwva1PIRYRhh5llV1WkWAmXVvvPFsuvxTHqj72Y/gYtq1tMFOG39L27g8+y
DxY0zcSmpfePSKstwXJ3BTC9U5f4Hc23ltmqgW9pewYV5uJqVpX71tZxZOHiCl7FzbDGkcMjXvs8
LgDqZBU8YXsaPnaY6lxzDMbcj5A6fQX7av2cqRBBO/aBAYZGG22VXMzASJsRYi7iWSvZATt36uQP
V4JYGkXvkwDpGcHKhlZAdSUZmO4OcO+hiHDGHAooOMkNn8KdWtr63eiJd5VCl0CpA9OcZjlfvSLn
gKzcRWJsDsKiQQ621Ddbin9owdpBqghcNd9s3pimWJOwyYpLDfTWSGKx+zVh7vt/byY3pD0DdCxA
cRdaGp3p/aF3dfRhn/cunNuwQiFkjgzw0fDrX0Uznjok1tLAc/FDZ0aHWYRgfdnDWLFsnRxJzBfF
B6iwWNmEOEn8xqfMcJrDsJm1CwPh2+rOnAVsbKX9qn8fe+7oy+DRe5aXJqDi1k8lHsihbEOxSA3H
+U0EkMlqb9epiJD6y5lvky5DaLmkafXFNKdHx/4J7cLIrxPGfnEK48r4BX8+SfQJe0tv5D50vFLn
J0IrLDmRuIj5DSKTIztFx5H1uau/S1k1BjVW4kJH9FOa6Y9kMnszApD+Y9or6Md/2VUFK9rqrocf
W3LPfaLLgu/KTSVAp0ARHJrPphgMxKWO/ncR/h2Ulb4nEtTQzs2Le6UQKZH6tIU0NN0+JqAZZNj8
KG9CLF/nUwIhrB8q7egN65YsS7+87oyfVKD2Sm6F3q1v+WtuYs3lBu8qKMwZAr2C6S7evOJrjcEl
rdUjbFrO1nUqnfpafTNxApuRavMljKxG/24aThNUa85k8p5IOTfIggPMFXpTxpToDNq2ckPOJjpF
F3aUZpcw87c3cbIXjVRPohzSjelhrLNYS5+jNptQcAKlnSgh+ztB5QDCBSpSM7sq8yf+Tjk5wFDn
njM2Wl4LHyaRIEh/L81WoIt/C7SaOG5eMQycoEqBCO5mrX/NCaupVmPAdpReJuzHKU4xlxaRsGF9
DPwKYkBR+piNOw5k6RsZ5CoqwXIx+iEU73VrSSPqq6euzF1BpbZA0M4AVhFG70bIWO7L8aGUFabP
q70vfAnB03BV5pz1NpRx1ycAXwSwe+VkXtkWB1cXCDSFdikTzC6Bq8ziKvo3O1rcmNgW0Kn36Gy/
8avrawlH3ZJAzpPUP6Nhx0WmGE6qh34WLjGXznV2KZKW5JMVnr3c1VJ1nBWN237wot1tCdG96m7C
WOw1aJfSzbv4F9xxgOKOywWmfhvpd/xtp8O4EplreHvOvGKCoWe5tejni+6TePOgL2PVJqQ3gkv8
8M6E2SpKeJbWJqwTmdEp6X4dfqK9J9jGfXIya1wObcC8PBy+huoKl1SOyg1k5LMNKATCEr+Bddy7
HIEZvbFS9UkiIC+ryB4a9TdnKyg570iqXQJuba0QCFUEvzbdBbbo4iHs2CUjMqe6ZJa1ilIx/x9U
nk3/VHCiME7NmDtFFLdesAJmWjc0K84WE54v+eWfjYHLa8AG1FPCyv2XvfM+sSq/YSRwdmCA/+pe
gPcRxJF5vfyaj+dYh/sIAyZ8+mA2r3pXgG3RwbNg9XC9Bv3w20q0gZiOdNsTrBazLX+6ETuIZPTd
xrYm3pRQQ3m5s6nAbrJizMaIEQVfBTLD5SC/jlpQjimyJqLuWq2noIQpv+32ZxeDkEN4DB3g9J8D
mBMtdYgygU6+IDJT/sTgZiw8kWd0FOYj/RuymSIolHPGP+y3bF2Tjj+w6bijFBr3G4BFpycHkDsM
XXicreJh3P4+dgjnoDAVyuRPJ/KsDNM2sHbFDXk/INS1yuJXmFCiTaI68tnlWLTsGubyYq/5j8Jw
7bIsIz6jt1VK5buVJC+knSNk95+uTb+5JmhKcITC9fnmzoHvLyAgETkw8t1dP/Babd23QJdXeHCu
vcPMNWbIfRb+2daG8tHkMZeahYTqCrPu6zKsV4oza6qU4f1pR58TnpRZ48BIfaZWuR7iCmJXUc44
675OpdtvZp8UHq/spA7ZE41/ZWDuWvMwXU2ht/Of60BfrKovJdyGRrsVy6vuDRFdmKLgedhrp0RC
LhguGIu88owtNlvqzvpKpcwFsLmux4SftcSi/Rlh3zExCboFxsZIBnnp1My0Cfg4N1zY2gjiNhg/
UTAbFwD+JXDGpYthFU7owUzlUHgrxZFRh40AjyjbmPRZ0+sEoibyPgl3jW+JF65ixyMRmIEAfPGc
9w9iDlh8f7gBxHw/UiiUC4miGHL1ONSeV2isA+vyVx2e2kJIHzKHUQyhulFXDI77dMRJUUnsYjSr
VCWZYU54MZtZsAMq59APn0WbJwZ4XtljOO7Tnv0Km/9I3FoLgx5CtAJ80LbrQxx4RoK6JDLmZo6m
q5MlI2xKZe+/Y4Vr7so0GSkePxiUF/nukZULId6wc5iYtFpz4RjoKqWwJ/aJYD4m+pnRt3xWea1L
7ad+T850bMCINHH9Ivp/dNMLI4UKSoD43sHAXTHHbL/d/zLGJyGvNsCvi7fwbIbc+8vKYNq1xBN+
rpPiym6kiL1mQdoc7cBQCJBMtMalOHMc1/b/TVhstuLGQ9xUR9IP3AI+bO1utHSi7zu4Y814tamP
Sb7rrE8rRm2tjoPPZO+DDqxrZbtbXezAWIgjb4wWdTHw5uzQAXauJ4tg6fJ9MYr1Tma19ynxxedK
ijQgMeIjRecyLKOp40hZOuSvEjPZ4jyaAvOfHFSr86xDIDDGcpWUAznVF53xcA7OpbsEHDJRZFNq
5vimh3jCjhpXptOu0pUm8rdx1S45bJNzwPi8SuRepAm1KV8M9LP67Bof6SGRqwJp8AgYcesCw1M+
jBqSlQ/3yGWMqyCKV8SplOJR2FyXyN1iF4RsKnNB2frW2dY708OE0hdpti0Ce7Xk3JHJYcuF2EHO
rj8cTEv6izaWbFlLc5WGL5NJUcsMaGPMQtb9oRTO3BGCmXeJPfsfACDjtqr79KVPyKwuqtuE3gCv
mKAaHCF0YiwR/Lcs5Vults+HTDI4LtwIwDzLw21Dxa7x5BVBmiZJdyQf7ZD3Y13rrwMpCDn9Hw1u
aLF9ug3NDXnRZObwqiv13rIrosA0B0LOQU71TjBKK1AU+YpF8IjCUdTPJUIkiQ260L9Yqt6LRdQf
8UNnYrDs1lWDqutVZD6GmXSi30lDNUucs7cSIKt5dGO4Tq4WOGRKkfZPGEPbpj3GxByzrvFDBOre
UREVKeXqQT7UqLHC+g8xfgQXSMgtYmqst9pNUjDiKErDhtjeNica2fSVG3kdaK8+t3dqCAI9JNhO
xeSCG8Ov5rvUnn2aLXxIOhA/tI4E7nU1lNwVgofSnVYKlezNPfCELK71Q0sZlAH5PMqIhLS292d4
LPC3KOkqqBqEuIMlnCIiTDgZD3op3M9M8l/SN3q4zjtu2E7Yafcg3Fsqmm9BK2FxrZj8Mj/nbgRx
XJUDVElgEOOkNGeLG6opqgPGbM2aJ4nmftAHVDiQa52LpfdJqDOsvwt5IY896+wkqPRxDBe0XODb
uZfiuUqWQp2VVuDn0VpDZYPY2nPktTRlTir3STou7mDJCGRrF09KC+O7+sCSbnKrMpe4+Qvu1ows
6mRgih5e4hsAYhNqQ+5S/J/Pm+oteMArLE3oCjCatnf8ZBm6+3nu4Qoewj5wXR9z2mQTTHzzUXI+
lcNPcHEqhZicnNLECJZ4pnIYApVuYkogxvwS2qUou0d6+AgOaqfDCgve2QnFTRESUBWnT2gvKnMl
fTED8ukskwktCF+OrSS3pxkX7qESaSx5ubtlNDzJ+yaOSBCpwQKUMXb6QGdiq8eNl2i+aW0EGH3g
1qGvx4JMQYH20qY7Fxha58JxP0Rw7mz1WUqHV4r+h+pB0YcVFsHxBW2GxKr3X+Yg12m60X2phEti
bBCb+4VxMiLzcs2ssGBfzWGfu1Wu2Bx9Xc6QxSftjamqp3mwKrV/ziRGdhSMlckbIAU22I7hvzgx
UyOnvoFtBujSnK+ELmM0Eu0ZNhUHhI6CcTgGEmtT6XyK8VDXqw0Blxc4VYk8qZBBx2oHGKapTxtq
n0c/6UDZr8/VgXemaaGM1CRrkR8ZT4pBRtxX//HFjKDrlOKLMThDP/eIHmRc5I6O0st+QoADJGiy
CxB0p5YPMoOnTizb2xiQwmZ7mJPK44Igh+SB653w8Hof/FaD1vc9kdQdu3VrZmV0rRRH0A+Zqfzp
o0WRnfC+WC8OYsH0WxAW+aWCq0kzb4bEbRMtTgB4V39znF+7PEzhesE/J+BKZehg2qhUV1LoKpkA
bO/BOPBazexRLvD6DuW+ZQseVxEL+asXat/Ylk7JiuBNxmG0nNYJcpsOyqsCL6Yxj4y5XsL0MgFD
oIoWKcNrJGWQYv3EKWhcff/597EHuk46DaFZiNXHzTVnEYrNkL0HUXew16KY8/s1NX7rKmnDeUgc
I2Tfxm8CLeM5E/+TtikV4flvwiLSWQS2WiEQ1ODICErudBQZWhm8EAKf8RklwOi/6JMHsi8elGBP
J2h2v0qaklrpf4GNP2LDHgYWjg3yLXVQB333AxDAMM89xJeZRdjevllEN2bAbQpqzdhFGBq8OVbj
cbZjMPiuSq439rObwPH/BEpayYyD58rI3n0VyarwVG6tCtywLGScolMfpIT4JY8jpm7uAiZwS7jS
ZZxjul7YM7VPXUSUxsSXmvHu38sMsYfD0bhaWjDaQerDgPLXZmpR8tzLa6XYNUTRvJxMy+d50DbG
szA+evs9vLt1EFF9K6dKFkliNVVJ+DKm5IEoUZW7Go8xCC/oTGsZ1nqTZ7quaxruRXZVgN8/Wwfe
9T9x9JRKBwuTk5HVJ9hADw3sPukUgB3N8CpgKHm7Kt9ZCELkWDoTZu2DFrm/zTqXbzJHWLhzRgUi
iIkAc+WI1t5FpmZvfc5HkvnUf3gUQOby9DebeAegzn/4tBCPksxsCNro6QRlbM+7YoeACO6hsCsg
PWhly9Qw5jZ/aG90sQYACwN8ZmphVoK0oDnoqDnJ2bJvHsDuU+cTFhkS2meT3YAeTA0mXD8ZdsBT
vBtdaIo2Hetz2eQClyicLd5efcJXaDW536CNPkNBhsi+pBrb2SC4uGDHS+rssSKN8lPviScMlVJA
MeA7o5TVl4VYpLaBAuorbnM6FoeAiSLZihfhhmXMk+3TlsQkpa6NF3qXLTFLVK2quB9h+nj902IN
LVfNPFm37hzkUjTvI5MAy3VcxmlBgke1wtk/RLkR+/k9XUNPXkxbbUQ0KTshrHS5yiQtCZ+0mUKB
e7vng23oKhLxt173f84VVYIEGh9Mf4Y2DrVpUaVCXtW7/9wKlnMfTdnywloVPFHHZC+p1pWtfKuN
dNb4rfZ3EV0IuEg6Q0evhSY/bWs0kKhs+duPWU4gH75ehFjaKyxOKV0adroyAt9clJ1JBDVnamhn
tQErDmUfV7zQADcei+/TEdwMrniVbo95EYnKfSjox5EbDtNL6KpuNXqmbE6Fl1cVLuVe9FmoEUPG
vgiQzlw7dMqHU1olcO/N6WxM73VRAqWLIIe96KDgCU78PShlotIfaWiQSyWfj5xZztFLqDwLqt8/
s594FbKt7Z1yMxTBUjsspPf7TfwGXeI2FT9Hvm6S4BW5C4UxhWeyTVQoSsAhVITwp6SlVAazojT6
ju/pgXW4CD2Wmp/K1RvJYlNOeD3/E0UiMKVxDpNL4knOIVKBtNR22EI5iQXfq801oFTn3V887vbL
hGDT+1YJdvXjWwNZwvAgiVH7k6tvg/PNow9pbGltwAq3X/n9pS09UXsvDd0mB71nFp30JjyegZ7o
hnpyOm9b8Jp6m4piiwz8U6d0a0b1Xh75JcwCOEzSF9xJs0nXq7haRVYDVdYjlBRdU2sMzJM+2nR0
ftnfv1Bnqe1j/yHMrpdZQTPtPokch3u9yz9YRt5Ryn0ufuDbuKEWRHjn4A3elXVACilH/tO6lYvH
ajk7rWakvgA2jxFr26C7QN8H2MCcEpQ4Pdaktcyq3KWZKeNBrKuoRnUCflJcGMc9eY7PO79225Rk
SDxdbTHQixJLGYtuBboKZvMoi//O1PY3d//hl8S65uWsWk/Jw1NtBcacnEM2507eO97T6boL2Rek
avzz+hexsi6i/2HjFBGkNoFFBB08fe3OfnE7VvMrUpIv1gUdma2sWZ7CUSziUa9oLqQVFL/hx5VZ
dyX1tk7Vc7T4sUBpy0nKRSCSdvaashAnqZqmXZdrC7X9anK3XfwVqQiw/XXyIyuGefNNO8P6E7C0
eJnbStMnql0wGtySB/EukXUeh4RnYKMcld6FWXi8/y/8gv9apiQ3TintWsdPhz8Qv1xeIALHC7pM
P7nLKnIRfe1+pWc+CLdTDDQiNd0w+tBBRp/yT4XCexwVgu8SGIsZeeqKvjlENJxntsTuXifeSHLx
tBnTx1WTNyTreeLq8aMVOR8VMgyGxf53aa8JTuTH+4ZExl/4NFEU7xz5VMY5Klow0m4moE0gfXc+
JFhN+N1F5SUI9CEKiI4V8RXf5bstoSLD8kSZrJpPR/joOnsCeuIp3q8Qv6KnLg0AKdOLxM0wmr6I
kNJHWv++zK+edm5rfWtRhZzj4pS5BEbUINF5ZwuZRImaaWYSzdw5RdFUkqat3Lguuily0Y5WFREF
Mnsv07IpAl4PJbRB0QDvcObQs46pA8dlu1NxdX4fa2tVcC2FtLKCm6zveocfNf8/YYHRyuV1H6tx
8S0rlyJRFj00Qslbe7YAjikRtq5agxWCc1+GmQ2IBsDVj9OXjTVA68+qvF0UGj3qdwsgVuY0MYw5
4tx4FnrBMhMyUGUlFCwoS8TuA71sO3FIUBfvk3bCB8tJnHOGBCYk29Y54ef29/xlzfx7VR/Prm2L
BPq7LCy9VoYKK0IizMPtYAeDHGlKuwRBROWPSJFE
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
