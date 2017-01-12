// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Tue Jan 10 20:27:56 2017
// Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/multiplier_35_1dsp_ip/multiplier_35_1dsp_ip_funcsim.v
// Design      : multiplier_35_1dsp_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier_35_1dsp_ip,multiplier_35_1dsp,{}" *) (* CORE_GENERATION_INFO = "multiplier_35_1dsp_ip,multiplier_35_1dsp,{x_ipProduct=Vivado 2015.2.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=multiplier_35_1dsp,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "multiplier_35_1dsp,Vivado 2015.2.1" *) 
(* NotValidForBitStream *)
module multiplier_35_1dsp_ip
   (i_clk,
    i_rst,
    i_en,
    i_a,
    i_b,
    o_c_en,
    o_c);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_rst RST" *) input i_rst;
  input i_en;
  input [34:0]i_a;
  input [34:0]i_b;
  output o_c_en;
  output [68:0]o_c;

  wire [34:0]i_a;
  wire [34:0]i_b;
  wire i_clk;
  wire i_en;
  wire i_rst;
  wire [68:0]o_c;
  wire o_c_en;

  multiplier_35_1dsp_ip_multiplier_35_1dsp inst
       (.i_a(i_a),
        .i_b(i_b),
        .i_clk(i_clk),
        .i_en(i_en),
        .i_rst(i_rst),
        .o_c(o_c),
        .o_c_en(o_c_en));
endmodule

