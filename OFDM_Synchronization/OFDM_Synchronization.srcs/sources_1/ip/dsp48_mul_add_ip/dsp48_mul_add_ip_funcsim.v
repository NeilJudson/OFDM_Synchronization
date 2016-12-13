// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Fri Dec 09 15:15:24 2016
// Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/dsp48_mul_add_ip/dsp48_mul_add_ip_funcsim.v
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
UTOPK6qFEml0Vxi5SqVrYdkuxZ2u9YkxDyWXgrPZxYV+gj9yG39j2T/TstnA86udn0Xtrhz7rQCA
661hpCiD2mPQXXlI0yz0cFpzvW6qqfHslEaBLaI5p5JkXlOkspfF2hg5QI/2jib1/HyIkMNbSxmx
7fuAFsf3BcfESDeO7tAXShuRJELgsjW2BOoSPX4t4yjxhSc7xzEIA12EZtyqFEts8zjT2y0YEdAt
MRQjEaBMy1scJdntQALgop1A2iOZPCnZ5q/Kvd+rYUcOuDFTjLukdaPY8calzGk7j04NFZ/d4RsC
ap/DypfFoKCduj33VWQPUg/gC40f/FX3qKbCkg==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
g368/DZ5zLI795st1GrtBdbFnaYSUpVJGKg+qdIKXRfntOq7/UaHudIPfBYaDUQ1dbLa/140cM6o
4+hLFu+vdpzdyve/NComZ653huYyCKi15HHIi06gYpPN6TkHXvPglD2HSZXEwOSyMvRW5xvfyiap
pRwErnA5Re0zFzLGbb1zN42H6UigLP69Z08iX4VK5CaQVqvtOF4cAZ+TQT7kUOHQsoaLgASxFa2t
JNHRdray4ElDk+hNTilzj/2zmuesxnrEXhrbngvTo0+6hsppgq0k/0Yw12sdQAuiwSUT6ps7t1k2
Yt8k2GyksRSxU8hPSVY3qDFVIsHaAxEDUgqMiw==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3504)
`pragma protect data_block
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
i6U6lBgpOfT6V9uX5RFPajFewRjnitCQlPcr
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
UTOPK6qFEml0Vxi5SqVrYdkuxZ2u9YkxDyWXgrPZxYV+gj9yG39j2T/TstnA86udn0Xtrhz7rQCA
661hpCiD2mPQXXlI0yz0cFpzvW6qqfHslEaBLaI5p5JkXlOkspfF2hg5QI/2jib1/HyIkMNbSxmx
7fuAFsf3BcfESDeO7tAXShuRJELgsjW2BOoSPX4t4yjxhSc7xzEIA12EZtyqFEts8zjT2y0YEdAt
MRQjEaBMy1scJdntQALgop1A2iOZPCnZ5q/Kvd+rYUcOuDFTjLukdaPY8calzGk7j04NFZ/d4RsC
ap/DypfFoKCduj33VWQPUg/gC40f/FX3qKbCkg==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
g368/DZ5zLI795st1GrtBdbFnaYSUpVJGKg+qdIKXRfntOq7/UaHudIPfBYaDUQ1dbLa/140cM6o
4+hLFu+vdpzdyve/NComZ653huYyCKi15HHIi06gYpPN6TkHXvPglD2HSZXEwOSyMvRW5xvfyiap
pRwErnA5Re0zFzLGbb1zN42H6UigLP69Z08iX4VK5CaQVqvtOF4cAZ+TQT7kUOHQsoaLgASxFa2t
JNHRdray4ElDk+hNTilzj/2zmuesxnrEXhrbngvTo0+6hsppgq0k/0Yw12sdQAuiwSUT6ps7t1k2
Yt8k2GyksRSxU8hPSVY3qDFVIsHaAxEDUgqMiw==


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
