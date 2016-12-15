// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Wed Dec 14 00:36:10 2016
// Host        : FUTURE2 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               G:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/dsp48_mul_add_ip/dsp48_mul_add_ip_funcsim.v
// Design      : dsp48_mul_add_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp48_mul_add_ip,xbip_dsp48_macro_v3_0,{}" *) (* core_generation_info = "dsp48_mul_add_ip,xbip_dsp48_macro_v3_0,{x_ipProduct=Vivado 2015.2.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xbip_dsp48_macro,x_ipVersion=3.0,x_ipCoreRevision=9,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG,C_VERBOSITY=0,C_MODEL_TYPE=0,C_XDEVICEFAMILY=zynq,C_HAS_CE=0,C_HAS_INDEP_CE=0,C_HAS_CED=0,C_HAS_CEA=0,C_HAS_CEB=0,C_HAS_CEC=0,C_HAS_CECONCAT=0,C_HAS_CEM=0,C_HAS_CEP=0,C_HAS_CESEL=0,C_HAS_SCLR=0,C_HAS_INDEP_SCLR=0,C_HAS_SCLRD=0,C_HAS_SCLRA=0,C_HAS_SCLRB=0,C_HAS_SCLRC=0,C_HAS_SCLRM=0,C_HAS_SCLRP=0,C_HAS_SCLRCONCAT=0,C_HAS_SCLRSEL=0,C_HAS_CARRYCASCIN=0,C_HAS_CARRYIN=0,C_HAS_ACIN=0,C_HAS_BCIN=0,C_HAS_PCIN=0,C_HAS_A=1,C_HAS_B=1,C_HAS_D=0,C_HAS_CONCAT=0,C_HAS_C=1,C_A_WIDTH=18,C_B_WIDTH=18,C_C_WIDTH=48,C_D_WIDTH=18,C_CONCAT_WIDTH=48,C_P_MSB=47,C_P_LSB=0,C_SEL_WIDTH=0,C_HAS_ACOUT=0,C_HAS_BCOUT=0,C_HAS_CARRYCASCOUT=0,C_HAS_CARRYOUT=0,C_HAS_PCOUT=0,C_CONSTANT_1=1,C_LATENCY=128,C_OPMODES=000000000011010100000000,C_REG_CONFIG=00000000000000000011000001000100,C_TEST_CORE=0}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "xbip_dsp48_macro_v3_0,Vivado 2015.2.1" *) 
(* NotValidForBitStream *)
module dsp48_mul_add_ip
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
  dsp48_mul_add_ip_xbip_dsp48_macro_v3_0 U0
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
module dsp48_mul_add_ip_xbip_dsp48_macro_v3_0
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
  dsp48_mul_add_ip_xbip_dsp48_macro_v3_0_viv i_synth
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
aHRXlr5K6+/gQ8GyYVHfu5HknvVElOnGFAvIFi2mOrlRY+OJ/UGNRYORssKlZ8GO0KPca2IcOjyb
7janhvUg9hJALH3z10HGw7y4DL7hIpBZEQ2S/7cVu3WCExhlNZBDkY3Ust/ihhFS55oUe/zwgEcz
XrPYanat2I8vQRFIYKbMcjXz5JhWqH4CxVg//4Idwn3wW0kD5ezAOeuCW7pLWRdSuaEu+HPJ001l
QMqxuauPlOR5r5tq7V1ofCXuCANgSJjmsqoCQxb4bgBdXsGVqkJEvHHK4j49RvViT8WN9zQ6fBeW
6k4xh88U94XX6U1ynHuJEn6fwreH3K+5dEbMKA==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
fe4xLYud6daXZe8czVSFiJ2JnDHAKYznR22rBVUKvYFc4+gqa8PSfeCuYByFwVV3LTs2GVRXKuak
fxCb0LpQMhuM8Hdr9GMzU2XjKVmddpLKiismWK9JkIG1MK8xQb2IOe4hwphnhgbcBeTcHShWnz6w
qVUSJu8fUrcx0LcYGiCWojvKwXI4D+4ujh2+JQgLvqbqRF/+Rbm5klq27FuKJv0iZ+RzMR5Qs2aU
Wya/vJ3H2EkqXI+G06fYs3r2Xmk/CtXWzYvoz/UrWU3zeaR/dC8rut0zBvhcZibYvATdHRjae9PJ
65YM1xKplOuzZeBDsiWgqE7WtR2qHRbswIi/cQ==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3504)
`pragma protect data_block
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
2AEsNHHwyPaLKwjoMW90Q3+98iQNDaGaTgRb
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
aHRXlr5K6+/gQ8GyYVHfu5HknvVElOnGFAvIFi2mOrlRY+OJ/UGNRYORssKlZ8GO0KPca2IcOjyb
7janhvUg9hJALH3z10HGw7y4DL7hIpBZEQ2S/7cVu3WCExhlNZBDkY3Ust/ihhFS55oUe/zwgEcz
XrPYanat2I8vQRFIYKbMcjXz5JhWqH4CxVg//4Idwn3wW0kD5ezAOeuCW7pLWRdSuaEu+HPJ001l
QMqxuauPlOR5r5tq7V1ofCXuCANgSJjmsqoCQxb4bgBdXsGVqkJEvHHK4j49RvViT8WN9zQ6fBeW
6k4xh88U94XX6U1ynHuJEn6fwreH3K+5dEbMKA==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
fe4xLYud6daXZe8czVSFiJ2JnDHAKYznR22rBVUKvYFc4+gqa8PSfeCuYByFwVV3LTs2GVRXKuak
fxCb0LpQMhuM8Hdr9GMzU2XjKVmddpLKiismWK9JkIG1MK8xQb2IOe4hwphnhgbcBeTcHShWnz6w
qVUSJu8fUrcx0LcYGiCWojvKwXI4D+4ujh2+JQgLvqbqRF/+Rbm5klq27FuKJv0iZ+RzMR5Qs2aU
Wya/vJ3H2EkqXI+G06fYs3r2Xmk/CtXWzYvoz/UrWU3zeaR/dC8rut0zBvhcZibYvATdHRjae9PJ
65YM1xKplOuzZeBDsiWgqE7WtR2qHRbswIi/cQ==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5616)
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