(* ORIG_REF_NAME = "dsp48_mul_ip" *) 
module multiplier_35_1dsp_ip_dsp48_mul_ip
   (P,
    D,
    \c_in_reg[51] ,
    \c_in_reg[51]_0 ,
    \c_in_reg[52] ,
    \c_in_reg[53] ,
    \c_in_reg[54] ,
    \c_in_reg[55] ,
    \c_in_reg[56] ,
    \c_in_reg[57] ,
    \c_in_reg[58] ,
    \c_in_reg[59] ,
    \c_in_reg[60] ,
    \c_in_reg[61] ,
    \c_in_reg[62] ,
    \c_in_reg[63] ,
    \c_in_reg[64] ,
    \c_in_reg[65] ,
    \c_in_reg[66] ,
    \c_in_reg[67] ,
    \c_in_reg[68] ,
    i_clk,
    Q,
    \b_seq_reg[71] ,
    \en_buf_reg[5] ,
    \en_buf_reg[2] ,
    \en_buf_reg[4] );
  output [16:0]P;
  output [33:0]D;
  output \c_in_reg[51] ;
  output \c_in_reg[51]_0 ;
  output \c_in_reg[52] ;
  output \c_in_reg[53] ;
  output \c_in_reg[54] ;
  output \c_in_reg[55] ;
  output \c_in_reg[56] ;
  output \c_in_reg[57] ;
  output \c_in_reg[58] ;
  output \c_in_reg[59] ;
  output \c_in_reg[60] ;
  output \c_in_reg[61] ;
  output \c_in_reg[62] ;
  output \c_in_reg[63] ;
  output \c_in_reg[64] ;
  output \c_in_reg[65] ;
  output \c_in_reg[66] ;
  output \c_in_reg[67] ;
  output \c_in_reg[68] ;
  input i_clk;
  input [17:0]Q;
  input [17:0]\b_seq_reg[71] ;
  input [3:0]\en_buf_reg[5] ;
  input \en_buf_reg[2] ;
  input \en_buf_reg[4] ;

  wire [33:0]D;
  wire [16:0]P;
  wire [17:0]Q;
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
  wire U0_n_110;
  wire U0_n_111;
  wire U0_n_112;
  wire U0_n_113;
  wire U0_n_114;
  wire U0_n_115;
  wire U0_n_116;
  wire U0_n_117;
  wire U0_n_118;
  wire U0_n_119;
  wire U0_n_120;
  wire U0_n_121;
  wire U0_n_122;
  wire U0_n_123;
  wire U0_n_124;
  wire U0_n_125;
  wire U0_n_126;
  wire U0_n_127;
  wire U0_n_128;
  wire U0_n_98;
  wire U0_n_99;
  wire [17:0]\b_seq_reg[71] ;
  wire \c_in[50]_i_2_n_0 ;
  wire \c_in_reg[51] ;
  wire \c_in_reg[51]_0 ;
  wire \c_in_reg[52] ;
  wire \c_in_reg[53] ;
  wire \c_in_reg[54] ;
  wire \c_in_reg[55] ;
  wire \c_in_reg[56] ;
  wire \c_in_reg[57] ;
  wire \c_in_reg[58] ;
  wire \c_in_reg[59] ;
  wire \c_in_reg[60] ;
  wire \c_in_reg[61] ;
  wire \c_in_reg[62] ;
  wire \c_in_reg[63] ;
  wire \c_in_reg[64] ;
  wire \c_in_reg[65] ;
  wire \c_in_reg[66] ;
  wire \c_in_reg[67] ;
  wire \c_in_reg[68] ;
  wire \en_buf_reg[2] ;
  wire \en_buf_reg[4] ;
  wire [3:0]\en_buf_reg[5] ;
  wire i_clk;
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
  multiplier_35_1dsp_ip_xbip_dsp48_macro_v3_0 U0
       (.A(Q),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(\b_seq_reg[71] ),
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
        .P({U0_n_98,U0_n_99,U0_n_100,U0_n_101,U0_n_102,U0_n_103,U0_n_104,U0_n_105,U0_n_106,U0_n_107,U0_n_108,U0_n_109,U0_n_110,U0_n_111,U0_n_112,U0_n_113,U0_n_114,U0_n_115,U0_n_116,U0_n_117,U0_n_118,U0_n_119,U0_n_120,U0_n_121,U0_n_122,U0_n_123,U0_n_124,U0_n_125,U0_n_126,U0_n_127,U0_n_128,P}),
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
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[17]_i_1 
       (.I0(P[0]),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_128),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[18]_i_1 
       (.I0(P[1]),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_127),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[19]_i_1 
       (.I0(P[2]),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_126),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[20]_i_1 
       (.I0(P[3]),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_125),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[21]_i_1 
       (.I0(P[4]),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_124),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[22]_i_1 
       (.I0(P[5]),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_123),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[23]_i_1 
       (.I0(P[6]),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_122),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[24]_i_1 
       (.I0(P[7]),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_121),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[25]_i_1 
       (.I0(P[8]),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_120),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[26]_i_1 
       (.I0(P[9]),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_119),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[27]_i_1 
       (.I0(P[10]),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_118),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[28]_i_1 
       (.I0(P[11]),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_117),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[29]_i_1 
       (.I0(P[12]),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_116),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[30]_i_1 
       (.I0(P[13]),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_115),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[31]_i_1 
       (.I0(P[14]),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_114),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[32]_i_1 
       (.I0(P[15]),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_113),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[33]_i_1 
       (.I0(P[16]),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_112),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[34]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(P[0]),
        .I4(U0_n_128),
        .I5(\en_buf_reg[4] ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[35]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(P[1]),
        .I4(U0_n_127),
        .I5(\en_buf_reg[4] ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[36]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(P[2]),
        .I4(U0_n_126),
        .I5(\en_buf_reg[4] ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[37]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(P[3]),
        .I4(U0_n_125),
        .I5(\en_buf_reg[4] ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[38]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(P[4]),
        .I4(U0_n_124),
        .I5(\en_buf_reg[4] ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[39]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(P[5]),
        .I4(U0_n_123),
        .I5(\en_buf_reg[4] ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[40]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(P[6]),
        .I4(U0_n_122),
        .I5(\en_buf_reg[4] ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[41]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(P[7]),
        .I4(U0_n_121),
        .I5(\en_buf_reg[4] ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[42]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(P[8]),
        .I4(U0_n_120),
        .I5(\en_buf_reg[4] ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[43]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(P[9]),
        .I4(U0_n_119),
        .I5(\en_buf_reg[4] ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[44]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(P[10]),
        .I4(U0_n_118),
        .I5(\en_buf_reg[4] ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[45]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(P[11]),
        .I4(U0_n_117),
        .I5(\en_buf_reg[4] ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[46]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(P[12]),
        .I4(U0_n_116),
        .I5(\en_buf_reg[4] ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[47]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(P[13]),
        .I4(U0_n_115),
        .I5(\en_buf_reg[4] ),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[48]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(P[14]),
        .I4(U0_n_114),
        .I5(\en_buf_reg[4] ),
        .O(D[31]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[49]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(P[15]),
        .I4(U0_n_113),
        .I5(\en_buf_reg[4] ),
        .O(D[32]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[50]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(P[16]),
        .I4(U0_n_112),
        .I5(\en_buf_reg[4] ),
        .O(D[33]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[50]_i_2 
       (.I0(\en_buf_reg[5] [3]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_111),
        .O(\c_in[50]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[51]_i_1 
       (.I0(\en_buf_reg[5] [0]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_128),
        .O(\c_in_reg[51]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[52]_i_1 
       (.I0(\en_buf_reg[5] [0]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_127),
        .O(\c_in_reg[52] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[53]_i_1 
       (.I0(\en_buf_reg[5] [0]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_126),
        .O(\c_in_reg[53] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[54]_i_1 
       (.I0(\en_buf_reg[5] [0]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_125),
        .O(\c_in_reg[54] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[55]_i_1 
       (.I0(\en_buf_reg[5] [0]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_124),
        .O(\c_in_reg[55] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[56]_i_1 
       (.I0(\en_buf_reg[5] [0]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_123),
        .O(\c_in_reg[56] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[57]_i_1 
       (.I0(\en_buf_reg[5] [0]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_122),
        .O(\c_in_reg[57] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[58]_i_1 
       (.I0(\en_buf_reg[5] [0]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_121),
        .O(\c_in_reg[58] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[59]_i_1 
       (.I0(\en_buf_reg[5] [0]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_120),
        .O(\c_in_reg[59] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[60]_i_1 
       (.I0(\en_buf_reg[5] [0]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_119),
        .O(\c_in_reg[60] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[61]_i_1 
       (.I0(\en_buf_reg[5] [0]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_118),
        .O(\c_in_reg[61] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[62]_i_1 
       (.I0(\en_buf_reg[5] [0]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_117),
        .O(\c_in_reg[62] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[63]_i_1 
       (.I0(\en_buf_reg[5] [0]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_116),
        .O(\c_in_reg[63] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[64]_i_1 
       (.I0(\en_buf_reg[5] [0]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_115),
        .O(\c_in_reg[64] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[65]_i_1 
       (.I0(\en_buf_reg[5] [0]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_114),
        .O(\c_in_reg[65] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[66]_i_1 
       (.I0(\en_buf_reg[5] [0]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_113),
        .O(\c_in_reg[66] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[67]_i_1 
       (.I0(\en_buf_reg[5] [0]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_112),
        .O(\c_in_reg[67] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF000E000)) 
    \c_in[68]_i_1 
       (.I0(\en_buf_reg[5] [2]),
        .I1(\en_buf_reg[5] [1]),
        .I2(U0_n_111),
        .I3(\en_buf_reg[2] ),
        .I4(\en_buf_reg[5] [3]),
        .O(\c_in_reg[51] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[68]_i_2 
       (.I0(\en_buf_reg[5] [0]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_111),
        .O(\c_in_reg[68] ));
endmodule

(* ORIG_REF_NAME = "multiplier_35_1dsp" *) 
module multiplier_35_1dsp_ip_multiplier_35_1dsp
   (o_c_en,
    o_c,
    i_en,
    i_a,
    i_b,
    i_clk,
    i_rst);
  output o_c_en;
  output [68:0]o_c;
  input i_en;
  input [34:0]i_a;
  input [34:0]i_b;
  input i_clk;
  input i_rst;

  wire \a_seq[0]_i_1_n_0 ;
  wire \a_seq[10]_i_1_n_0 ;
  wire \a_seq[11]_i_1_n_0 ;
  wire \a_seq[12]_i_1_n_0 ;
  wire \a_seq[13]_i_1_n_0 ;
  wire \a_seq[14]_i_1_n_0 ;
  wire \a_seq[15]_i_1_n_0 ;
  wire \a_seq[16]_i_1_n_0 ;
  wire \a_seq[18]_i_1_n_0 ;
  wire \a_seq[19]_i_1_n_0 ;
  wire \a_seq[1]_i_1_n_0 ;
  wire \a_seq[20]_i_1_n_0 ;
  wire \a_seq[21]_i_1_n_0 ;
  wire \a_seq[22]_i_1_n_0 ;
  wire \a_seq[23]_i_1_n_0 ;
  wire \a_seq[24]_i_1_n_0 ;
  wire \a_seq[25]_i_1_n_0 ;
  wire \a_seq[26]_i_1_n_0 ;
  wire \a_seq[27]_i_1_n_0 ;
  wire \a_seq[28]_i_1_n_0 ;
  wire \a_seq[29]_i_1_n_0 ;
  wire \a_seq[2]_i_1_n_0 ;
  wire \a_seq[30]_i_1_n_0 ;
  wire \a_seq[31]_i_1_n_0 ;
  wire \a_seq[32]_i_1_n_0 ;
  wire \a_seq[33]_i_1_n_0 ;
  wire \a_seq[34]_i_1_n_0 ;
  wire \a_seq[36]_i_1_n_0 ;
  wire \a_seq[37]_i_1_n_0 ;
  wire \a_seq[38]_i_1_n_0 ;
  wire \a_seq[39]_i_1_n_0 ;
  wire \a_seq[3]_i_1_n_0 ;
  wire \a_seq[40]_i_1_n_0 ;
  wire \a_seq[41]_i_1_n_0 ;
  wire \a_seq[42]_i_1_n_0 ;
  wire \a_seq[43]_i_1_n_0 ;
  wire \a_seq[44]_i_1_n_0 ;
  wire \a_seq[45]_i_1_n_0 ;
  wire \a_seq[46]_i_1_n_0 ;
  wire \a_seq[47]_i_1_n_0 ;
  wire \a_seq[48]_i_1_n_0 ;
  wire \a_seq[49]_i_1_n_0 ;
  wire \a_seq[4]_i_1_n_0 ;
  wire \a_seq[50]_i_1_n_0 ;
  wire \a_seq[51]_i_1_n_0 ;
  wire \a_seq[52]_i_1_n_0 ;
  wire \a_seq[53]_i_1_n_0 ;
  wire \a_seq[54]_i_1_n_0 ;
  wire \a_seq[55]_i_1_n_0 ;
  wire \a_seq[56]_i_1_n_0 ;
  wire \a_seq[57]_i_1_n_0 ;
  wire \a_seq[58]_i_1_n_0 ;
  wire \a_seq[59]_i_1_n_0 ;
  wire \a_seq[5]_i_1_n_0 ;
  wire \a_seq[60]_i_1_n_0 ;
  wire \a_seq[61]_i_1_n_0 ;
  wire \a_seq[62]_i_1_n_0 ;
  wire \a_seq[63]_i_1_n_0 ;
  wire \a_seq[64]_i_1_n_0 ;
  wire \a_seq[65]_i_1_n_0 ;
  wire \a_seq[66]_i_1_n_0 ;
  wire \a_seq[67]_i_1_n_0 ;
  wire \a_seq[68]_i_1_n_0 ;
  wire \a_seq[69]_i_1_n_0 ;
  wire \a_seq[6]_i_1_n_0 ;
  wire \a_seq[70]_i_1_n_0 ;
  wire \a_seq[71]_i_1_n_0 ;
  wire \a_seq[7]_i_1_n_0 ;
  wire \a_seq[8]_i_1_n_0 ;
  wire \a_seq[9]_i_1_n_0 ;
  wire \a_seq_reg_n_0_[0] ;
  wire \a_seq_reg_n_0_[10] ;
  wire \a_seq_reg_n_0_[11] ;
  wire \a_seq_reg_n_0_[12] ;
  wire \a_seq_reg_n_0_[13] ;
  wire \a_seq_reg_n_0_[14] ;
  wire \a_seq_reg_n_0_[15] ;
  wire \a_seq_reg_n_0_[16] ;
  wire \a_seq_reg_n_0_[18] ;
  wire \a_seq_reg_n_0_[19] ;
  wire \a_seq_reg_n_0_[1] ;
  wire \a_seq_reg_n_0_[20] ;
  wire \a_seq_reg_n_0_[21] ;
  wire \a_seq_reg_n_0_[22] ;
  wire \a_seq_reg_n_0_[23] ;
  wire \a_seq_reg_n_0_[24] ;
  wire \a_seq_reg_n_0_[25] ;
  wire \a_seq_reg_n_0_[26] ;
  wire \a_seq_reg_n_0_[27] ;
  wire \a_seq_reg_n_0_[28] ;
  wire \a_seq_reg_n_0_[29] ;
  wire \a_seq_reg_n_0_[2] ;
  wire \a_seq_reg_n_0_[30] ;
  wire \a_seq_reg_n_0_[31] ;
  wire \a_seq_reg_n_0_[32] ;
  wire \a_seq_reg_n_0_[33] ;
  wire \a_seq_reg_n_0_[34] ;
  wire \a_seq_reg_n_0_[36] ;
  wire \a_seq_reg_n_0_[37] ;
  wire \a_seq_reg_n_0_[38] ;
  wire \a_seq_reg_n_0_[39] ;
  wire \a_seq_reg_n_0_[3] ;
  wire \a_seq_reg_n_0_[40] ;
  wire \a_seq_reg_n_0_[41] ;
  wire \a_seq_reg_n_0_[42] ;
  wire \a_seq_reg_n_0_[43] ;
  wire \a_seq_reg_n_0_[44] ;
  wire \a_seq_reg_n_0_[45] ;
  wire \a_seq_reg_n_0_[46] ;
  wire \a_seq_reg_n_0_[47] ;
  wire \a_seq_reg_n_0_[48] ;
  wire \a_seq_reg_n_0_[49] ;
  wire \a_seq_reg_n_0_[4] ;
  wire \a_seq_reg_n_0_[50] ;
  wire \a_seq_reg_n_0_[51] ;
  wire \a_seq_reg_n_0_[52] ;
  wire \a_seq_reg_n_0_[53] ;
  wire \a_seq_reg_n_0_[5] ;
  wire \a_seq_reg_n_0_[6] ;
  wire \a_seq_reg_n_0_[7] ;
  wire \a_seq_reg_n_0_[8] ;
  wire \a_seq_reg_n_0_[9] ;
  wire \b_seq[0]_i_1_n_0 ;
  wire \b_seq[10]_i_1_n_0 ;
  wire \b_seq[11]_i_1_n_0 ;
  wire \b_seq[12]_i_1_n_0 ;
  wire \b_seq[13]_i_1_n_0 ;
  wire \b_seq[14]_i_1_n_0 ;
  wire \b_seq[15]_i_1_n_0 ;
  wire \b_seq[16]_i_1_n_0 ;
  wire \b_seq[18]_i_1_n_0 ;
  wire \b_seq[19]_i_1_n_0 ;
  wire \b_seq[1]_i_1_n_0 ;
  wire \b_seq[20]_i_1_n_0 ;
  wire \b_seq[21]_i_1_n_0 ;
  wire \b_seq[22]_i_1_n_0 ;
  wire \b_seq[23]_i_1_n_0 ;
  wire \b_seq[24]_i_1_n_0 ;
  wire \b_seq[25]_i_1_n_0 ;
  wire \b_seq[26]_i_1_n_0 ;
  wire \b_seq[27]_i_1_n_0 ;
  wire \b_seq[28]_i_1_n_0 ;
  wire \b_seq[29]_i_1_n_0 ;
  wire \b_seq[2]_i_1_n_0 ;
  wire \b_seq[30]_i_1_n_0 ;
  wire \b_seq[31]_i_1_n_0 ;
  wire \b_seq[32]_i_1_n_0 ;
  wire \b_seq[33]_i_1_n_0 ;
  wire \b_seq[34]_i_1_n_0 ;
  wire \b_seq[35]_i_1_n_0 ;
  wire \b_seq[36]_i_1_n_0 ;
  wire \b_seq[37]_i_1_n_0 ;
  wire \b_seq[38]_i_1_n_0 ;
  wire \b_seq[39]_i_1_n_0 ;
  wire \b_seq[3]_i_1_n_0 ;
  wire \b_seq[40]_i_1_n_0 ;
  wire \b_seq[41]_i_1_n_0 ;
  wire \b_seq[42]_i_1_n_0 ;
  wire \b_seq[43]_i_1_n_0 ;
  wire \b_seq[44]_i_1_n_0 ;
  wire \b_seq[45]_i_1_n_0 ;
  wire \b_seq[46]_i_1_n_0 ;
  wire \b_seq[47]_i_1_n_0 ;
  wire \b_seq[48]_i_1_n_0 ;
  wire \b_seq[49]_i_1_n_0 ;
  wire \b_seq[4]_i_1_n_0 ;
  wire \b_seq[50]_i_1_n_0 ;
  wire \b_seq[51]_i_1_n_0 ;
  wire \b_seq[52]_i_1_n_0 ;
  wire \b_seq[53]_i_1_n_0 ;
  wire \b_seq[54]_i_1_n_0 ;
  wire \b_seq[55]_i_1_n_0 ;
  wire \b_seq[56]_i_1_n_0 ;
  wire \b_seq[57]_i_1_n_0 ;
  wire \b_seq[58]_i_1_n_0 ;
  wire \b_seq[59]_i_1_n_0 ;
  wire \b_seq[5]_i_1_n_0 ;
  wire \b_seq[60]_i_1_n_0 ;
  wire \b_seq[61]_i_1_n_0 ;
  wire \b_seq[62]_i_1_n_0 ;
  wire \b_seq[63]_i_1_n_0 ;
  wire \b_seq[64]_i_1_n_0 ;
  wire \b_seq[65]_i_1_n_0 ;
  wire \b_seq[66]_i_1_n_0 ;
  wire \b_seq[67]_i_1_n_0 ;
  wire \b_seq[68]_i_1_n_0 ;
  wire \b_seq[69]_i_1_n_0 ;
  wire \b_seq[6]_i_1_n_0 ;
  wire \b_seq[70]_i_1_n_0 ;
  wire \b_seq[71]_i_1_n_0 ;
  wire \b_seq[7]_i_1_n_0 ;
  wire \b_seq[8]_i_1_n_0 ;
  wire \b_seq[9]_i_1_n_0 ;
  wire \b_seq_reg_n_0_[0] ;
  wire \b_seq_reg_n_0_[10] ;
  wire \b_seq_reg_n_0_[11] ;
  wire \b_seq_reg_n_0_[12] ;
  wire \b_seq_reg_n_0_[13] ;
  wire \b_seq_reg_n_0_[14] ;
  wire \b_seq_reg_n_0_[15] ;
  wire \b_seq_reg_n_0_[16] ;
  wire \b_seq_reg_n_0_[18] ;
  wire \b_seq_reg_n_0_[19] ;
  wire \b_seq_reg_n_0_[1] ;
  wire \b_seq_reg_n_0_[20] ;
  wire \b_seq_reg_n_0_[21] ;
  wire \b_seq_reg_n_0_[22] ;
  wire \b_seq_reg_n_0_[23] ;
  wire \b_seq_reg_n_0_[24] ;
  wire \b_seq_reg_n_0_[25] ;
  wire \b_seq_reg_n_0_[26] ;
  wire \b_seq_reg_n_0_[27] ;
  wire \b_seq_reg_n_0_[28] ;
  wire \b_seq_reg_n_0_[29] ;
  wire \b_seq_reg_n_0_[2] ;
  wire \b_seq_reg_n_0_[30] ;
  wire \b_seq_reg_n_0_[31] ;
  wire \b_seq_reg_n_0_[32] ;
  wire \b_seq_reg_n_0_[33] ;
  wire \b_seq_reg_n_0_[34] ;
  wire \b_seq_reg_n_0_[35] ;
  wire \b_seq_reg_n_0_[36] ;
  wire \b_seq_reg_n_0_[37] ;
  wire \b_seq_reg_n_0_[38] ;
  wire \b_seq_reg_n_0_[39] ;
  wire \b_seq_reg_n_0_[3] ;
  wire \b_seq_reg_n_0_[40] ;
  wire \b_seq_reg_n_0_[41] ;
  wire \b_seq_reg_n_0_[42] ;
  wire \b_seq_reg_n_0_[43] ;
  wire \b_seq_reg_n_0_[44] ;
  wire \b_seq_reg_n_0_[45] ;
  wire \b_seq_reg_n_0_[46] ;
  wire \b_seq_reg_n_0_[47] ;
  wire \b_seq_reg_n_0_[48] ;
  wire \b_seq_reg_n_0_[49] ;
  wire \b_seq_reg_n_0_[4] ;
  wire \b_seq_reg_n_0_[50] ;
  wire \b_seq_reg_n_0_[51] ;
  wire \b_seq_reg_n_0_[52] ;
  wire \b_seq_reg_n_0_[53] ;
  wire \b_seq_reg_n_0_[5] ;
  wire \b_seq_reg_n_0_[6] ;
  wire \b_seq_reg_n_0_[7] ;
  wire \b_seq_reg_n_0_[8] ;
  wire \b_seq_reg_n_0_[9] ;
  wire \c_acc[11]_i_2_n_0 ;
  wire \c_acc[11]_i_3_n_0 ;
  wire \c_acc[11]_i_4_n_0 ;
  wire \c_acc[11]_i_5_n_0 ;
  wire \c_acc[15]_i_2_n_0 ;
  wire \c_acc[15]_i_3_n_0 ;
  wire \c_acc[15]_i_4_n_0 ;
  wire \c_acc[15]_i_5_n_0 ;
  wire \c_acc[19]_i_2_n_0 ;
  wire \c_acc[19]_i_3_n_0 ;
  wire \c_acc[19]_i_4_n_0 ;
  wire \c_acc[19]_i_5_n_0 ;
  wire \c_acc[23]_i_2_n_0 ;
  wire \c_acc[23]_i_3_n_0 ;
  wire \c_acc[23]_i_4_n_0 ;
  wire \c_acc[23]_i_5_n_0 ;
  wire \c_acc[27]_i_2_n_0 ;
  wire \c_acc[27]_i_3_n_0 ;
  wire \c_acc[27]_i_4_n_0 ;
  wire \c_acc[27]_i_5_n_0 ;
  wire \c_acc[31]_i_2_n_0 ;
  wire \c_acc[31]_i_3_n_0 ;
  wire \c_acc[31]_i_4_n_0 ;
  wire \c_acc[31]_i_5_n_0 ;
  wire \c_acc[35]_i_2_n_0 ;
  wire \c_acc[35]_i_3_n_0 ;
  wire \c_acc[35]_i_4_n_0 ;
  wire \c_acc[35]_i_5_n_0 ;
  wire \c_acc[39]_i_2_n_0 ;
  wire \c_acc[39]_i_3_n_0 ;
  wire \c_acc[39]_i_4_n_0 ;
  wire \c_acc[39]_i_5_n_0 ;
  wire \c_acc[3]_i_2_n_0 ;
  wire \c_acc[3]_i_3_n_0 ;
  wire \c_acc[3]_i_4_n_0 ;
  wire \c_acc[3]_i_5_n_0 ;
  wire \c_acc[43]_i_2_n_0 ;
  wire \c_acc[43]_i_3_n_0 ;
  wire \c_acc[43]_i_4_n_0 ;
  wire \c_acc[43]_i_5_n_0 ;
  wire \c_acc[47]_i_2_n_0 ;
  wire \c_acc[47]_i_3_n_0 ;
  wire \c_acc[47]_i_4_n_0 ;
  wire \c_acc[47]_i_5_n_0 ;
  wire \c_acc[51]_i_2_n_0 ;
  wire \c_acc[51]_i_3_n_0 ;
  wire \c_acc[51]_i_4_n_0 ;
  wire \c_acc[51]_i_5_n_0 ;
  wire \c_acc[55]_i_2_n_0 ;
  wire \c_acc[55]_i_3_n_0 ;
  wire \c_acc[55]_i_4_n_0 ;
  wire \c_acc[55]_i_5_n_0 ;
  wire \c_acc[59]_i_2_n_0 ;
  wire \c_acc[59]_i_3_n_0 ;
  wire \c_acc[59]_i_4_n_0 ;
  wire \c_acc[59]_i_5_n_0 ;
  wire \c_acc[63]_i_2_n_0 ;
  wire \c_acc[63]_i_3_n_0 ;
  wire \c_acc[63]_i_4_n_0 ;
  wire \c_acc[63]_i_5_n_0 ;
  wire \c_acc[67]_i_2_n_0 ;
  wire \c_acc[67]_i_3_n_0 ;
  wire \c_acc[67]_i_4_n_0 ;
  wire \c_acc[67]_i_5_n_0 ;
  wire \c_acc[68]_i_2_n_0 ;
  wire \c_acc[7]_i_2_n_0 ;
  wire \c_acc[7]_i_3_n_0 ;
  wire \c_acc[7]_i_4_n_0 ;
  wire \c_acc[7]_i_5_n_0 ;
  wire \c_acc_reg[11]_i_1_n_0 ;
  wire \c_acc_reg[11]_i_1_n_1 ;
  wire \c_acc_reg[11]_i_1_n_2 ;
  wire \c_acc_reg[11]_i_1_n_3 ;
  wire \c_acc_reg[11]_i_1_n_4 ;
  wire \c_acc_reg[11]_i_1_n_5 ;
  wire \c_acc_reg[11]_i_1_n_6 ;
  wire \c_acc_reg[11]_i_1_n_7 ;
  wire \c_acc_reg[15]_i_1_n_0 ;
  wire \c_acc_reg[15]_i_1_n_1 ;
  wire \c_acc_reg[15]_i_1_n_2 ;
  wire \c_acc_reg[15]_i_1_n_3 ;
  wire \c_acc_reg[15]_i_1_n_4 ;
  wire \c_acc_reg[15]_i_1_n_5 ;
  wire \c_acc_reg[15]_i_1_n_6 ;
  wire \c_acc_reg[15]_i_1_n_7 ;
  wire \c_acc_reg[19]_i_1_n_0 ;
  wire \c_acc_reg[19]_i_1_n_1 ;
  wire \c_acc_reg[19]_i_1_n_2 ;
  wire \c_acc_reg[19]_i_1_n_3 ;
  wire \c_acc_reg[19]_i_1_n_4 ;
  wire \c_acc_reg[19]_i_1_n_5 ;
  wire \c_acc_reg[19]_i_1_n_6 ;
  wire \c_acc_reg[19]_i_1_n_7 ;
  wire \c_acc_reg[23]_i_1_n_0 ;
  wire \c_acc_reg[23]_i_1_n_1 ;
  wire \c_acc_reg[23]_i_1_n_2 ;
  wire \c_acc_reg[23]_i_1_n_3 ;
  wire \c_acc_reg[23]_i_1_n_4 ;
  wire \c_acc_reg[23]_i_1_n_5 ;
  wire \c_acc_reg[23]_i_1_n_6 ;
  wire \c_acc_reg[23]_i_1_n_7 ;
  wire \c_acc_reg[27]_i_1_n_0 ;
  wire \c_acc_reg[27]_i_1_n_1 ;
  wire \c_acc_reg[27]_i_1_n_2 ;
  wire \c_acc_reg[27]_i_1_n_3 ;
  wire \c_acc_reg[27]_i_1_n_4 ;
  wire \c_acc_reg[27]_i_1_n_5 ;
  wire \c_acc_reg[27]_i_1_n_6 ;
  wire \c_acc_reg[27]_i_1_n_7 ;
  wire \c_acc_reg[31]_i_1_n_0 ;
  wire \c_acc_reg[31]_i_1_n_1 ;
  wire \c_acc_reg[31]_i_1_n_2 ;
  wire \c_acc_reg[31]_i_1_n_3 ;
  wire \c_acc_reg[31]_i_1_n_4 ;
  wire \c_acc_reg[31]_i_1_n_5 ;
  wire \c_acc_reg[31]_i_1_n_6 ;
  wire \c_acc_reg[31]_i_1_n_7 ;
  wire \c_acc_reg[35]_i_1_n_0 ;
  wire \c_acc_reg[35]_i_1_n_1 ;
  wire \c_acc_reg[35]_i_1_n_2 ;
  wire \c_acc_reg[35]_i_1_n_3 ;
  wire \c_acc_reg[35]_i_1_n_4 ;
  wire \c_acc_reg[35]_i_1_n_5 ;
  wire \c_acc_reg[35]_i_1_n_6 ;
  wire \c_acc_reg[35]_i_1_n_7 ;
  wire \c_acc_reg[39]_i_1_n_0 ;
  wire \c_acc_reg[39]_i_1_n_1 ;
  wire \c_acc_reg[39]_i_1_n_2 ;
  wire \c_acc_reg[39]_i_1_n_3 ;
  wire \c_acc_reg[39]_i_1_n_4 ;
  wire \c_acc_reg[39]_i_1_n_5 ;
  wire \c_acc_reg[39]_i_1_n_6 ;
  wire \c_acc_reg[39]_i_1_n_7 ;
  wire \c_acc_reg[3]_i_1_n_0 ;
  wire \c_acc_reg[3]_i_1_n_1 ;
  wire \c_acc_reg[3]_i_1_n_2 ;
  wire \c_acc_reg[3]_i_1_n_3 ;
  wire \c_acc_reg[3]_i_1_n_4 ;
  wire \c_acc_reg[3]_i_1_n_5 ;
  wire \c_acc_reg[3]_i_1_n_6 ;
  wire \c_acc_reg[3]_i_1_n_7 ;
  wire \c_acc_reg[43]_i_1_n_0 ;
  wire \c_acc_reg[43]_i_1_n_1 ;
  wire \c_acc_reg[43]_i_1_n_2 ;
  wire \c_acc_reg[43]_i_1_n_3 ;
  wire \c_acc_reg[43]_i_1_n_4 ;
  wire \c_acc_reg[43]_i_1_n_5 ;
  wire \c_acc_reg[43]_i_1_n_6 ;
  wire \c_acc_reg[43]_i_1_n_7 ;
  wire \c_acc_reg[47]_i_1_n_0 ;
  wire \c_acc_reg[47]_i_1_n_1 ;
  wire \c_acc_reg[47]_i_1_n_2 ;
  wire \c_acc_reg[47]_i_1_n_3 ;
  wire \c_acc_reg[47]_i_1_n_4 ;
  wire \c_acc_reg[47]_i_1_n_5 ;
  wire \c_acc_reg[47]_i_1_n_6 ;
  wire \c_acc_reg[47]_i_1_n_7 ;
  wire \c_acc_reg[51]_i_1_n_0 ;
  wire \c_acc_reg[51]_i_1_n_1 ;
  wire \c_acc_reg[51]_i_1_n_2 ;
  wire \c_acc_reg[51]_i_1_n_3 ;
  wire \c_acc_reg[51]_i_1_n_4 ;
  wire \c_acc_reg[51]_i_1_n_5 ;
  wire \c_acc_reg[51]_i_1_n_6 ;
  wire \c_acc_reg[51]_i_1_n_7 ;
  wire \c_acc_reg[55]_i_1_n_0 ;
  wire \c_acc_reg[55]_i_1_n_1 ;
  wire \c_acc_reg[55]_i_1_n_2 ;
  wire \c_acc_reg[55]_i_1_n_3 ;
  wire \c_acc_reg[55]_i_1_n_4 ;
  wire \c_acc_reg[55]_i_1_n_5 ;
  wire \c_acc_reg[55]_i_1_n_6 ;
  wire \c_acc_reg[55]_i_1_n_7 ;
  wire \c_acc_reg[59]_i_1_n_0 ;
  wire \c_acc_reg[59]_i_1_n_1 ;
  wire \c_acc_reg[59]_i_1_n_2 ;
  wire \c_acc_reg[59]_i_1_n_3 ;
  wire \c_acc_reg[59]_i_1_n_4 ;
  wire \c_acc_reg[59]_i_1_n_5 ;
  wire \c_acc_reg[59]_i_1_n_6 ;
  wire \c_acc_reg[59]_i_1_n_7 ;
  wire \c_acc_reg[63]_i_1_n_0 ;
  wire \c_acc_reg[63]_i_1_n_1 ;
  wire \c_acc_reg[63]_i_1_n_2 ;
  wire \c_acc_reg[63]_i_1_n_3 ;
  wire \c_acc_reg[63]_i_1_n_4 ;
  wire \c_acc_reg[63]_i_1_n_5 ;
  wire \c_acc_reg[63]_i_1_n_6 ;
  wire \c_acc_reg[63]_i_1_n_7 ;
  wire \c_acc_reg[67]_i_1_n_0 ;
  wire \c_acc_reg[67]_i_1_n_1 ;
  wire \c_acc_reg[67]_i_1_n_2 ;
  wire \c_acc_reg[67]_i_1_n_3 ;
  wire \c_acc_reg[67]_i_1_n_4 ;
  wire \c_acc_reg[67]_i_1_n_5 ;
  wire \c_acc_reg[67]_i_1_n_6 ;
  wire \c_acc_reg[67]_i_1_n_7 ;
  wire \c_acc_reg[68]_i_1_n_7 ;
  wire \c_acc_reg[7]_i_1_n_0 ;
  wire \c_acc_reg[7]_i_1_n_1 ;
  wire \c_acc_reg[7]_i_1_n_2 ;
  wire \c_acc_reg[7]_i_1_n_3 ;
  wire \c_acc_reg[7]_i_1_n_4 ;
  wire \c_acc_reg[7]_i_1_n_5 ;
  wire \c_acc_reg[7]_i_1_n_6 ;
  wire \c_acc_reg[7]_i_1_n_7 ;
  wire [50:17]c_in;
  wire \c_in[16]_i_1_n_0 ;
  wire \c_in[50]_i_3_n_0 ;
  wire \c_in[50]_i_4_n_0 ;
  wire \en_buf_reg_n_0_[0] ;
  wire \en_buf_reg_n_0_[1] ;
  wire \en_buf_reg_n_0_[6] ;
  wire [34:0]i_a;
  wire [34:0]i_b;
  wire i_clk;
  wire i_en;
  wire i_rst;
  wire [68:0]in;
  wire [68:0]o_c;
  wire o_c_en;
  wire [3:0]sel0;
  wire [17:0]u_a;
  wire [17:0]u_b;
  wire u_dsp48_mul_ip_n_0;
  wire u_dsp48_mul_ip_n_1;
  wire u_dsp48_mul_ip_n_10;
  wire u_dsp48_mul_ip_n_11;
  wire u_dsp48_mul_ip_n_12;
  wire u_dsp48_mul_ip_n_13;
  wire u_dsp48_mul_ip_n_14;
  wire u_dsp48_mul_ip_n_15;
  wire u_dsp48_mul_ip_n_16;
  wire u_dsp48_mul_ip_n_2;
  wire u_dsp48_mul_ip_n_3;
  wire u_dsp48_mul_ip_n_4;
  wire u_dsp48_mul_ip_n_5;
  wire u_dsp48_mul_ip_n_51;
  wire u_dsp48_mul_ip_n_52;
  wire u_dsp48_mul_ip_n_53;
  wire u_dsp48_mul_ip_n_54;
  wire u_dsp48_mul_ip_n_55;
  wire u_dsp48_mul_ip_n_56;
  wire u_dsp48_mul_ip_n_57;
  wire u_dsp48_mul_ip_n_58;
  wire u_dsp48_mul_ip_n_59;
  wire u_dsp48_mul_ip_n_6;
  wire u_dsp48_mul_ip_n_60;
  wire u_dsp48_mul_ip_n_61;
  wire u_dsp48_mul_ip_n_62;
  wire u_dsp48_mul_ip_n_63;
  wire u_dsp48_mul_ip_n_64;
  wire u_dsp48_mul_ip_n_65;
  wire u_dsp48_mul_ip_n_66;
  wire u_dsp48_mul_ip_n_67;
  wire u_dsp48_mul_ip_n_68;
  wire u_dsp48_mul_ip_n_69;
  wire u_dsp48_mul_ip_n_7;
  wire u_dsp48_mul_ip_n_8;
  wire u_dsp48_mul_ip_n_9;
  wire [3:0]\NLW_c_acc_reg[68]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_c_acc_reg[68]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[0]_i_1 
       (.I0(i_en),
        .I1(i_a[0]),
        .O(\a_seq[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[10]_i_1 
       (.I0(i_en),
        .I1(i_a[10]),
        .O(\a_seq[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[11]_i_1 
       (.I0(i_en),
        .I1(i_a[11]),
        .O(\a_seq[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[12]_i_1 
       (.I0(i_en),
        .I1(i_a[12]),
        .O(\a_seq[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[13]_i_1 
       (.I0(i_en),
        .I1(i_a[13]),
        .O(\a_seq[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[14]_i_1 
       (.I0(i_en),
        .I1(i_a[14]),
        .O(\a_seq[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[15]_i_1 
       (.I0(i_en),
        .I1(i_a[15]),
        .O(\a_seq[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[16]_i_1 
       (.I0(i_en),
        .I1(i_a[16]),
        .O(\a_seq[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[18]_i_1 
       (.I0(i_a[0]),
        .I1(\a_seq_reg_n_0_[0] ),
        .I2(i_en),
        .O(\a_seq[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[19]_i_1 
       (.I0(i_a[1]),
        .I1(\a_seq_reg_n_0_[1] ),
        .I2(i_en),
        .O(\a_seq[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[1]_i_1 
       (.I0(i_en),
        .I1(i_a[1]),
        .O(\a_seq[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[20]_i_1 
       (.I0(i_a[2]),
        .I1(\a_seq_reg_n_0_[2] ),
        .I2(i_en),
        .O(\a_seq[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[21]_i_1 
       (.I0(i_a[3]),
        .I1(\a_seq_reg_n_0_[3] ),
        .I2(i_en),
        .O(\a_seq[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[22]_i_1 
       (.I0(i_a[4]),
        .I1(\a_seq_reg_n_0_[4] ),
        .I2(i_en),
        .O(\a_seq[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[23]_i_1 
       (.I0(i_a[5]),
        .I1(\a_seq_reg_n_0_[5] ),
        .I2(i_en),
        .O(\a_seq[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[24]_i_1 
       (.I0(i_a[6]),
        .I1(\a_seq_reg_n_0_[6] ),
        .I2(i_en),
        .O(\a_seq[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[25]_i_1 
       (.I0(i_a[7]),
        .I1(\a_seq_reg_n_0_[7] ),
        .I2(i_en),
        .O(\a_seq[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[26]_i_1 
       (.I0(i_a[8]),
        .I1(\a_seq_reg_n_0_[8] ),
        .I2(i_en),
        .O(\a_seq[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[27]_i_1 
       (.I0(i_a[9]),
        .I1(\a_seq_reg_n_0_[9] ),
        .I2(i_en),
        .O(\a_seq[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[28]_i_1 
       (.I0(i_a[10]),
        .I1(\a_seq_reg_n_0_[10] ),
        .I2(i_en),
        .O(\a_seq[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[29]_i_1 
       (.I0(i_a[11]),
        .I1(\a_seq_reg_n_0_[11] ),
        .I2(i_en),
        .O(\a_seq[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[2]_i_1 
       (.I0(i_en),
        .I1(i_a[2]),
        .O(\a_seq[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[30]_i_1 
       (.I0(i_a[12]),
        .I1(\a_seq_reg_n_0_[12] ),
        .I2(i_en),
        .O(\a_seq[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[31]_i_1 
       (.I0(i_a[13]),
        .I1(\a_seq_reg_n_0_[13] ),
        .I2(i_en),
        .O(\a_seq[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[32]_i_1 
       (.I0(i_a[14]),
        .I1(\a_seq_reg_n_0_[14] ),
        .I2(i_en),
        .O(\a_seq[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[33]_i_1 
       (.I0(i_a[15]),
        .I1(\a_seq_reg_n_0_[15] ),
        .I2(i_en),
        .O(\a_seq[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[34]_i_1 
       (.I0(i_a[16]),
        .I1(\a_seq_reg_n_0_[16] ),
        .I2(i_en),
        .O(\a_seq[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[36]_i_1 
       (.I0(i_a[17]),
        .I1(\a_seq_reg_n_0_[18] ),
        .I2(i_en),
        .O(\a_seq[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[37]_i_1 
       (.I0(i_a[18]),
        .I1(\a_seq_reg_n_0_[19] ),
        .I2(i_en),
        .O(\a_seq[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[38]_i_1 
       (.I0(i_a[19]),
        .I1(\a_seq_reg_n_0_[20] ),
        .I2(i_en),
        .O(\a_seq[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[39]_i_1 
       (.I0(i_a[20]),
        .I1(\a_seq_reg_n_0_[21] ),
        .I2(i_en),
        .O(\a_seq[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[3]_i_1 
       (.I0(i_en),
        .I1(i_a[3]),
        .O(\a_seq[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[40]_i_1 
       (.I0(i_a[21]),
        .I1(\a_seq_reg_n_0_[22] ),
        .I2(i_en),
        .O(\a_seq[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[41]_i_1 
       (.I0(i_a[22]),
        .I1(\a_seq_reg_n_0_[23] ),
        .I2(i_en),
        .O(\a_seq[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[42]_i_1 
       (.I0(i_a[23]),
        .I1(\a_seq_reg_n_0_[24] ),
        .I2(i_en),
        .O(\a_seq[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[43]_i_1 
       (.I0(i_a[24]),
        .I1(\a_seq_reg_n_0_[25] ),
        .I2(i_en),
        .O(\a_seq[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[44]_i_1 
       (.I0(i_a[25]),
        .I1(\a_seq_reg_n_0_[26] ),
        .I2(i_en),
        .O(\a_seq[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[45]_i_1 
       (.I0(i_a[26]),
        .I1(\a_seq_reg_n_0_[27] ),
        .I2(i_en),
        .O(\a_seq[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[46]_i_1 
       (.I0(i_a[27]),
        .I1(\a_seq_reg_n_0_[28] ),
        .I2(i_en),
        .O(\a_seq[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[47]_i_1 
       (.I0(i_a[28]),
        .I1(\a_seq_reg_n_0_[29] ),
        .I2(i_en),
        .O(\a_seq[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[48]_i_1 
       (.I0(i_a[29]),
        .I1(\a_seq_reg_n_0_[30] ),
        .I2(i_en),
        .O(\a_seq[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[49]_i_1 
       (.I0(i_a[30]),
        .I1(\a_seq_reg_n_0_[31] ),
        .I2(i_en),
        .O(\a_seq[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[4]_i_1 
       (.I0(i_en),
        .I1(i_a[4]),
        .O(\a_seq[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[50]_i_1 
       (.I0(i_a[31]),
        .I1(\a_seq_reg_n_0_[32] ),
        .I2(i_en),
        .O(\a_seq[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[51]_i_1 
       (.I0(i_a[32]),
        .I1(\a_seq_reg_n_0_[33] ),
        .I2(i_en),
        .O(\a_seq[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[52]_i_1 
       (.I0(i_a[33]),
        .I1(\a_seq_reg_n_0_[34] ),
        .I2(i_en),
        .O(\a_seq[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[53]_i_1 
       (.I0(i_en),
        .I1(i_a[34]),
        .O(\a_seq[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[54]_i_1 
       (.I0(i_a[17]),
        .I1(\a_seq_reg_n_0_[36] ),
        .I2(i_en),
        .O(\a_seq[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[55]_i_1 
       (.I0(i_a[18]),
        .I1(\a_seq_reg_n_0_[37] ),
        .I2(i_en),
        .O(\a_seq[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[56]_i_1 
       (.I0(i_a[19]),
        .I1(\a_seq_reg_n_0_[38] ),
        .I2(i_en),
        .O(\a_seq[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[57]_i_1 
       (.I0(i_a[20]),
        .I1(\a_seq_reg_n_0_[39] ),
        .I2(i_en),
        .O(\a_seq[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[58]_i_1 
       (.I0(i_a[21]),
        .I1(\a_seq_reg_n_0_[40] ),
        .I2(i_en),
        .O(\a_seq[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[59]_i_1 
       (.I0(i_a[22]),
        .I1(\a_seq_reg_n_0_[41] ),
        .I2(i_en),
        .O(\a_seq[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[5]_i_1 
       (.I0(i_en),
        .I1(i_a[5]),
        .O(\a_seq[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[60]_i_1 
       (.I0(i_a[23]),
        .I1(\a_seq_reg_n_0_[42] ),
        .I2(i_en),
        .O(\a_seq[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[61]_i_1 
       (.I0(i_a[24]),
        .I1(\a_seq_reg_n_0_[43] ),
        .I2(i_en),
        .O(\a_seq[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[62]_i_1 
       (.I0(i_a[25]),
        .I1(\a_seq_reg_n_0_[44] ),
        .I2(i_en),
        .O(\a_seq[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[63]_i_1 
       (.I0(i_a[26]),
        .I1(\a_seq_reg_n_0_[45] ),
        .I2(i_en),
        .O(\a_seq[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[64]_i_1 
       (.I0(i_a[27]),
        .I1(\a_seq_reg_n_0_[46] ),
        .I2(i_en),
        .O(\a_seq[64]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[65]_i_1 
       (.I0(i_a[28]),
        .I1(\a_seq_reg_n_0_[47] ),
        .I2(i_en),
        .O(\a_seq[65]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[66]_i_1 
       (.I0(i_a[29]),
        .I1(\a_seq_reg_n_0_[48] ),
        .I2(i_en),
        .O(\a_seq[66]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[67]_i_1 
       (.I0(i_a[30]),
        .I1(\a_seq_reg_n_0_[49] ),
        .I2(i_en),
        .O(\a_seq[67]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[68]_i_1 
       (.I0(i_a[31]),
        .I1(\a_seq_reg_n_0_[50] ),
        .I2(i_en),
        .O(\a_seq[68]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[69]_i_1 
       (.I0(i_a[32]),
        .I1(\a_seq_reg_n_0_[51] ),
        .I2(i_en),
        .O(\a_seq[69]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[6]_i_1 
       (.I0(i_en),
        .I1(i_a[6]),
        .O(\a_seq[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[70]_i_1 
       (.I0(i_a[33]),
        .I1(\a_seq_reg_n_0_[52] ),
        .I2(i_en),
        .O(\a_seq[70]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[71]_i_1 
       (.I0(i_a[34]),
        .I1(\a_seq_reg_n_0_[53] ),
        .I2(i_en),
        .O(\a_seq[71]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[7]_i_1 
       (.I0(i_en),
        .I1(i_a[7]),
        .O(\a_seq[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[8]_i_1 
       (.I0(i_en),
        .I1(i_a[8]),
        .O(\a_seq[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[9]_i_1 
       (.I0(i_en),
        .I1(i_a[9]),
        .O(\a_seq[9]_i_1_n_0 ));
  FDCE \a_seq_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[0]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[0] ));
  FDCE \a_seq_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[10]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[10] ));
  FDCE \a_seq_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[11]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[11] ));
  FDCE \a_seq_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[12]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[12] ));
  FDCE \a_seq_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[13]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[13] ));
  FDCE \a_seq_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[14]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[14] ));
  FDCE \a_seq_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[15]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[15] ));
  FDCE \a_seq_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[16]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[16] ));
  FDCE \a_seq_reg[18] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[18]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[18] ));
  FDCE \a_seq_reg[19] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[19]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[19] ));
  FDCE \a_seq_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[1]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[1] ));
  FDCE \a_seq_reg[20] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[20]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[20] ));
  FDCE \a_seq_reg[21] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[21]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[21] ));
  FDCE \a_seq_reg[22] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[22]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[22] ));
  FDCE \a_seq_reg[23] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[23]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[23] ));
  FDCE \a_seq_reg[24] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[24]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[24] ));
  FDCE \a_seq_reg[25] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[25]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[25] ));
  FDCE \a_seq_reg[26] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[26]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[26] ));
  FDCE \a_seq_reg[27] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[27]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[27] ));
  FDCE \a_seq_reg[28] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[28]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[28] ));
  FDCE \a_seq_reg[29] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[29]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[29] ));
  FDCE \a_seq_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[2]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[2] ));
  FDCE \a_seq_reg[30] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[30]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[30] ));
  FDCE \a_seq_reg[31] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[31]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[31] ));
  FDCE \a_seq_reg[32] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[32]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[32] ));
  FDCE \a_seq_reg[33] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[33]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[33] ));
  FDCE \a_seq_reg[34] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[34]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[34] ));
  FDCE \a_seq_reg[36] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[36]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[36] ));
  FDCE \a_seq_reg[37] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[37]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[37] ));
  FDCE \a_seq_reg[38] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[38]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[38] ));
  FDCE \a_seq_reg[39] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[39]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[39] ));
  FDCE \a_seq_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[3]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[3] ));
  FDCE \a_seq_reg[40] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[40]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[40] ));
  FDCE \a_seq_reg[41] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[41]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[41] ));
  FDCE \a_seq_reg[42] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[42]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[42] ));
  FDCE \a_seq_reg[43] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[43]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[43] ));
  FDCE \a_seq_reg[44] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[44]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[44] ));
  FDCE \a_seq_reg[45] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[45]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[45] ));
  FDCE \a_seq_reg[46] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[46]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[46] ));
  FDCE \a_seq_reg[47] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[47]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[47] ));
  FDCE \a_seq_reg[48] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[48]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[48] ));
  FDCE \a_seq_reg[49] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[49]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[49] ));
  FDCE \a_seq_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[4]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[4] ));
  FDCE \a_seq_reg[50] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[50]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[50] ));
  FDCE \a_seq_reg[51] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[51]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[51] ));
  FDCE \a_seq_reg[52] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[52]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[52] ));
  FDCE \a_seq_reg[53] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[53]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[53] ));
  FDCE \a_seq_reg[54] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[54]_i_1_n_0 ),
        .Q(u_a[0]));
  FDCE \a_seq_reg[55] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[55]_i_1_n_0 ),
        .Q(u_a[1]));
  FDCE \a_seq_reg[56] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[56]_i_1_n_0 ),
        .Q(u_a[2]));
  FDCE \a_seq_reg[57] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[57]_i_1_n_0 ),
        .Q(u_a[3]));
  FDCE \a_seq_reg[58] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[58]_i_1_n_0 ),
        .Q(u_a[4]));
  FDCE \a_seq_reg[59] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[59]_i_1_n_0 ),
        .Q(u_a[5]));
  FDCE \a_seq_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[5]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[5] ));
  FDCE \a_seq_reg[60] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[60]_i_1_n_0 ),
        .Q(u_a[6]));
  FDCE \a_seq_reg[61] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[61]_i_1_n_0 ),
        .Q(u_a[7]));
  FDCE \a_seq_reg[62] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[62]_i_1_n_0 ),
        .Q(u_a[8]));
  FDCE \a_seq_reg[63] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[63]_i_1_n_0 ),
        .Q(u_a[9]));
  FDCE \a_seq_reg[64] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[64]_i_1_n_0 ),
        .Q(u_a[10]));
  FDCE \a_seq_reg[65] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[65]_i_1_n_0 ),
        .Q(u_a[11]));
  FDCE \a_seq_reg[66] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[66]_i_1_n_0 ),
        .Q(u_a[12]));
  FDCE \a_seq_reg[67] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[67]_i_1_n_0 ),
        .Q(u_a[13]));
  FDCE \a_seq_reg[68] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[68]_i_1_n_0 ),
        .Q(u_a[14]));
  FDCE \a_seq_reg[69] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[69]_i_1_n_0 ),
        .Q(u_a[15]));
  FDCE \a_seq_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[6]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[6] ));
  FDCE \a_seq_reg[70] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[70]_i_1_n_0 ),
        .Q(u_a[16]));
  FDCE \a_seq_reg[71] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[71]_i_1_n_0 ),
        .Q(u_a[17]));
  FDCE \a_seq_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[7]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[7] ));
  FDCE \a_seq_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[8]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[8] ));
  FDCE \a_seq_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\a_seq[9]_i_1_n_0 ),
        .Q(\a_seq_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[0]_i_1 
       (.I0(i_en),
        .I1(i_b[0]),
        .O(\b_seq[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[10]_i_1 
       (.I0(i_en),
        .I1(i_b[10]),
        .O(\b_seq[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[11]_i_1 
       (.I0(i_en),
        .I1(i_b[11]),
        .O(\b_seq[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[12]_i_1 
       (.I0(i_en),
        .I1(i_b[12]),
        .O(\b_seq[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[13]_i_1 
       (.I0(i_en),
        .I1(i_b[13]),
        .O(\b_seq[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[14]_i_1 
       (.I0(i_en),
        .I1(i_b[14]),
        .O(\b_seq[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[15]_i_1 
       (.I0(i_en),
        .I1(i_b[15]),
        .O(\b_seq[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[16]_i_1 
       (.I0(i_en),
        .I1(i_b[16]),
        .O(\b_seq[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[18]_i_1 
       (.I0(i_b[17]),
        .I1(\b_seq_reg_n_0_[0] ),
        .I2(i_en),
        .O(\b_seq[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[19]_i_1 
       (.I0(i_b[18]),
        .I1(\b_seq_reg_n_0_[1] ),
        .I2(i_en),
        .O(\b_seq[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[1]_i_1 
       (.I0(i_en),
        .I1(i_b[1]),
        .O(\b_seq[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[20]_i_1 
       (.I0(i_b[19]),
        .I1(\b_seq_reg_n_0_[2] ),
        .I2(i_en),
        .O(\b_seq[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[21]_i_1 
       (.I0(i_b[20]),
        .I1(\b_seq_reg_n_0_[3] ),
        .I2(i_en),
        .O(\b_seq[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[22]_i_1 
       (.I0(i_b[21]),
        .I1(\b_seq_reg_n_0_[4] ),
        .I2(i_en),
        .O(\b_seq[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[23]_i_1 
       (.I0(i_b[22]),
        .I1(\b_seq_reg_n_0_[5] ),
        .I2(i_en),
        .O(\b_seq[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[24]_i_1 
       (.I0(i_b[23]),
        .I1(\b_seq_reg_n_0_[6] ),
        .I2(i_en),
        .O(\b_seq[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[25]_i_1 
       (.I0(i_b[24]),
        .I1(\b_seq_reg_n_0_[7] ),
        .I2(i_en),
        .O(\b_seq[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[26]_i_1 
       (.I0(i_b[25]),
        .I1(\b_seq_reg_n_0_[8] ),
        .I2(i_en),
        .O(\b_seq[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[27]_i_1 
       (.I0(i_b[26]),
        .I1(\b_seq_reg_n_0_[9] ),
        .I2(i_en),
        .O(\b_seq[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[28]_i_1 
       (.I0(i_b[27]),
        .I1(\b_seq_reg_n_0_[10] ),
        .I2(i_en),
        .O(\b_seq[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[29]_i_1 
       (.I0(i_b[28]),
        .I1(\b_seq_reg_n_0_[11] ),
        .I2(i_en),
        .O(\b_seq[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[2]_i_1 
       (.I0(i_en),
        .I1(i_b[2]),
        .O(\b_seq[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[30]_i_1 
       (.I0(i_b[29]),
        .I1(\b_seq_reg_n_0_[12] ),
        .I2(i_en),
        .O(\b_seq[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[31]_i_1 
       (.I0(i_b[30]),
        .I1(\b_seq_reg_n_0_[13] ),
        .I2(i_en),
        .O(\b_seq[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[32]_i_1 
       (.I0(i_b[31]),
        .I1(\b_seq_reg_n_0_[14] ),
        .I2(i_en),
        .O(\b_seq[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[33]_i_1 
       (.I0(i_b[32]),
        .I1(\b_seq_reg_n_0_[15] ),
        .I2(i_en),
        .O(\b_seq[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[34]_i_1 
       (.I0(i_b[33]),
        .I1(\b_seq_reg_n_0_[16] ),
        .I2(i_en),
        .O(\b_seq[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[35]_i_1 
       (.I0(i_en),
        .I1(i_b[34]),
        .O(\b_seq[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[36]_i_1 
       (.I0(i_b[0]),
        .I1(\b_seq_reg_n_0_[18] ),
        .I2(i_en),
        .O(\b_seq[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[37]_i_1 
       (.I0(i_b[1]),
        .I1(\b_seq_reg_n_0_[19] ),
        .I2(i_en),
        .O(\b_seq[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[38]_i_1 
       (.I0(i_b[2]),
        .I1(\b_seq_reg_n_0_[20] ),
        .I2(i_en),
        .O(\b_seq[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[39]_i_1 
       (.I0(i_b[3]),
        .I1(\b_seq_reg_n_0_[21] ),
        .I2(i_en),
        .O(\b_seq[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[3]_i_1 
       (.I0(i_en),
        .I1(i_b[3]),
        .O(\b_seq[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[40]_i_1 
       (.I0(i_b[4]),
        .I1(\b_seq_reg_n_0_[22] ),
        .I2(i_en),
        .O(\b_seq[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[41]_i_1 
       (.I0(i_b[5]),
        .I1(\b_seq_reg_n_0_[23] ),
        .I2(i_en),
        .O(\b_seq[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[42]_i_1 
       (.I0(i_b[6]),
        .I1(\b_seq_reg_n_0_[24] ),
        .I2(i_en),
        .O(\b_seq[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[43]_i_1 
       (.I0(i_b[7]),
        .I1(\b_seq_reg_n_0_[25] ),
        .I2(i_en),
        .O(\b_seq[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[44]_i_1 
       (.I0(i_b[8]),
        .I1(\b_seq_reg_n_0_[26] ),
        .I2(i_en),
        .O(\b_seq[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[45]_i_1 
       (.I0(i_b[9]),
        .I1(\b_seq_reg_n_0_[27] ),
        .I2(i_en),
        .O(\b_seq[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[46]_i_1 
       (.I0(i_b[10]),
        .I1(\b_seq_reg_n_0_[28] ),
        .I2(i_en),
        .O(\b_seq[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[47]_i_1 
       (.I0(i_b[11]),
        .I1(\b_seq_reg_n_0_[29] ),
        .I2(i_en),
        .O(\b_seq[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[48]_i_1 
       (.I0(i_b[12]),
        .I1(\b_seq_reg_n_0_[30] ),
        .I2(i_en),
        .O(\b_seq[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[49]_i_1 
       (.I0(i_b[13]),
        .I1(\b_seq_reg_n_0_[31] ),
        .I2(i_en),
        .O(\b_seq[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[4]_i_1 
       (.I0(i_en),
        .I1(i_b[4]),
        .O(\b_seq[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[50]_i_1 
       (.I0(i_b[14]),
        .I1(\b_seq_reg_n_0_[32] ),
        .I2(i_en),
        .O(\b_seq[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[51]_i_1 
       (.I0(i_b[15]),
        .I1(\b_seq_reg_n_0_[33] ),
        .I2(i_en),
        .O(\b_seq[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[52]_i_1 
       (.I0(i_b[16]),
        .I1(\b_seq_reg_n_0_[34] ),
        .I2(i_en),
        .O(\b_seq[52]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_seq[53]_i_1 
       (.I0(\b_seq_reg_n_0_[35] ),
        .I1(i_en),
        .O(\b_seq[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[54]_i_1 
       (.I0(i_b[17]),
        .I1(\b_seq_reg_n_0_[36] ),
        .I2(i_en),
        .O(\b_seq[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[55]_i_1 
       (.I0(i_b[18]),
        .I1(\b_seq_reg_n_0_[37] ),
        .I2(i_en),
        .O(\b_seq[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[56]_i_1 
       (.I0(i_b[19]),
        .I1(\b_seq_reg_n_0_[38] ),
        .I2(i_en),
        .O(\b_seq[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[57]_i_1 
       (.I0(i_b[20]),
        .I1(\b_seq_reg_n_0_[39] ),
        .I2(i_en),
        .O(\b_seq[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[58]_i_1 
       (.I0(i_b[21]),
        .I1(\b_seq_reg_n_0_[40] ),
        .I2(i_en),
        .O(\b_seq[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[59]_i_1 
       (.I0(i_b[22]),
        .I1(\b_seq_reg_n_0_[41] ),
        .I2(i_en),
        .O(\b_seq[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[5]_i_1 
       (.I0(i_en),
        .I1(i_b[5]),
        .O(\b_seq[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[60]_i_1 
       (.I0(i_b[23]),
        .I1(\b_seq_reg_n_0_[42] ),
        .I2(i_en),
        .O(\b_seq[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[61]_i_1 
       (.I0(i_b[24]),
        .I1(\b_seq_reg_n_0_[43] ),
        .I2(i_en),
        .O(\b_seq[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[62]_i_1 
       (.I0(i_b[25]),
        .I1(\b_seq_reg_n_0_[44] ),
        .I2(i_en),
        .O(\b_seq[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[63]_i_1 
       (.I0(i_b[26]),
        .I1(\b_seq_reg_n_0_[45] ),
        .I2(i_en),
        .O(\b_seq[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[64]_i_1 
       (.I0(i_b[27]),
        .I1(\b_seq_reg_n_0_[46] ),
        .I2(i_en),
        .O(\b_seq[64]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[65]_i_1 
       (.I0(i_b[28]),
        .I1(\b_seq_reg_n_0_[47] ),
        .I2(i_en),
        .O(\b_seq[65]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[66]_i_1 
       (.I0(i_b[29]),
        .I1(\b_seq_reg_n_0_[48] ),
        .I2(i_en),
        .O(\b_seq[66]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[67]_i_1 
       (.I0(i_b[30]),
        .I1(\b_seq_reg_n_0_[49] ),
        .I2(i_en),
        .O(\b_seq[67]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[68]_i_1 
       (.I0(i_b[31]),
        .I1(\b_seq_reg_n_0_[50] ),
        .I2(i_en),
        .O(\b_seq[68]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[69]_i_1 
       (.I0(i_b[32]),
        .I1(\b_seq_reg_n_0_[51] ),
        .I2(i_en),
        .O(\b_seq[69]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[6]_i_1 
       (.I0(i_en),
        .I1(i_b[6]),
        .O(\b_seq[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[70]_i_1 
       (.I0(i_b[33]),
        .I1(\b_seq_reg_n_0_[52] ),
        .I2(i_en),
        .O(\b_seq[70]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[71]_i_1 
       (.I0(i_b[34]),
        .I1(\b_seq_reg_n_0_[53] ),
        .I2(i_en),
        .O(\b_seq[71]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[7]_i_1 
       (.I0(i_en),
        .I1(i_b[7]),
        .O(\b_seq[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[8]_i_1 
       (.I0(i_en),
        .I1(i_b[8]),
        .O(\b_seq[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[9]_i_1 
       (.I0(i_en),
        .I1(i_b[9]),
        .O(\b_seq[9]_i_1_n_0 ));
  FDCE \b_seq_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[0]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[0] ));
  FDCE \b_seq_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[10]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[10] ));
  FDCE \b_seq_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[11]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[11] ));
  FDCE \b_seq_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[12]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[12] ));
  FDCE \b_seq_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[13]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[13] ));
  FDCE \b_seq_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[14]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[14] ));
  FDCE \b_seq_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[15]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[15] ));
  FDCE \b_seq_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[16]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[16] ));
  FDCE \b_seq_reg[18] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[18]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[18] ));
  FDCE \b_seq_reg[19] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[19]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[19] ));
  FDCE \b_seq_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[1]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[1] ));
  FDCE \b_seq_reg[20] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[20]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[20] ));
  FDCE \b_seq_reg[21] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[21]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[21] ));
  FDCE \b_seq_reg[22] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[22]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[22] ));
  FDCE \b_seq_reg[23] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[23]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[23] ));
  FDCE \b_seq_reg[24] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[24]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[24] ));
  FDCE \b_seq_reg[25] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[25]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[25] ));
  FDCE \b_seq_reg[26] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[26]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[26] ));
  FDCE \b_seq_reg[27] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[27]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[27] ));
  FDCE \b_seq_reg[28] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[28]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[28] ));
  FDCE \b_seq_reg[29] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[29]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[29] ));
  FDCE \b_seq_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[2]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[2] ));
  FDCE \b_seq_reg[30] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[30]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[30] ));
  FDCE \b_seq_reg[31] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[31]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[31] ));
  FDCE \b_seq_reg[32] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[32]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[32] ));
  FDCE \b_seq_reg[33] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[33]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[33] ));
  FDCE \b_seq_reg[34] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[34]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[34] ));
  FDCE \b_seq_reg[35] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[35]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[35] ));
  FDCE \b_seq_reg[36] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[36]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[36] ));
  FDCE \b_seq_reg[37] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[37]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[37] ));
  FDCE \b_seq_reg[38] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[38]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[38] ));
  FDCE \b_seq_reg[39] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[39]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[39] ));
  FDCE \b_seq_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[3]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[3] ));
  FDCE \b_seq_reg[40] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[40]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[40] ));
  FDCE \b_seq_reg[41] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[41]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[41] ));
  FDCE \b_seq_reg[42] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[42]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[42] ));
  FDCE \b_seq_reg[43] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[43]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[43] ));
  FDCE \b_seq_reg[44] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[44]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[44] ));
  FDCE \b_seq_reg[45] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[45]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[45] ));
  FDCE \b_seq_reg[46] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[46]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[46] ));
  FDCE \b_seq_reg[47] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[47]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[47] ));
  FDCE \b_seq_reg[48] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[48]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[48] ));
  FDCE \b_seq_reg[49] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[49]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[49] ));
  FDCE \b_seq_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[4]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[4] ));
  FDCE \b_seq_reg[50] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[50]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[50] ));
  FDCE \b_seq_reg[51] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[51]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[51] ));
  FDCE \b_seq_reg[52] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[52]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[52] ));
  FDCE \b_seq_reg[53] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[53]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[53] ));
  FDCE \b_seq_reg[54] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[54]_i_1_n_0 ),
        .Q(u_b[0]));
  FDCE \b_seq_reg[55] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[55]_i_1_n_0 ),
        .Q(u_b[1]));
  FDCE \b_seq_reg[56] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[56]_i_1_n_0 ),
        .Q(u_b[2]));
  FDCE \b_seq_reg[57] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[57]_i_1_n_0 ),
        .Q(u_b[3]));
  FDCE \b_seq_reg[58] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[58]_i_1_n_0 ),
        .Q(u_b[4]));
  FDCE \b_seq_reg[59] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[59]_i_1_n_0 ),
        .Q(u_b[5]));
  FDCE \b_seq_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[5]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[5] ));
  FDCE \b_seq_reg[60] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[60]_i_1_n_0 ),
        .Q(u_b[6]));
  FDCE \b_seq_reg[61] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[61]_i_1_n_0 ),
        .Q(u_b[7]));
  FDCE \b_seq_reg[62] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[62]_i_1_n_0 ),
        .Q(u_b[8]));
  FDCE \b_seq_reg[63] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[63]_i_1_n_0 ),
        .Q(u_b[9]));
  FDCE \b_seq_reg[64] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[64]_i_1_n_0 ),
        .Q(u_b[10]));
  FDCE \b_seq_reg[65] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[65]_i_1_n_0 ),
        .Q(u_b[11]));
  FDCE \b_seq_reg[66] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[66]_i_1_n_0 ),
        .Q(u_b[12]));
  FDCE \b_seq_reg[67] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[67]_i_1_n_0 ),
        .Q(u_b[13]));
  FDCE \b_seq_reg[68] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[68]_i_1_n_0 ),
        .Q(u_b[14]));
  FDCE \b_seq_reg[69] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[69]_i_1_n_0 ),
        .Q(u_b[15]));
  FDCE \b_seq_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[6]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[6] ));
  FDCE \b_seq_reg[70] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[70]_i_1_n_0 ),
        .Q(u_b[16]));
  FDCE \b_seq_reg[71] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[71]_i_1_n_0 ),
        .Q(u_b[17]));
  FDCE \b_seq_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[7]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[7] ));
  FDCE \b_seq_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[8]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[8] ));
  FDCE \b_seq_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\b_seq[9]_i_1_n_0 ),
        .Q(\b_seq_reg_n_0_[9] ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[11]_i_2 
       (.I0(in[11]),
        .I1(sel0[1]),
        .I2(o_c[11]),
        .O(\c_acc[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[11]_i_3 
       (.I0(in[10]),
        .I1(sel0[1]),
        .I2(o_c[10]),
        .O(\c_acc[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[11]_i_4 
       (.I0(in[9]),
        .I1(sel0[1]),
        .I2(o_c[9]),
        .O(\c_acc[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[11]_i_5 
       (.I0(in[8]),
        .I1(sel0[1]),
        .I2(o_c[8]),
        .O(\c_acc[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[15]_i_2 
       (.I0(in[15]),
        .I1(sel0[1]),
        .I2(o_c[15]),
        .O(\c_acc[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[15]_i_3 
       (.I0(in[14]),
        .I1(sel0[1]),
        .I2(o_c[14]),
        .O(\c_acc[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[15]_i_4 
       (.I0(in[13]),
        .I1(sel0[1]),
        .I2(o_c[13]),
        .O(\c_acc[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[15]_i_5 
       (.I0(in[12]),
        .I1(sel0[1]),
        .I2(o_c[12]),
        .O(\c_acc[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[19]_i_2 
       (.I0(in[19]),
        .I1(sel0[1]),
        .I2(o_c[19]),
        .O(\c_acc[19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[19]_i_3 
       (.I0(in[18]),
        .I1(sel0[1]),
        .I2(o_c[18]),
        .O(\c_acc[19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[19]_i_4 
       (.I0(in[17]),
        .I1(sel0[1]),
        .I2(o_c[17]),
        .O(\c_acc[19]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[19]_i_5 
       (.I0(in[16]),
        .I1(sel0[1]),
        .I2(o_c[16]),
        .O(\c_acc[19]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[23]_i_2 
       (.I0(in[23]),
        .I1(sel0[1]),
        .I2(o_c[23]),
        .O(\c_acc[23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[23]_i_3 
       (.I0(in[22]),
        .I1(sel0[1]),
        .I2(o_c[22]),
        .O(\c_acc[23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[23]_i_4 
       (.I0(in[21]),
        .I1(sel0[1]),
        .I2(o_c[21]),
        .O(\c_acc[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[23]_i_5 
       (.I0(in[20]),
        .I1(sel0[1]),
        .I2(o_c[20]),
        .O(\c_acc[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[27]_i_2 
       (.I0(in[27]),
        .I1(sel0[1]),
        .I2(o_c[27]),
        .O(\c_acc[27]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[27]_i_3 
       (.I0(in[26]),
        .I1(sel0[1]),
        .I2(o_c[26]),
        .O(\c_acc[27]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[27]_i_4 
       (.I0(in[25]),
        .I1(sel0[1]),
        .I2(o_c[25]),
        .O(\c_acc[27]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[27]_i_5 
       (.I0(in[24]),
        .I1(sel0[1]),
        .I2(o_c[24]),
        .O(\c_acc[27]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[31]_i_2 
       (.I0(in[31]),
        .I1(sel0[1]),
        .I2(o_c[31]),
        .O(\c_acc[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[31]_i_3 
       (.I0(in[30]),
        .I1(sel0[1]),
        .I2(o_c[30]),
        .O(\c_acc[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[31]_i_4 
       (.I0(in[29]),
        .I1(sel0[1]),
        .I2(o_c[29]),
        .O(\c_acc[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[31]_i_5 
       (.I0(in[28]),
        .I1(sel0[1]),
        .I2(o_c[28]),
        .O(\c_acc[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[35]_i_2 
       (.I0(in[35]),
        .I1(sel0[1]),
        .I2(o_c[35]),
        .O(\c_acc[35]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[35]_i_3 
       (.I0(in[34]),
        .I1(sel0[1]),
        .I2(o_c[34]),
        .O(\c_acc[35]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[35]_i_4 
       (.I0(in[33]),
        .I1(sel0[1]),
        .I2(o_c[33]),
        .O(\c_acc[35]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[35]_i_5 
       (.I0(in[32]),
        .I1(sel0[1]),
        .I2(o_c[32]),
        .O(\c_acc[35]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[39]_i_2 
       (.I0(in[39]),
        .I1(sel0[1]),
        .I2(o_c[39]),
        .O(\c_acc[39]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[39]_i_3 
       (.I0(in[38]),
        .I1(sel0[1]),
        .I2(o_c[38]),
        .O(\c_acc[39]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[39]_i_4 
       (.I0(in[37]),
        .I1(sel0[1]),
        .I2(o_c[37]),
        .O(\c_acc[39]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[39]_i_5 
       (.I0(in[36]),
        .I1(sel0[1]),
        .I2(o_c[36]),
        .O(\c_acc[39]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[3]_i_2 
       (.I0(in[3]),
        .I1(sel0[1]),
        .I2(o_c[3]),
        .O(\c_acc[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[3]_i_3 
       (.I0(in[2]),
        .I1(sel0[1]),
        .I2(o_c[2]),
        .O(\c_acc[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[3]_i_4 
       (.I0(in[1]),
        .I1(sel0[1]),
        .I2(o_c[1]),
        .O(\c_acc[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[3]_i_5 
       (.I0(in[0]),
        .I1(sel0[1]),
        .I2(o_c[0]),
        .O(\c_acc[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[43]_i_2 
       (.I0(in[43]),
        .I1(sel0[1]),
        .I2(o_c[43]),
        .O(\c_acc[43]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[43]_i_3 
       (.I0(in[42]),
        .I1(sel0[1]),
        .I2(o_c[42]),
        .O(\c_acc[43]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[43]_i_4 
       (.I0(in[41]),
        .I1(sel0[1]),
        .I2(o_c[41]),
        .O(\c_acc[43]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[43]_i_5 
       (.I0(in[40]),
        .I1(sel0[1]),
        .I2(o_c[40]),
        .O(\c_acc[43]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[47]_i_2 
       (.I0(in[47]),
        .I1(sel0[1]),
        .I2(o_c[47]),
        .O(\c_acc[47]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[47]_i_3 
       (.I0(in[46]),
        .I1(sel0[1]),
        .I2(o_c[46]),
        .O(\c_acc[47]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[47]_i_4 
       (.I0(in[45]),
        .I1(sel0[1]),
        .I2(o_c[45]),
        .O(\c_acc[47]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[47]_i_5 
       (.I0(in[44]),
        .I1(sel0[1]),
        .I2(o_c[44]),
        .O(\c_acc[47]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[51]_i_2 
       (.I0(in[51]),
        .I1(sel0[1]),
        .I2(o_c[51]),
        .O(\c_acc[51]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[51]_i_3 
       (.I0(in[50]),
        .I1(sel0[1]),
        .I2(o_c[50]),
        .O(\c_acc[51]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[51]_i_4 
       (.I0(in[49]),
        .I1(sel0[1]),
        .I2(o_c[49]),
        .O(\c_acc[51]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[51]_i_5 
       (.I0(in[48]),
        .I1(sel0[1]),
        .I2(o_c[48]),
        .O(\c_acc[51]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[55]_i_2 
       (.I0(in[55]),
        .I1(sel0[1]),
        .I2(o_c[55]),
        .O(\c_acc[55]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[55]_i_3 
       (.I0(in[54]),
        .I1(sel0[1]),
        .I2(o_c[54]),
        .O(\c_acc[55]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[55]_i_4 
       (.I0(in[53]),
        .I1(sel0[1]),
        .I2(o_c[53]),
        .O(\c_acc[55]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[55]_i_5 
       (.I0(in[52]),
        .I1(sel0[1]),
        .I2(o_c[52]),
        .O(\c_acc[55]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[59]_i_2 
       (.I0(in[59]),
        .I1(sel0[1]),
        .I2(o_c[59]),
        .O(\c_acc[59]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[59]_i_3 
       (.I0(in[58]),
        .I1(sel0[1]),
        .I2(o_c[58]),
        .O(\c_acc[59]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[59]_i_4 
       (.I0(in[57]),
        .I1(sel0[1]),
        .I2(o_c[57]),
        .O(\c_acc[59]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[59]_i_5 
       (.I0(in[56]),
        .I1(sel0[1]),
        .I2(o_c[56]),
        .O(\c_acc[59]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[63]_i_2 
       (.I0(in[63]),
        .I1(sel0[1]),
        .I2(o_c[63]),
        .O(\c_acc[63]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[63]_i_3 
       (.I0(in[62]),
        .I1(sel0[1]),
        .I2(o_c[62]),
        .O(\c_acc[63]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[63]_i_4 
       (.I0(in[61]),
        .I1(sel0[1]),
        .I2(o_c[61]),
        .O(\c_acc[63]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[63]_i_5 
       (.I0(in[60]),
        .I1(sel0[1]),
        .I2(o_c[60]),
        .O(\c_acc[63]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[67]_i_2 
       (.I0(in[67]),
        .I1(sel0[1]),
        .I2(o_c[67]),
        .O(\c_acc[67]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[67]_i_3 
       (.I0(in[66]),
        .I1(sel0[1]),
        .I2(o_c[66]),
        .O(\c_acc[67]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[67]_i_4 
       (.I0(in[65]),
        .I1(sel0[1]),
        .I2(o_c[65]),
        .O(\c_acc[67]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[67]_i_5 
       (.I0(in[64]),
        .I1(sel0[1]),
        .I2(o_c[64]),
        .O(\c_acc[67]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[68]_i_2 
       (.I0(in[68]),
        .I1(sel0[1]),
        .I2(o_c[68]),
        .O(\c_acc[68]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[7]_i_2 
       (.I0(in[7]),
        .I1(sel0[1]),
        .I2(o_c[7]),
        .O(\c_acc[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[7]_i_3 
       (.I0(in[6]),
        .I1(sel0[1]),
        .I2(o_c[6]),
        .O(\c_acc[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[7]_i_4 
       (.I0(in[5]),
        .I1(sel0[1]),
        .I2(o_c[5]),
        .O(\c_acc[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[7]_i_5 
       (.I0(in[4]),
        .I1(sel0[1]),
        .I2(o_c[4]),
        .O(\c_acc[7]_i_5_n_0 ));
  FDRE \c_acc_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[3]_i_1_n_7 ),
        .Q(o_c[0]),
        .R(1'b0));
  FDRE \c_acc_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[11]_i_1_n_5 ),
        .Q(o_c[10]),
        .R(1'b0));
  FDRE \c_acc_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[11]_i_1_n_4 ),
        .Q(o_c[11]),
        .R(1'b0));
  CARRY4 \c_acc_reg[11]_i_1 
       (.CI(\c_acc_reg[7]_i_1_n_0 ),
        .CO({\c_acc_reg[11]_i_1_n_0 ,\c_acc_reg[11]_i_1_n_1 ,\c_acc_reg[11]_i_1_n_2 ,\c_acc_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[11:8]),
        .O({\c_acc_reg[11]_i_1_n_4 ,\c_acc_reg[11]_i_1_n_5 ,\c_acc_reg[11]_i_1_n_6 ,\c_acc_reg[11]_i_1_n_7 }),
        .S({\c_acc[11]_i_2_n_0 ,\c_acc[11]_i_3_n_0 ,\c_acc[11]_i_4_n_0 ,\c_acc[11]_i_5_n_0 }));
  FDRE \c_acc_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[15]_i_1_n_7 ),
        .Q(o_c[12]),
        .R(1'b0));
  FDRE \c_acc_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[15]_i_1_n_6 ),
        .Q(o_c[13]),
        .R(1'b0));
  FDRE \c_acc_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[15]_i_1_n_5 ),
        .Q(o_c[14]),
        .R(1'b0));
  FDRE \c_acc_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[15]_i_1_n_4 ),
        .Q(o_c[15]),
        .R(1'b0));
  CARRY4 \c_acc_reg[15]_i_1 
       (.CI(\c_acc_reg[11]_i_1_n_0 ),
        .CO({\c_acc_reg[15]_i_1_n_0 ,\c_acc_reg[15]_i_1_n_1 ,\c_acc_reg[15]_i_1_n_2 ,\c_acc_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[15:12]),
        .O({\c_acc_reg[15]_i_1_n_4 ,\c_acc_reg[15]_i_1_n_5 ,\c_acc_reg[15]_i_1_n_6 ,\c_acc_reg[15]_i_1_n_7 }),
        .S({\c_acc[15]_i_2_n_0 ,\c_acc[15]_i_3_n_0 ,\c_acc[15]_i_4_n_0 ,\c_acc[15]_i_5_n_0 }));
  FDRE \c_acc_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[19]_i_1_n_7 ),
        .Q(o_c[16]),
        .R(1'b0));
  FDRE \c_acc_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[19]_i_1_n_6 ),
        .Q(o_c[17]),
        .R(1'b0));
  FDRE \c_acc_reg[18] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[19]_i_1_n_5 ),
        .Q(o_c[18]),
        .R(1'b0));
  FDRE \c_acc_reg[19] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[19]_i_1_n_4 ),
        .Q(o_c[19]),
        .R(1'b0));
  CARRY4 \c_acc_reg[19]_i_1 
       (.CI(\c_acc_reg[15]_i_1_n_0 ),
        .CO({\c_acc_reg[19]_i_1_n_0 ,\c_acc_reg[19]_i_1_n_1 ,\c_acc_reg[19]_i_1_n_2 ,\c_acc_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[19:16]),
        .O({\c_acc_reg[19]_i_1_n_4 ,\c_acc_reg[19]_i_1_n_5 ,\c_acc_reg[19]_i_1_n_6 ,\c_acc_reg[19]_i_1_n_7 }),
        .S({\c_acc[19]_i_2_n_0 ,\c_acc[19]_i_3_n_0 ,\c_acc[19]_i_4_n_0 ,\c_acc[19]_i_5_n_0 }));
  FDRE \c_acc_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[3]_i_1_n_6 ),
        .Q(o_c[1]),
        .R(1'b0));
  FDRE \c_acc_reg[20] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[23]_i_1_n_7 ),
        .Q(o_c[20]),
        .R(1'b0));
  FDRE \c_acc_reg[21] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[23]_i_1_n_6 ),
        .Q(o_c[21]),
        .R(1'b0));
  FDRE \c_acc_reg[22] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[23]_i_1_n_5 ),
        .Q(o_c[22]),
        .R(1'b0));
  FDRE \c_acc_reg[23] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[23]_i_1_n_4 ),
        .Q(o_c[23]),
        .R(1'b0));
  CARRY4 \c_acc_reg[23]_i_1 
       (.CI(\c_acc_reg[19]_i_1_n_0 ),
        .CO({\c_acc_reg[23]_i_1_n_0 ,\c_acc_reg[23]_i_1_n_1 ,\c_acc_reg[23]_i_1_n_2 ,\c_acc_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[23:20]),
        .O({\c_acc_reg[23]_i_1_n_4 ,\c_acc_reg[23]_i_1_n_5 ,\c_acc_reg[23]_i_1_n_6 ,\c_acc_reg[23]_i_1_n_7 }),
        .S({\c_acc[23]_i_2_n_0 ,\c_acc[23]_i_3_n_0 ,\c_acc[23]_i_4_n_0 ,\c_acc[23]_i_5_n_0 }));
  FDRE \c_acc_reg[24] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[27]_i_1_n_7 ),
        .Q(o_c[24]),
        .R(1'b0));
  FDRE \c_acc_reg[25] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[27]_i_1_n_6 ),
        .Q(o_c[25]),
        .R(1'b0));
  FDRE \c_acc_reg[26] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[27]_i_1_n_5 ),
        .Q(o_c[26]),
        .R(1'b0));
  FDRE \c_acc_reg[27] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[27]_i_1_n_4 ),
        .Q(o_c[27]),
        .R(1'b0));
  CARRY4 \c_acc_reg[27]_i_1 
       (.CI(\c_acc_reg[23]_i_1_n_0 ),
        .CO({\c_acc_reg[27]_i_1_n_0 ,\c_acc_reg[27]_i_1_n_1 ,\c_acc_reg[27]_i_1_n_2 ,\c_acc_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[27:24]),
        .O({\c_acc_reg[27]_i_1_n_4 ,\c_acc_reg[27]_i_1_n_5 ,\c_acc_reg[27]_i_1_n_6 ,\c_acc_reg[27]_i_1_n_7 }),
        .S({\c_acc[27]_i_2_n_0 ,\c_acc[27]_i_3_n_0 ,\c_acc[27]_i_4_n_0 ,\c_acc[27]_i_5_n_0 }));
  FDRE \c_acc_reg[28] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[31]_i_1_n_7 ),
        .Q(o_c[28]),
        .R(1'b0));
  FDRE \c_acc_reg[29] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[31]_i_1_n_6 ),
        .Q(o_c[29]),
        .R(1'b0));
  FDRE \c_acc_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[3]_i_1_n_5 ),
        .Q(o_c[2]),
        .R(1'b0));
  FDRE \c_acc_reg[30] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[31]_i_1_n_5 ),
        .Q(o_c[30]),
        .R(1'b0));
  FDRE \c_acc_reg[31] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[31]_i_1_n_4 ),
        .Q(o_c[31]),
        .R(1'b0));
  CARRY4 \c_acc_reg[31]_i_1 
       (.CI(\c_acc_reg[27]_i_1_n_0 ),
        .CO({\c_acc_reg[31]_i_1_n_0 ,\c_acc_reg[31]_i_1_n_1 ,\c_acc_reg[31]_i_1_n_2 ,\c_acc_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[31:28]),
        .O({\c_acc_reg[31]_i_1_n_4 ,\c_acc_reg[31]_i_1_n_5 ,\c_acc_reg[31]_i_1_n_6 ,\c_acc_reg[31]_i_1_n_7 }),
        .S({\c_acc[31]_i_2_n_0 ,\c_acc[31]_i_3_n_0 ,\c_acc[31]_i_4_n_0 ,\c_acc[31]_i_5_n_0 }));
  FDRE \c_acc_reg[32] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[35]_i_1_n_7 ),
        .Q(o_c[32]),
        .R(1'b0));
  FDRE \c_acc_reg[33] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[35]_i_1_n_6 ),
        .Q(o_c[33]),
        .R(1'b0));
  FDRE \c_acc_reg[34] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[35]_i_1_n_5 ),
        .Q(o_c[34]),
        .R(1'b0));
  FDRE \c_acc_reg[35] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[35]_i_1_n_4 ),
        .Q(o_c[35]),
        .R(1'b0));
  CARRY4 \c_acc_reg[35]_i_1 
       (.CI(\c_acc_reg[31]_i_1_n_0 ),
        .CO({\c_acc_reg[35]_i_1_n_0 ,\c_acc_reg[35]_i_1_n_1 ,\c_acc_reg[35]_i_1_n_2 ,\c_acc_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[35:32]),
        .O({\c_acc_reg[35]_i_1_n_4 ,\c_acc_reg[35]_i_1_n_5 ,\c_acc_reg[35]_i_1_n_6 ,\c_acc_reg[35]_i_1_n_7 }),
        .S({\c_acc[35]_i_2_n_0 ,\c_acc[35]_i_3_n_0 ,\c_acc[35]_i_4_n_0 ,\c_acc[35]_i_5_n_0 }));
  FDRE \c_acc_reg[36] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[39]_i_1_n_7 ),
        .Q(o_c[36]),
        .R(1'b0));
  FDRE \c_acc_reg[37] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[39]_i_1_n_6 ),
        .Q(o_c[37]),
        .R(1'b0));
  FDRE \c_acc_reg[38] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[39]_i_1_n_5 ),
        .Q(o_c[38]),
        .R(1'b0));
  FDRE \c_acc_reg[39] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[39]_i_1_n_4 ),
        .Q(o_c[39]),
        .R(1'b0));
  CARRY4 \c_acc_reg[39]_i_1 
       (.CI(\c_acc_reg[35]_i_1_n_0 ),
        .CO({\c_acc_reg[39]_i_1_n_0 ,\c_acc_reg[39]_i_1_n_1 ,\c_acc_reg[39]_i_1_n_2 ,\c_acc_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[39:36]),
        .O({\c_acc_reg[39]_i_1_n_4 ,\c_acc_reg[39]_i_1_n_5 ,\c_acc_reg[39]_i_1_n_6 ,\c_acc_reg[39]_i_1_n_7 }),
        .S({\c_acc[39]_i_2_n_0 ,\c_acc[39]_i_3_n_0 ,\c_acc[39]_i_4_n_0 ,\c_acc[39]_i_5_n_0 }));
  FDRE \c_acc_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[3]_i_1_n_4 ),
        .Q(o_c[3]),
        .R(1'b0));
  CARRY4 \c_acc_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\c_acc_reg[3]_i_1_n_0 ,\c_acc_reg[3]_i_1_n_1 ,\c_acc_reg[3]_i_1_n_2 ,\c_acc_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[3:0]),
        .O({\c_acc_reg[3]_i_1_n_4 ,\c_acc_reg[3]_i_1_n_5 ,\c_acc_reg[3]_i_1_n_6 ,\c_acc_reg[3]_i_1_n_7 }),
        .S({\c_acc[3]_i_2_n_0 ,\c_acc[3]_i_3_n_0 ,\c_acc[3]_i_4_n_0 ,\c_acc[3]_i_5_n_0 }));
  FDRE \c_acc_reg[40] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[43]_i_1_n_7 ),
        .Q(o_c[40]),
        .R(1'b0));
  FDRE \c_acc_reg[41] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[43]_i_1_n_6 ),
        .Q(o_c[41]),
        .R(1'b0));
  FDRE \c_acc_reg[42] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[43]_i_1_n_5 ),
        .Q(o_c[42]),
        .R(1'b0));
  FDRE \c_acc_reg[43] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[43]_i_1_n_4 ),
        .Q(o_c[43]),
        .R(1'b0));
  CARRY4 \c_acc_reg[43]_i_1 
       (.CI(\c_acc_reg[39]_i_1_n_0 ),
        .CO({\c_acc_reg[43]_i_1_n_0 ,\c_acc_reg[43]_i_1_n_1 ,\c_acc_reg[43]_i_1_n_2 ,\c_acc_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[43:40]),
        .O({\c_acc_reg[43]_i_1_n_4 ,\c_acc_reg[43]_i_1_n_5 ,\c_acc_reg[43]_i_1_n_6 ,\c_acc_reg[43]_i_1_n_7 }),
        .S({\c_acc[43]_i_2_n_0 ,\c_acc[43]_i_3_n_0 ,\c_acc[43]_i_4_n_0 ,\c_acc[43]_i_5_n_0 }));
  FDRE \c_acc_reg[44] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[47]_i_1_n_7 ),
        .Q(o_c[44]),
        .R(1'b0));
  FDRE \c_acc_reg[45] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[47]_i_1_n_6 ),
        .Q(o_c[45]),
        .R(1'b0));
  FDRE \c_acc_reg[46] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[47]_i_1_n_5 ),
        .Q(o_c[46]),
        .R(1'b0));
  FDRE \c_acc_reg[47] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[47]_i_1_n_4 ),
        .Q(o_c[47]),
        .R(1'b0));
  CARRY4 \c_acc_reg[47]_i_1 
       (.CI(\c_acc_reg[43]_i_1_n_0 ),
        .CO({\c_acc_reg[47]_i_1_n_0 ,\c_acc_reg[47]_i_1_n_1 ,\c_acc_reg[47]_i_1_n_2 ,\c_acc_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[47:44]),
        .O({\c_acc_reg[47]_i_1_n_4 ,\c_acc_reg[47]_i_1_n_5 ,\c_acc_reg[47]_i_1_n_6 ,\c_acc_reg[47]_i_1_n_7 }),
        .S({\c_acc[47]_i_2_n_0 ,\c_acc[47]_i_3_n_0 ,\c_acc[47]_i_4_n_0 ,\c_acc[47]_i_5_n_0 }));
  FDRE \c_acc_reg[48] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[51]_i_1_n_7 ),
        .Q(o_c[48]),
        .R(1'b0));
  FDRE \c_acc_reg[49] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[51]_i_1_n_6 ),
        .Q(o_c[49]),
        .R(1'b0));
  FDRE \c_acc_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[7]_i_1_n_7 ),
        .Q(o_c[4]),
        .R(1'b0));
  FDRE \c_acc_reg[50] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[51]_i_1_n_5 ),
        .Q(o_c[50]),
        .R(1'b0));
  FDRE \c_acc_reg[51] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[51]_i_1_n_4 ),
        .Q(o_c[51]),
        .R(1'b0));
  CARRY4 \c_acc_reg[51]_i_1 
       (.CI(\c_acc_reg[47]_i_1_n_0 ),
        .CO({\c_acc_reg[51]_i_1_n_0 ,\c_acc_reg[51]_i_1_n_1 ,\c_acc_reg[51]_i_1_n_2 ,\c_acc_reg[51]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[51:48]),
        .O({\c_acc_reg[51]_i_1_n_4 ,\c_acc_reg[51]_i_1_n_5 ,\c_acc_reg[51]_i_1_n_6 ,\c_acc_reg[51]_i_1_n_7 }),
        .S({\c_acc[51]_i_2_n_0 ,\c_acc[51]_i_3_n_0 ,\c_acc[51]_i_4_n_0 ,\c_acc[51]_i_5_n_0 }));
  FDRE \c_acc_reg[52] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[55]_i_1_n_7 ),
        .Q(o_c[52]),
        .R(1'b0));
  FDRE \c_acc_reg[53] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[55]_i_1_n_6 ),
        .Q(o_c[53]),
        .R(1'b0));
  FDRE \c_acc_reg[54] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[55]_i_1_n_5 ),
        .Q(o_c[54]),
        .R(1'b0));
  FDRE \c_acc_reg[55] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[55]_i_1_n_4 ),
        .Q(o_c[55]),
        .R(1'b0));
  CARRY4 \c_acc_reg[55]_i_1 
       (.CI(\c_acc_reg[51]_i_1_n_0 ),
        .CO({\c_acc_reg[55]_i_1_n_0 ,\c_acc_reg[55]_i_1_n_1 ,\c_acc_reg[55]_i_1_n_2 ,\c_acc_reg[55]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[55:52]),
        .O({\c_acc_reg[55]_i_1_n_4 ,\c_acc_reg[55]_i_1_n_5 ,\c_acc_reg[55]_i_1_n_6 ,\c_acc_reg[55]_i_1_n_7 }),
        .S({\c_acc[55]_i_2_n_0 ,\c_acc[55]_i_3_n_0 ,\c_acc[55]_i_4_n_0 ,\c_acc[55]_i_5_n_0 }));
  FDRE \c_acc_reg[56] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[59]_i_1_n_7 ),
        .Q(o_c[56]),
        .R(1'b0));
  FDRE \c_acc_reg[57] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[59]_i_1_n_6 ),
        .Q(o_c[57]),
        .R(1'b0));
  FDRE \c_acc_reg[58] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[59]_i_1_n_5 ),
        .Q(o_c[58]),
        .R(1'b0));
  FDRE \c_acc_reg[59] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[59]_i_1_n_4 ),
        .Q(o_c[59]),
        .R(1'b0));
  CARRY4 \c_acc_reg[59]_i_1 
       (.CI(\c_acc_reg[55]_i_1_n_0 ),
        .CO({\c_acc_reg[59]_i_1_n_0 ,\c_acc_reg[59]_i_1_n_1 ,\c_acc_reg[59]_i_1_n_2 ,\c_acc_reg[59]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[59:56]),
        .O({\c_acc_reg[59]_i_1_n_4 ,\c_acc_reg[59]_i_1_n_5 ,\c_acc_reg[59]_i_1_n_6 ,\c_acc_reg[59]_i_1_n_7 }),
        .S({\c_acc[59]_i_2_n_0 ,\c_acc[59]_i_3_n_0 ,\c_acc[59]_i_4_n_0 ,\c_acc[59]_i_5_n_0 }));
  FDRE \c_acc_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[7]_i_1_n_6 ),
        .Q(o_c[5]),
        .R(1'b0));
  FDRE \c_acc_reg[60] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[63]_i_1_n_7 ),
        .Q(o_c[60]),
        .R(1'b0));
  FDRE \c_acc_reg[61] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[63]_i_1_n_6 ),
        .Q(o_c[61]),
        .R(1'b0));
  FDRE \c_acc_reg[62] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[63]_i_1_n_5 ),
        .Q(o_c[62]),
        .R(1'b0));
  FDRE \c_acc_reg[63] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[63]_i_1_n_4 ),
        .Q(o_c[63]),
        .R(1'b0));
  CARRY4 \c_acc_reg[63]_i_1 
       (.CI(\c_acc_reg[59]_i_1_n_0 ),
        .CO({\c_acc_reg[63]_i_1_n_0 ,\c_acc_reg[63]_i_1_n_1 ,\c_acc_reg[63]_i_1_n_2 ,\c_acc_reg[63]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[63:60]),
        .O({\c_acc_reg[63]_i_1_n_4 ,\c_acc_reg[63]_i_1_n_5 ,\c_acc_reg[63]_i_1_n_6 ,\c_acc_reg[63]_i_1_n_7 }),
        .S({\c_acc[63]_i_2_n_0 ,\c_acc[63]_i_3_n_0 ,\c_acc[63]_i_4_n_0 ,\c_acc[63]_i_5_n_0 }));
  FDRE \c_acc_reg[64] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[67]_i_1_n_7 ),
        .Q(o_c[64]),
        .R(1'b0));
  FDRE \c_acc_reg[65] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[67]_i_1_n_6 ),
        .Q(o_c[65]),
        .R(1'b0));
  FDRE \c_acc_reg[66] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[67]_i_1_n_5 ),
        .Q(o_c[66]),
        .R(1'b0));
  FDRE \c_acc_reg[67] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[67]_i_1_n_4 ),
        .Q(o_c[67]),
        .R(1'b0));
  CARRY4 \c_acc_reg[67]_i_1 
       (.CI(\c_acc_reg[63]_i_1_n_0 ),
        .CO({\c_acc_reg[67]_i_1_n_0 ,\c_acc_reg[67]_i_1_n_1 ,\c_acc_reg[67]_i_1_n_2 ,\c_acc_reg[67]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[67:64]),
        .O({\c_acc_reg[67]_i_1_n_4 ,\c_acc_reg[67]_i_1_n_5 ,\c_acc_reg[67]_i_1_n_6 ,\c_acc_reg[67]_i_1_n_7 }),
        .S({\c_acc[67]_i_2_n_0 ,\c_acc[67]_i_3_n_0 ,\c_acc[67]_i_4_n_0 ,\c_acc[67]_i_5_n_0 }));
  FDRE \c_acc_reg[68] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[68]_i_1_n_7 ),
        .Q(o_c[68]),
        .R(1'b0));
  CARRY4 \c_acc_reg[68]_i_1 
       (.CI(\c_acc_reg[67]_i_1_n_0 ),
        .CO(\NLW_c_acc_reg[68]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_c_acc_reg[68]_i_1_O_UNCONNECTED [3:1],\c_acc_reg[68]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\c_acc[68]_i_2_n_0 }));
  FDRE \c_acc_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[7]_i_1_n_5 ),
        .Q(o_c[6]),
        .R(1'b0));
  FDRE \c_acc_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[7]_i_1_n_4 ),
        .Q(o_c[7]),
        .R(1'b0));
  CARRY4 \c_acc_reg[7]_i_1 
       (.CI(\c_acc_reg[3]_i_1_n_0 ),
        .CO({\c_acc_reg[7]_i_1_n_0 ,\c_acc_reg[7]_i_1_n_1 ,\c_acc_reg[7]_i_1_n_2 ,\c_acc_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[7:4]),
        .O({\c_acc_reg[7]_i_1_n_4 ,\c_acc_reg[7]_i_1_n_5 ,\c_acc_reg[7]_i_1_n_6 ,\c_acc_reg[7]_i_1_n_7 }),
        .S({\c_acc[7]_i_2_n_0 ,\c_acc[7]_i_3_n_0 ,\c_acc[7]_i_4_n_0 ,\c_acc[7]_i_5_n_0 }));
  FDRE \c_acc_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[11]_i_1_n_7 ),
        .Q(o_c[8]),
        .R(1'b0));
  FDRE \c_acc_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[11]_i_1_n_6 ),
        .Q(o_c[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \c_in[16]_i_1 
       (.I0(sel0[3]),
        .I1(\c_in[50]_i_3_n_0 ),
        .O(\c_in[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    \c_in[50]_i_3 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .O(\c_in[50]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_in[50]_i_4 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(\c_in[50]_i_3_n_0 ),
        .O(\c_in[50]_i_4_n_0 ));
  FDRE \c_in_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_16),
        .Q(in[0]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_6),
        .Q(in[10]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_5),
        .Q(in[11]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_4),
        .Q(in[12]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_3),
        .Q(in[13]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_2),
        .Q(in[14]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_1),
        .Q(in[15]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_0),
        .Q(in[16]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[17]),
        .Q(in[17]),
        .R(1'b0));
  FDRE \c_in_reg[18] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[18]),
        .Q(in[18]),
        .R(1'b0));
  FDRE \c_in_reg[19] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[19]),
        .Q(in[19]),
        .R(1'b0));
  FDRE \c_in_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_15),
        .Q(in[1]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[20] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[20]),
        .Q(in[20]),
        .R(1'b0));
  FDRE \c_in_reg[21] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[21]),
        .Q(in[21]),
        .R(1'b0));
  FDRE \c_in_reg[22] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[22]),
        .Q(in[22]),
        .R(1'b0));
  FDRE \c_in_reg[23] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[23]),
        .Q(in[23]),
        .R(1'b0));
  FDRE \c_in_reg[24] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[24]),
        .Q(in[24]),
        .R(1'b0));
  FDRE \c_in_reg[25] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[25]),
        .Q(in[25]),
        .R(1'b0));
  FDRE \c_in_reg[26] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[26]),
        .Q(in[26]),
        .R(1'b0));
  FDRE \c_in_reg[27] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[27]),
        .Q(in[27]),
        .R(1'b0));
  FDRE \c_in_reg[28] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[28]),
        .Q(in[28]),
        .R(1'b0));
  FDRE \c_in_reg[29] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[29]),
        .Q(in[29]),
        .R(1'b0));
  FDRE \c_in_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_14),
        .Q(in[2]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[30] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[30]),
        .Q(in[30]),
        .R(1'b0));
  FDRE \c_in_reg[31] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[31]),
        .Q(in[31]),
        .R(1'b0));
  FDRE \c_in_reg[32] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[32]),
        .Q(in[32]),
        .R(1'b0));
  FDRE \c_in_reg[33] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[33]),
        .Q(in[33]),
        .R(1'b0));
  FDRE \c_in_reg[34] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[34]),
        .Q(in[34]),
        .R(1'b0));
  FDRE \c_in_reg[35] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[35]),
        .Q(in[35]),
        .R(1'b0));
  FDRE \c_in_reg[36] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[36]),
        .Q(in[36]),
        .R(1'b0));
  FDRE \c_in_reg[37] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[37]),
        .Q(in[37]),
        .R(1'b0));
  FDRE \c_in_reg[38] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[38]),
        .Q(in[38]),
        .R(1'b0));
  FDRE \c_in_reg[39] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[39]),
        .Q(in[39]),
        .R(1'b0));
  FDRE \c_in_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_13),
        .Q(in[3]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[40] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[40]),
        .Q(in[40]),
        .R(1'b0));
  FDRE \c_in_reg[41] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[41]),
        .Q(in[41]),
        .R(1'b0));
  FDRE \c_in_reg[42] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[42]),
        .Q(in[42]),
        .R(1'b0));
  FDRE \c_in_reg[43] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[43]),
        .Q(in[43]),
        .R(1'b0));
  FDRE \c_in_reg[44] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[44]),
        .Q(in[44]),
        .R(1'b0));
  FDRE \c_in_reg[45] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[45]),
        .Q(in[45]),
        .R(1'b0));
  FDRE \c_in_reg[46] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[46]),
        .Q(in[46]),
        .R(1'b0));
  FDRE \c_in_reg[47] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[47]),
        .Q(in[47]),
        .R(1'b0));
  FDRE \c_in_reg[48] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[48]),
        .Q(in[48]),
        .R(1'b0));
  FDRE \c_in_reg[49] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[49]),
        .Q(in[49]),
        .R(1'b0));
  FDRE \c_in_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_12),
        .Q(in[4]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[50] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[50]),
        .Q(in[50]),
        .R(1'b0));
  FDSE \c_in_reg[51] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_52),
        .Q(in[51]),
        .S(u_dsp48_mul_ip_n_51));
  FDSE \c_in_reg[52] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_53),
        .Q(in[52]),
        .S(u_dsp48_mul_ip_n_51));
  FDSE \c_in_reg[53] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_54),
        .Q(in[53]),
        .S(u_dsp48_mul_ip_n_51));
  FDSE \c_in_reg[54] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_55),
        .Q(in[54]),
        .S(u_dsp48_mul_ip_n_51));
  FDSE \c_in_reg[55] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_56),
        .Q(in[55]),
        .S(u_dsp48_mul_ip_n_51));
  FDSE \c_in_reg[56] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_57),
        .Q(in[56]),
        .S(u_dsp48_mul_ip_n_51));
  FDSE \c_in_reg[57] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_58),
        .Q(in[57]),
        .S(u_dsp48_mul_ip_n_51));
  FDSE \c_in_reg[58] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_59),
        .Q(in[58]),
        .S(u_dsp48_mul_ip_n_51));
  FDSE \c_in_reg[59] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_60),
        .Q(in[59]),
        .S(u_dsp48_mul_ip_n_51));
  FDRE \c_in_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_11),
        .Q(in[5]),
        .R(\c_in[16]_i_1_n_0 ));
  FDSE \c_in_reg[60] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_61),
        .Q(in[60]),
        .S(u_dsp48_mul_ip_n_51));
  FDSE \c_in_reg[61] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_62),
        .Q(in[61]),
        .S(u_dsp48_mul_ip_n_51));
  FDSE \c_in_reg[62] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_63),
        .Q(in[62]),
        .S(u_dsp48_mul_ip_n_51));
  FDSE \c_in_reg[63] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_64),
        .Q(in[63]),
        .S(u_dsp48_mul_ip_n_51));
  FDSE \c_in_reg[64] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_65),
        .Q(in[64]),
        .S(u_dsp48_mul_ip_n_51));
  FDSE \c_in_reg[65] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_66),
        .Q(in[65]),
        .S(u_dsp48_mul_ip_n_51));
  FDSE \c_in_reg[66] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_67),
        .Q(in[66]),
        .S(u_dsp48_mul_ip_n_51));
  FDSE \c_in_reg[67] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_68),
        .Q(in[67]),
        .S(u_dsp48_mul_ip_n_51));
  FDSE \c_in_reg[68] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_69),
        .Q(in[68]),
        .S(u_dsp48_mul_ip_n_51));
  FDRE \c_in_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_10),
        .Q(in[6]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_9),
        .Q(in[7]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_8),
        .Q(in[8]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_7),
        .Q(in[9]),
        .R(\c_in[16]_i_1_n_0 ));
  FDCE \en_buf_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(i_en),
        .Q(\en_buf_reg_n_0_[0] ));
  FDCE \en_buf_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\en_buf_reg_n_0_[0] ),
        .Q(\en_buf_reg_n_0_[1] ));
  FDCE \en_buf_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\en_buf_reg_n_0_[1] ),
        .Q(sel0[0]));
  FDCE \en_buf_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(sel0[0]),
        .Q(sel0[1]));
  FDCE \en_buf_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(sel0[1]),
        .Q(sel0[2]));
  FDCE \en_buf_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(sel0[2]),
        .Q(sel0[3]));
  FDCE \en_buf_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(sel0[3]),
        .Q(\en_buf_reg_n_0_[6] ));
  FDCE \en_buf_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\en_buf_reg_n_0_[6] ),
        .Q(o_c_en));
  multiplier_35_1dsp_ip_dsp48_mul_ip u_dsp48_mul_ip
       (.D(c_in),
        .P({u_dsp48_mul_ip_n_0,u_dsp48_mul_ip_n_1,u_dsp48_mul_ip_n_2,u_dsp48_mul_ip_n_3,u_dsp48_mul_ip_n_4,u_dsp48_mul_ip_n_5,u_dsp48_mul_ip_n_6,u_dsp48_mul_ip_n_7,u_dsp48_mul_ip_n_8,u_dsp48_mul_ip_n_9,u_dsp48_mul_ip_n_10,u_dsp48_mul_ip_n_11,u_dsp48_mul_ip_n_12,u_dsp48_mul_ip_n_13,u_dsp48_mul_ip_n_14,u_dsp48_mul_ip_n_15,u_dsp48_mul_ip_n_16}),
        .Q(u_a),
        .\b_seq_reg[71] (u_b),
        .\c_in_reg[51] (u_dsp48_mul_ip_n_51),
        .\c_in_reg[51]_0 (u_dsp48_mul_ip_n_52),
        .\c_in_reg[52] (u_dsp48_mul_ip_n_53),
        .\c_in_reg[53] (u_dsp48_mul_ip_n_54),
        .\c_in_reg[54] (u_dsp48_mul_ip_n_55),
        .\c_in_reg[55] (u_dsp48_mul_ip_n_56),
        .\c_in_reg[56] (u_dsp48_mul_ip_n_57),
        .\c_in_reg[57] (u_dsp48_mul_ip_n_58),
        .\c_in_reg[58] (u_dsp48_mul_ip_n_59),
        .\c_in_reg[59] (u_dsp48_mul_ip_n_60),
        .\c_in_reg[60] (u_dsp48_mul_ip_n_61),
        .\c_in_reg[61] (u_dsp48_mul_ip_n_62),
        .\c_in_reg[62] (u_dsp48_mul_ip_n_63),
        .\c_in_reg[63] (u_dsp48_mul_ip_n_64),
        .\c_in_reg[64] (u_dsp48_mul_ip_n_65),
        .\c_in_reg[65] (u_dsp48_mul_ip_n_66),
        .\c_in_reg[66] (u_dsp48_mul_ip_n_67),
        .\c_in_reg[67] (u_dsp48_mul_ip_n_68),
        .\c_in_reg[68] (u_dsp48_mul_ip_n_69),
        .\en_buf_reg[2] (\c_in[50]_i_3_n_0 ),
        .\en_buf_reg[4] (\c_in[50]_i_4_n_0 ),
        .\en_buf_reg[5] (sel0),
        .i_clk(i_clk));
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
module multiplier_35_1dsp_ip_xbip_dsp48_macro_v3_0
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
  multiplier_35_1dsp_ip_xbip_dsp48_macro_v3_0_viv i_synth
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
D0i7VB0DCUaVDKvrJGUBwvLsnYL7SXeC/s22FYBKZWx27NxEqjql4qRQufYCFb/T/DG6IEFpvYvV
PTivvwwSn0GdON6E1x1DVJU9ZB4PqqB3EynA1NjZt48cqnu4E8YXRw/2HM4hBXIsiC5BQaA9hN6U
ypJBJY8pamve3HJjJJZclhSxh9OFHCFM5fpX1Y/QOvUBJF3QHYARBYiw5UJDV6+G3L8WGze6MkBp
vCDIoSmD3vfN1QjTIfF7pyh9aVH/CQUjT8q//PYyTL6bkx/4x3/+6vP1mLeCtq/SAa894ZYtdR2f
ZJGXulAn9sULchsC2U/xppU3UxXY72qBhggm4Q==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
bXbNXeIm5Es+XtgFxPpvsqjtPJVW+UWR4pVmyEK2W4y4gFo9bLTWCG2zm/x7RQ9/+rGdNfckclmG
tHRBVqN5GIrXJJ5AZg4GvldzuYSmTjHEus8U0FVhVLwpe0SIs+BqrvSPFcFHbkosXorHjHLu3MQ6
fujsVrIuu+bd65+aXUAkyJQ6ndu63+04kLYu0l/B4PcYMyagQUnnLVtLaZBjiIEAziaUz7HrDTxY
o+CuqMANze+GkKg0a8qCHQgjgJ7azr1T6T4tdk7aVoC6OvmnXv/ggSTMSYBfghDLzZy9y8EhPEFD
LHCcMkcEkBdrv98s4/V6X4Da/nyacy3jnfSlsg==


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
D0i7VB0DCUaVDKvrJGUBwvLsnYL7SXeC/s22FYBKZWx27NxEqjql4qRQufYCFb/T/DG6IEFpvYvV
PTivvwwSn0GdON6E1x1DVJU9ZB4PqqB3EynA1NjZt48cqnu4E8YXRw/2HM4hBXIsiC5BQaA9hN6U
ypJBJY8pamve3HJjJJZclhSxh9OFHCFM5fpX1Y/QOvUBJF3QHYARBYiw5UJDV6+G3L8WGze6MkBp
vCDIoSmD3vfN1QjTIfF7pyh9aVH/CQUjT8q//PYyTL6bkx/4x3/+6vP1mLeCtq/SAa894ZYtdR2f
ZJGXulAn9sULchsC2U/xppU3UxXY72qBhggm4Q==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
bXbNXeIm5Es+XtgFxPpvsqjtPJVW+UWR4pVmyEK2W4y4gFo9bLTWCG2zm/x7RQ9/+rGdNfckclmG
tHRBVqN5GIrXJJ5AZg4GvldzuYSmTjHEus8U0FVhVLwpe0SIs+BqrvSPFcFHbkosXorHjHLu3MQ6
fujsVrIuu+bd65+aXUAkyJQ6ndu63+04kLYu0l/B4PcYMyagQUnnLVtLaZBjiIEAziaUz7HrDTxY
o+CuqMANze+GkKg0a8qCHQgjgJ7azr1T6T4tdk7aVoC6OvmnXv/ggSTMSYBfghDLzZy9y8EhPEFD
LHCcMkcEkBdrv98s4/V6X4Da/nyacy3jnfSlsg==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5568)
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
