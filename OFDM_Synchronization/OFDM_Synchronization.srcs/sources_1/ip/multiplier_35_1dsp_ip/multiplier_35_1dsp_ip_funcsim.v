// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Wed Feb 08 11:25:08 2017
// Host        : FUTURE3 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/multiplier_35_1dsp_ip/multiplier_35_1dsp_ip_funcsim.v
// Design      : multiplier_35_1dsp_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier_35_1dsp_ip,multiplier_35_1dsp,{}" *) (* CORE_GENERATION_INFO = "multiplier_35_1dsp_ip,multiplier_35_1dsp,{x_ipProduct=Vivado 2015.2.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=multiplier_35_1dsp,x_ipVersion=1.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
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
   (D,
    i_clk,
    Q,
    \b_seq_reg[71] ,
    \en_buf_reg[5] ,
    \en_buf_reg[2] ,
    \en_buf_reg[4] );
  output [68:0]D;
  input i_clk;
  input [17:0]Q;
  input [17:0]\b_seq_reg[71] ;
  input [3:0]\en_buf_reg[5] ;
  input \en_buf_reg[2] ;
  input \en_buf_reg[4] ;

  wire [68:0]D;
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
  wire U0_n_129;
  wire U0_n_130;
  wire U0_n_131;
  wire U0_n_132;
  wire U0_n_133;
  wire U0_n_134;
  wire U0_n_135;
  wire U0_n_136;
  wire U0_n_137;
  wire U0_n_138;
  wire U0_n_139;
  wire U0_n_140;
  wire U0_n_141;
  wire U0_n_142;
  wire U0_n_143;
  wire U0_n_144;
  wire U0_n_145;
  wire U0_n_98;
  wire U0_n_99;
  wire [17:0]\b_seq_reg[71] ;
  wire \c_in[50]_i_2_n_0 ;
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
        .P({U0_n_98,U0_n_99,U0_n_100,U0_n_101,U0_n_102,U0_n_103,U0_n_104,U0_n_105,U0_n_106,U0_n_107,U0_n_108,U0_n_109,U0_n_110,U0_n_111,U0_n_112,U0_n_113,U0_n_114,U0_n_115,U0_n_116,U0_n_117,U0_n_118,U0_n_119,U0_n_120,U0_n_121,U0_n_122,U0_n_123,U0_n_124,U0_n_125,U0_n_126,U0_n_127,U0_n_128,U0_n_129,U0_n_130,U0_n_131,U0_n_132,U0_n_133,U0_n_134,U0_n_135,U0_n_136,U0_n_137,U0_n_138,U0_n_139,U0_n_140,U0_n_141,U0_n_142,U0_n_143,U0_n_144,U0_n_145}),
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[0]_i_1 
       (.I0(\en_buf_reg[5] [3]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_145),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[10]_i_1 
       (.I0(\en_buf_reg[5] [3]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_135),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[11]_i_1 
       (.I0(\en_buf_reg[5] [3]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_134),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[12]_i_1 
       (.I0(\en_buf_reg[5] [3]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_133),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[13]_i_1 
       (.I0(\en_buf_reg[5] [3]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_132),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[14]_i_1 
       (.I0(\en_buf_reg[5] [3]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_131),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[15]_i_1 
       (.I0(\en_buf_reg[5] [3]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_130),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[16]_i_1 
       (.I0(\en_buf_reg[5] [3]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_129),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[17]_i_1 
       (.I0(U0_n_145),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_128),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[18]_i_1 
       (.I0(U0_n_144),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_127),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[19]_i_1 
       (.I0(U0_n_143),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_126),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[1]_i_1 
       (.I0(\en_buf_reg[5] [3]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_144),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[20]_i_1 
       (.I0(U0_n_142),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_125),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[21]_i_1 
       (.I0(U0_n_141),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_124),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[22]_i_1 
       (.I0(U0_n_140),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_123),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[23]_i_1 
       (.I0(U0_n_139),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_122),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[24]_i_1 
       (.I0(U0_n_138),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_121),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[25]_i_1 
       (.I0(U0_n_137),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_120),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[26]_i_1 
       (.I0(U0_n_136),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_119),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[27]_i_1 
       (.I0(U0_n_135),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_118),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[28]_i_1 
       (.I0(U0_n_134),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_117),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[29]_i_1 
       (.I0(U0_n_133),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_116),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[2]_i_1 
       (.I0(\en_buf_reg[5] [3]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_143),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[30]_i_1 
       (.I0(U0_n_132),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_115),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[31]_i_1 
       (.I0(U0_n_131),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_114),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[31]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[32]_i_1 
       (.I0(U0_n_130),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_113),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[32]));
  LUT6 #(
    .INIT(64'hFFA80000A8A80000)) 
    \c_in[33]_i_1 
       (.I0(U0_n_129),
        .I1(\en_buf_reg[5] [2]),
        .I2(\en_buf_reg[5] [1]),
        .I3(U0_n_112),
        .I4(\en_buf_reg[2] ),
        .I5(\en_buf_reg[5] [3]),
        .O(D[33]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[34]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(U0_n_145),
        .I4(U0_n_128),
        .I5(\en_buf_reg[4] ),
        .O(D[34]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[35]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(U0_n_144),
        .I4(U0_n_127),
        .I5(\en_buf_reg[4] ),
        .O(D[35]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[36]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(U0_n_143),
        .I4(U0_n_126),
        .I5(\en_buf_reg[4] ),
        .O(D[36]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[37]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(U0_n_142),
        .I4(U0_n_125),
        .I5(\en_buf_reg[4] ),
        .O(D[37]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[38]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(U0_n_141),
        .I4(U0_n_124),
        .I5(\en_buf_reg[4] ),
        .O(D[38]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[39]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(U0_n_140),
        .I4(U0_n_123),
        .I5(\en_buf_reg[4] ),
        .O(D[39]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[3]_i_1 
       (.I0(\en_buf_reg[5] [3]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_142),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[40]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(U0_n_139),
        .I4(U0_n_122),
        .I5(\en_buf_reg[4] ),
        .O(D[40]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[41]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(U0_n_138),
        .I4(U0_n_121),
        .I5(\en_buf_reg[4] ),
        .O(D[41]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[42]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(U0_n_137),
        .I4(U0_n_120),
        .I5(\en_buf_reg[4] ),
        .O(D[42]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[43]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(U0_n_136),
        .I4(U0_n_119),
        .I5(\en_buf_reg[4] ),
        .O(D[43]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[44]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(U0_n_135),
        .I4(U0_n_118),
        .I5(\en_buf_reg[4] ),
        .O(D[44]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[45]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(U0_n_134),
        .I4(U0_n_117),
        .I5(\en_buf_reg[4] ),
        .O(D[45]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[46]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(U0_n_133),
        .I4(U0_n_116),
        .I5(\en_buf_reg[4] ),
        .O(D[46]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[47]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(U0_n_132),
        .I4(U0_n_115),
        .I5(\en_buf_reg[4] ),
        .O(D[47]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[48]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(U0_n_131),
        .I4(U0_n_114),
        .I5(\en_buf_reg[4] ),
        .O(D[48]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[49]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(U0_n_130),
        .I4(U0_n_113),
        .I5(\en_buf_reg[4] ),
        .O(D[49]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[4]_i_1 
       (.I0(\en_buf_reg[5] [3]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_141),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \c_in[50]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[2] ),
        .I3(U0_n_129),
        .I4(U0_n_112),
        .I5(\en_buf_reg[4] ),
        .O(D[50]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[50]_i_2 
       (.I0(\en_buf_reg[5] [3]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_111),
        .O(\c_in[50]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8800F8008800)) 
    \c_in[51]_i_1 
       (.I0(U0_n_128),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[5] [3]),
        .I3(\en_buf_reg[2] ),
        .I4(U0_n_111),
        .I5(\en_buf_reg[4] ),
        .O(D[51]));
  LUT6 #(
    .INIT(64'hFFFF8800F8008800)) 
    \c_in[52]_i_1 
       (.I0(U0_n_127),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[5] [3]),
        .I3(\en_buf_reg[2] ),
        .I4(U0_n_111),
        .I5(\en_buf_reg[4] ),
        .O(D[52]));
  LUT6 #(
    .INIT(64'hFFFF8800F8008800)) 
    \c_in[53]_i_1 
       (.I0(U0_n_126),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[5] [3]),
        .I3(\en_buf_reg[2] ),
        .I4(U0_n_111),
        .I5(\en_buf_reg[4] ),
        .O(D[53]));
  LUT6 #(
    .INIT(64'hFFFF8800F8008800)) 
    \c_in[54]_i_1 
       (.I0(U0_n_125),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[5] [3]),
        .I3(\en_buf_reg[2] ),
        .I4(U0_n_111),
        .I5(\en_buf_reg[4] ),
        .O(D[54]));
  LUT6 #(
    .INIT(64'hFFFF8800F8008800)) 
    \c_in[55]_i_1 
       (.I0(U0_n_124),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[5] [3]),
        .I3(\en_buf_reg[2] ),
        .I4(U0_n_111),
        .I5(\en_buf_reg[4] ),
        .O(D[55]));
  LUT6 #(
    .INIT(64'hFFFF8800F8008800)) 
    \c_in[56]_i_1 
       (.I0(U0_n_123),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[5] [3]),
        .I3(\en_buf_reg[2] ),
        .I4(U0_n_111),
        .I5(\en_buf_reg[4] ),
        .O(D[56]));
  LUT6 #(
    .INIT(64'hFFFF8800F8008800)) 
    \c_in[57]_i_1 
       (.I0(U0_n_122),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[5] [3]),
        .I3(\en_buf_reg[2] ),
        .I4(U0_n_111),
        .I5(\en_buf_reg[4] ),
        .O(D[57]));
  LUT6 #(
    .INIT(64'hFFFF8800F8008800)) 
    \c_in[58]_i_1 
       (.I0(U0_n_121),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[5] [3]),
        .I3(\en_buf_reg[2] ),
        .I4(U0_n_111),
        .I5(\en_buf_reg[4] ),
        .O(D[58]));
  LUT6 #(
    .INIT(64'hFFFF8800F8008800)) 
    \c_in[59]_i_1 
       (.I0(U0_n_120),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[5] [3]),
        .I3(\en_buf_reg[2] ),
        .I4(U0_n_111),
        .I5(\en_buf_reg[4] ),
        .O(D[59]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[5]_i_1 
       (.I0(\en_buf_reg[5] [3]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_140),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFF8800F8008800)) 
    \c_in[60]_i_1 
       (.I0(U0_n_119),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[5] [3]),
        .I3(\en_buf_reg[2] ),
        .I4(U0_n_111),
        .I5(\en_buf_reg[4] ),
        .O(D[60]));
  LUT6 #(
    .INIT(64'hFFFF8800F8008800)) 
    \c_in[61]_i_1 
       (.I0(U0_n_118),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[5] [3]),
        .I3(\en_buf_reg[2] ),
        .I4(U0_n_111),
        .I5(\en_buf_reg[4] ),
        .O(D[61]));
  LUT6 #(
    .INIT(64'hFFFF8800F8008800)) 
    \c_in[62]_i_1 
       (.I0(U0_n_117),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[5] [3]),
        .I3(\en_buf_reg[2] ),
        .I4(U0_n_111),
        .I5(\en_buf_reg[4] ),
        .O(D[62]));
  LUT6 #(
    .INIT(64'hFFFF8800F8008800)) 
    \c_in[63]_i_1 
       (.I0(U0_n_116),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[5] [3]),
        .I3(\en_buf_reg[2] ),
        .I4(U0_n_111),
        .I5(\en_buf_reg[4] ),
        .O(D[63]));
  LUT6 #(
    .INIT(64'hFFFF8800F8008800)) 
    \c_in[64]_i_1 
       (.I0(U0_n_115),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[5] [3]),
        .I3(\en_buf_reg[2] ),
        .I4(U0_n_111),
        .I5(\en_buf_reg[4] ),
        .O(D[64]));
  LUT6 #(
    .INIT(64'hFFFF8800F8008800)) 
    \c_in[65]_i_1 
       (.I0(U0_n_114),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[5] [3]),
        .I3(\en_buf_reg[2] ),
        .I4(U0_n_111),
        .I5(\en_buf_reg[4] ),
        .O(D[65]));
  LUT6 #(
    .INIT(64'hFFFF8800F8008800)) 
    \c_in[66]_i_1 
       (.I0(U0_n_113),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[5] [3]),
        .I3(\en_buf_reg[2] ),
        .I4(U0_n_111),
        .I5(\en_buf_reg[4] ),
        .O(D[66]));
  LUT6 #(
    .INIT(64'hFFFF8800F8008800)) 
    \c_in[67]_i_1 
       (.I0(U0_n_112),
        .I1(\en_buf_reg[5] [0]),
        .I2(\en_buf_reg[5] [3]),
        .I3(\en_buf_reg[2] ),
        .I4(U0_n_111),
        .I5(\en_buf_reg[4] ),
        .O(D[67]));
  LUT6 #(
    .INIT(64'hF000F000F000E000)) 
    \c_in[68]_i_1 
       (.I0(\en_buf_reg[5] [0]),
        .I1(\en_buf_reg[5] [3]),
        .I2(\en_buf_reg[2] ),
        .I3(U0_n_111),
        .I4(\en_buf_reg[5] [1]),
        .I5(\en_buf_reg[5] [2]),
        .O(D[68]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[6]_i_1 
       (.I0(\en_buf_reg[5] [3]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_139),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[7]_i_1 
       (.I0(\en_buf_reg[5] [3]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_138),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[8]_i_1 
       (.I0(\en_buf_reg[5] [3]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_137),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[9]_i_1 
       (.I0(\en_buf_reg[5] [3]),
        .I1(\en_buf_reg[2] ),
        .I2(U0_n_136),
        .O(D[9]));
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
  wire [68:0]c_in;
  wire \c_in[67]_i_2_n_0 ;
  wire \c_in[68]_i_2_n_0 ;
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
  wire [3:0]\NLW_c_acc_reg[68]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_c_acc_reg[68]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[0]_i_1 
       (.I0(i_en),
        .I1(i_a[0]),
        .O(\a_seq[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[10]_i_1 
       (.I0(i_en),
        .I1(i_a[10]),
        .O(\a_seq[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[11]_i_1 
       (.I0(i_en),
        .I1(i_a[11]),
        .O(\a_seq[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[12]_i_1 
       (.I0(i_en),
        .I1(i_a[12]),
        .O(\a_seq[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[13]_i_1 
       (.I0(i_en),
        .I1(i_a[13]),
        .O(\a_seq[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[14]_i_1 
       (.I0(i_en),
        .I1(i_a[14]),
        .O(\a_seq[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[15]_i_1 
       (.I0(i_en),
        .I1(i_a[15]),
        .O(\a_seq[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[16]_i_1 
       (.I0(i_en),
        .I1(i_a[16]),
        .O(\a_seq[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[18]_i_1 
       (.I0(i_a[0]),
        .I1(\a_seq_reg_n_0_[0] ),
        .I2(i_en),
        .O(\a_seq[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[19]_i_1 
       (.I0(i_a[1]),
        .I1(\a_seq_reg_n_0_[1] ),
        .I2(i_en),
        .O(\a_seq[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[1]_i_1 
       (.I0(i_en),
        .I1(i_a[1]),
        .O(\a_seq[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[20]_i_1 
       (.I0(i_a[2]),
        .I1(\a_seq_reg_n_0_[2] ),
        .I2(i_en),
        .O(\a_seq[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[21]_i_1 
       (.I0(i_a[3]),
        .I1(\a_seq_reg_n_0_[3] ),
        .I2(i_en),
        .O(\a_seq[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[22]_i_1 
       (.I0(i_a[4]),
        .I1(\a_seq_reg_n_0_[4] ),
        .I2(i_en),
        .O(\a_seq[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[23]_i_1 
       (.I0(i_a[5]),
        .I1(\a_seq_reg_n_0_[5] ),
        .I2(i_en),
        .O(\a_seq[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[24]_i_1 
       (.I0(i_a[6]),
        .I1(\a_seq_reg_n_0_[6] ),
        .I2(i_en),
        .O(\a_seq[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[25]_i_1 
       (.I0(i_a[7]),
        .I1(\a_seq_reg_n_0_[7] ),
        .I2(i_en),
        .O(\a_seq[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[26]_i_1 
       (.I0(i_a[8]),
        .I1(\a_seq_reg_n_0_[8] ),
        .I2(i_en),
        .O(\a_seq[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[27]_i_1 
       (.I0(i_a[9]),
        .I1(\a_seq_reg_n_0_[9] ),
        .I2(i_en),
        .O(\a_seq[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[28]_i_1 
       (.I0(i_a[10]),
        .I1(\a_seq_reg_n_0_[10] ),
        .I2(i_en),
        .O(\a_seq[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[29]_i_1 
       (.I0(i_a[11]),
        .I1(\a_seq_reg_n_0_[11] ),
        .I2(i_en),
        .O(\a_seq[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[2]_i_1 
       (.I0(i_en),
        .I1(i_a[2]),
        .O(\a_seq[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[30]_i_1 
       (.I0(i_a[12]),
        .I1(\a_seq_reg_n_0_[12] ),
        .I2(i_en),
        .O(\a_seq[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[31]_i_1 
       (.I0(i_a[13]),
        .I1(\a_seq_reg_n_0_[13] ),
        .I2(i_en),
        .O(\a_seq[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[32]_i_1 
       (.I0(i_a[14]),
        .I1(\a_seq_reg_n_0_[14] ),
        .I2(i_en),
        .O(\a_seq[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[33]_i_1 
       (.I0(i_a[15]),
        .I1(\a_seq_reg_n_0_[15] ),
        .I2(i_en),
        .O(\a_seq[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[34]_i_1 
       (.I0(i_a[16]),
        .I1(\a_seq_reg_n_0_[16] ),
        .I2(i_en),
        .O(\a_seq[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[36]_i_1 
       (.I0(i_a[17]),
        .I1(\a_seq_reg_n_0_[18] ),
        .I2(i_en),
        .O(\a_seq[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[37]_i_1 
       (.I0(i_a[18]),
        .I1(\a_seq_reg_n_0_[19] ),
        .I2(i_en),
        .O(\a_seq[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[38]_i_1 
       (.I0(i_a[19]),
        .I1(\a_seq_reg_n_0_[20] ),
        .I2(i_en),
        .O(\a_seq[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[39]_i_1 
       (.I0(i_a[20]),
        .I1(\a_seq_reg_n_0_[21] ),
        .I2(i_en),
        .O(\a_seq[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[3]_i_1 
       (.I0(i_en),
        .I1(i_a[3]),
        .O(\a_seq[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[40]_i_1 
       (.I0(i_a[21]),
        .I1(\a_seq_reg_n_0_[22] ),
        .I2(i_en),
        .O(\a_seq[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[41]_i_1 
       (.I0(i_a[22]),
        .I1(\a_seq_reg_n_0_[23] ),
        .I2(i_en),
        .O(\a_seq[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[42]_i_1 
       (.I0(i_a[23]),
        .I1(\a_seq_reg_n_0_[24] ),
        .I2(i_en),
        .O(\a_seq[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[43]_i_1 
       (.I0(i_a[24]),
        .I1(\a_seq_reg_n_0_[25] ),
        .I2(i_en),
        .O(\a_seq[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[44]_i_1 
       (.I0(i_a[25]),
        .I1(\a_seq_reg_n_0_[26] ),
        .I2(i_en),
        .O(\a_seq[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[45]_i_1 
       (.I0(i_a[26]),
        .I1(\a_seq_reg_n_0_[27] ),
        .I2(i_en),
        .O(\a_seq[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[46]_i_1 
       (.I0(i_a[27]),
        .I1(\a_seq_reg_n_0_[28] ),
        .I2(i_en),
        .O(\a_seq[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[47]_i_1 
       (.I0(i_a[28]),
        .I1(\a_seq_reg_n_0_[29] ),
        .I2(i_en),
        .O(\a_seq[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[48]_i_1 
       (.I0(i_a[29]),
        .I1(\a_seq_reg_n_0_[30] ),
        .I2(i_en),
        .O(\a_seq[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[49]_i_1 
       (.I0(i_a[30]),
        .I1(\a_seq_reg_n_0_[31] ),
        .I2(i_en),
        .O(\a_seq[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[4]_i_1 
       (.I0(i_en),
        .I1(i_a[4]),
        .O(\a_seq[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[50]_i_1 
       (.I0(i_a[31]),
        .I1(\a_seq_reg_n_0_[32] ),
        .I2(i_en),
        .O(\a_seq[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[51]_i_1 
       (.I0(i_a[32]),
        .I1(\a_seq_reg_n_0_[33] ),
        .I2(i_en),
        .O(\a_seq[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[52]_i_1 
       (.I0(i_a[33]),
        .I1(\a_seq_reg_n_0_[34] ),
        .I2(i_en),
        .O(\a_seq[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[53]_i_1 
       (.I0(i_en),
        .I1(i_a[34]),
        .O(\a_seq[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[54]_i_1 
       (.I0(i_a[17]),
        .I1(\a_seq_reg_n_0_[36] ),
        .I2(i_en),
        .O(\a_seq[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[55]_i_1 
       (.I0(i_a[18]),
        .I1(\a_seq_reg_n_0_[37] ),
        .I2(i_en),
        .O(\a_seq[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[56]_i_1 
       (.I0(i_a[19]),
        .I1(\a_seq_reg_n_0_[38] ),
        .I2(i_en),
        .O(\a_seq[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[57]_i_1 
       (.I0(i_a[20]),
        .I1(\a_seq_reg_n_0_[39] ),
        .I2(i_en),
        .O(\a_seq[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[58]_i_1 
       (.I0(i_a[21]),
        .I1(\a_seq_reg_n_0_[40] ),
        .I2(i_en),
        .O(\a_seq[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[59]_i_1 
       (.I0(i_a[22]),
        .I1(\a_seq_reg_n_0_[41] ),
        .I2(i_en),
        .O(\a_seq[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[5]_i_1 
       (.I0(i_en),
        .I1(i_a[5]),
        .O(\a_seq[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[60]_i_1 
       (.I0(i_a[23]),
        .I1(\a_seq_reg_n_0_[42] ),
        .I2(i_en),
        .O(\a_seq[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[61]_i_1 
       (.I0(i_a[24]),
        .I1(\a_seq_reg_n_0_[43] ),
        .I2(i_en),
        .O(\a_seq[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[62]_i_1 
       (.I0(i_a[25]),
        .I1(\a_seq_reg_n_0_[44] ),
        .I2(i_en),
        .O(\a_seq[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[63]_i_1 
       (.I0(i_a[26]),
        .I1(\a_seq_reg_n_0_[45] ),
        .I2(i_en),
        .O(\a_seq[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[64]_i_1 
       (.I0(i_a[27]),
        .I1(\a_seq_reg_n_0_[46] ),
        .I2(i_en),
        .O(\a_seq[64]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[65]_i_1 
       (.I0(i_a[28]),
        .I1(\a_seq_reg_n_0_[47] ),
        .I2(i_en),
        .O(\a_seq[65]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[66]_i_1 
       (.I0(i_a[29]),
        .I1(\a_seq_reg_n_0_[48] ),
        .I2(i_en),
        .O(\a_seq[66]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[67]_i_1 
       (.I0(i_a[30]),
        .I1(\a_seq_reg_n_0_[49] ),
        .I2(i_en),
        .O(\a_seq[67]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[68]_i_1 
       (.I0(i_a[31]),
        .I1(\a_seq_reg_n_0_[50] ),
        .I2(i_en),
        .O(\a_seq[68]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[69]_i_1 
       (.I0(i_a[32]),
        .I1(\a_seq_reg_n_0_[51] ),
        .I2(i_en),
        .O(\a_seq[69]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[6]_i_1 
       (.I0(i_en),
        .I1(i_a[6]),
        .O(\a_seq[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[70]_i_1 
       (.I0(i_a[33]),
        .I1(\a_seq_reg_n_0_[52] ),
        .I2(i_en),
        .O(\a_seq[70]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \a_seq[71]_i_1 
       (.I0(i_a[34]),
        .I1(\a_seq_reg_n_0_[53] ),
        .I2(i_en),
        .O(\a_seq[71]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[7]_i_1 
       (.I0(i_en),
        .I1(i_a[7]),
        .O(\a_seq[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_seq[8]_i_1 
       (.I0(i_en),
        .I1(i_a[8]),
        .O(\a_seq[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[0]_i_1 
       (.I0(i_en),
        .I1(i_b[0]),
        .O(\b_seq[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[10]_i_1 
       (.I0(i_en),
        .I1(i_b[10]),
        .O(\b_seq[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[11]_i_1 
       (.I0(i_en),
        .I1(i_b[11]),
        .O(\b_seq[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[12]_i_1 
       (.I0(i_en),
        .I1(i_b[12]),
        .O(\b_seq[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[13]_i_1 
       (.I0(i_en),
        .I1(i_b[13]),
        .O(\b_seq[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[14]_i_1 
       (.I0(i_en),
        .I1(i_b[14]),
        .O(\b_seq[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[15]_i_1 
       (.I0(i_en),
        .I1(i_b[15]),
        .O(\b_seq[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[16]_i_1 
       (.I0(i_en),
        .I1(i_b[16]),
        .O(\b_seq[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[18]_i_1 
       (.I0(i_b[17]),
        .I1(\b_seq_reg_n_0_[0] ),
        .I2(i_en),
        .O(\b_seq[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[19]_i_1 
       (.I0(i_b[18]),
        .I1(\b_seq_reg_n_0_[1] ),
        .I2(i_en),
        .O(\b_seq[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[1]_i_1 
       (.I0(i_en),
        .I1(i_b[1]),
        .O(\b_seq[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[20]_i_1 
       (.I0(i_b[19]),
        .I1(\b_seq_reg_n_0_[2] ),
        .I2(i_en),
        .O(\b_seq[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[21]_i_1 
       (.I0(i_b[20]),
        .I1(\b_seq_reg_n_0_[3] ),
        .I2(i_en),
        .O(\b_seq[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[22]_i_1 
       (.I0(i_b[21]),
        .I1(\b_seq_reg_n_0_[4] ),
        .I2(i_en),
        .O(\b_seq[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[23]_i_1 
       (.I0(i_b[22]),
        .I1(\b_seq_reg_n_0_[5] ),
        .I2(i_en),
        .O(\b_seq[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[24]_i_1 
       (.I0(i_b[23]),
        .I1(\b_seq_reg_n_0_[6] ),
        .I2(i_en),
        .O(\b_seq[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[25]_i_1 
       (.I0(i_b[24]),
        .I1(\b_seq_reg_n_0_[7] ),
        .I2(i_en),
        .O(\b_seq[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[26]_i_1 
       (.I0(i_b[25]),
        .I1(\b_seq_reg_n_0_[8] ),
        .I2(i_en),
        .O(\b_seq[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[27]_i_1 
       (.I0(i_b[26]),
        .I1(\b_seq_reg_n_0_[9] ),
        .I2(i_en),
        .O(\b_seq[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[28]_i_1 
       (.I0(i_b[27]),
        .I1(\b_seq_reg_n_0_[10] ),
        .I2(i_en),
        .O(\b_seq[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[29]_i_1 
       (.I0(i_b[28]),
        .I1(\b_seq_reg_n_0_[11] ),
        .I2(i_en),
        .O(\b_seq[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[2]_i_1 
       (.I0(i_en),
        .I1(i_b[2]),
        .O(\b_seq[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[30]_i_1 
       (.I0(i_b[29]),
        .I1(\b_seq_reg_n_0_[12] ),
        .I2(i_en),
        .O(\b_seq[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[31]_i_1 
       (.I0(i_b[30]),
        .I1(\b_seq_reg_n_0_[13] ),
        .I2(i_en),
        .O(\b_seq[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[32]_i_1 
       (.I0(i_b[31]),
        .I1(\b_seq_reg_n_0_[14] ),
        .I2(i_en),
        .O(\b_seq[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[33]_i_1 
       (.I0(i_b[32]),
        .I1(\b_seq_reg_n_0_[15] ),
        .I2(i_en),
        .O(\b_seq[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[34]_i_1 
       (.I0(i_b[33]),
        .I1(\b_seq_reg_n_0_[16] ),
        .I2(i_en),
        .O(\b_seq[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[35]_i_1 
       (.I0(i_en),
        .I1(i_b[34]),
        .O(\b_seq[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[36]_i_1 
       (.I0(i_b[0]),
        .I1(\b_seq_reg_n_0_[18] ),
        .I2(i_en),
        .O(\b_seq[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[37]_i_1 
       (.I0(i_b[1]),
        .I1(\b_seq_reg_n_0_[19] ),
        .I2(i_en),
        .O(\b_seq[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[38]_i_1 
       (.I0(i_b[2]),
        .I1(\b_seq_reg_n_0_[20] ),
        .I2(i_en),
        .O(\b_seq[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[39]_i_1 
       (.I0(i_b[3]),
        .I1(\b_seq_reg_n_0_[21] ),
        .I2(i_en),
        .O(\b_seq[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[3]_i_1 
       (.I0(i_en),
        .I1(i_b[3]),
        .O(\b_seq[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[40]_i_1 
       (.I0(i_b[4]),
        .I1(\b_seq_reg_n_0_[22] ),
        .I2(i_en),
        .O(\b_seq[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[41]_i_1 
       (.I0(i_b[5]),
        .I1(\b_seq_reg_n_0_[23] ),
        .I2(i_en),
        .O(\b_seq[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[42]_i_1 
       (.I0(i_b[6]),
        .I1(\b_seq_reg_n_0_[24] ),
        .I2(i_en),
        .O(\b_seq[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[43]_i_1 
       (.I0(i_b[7]),
        .I1(\b_seq_reg_n_0_[25] ),
        .I2(i_en),
        .O(\b_seq[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[44]_i_1 
       (.I0(i_b[8]),
        .I1(\b_seq_reg_n_0_[26] ),
        .I2(i_en),
        .O(\b_seq[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[45]_i_1 
       (.I0(i_b[9]),
        .I1(\b_seq_reg_n_0_[27] ),
        .I2(i_en),
        .O(\b_seq[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[46]_i_1 
       (.I0(i_b[10]),
        .I1(\b_seq_reg_n_0_[28] ),
        .I2(i_en),
        .O(\b_seq[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[47]_i_1 
       (.I0(i_b[11]),
        .I1(\b_seq_reg_n_0_[29] ),
        .I2(i_en),
        .O(\b_seq[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[48]_i_1 
       (.I0(i_b[12]),
        .I1(\b_seq_reg_n_0_[30] ),
        .I2(i_en),
        .O(\b_seq[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[49]_i_1 
       (.I0(i_b[13]),
        .I1(\b_seq_reg_n_0_[31] ),
        .I2(i_en),
        .O(\b_seq[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[4]_i_1 
       (.I0(i_en),
        .I1(i_b[4]),
        .O(\b_seq[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[50]_i_1 
       (.I0(i_b[14]),
        .I1(\b_seq_reg_n_0_[32] ),
        .I2(i_en),
        .O(\b_seq[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[51]_i_1 
       (.I0(i_b[15]),
        .I1(\b_seq_reg_n_0_[33] ),
        .I2(i_en),
        .O(\b_seq[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[54]_i_1 
       (.I0(i_b[17]),
        .I1(\b_seq_reg_n_0_[36] ),
        .I2(i_en),
        .O(\b_seq[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[55]_i_1 
       (.I0(i_b[18]),
        .I1(\b_seq_reg_n_0_[37] ),
        .I2(i_en),
        .O(\b_seq[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[56]_i_1 
       (.I0(i_b[19]),
        .I1(\b_seq_reg_n_0_[38] ),
        .I2(i_en),
        .O(\b_seq[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[57]_i_1 
       (.I0(i_b[20]),
        .I1(\b_seq_reg_n_0_[39] ),
        .I2(i_en),
        .O(\b_seq[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[58]_i_1 
       (.I0(i_b[21]),
        .I1(\b_seq_reg_n_0_[40] ),
        .I2(i_en),
        .O(\b_seq[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[59]_i_1 
       (.I0(i_b[22]),
        .I1(\b_seq_reg_n_0_[41] ),
        .I2(i_en),
        .O(\b_seq[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[5]_i_1 
       (.I0(i_en),
        .I1(i_b[5]),
        .O(\b_seq[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[60]_i_1 
       (.I0(i_b[23]),
        .I1(\b_seq_reg_n_0_[42] ),
        .I2(i_en),
        .O(\b_seq[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[61]_i_1 
       (.I0(i_b[24]),
        .I1(\b_seq_reg_n_0_[43] ),
        .I2(i_en),
        .O(\b_seq[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[62]_i_1 
       (.I0(i_b[25]),
        .I1(\b_seq_reg_n_0_[44] ),
        .I2(i_en),
        .O(\b_seq[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[63]_i_1 
       (.I0(i_b[26]),
        .I1(\b_seq_reg_n_0_[45] ),
        .I2(i_en),
        .O(\b_seq[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[64]_i_1 
       (.I0(i_b[27]),
        .I1(\b_seq_reg_n_0_[46] ),
        .I2(i_en),
        .O(\b_seq[64]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[65]_i_1 
       (.I0(i_b[28]),
        .I1(\b_seq_reg_n_0_[47] ),
        .I2(i_en),
        .O(\b_seq[65]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[66]_i_1 
       (.I0(i_b[29]),
        .I1(\b_seq_reg_n_0_[48] ),
        .I2(i_en),
        .O(\b_seq[66]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[67]_i_1 
       (.I0(i_b[30]),
        .I1(\b_seq_reg_n_0_[49] ),
        .I2(i_en),
        .O(\b_seq[67]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[68]_i_1 
       (.I0(i_b[31]),
        .I1(\b_seq_reg_n_0_[50] ),
        .I2(i_en),
        .O(\b_seq[68]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[69]_i_1 
       (.I0(i_b[32]),
        .I1(\b_seq_reg_n_0_[51] ),
        .I2(i_en),
        .O(\b_seq[69]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[6]_i_1 
       (.I0(i_en),
        .I1(i_b[6]),
        .O(\b_seq[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[70]_i_1 
       (.I0(i_b[33]),
        .I1(\b_seq_reg_n_0_[52] ),
        .I2(i_en),
        .O(\b_seq[70]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_seq[71]_i_1 
       (.I0(i_b[34]),
        .I1(\b_seq_reg_n_0_[53] ),
        .I2(i_en),
        .O(\b_seq[71]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[7]_i_1 
       (.I0(i_en),
        .I1(i_b[7]),
        .O(\b_seq[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b_seq[8]_i_1 
       (.I0(i_en),
        .I1(i_b[8]),
        .O(\b_seq[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
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
  FDCE \c_acc_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[3]_i_1_n_7 ),
        .Q(o_c[0]));
  FDCE \c_acc_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[11]_i_1_n_5 ),
        .Q(o_c[10]));
  FDCE \c_acc_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[11]_i_1_n_4 ),
        .Q(o_c[11]));
  CARRY4 \c_acc_reg[11]_i_1 
       (.CI(\c_acc_reg[7]_i_1_n_0 ),
        .CO({\c_acc_reg[11]_i_1_n_0 ,\c_acc_reg[11]_i_1_n_1 ,\c_acc_reg[11]_i_1_n_2 ,\c_acc_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[11:8]),
        .O({\c_acc_reg[11]_i_1_n_4 ,\c_acc_reg[11]_i_1_n_5 ,\c_acc_reg[11]_i_1_n_6 ,\c_acc_reg[11]_i_1_n_7 }),
        .S({\c_acc[11]_i_2_n_0 ,\c_acc[11]_i_3_n_0 ,\c_acc[11]_i_4_n_0 ,\c_acc[11]_i_5_n_0 }));
  FDCE \c_acc_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[15]_i_1_n_7 ),
        .Q(o_c[12]));
  FDCE \c_acc_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[15]_i_1_n_6 ),
        .Q(o_c[13]));
  FDCE \c_acc_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[15]_i_1_n_5 ),
        .Q(o_c[14]));
  FDCE \c_acc_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[15]_i_1_n_4 ),
        .Q(o_c[15]));
  CARRY4 \c_acc_reg[15]_i_1 
       (.CI(\c_acc_reg[11]_i_1_n_0 ),
        .CO({\c_acc_reg[15]_i_1_n_0 ,\c_acc_reg[15]_i_1_n_1 ,\c_acc_reg[15]_i_1_n_2 ,\c_acc_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[15:12]),
        .O({\c_acc_reg[15]_i_1_n_4 ,\c_acc_reg[15]_i_1_n_5 ,\c_acc_reg[15]_i_1_n_6 ,\c_acc_reg[15]_i_1_n_7 }),
        .S({\c_acc[15]_i_2_n_0 ,\c_acc[15]_i_3_n_0 ,\c_acc[15]_i_4_n_0 ,\c_acc[15]_i_5_n_0 }));
  FDCE \c_acc_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[19]_i_1_n_7 ),
        .Q(o_c[16]));
  FDCE \c_acc_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[19]_i_1_n_6 ),
        .Q(o_c[17]));
  FDCE \c_acc_reg[18] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[19]_i_1_n_5 ),
        .Q(o_c[18]));
  FDCE \c_acc_reg[19] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[19]_i_1_n_4 ),
        .Q(o_c[19]));
  CARRY4 \c_acc_reg[19]_i_1 
       (.CI(\c_acc_reg[15]_i_1_n_0 ),
        .CO({\c_acc_reg[19]_i_1_n_0 ,\c_acc_reg[19]_i_1_n_1 ,\c_acc_reg[19]_i_1_n_2 ,\c_acc_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[19:16]),
        .O({\c_acc_reg[19]_i_1_n_4 ,\c_acc_reg[19]_i_1_n_5 ,\c_acc_reg[19]_i_1_n_6 ,\c_acc_reg[19]_i_1_n_7 }),
        .S({\c_acc[19]_i_2_n_0 ,\c_acc[19]_i_3_n_0 ,\c_acc[19]_i_4_n_0 ,\c_acc[19]_i_5_n_0 }));
  FDCE \c_acc_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[3]_i_1_n_6 ),
        .Q(o_c[1]));
  FDCE \c_acc_reg[20] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[23]_i_1_n_7 ),
        .Q(o_c[20]));
  FDCE \c_acc_reg[21] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[23]_i_1_n_6 ),
        .Q(o_c[21]));
  FDCE \c_acc_reg[22] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[23]_i_1_n_5 ),
        .Q(o_c[22]));
  FDCE \c_acc_reg[23] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[23]_i_1_n_4 ),
        .Q(o_c[23]));
  CARRY4 \c_acc_reg[23]_i_1 
       (.CI(\c_acc_reg[19]_i_1_n_0 ),
        .CO({\c_acc_reg[23]_i_1_n_0 ,\c_acc_reg[23]_i_1_n_1 ,\c_acc_reg[23]_i_1_n_2 ,\c_acc_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[23:20]),
        .O({\c_acc_reg[23]_i_1_n_4 ,\c_acc_reg[23]_i_1_n_5 ,\c_acc_reg[23]_i_1_n_6 ,\c_acc_reg[23]_i_1_n_7 }),
        .S({\c_acc[23]_i_2_n_0 ,\c_acc[23]_i_3_n_0 ,\c_acc[23]_i_4_n_0 ,\c_acc[23]_i_5_n_0 }));
  FDCE \c_acc_reg[24] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[27]_i_1_n_7 ),
        .Q(o_c[24]));
  FDCE \c_acc_reg[25] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[27]_i_1_n_6 ),
        .Q(o_c[25]));
  FDCE \c_acc_reg[26] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[27]_i_1_n_5 ),
        .Q(o_c[26]));
  FDCE \c_acc_reg[27] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[27]_i_1_n_4 ),
        .Q(o_c[27]));
  CARRY4 \c_acc_reg[27]_i_1 
       (.CI(\c_acc_reg[23]_i_1_n_0 ),
        .CO({\c_acc_reg[27]_i_1_n_0 ,\c_acc_reg[27]_i_1_n_1 ,\c_acc_reg[27]_i_1_n_2 ,\c_acc_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[27:24]),
        .O({\c_acc_reg[27]_i_1_n_4 ,\c_acc_reg[27]_i_1_n_5 ,\c_acc_reg[27]_i_1_n_6 ,\c_acc_reg[27]_i_1_n_7 }),
        .S({\c_acc[27]_i_2_n_0 ,\c_acc[27]_i_3_n_0 ,\c_acc[27]_i_4_n_0 ,\c_acc[27]_i_5_n_0 }));
  FDCE \c_acc_reg[28] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[31]_i_1_n_7 ),
        .Q(o_c[28]));
  FDCE \c_acc_reg[29] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[31]_i_1_n_6 ),
        .Q(o_c[29]));
  FDCE \c_acc_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[3]_i_1_n_5 ),
        .Q(o_c[2]));
  FDCE \c_acc_reg[30] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[31]_i_1_n_5 ),
        .Q(o_c[30]));
  FDCE \c_acc_reg[31] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[31]_i_1_n_4 ),
        .Q(o_c[31]));
  CARRY4 \c_acc_reg[31]_i_1 
       (.CI(\c_acc_reg[27]_i_1_n_0 ),
        .CO({\c_acc_reg[31]_i_1_n_0 ,\c_acc_reg[31]_i_1_n_1 ,\c_acc_reg[31]_i_1_n_2 ,\c_acc_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[31:28]),
        .O({\c_acc_reg[31]_i_1_n_4 ,\c_acc_reg[31]_i_1_n_5 ,\c_acc_reg[31]_i_1_n_6 ,\c_acc_reg[31]_i_1_n_7 }),
        .S({\c_acc[31]_i_2_n_0 ,\c_acc[31]_i_3_n_0 ,\c_acc[31]_i_4_n_0 ,\c_acc[31]_i_5_n_0 }));
  FDCE \c_acc_reg[32] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[35]_i_1_n_7 ),
        .Q(o_c[32]));
  FDCE \c_acc_reg[33] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[35]_i_1_n_6 ),
        .Q(o_c[33]));
  FDCE \c_acc_reg[34] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[35]_i_1_n_5 ),
        .Q(o_c[34]));
  FDCE \c_acc_reg[35] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[35]_i_1_n_4 ),
        .Q(o_c[35]));
  CARRY4 \c_acc_reg[35]_i_1 
       (.CI(\c_acc_reg[31]_i_1_n_0 ),
        .CO({\c_acc_reg[35]_i_1_n_0 ,\c_acc_reg[35]_i_1_n_1 ,\c_acc_reg[35]_i_1_n_2 ,\c_acc_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[35:32]),
        .O({\c_acc_reg[35]_i_1_n_4 ,\c_acc_reg[35]_i_1_n_5 ,\c_acc_reg[35]_i_1_n_6 ,\c_acc_reg[35]_i_1_n_7 }),
        .S({\c_acc[35]_i_2_n_0 ,\c_acc[35]_i_3_n_0 ,\c_acc[35]_i_4_n_0 ,\c_acc[35]_i_5_n_0 }));
  FDCE \c_acc_reg[36] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[39]_i_1_n_7 ),
        .Q(o_c[36]));
  FDCE \c_acc_reg[37] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[39]_i_1_n_6 ),
        .Q(o_c[37]));
  FDCE \c_acc_reg[38] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[39]_i_1_n_5 ),
        .Q(o_c[38]));
  FDCE \c_acc_reg[39] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[39]_i_1_n_4 ),
        .Q(o_c[39]));
  CARRY4 \c_acc_reg[39]_i_1 
       (.CI(\c_acc_reg[35]_i_1_n_0 ),
        .CO({\c_acc_reg[39]_i_1_n_0 ,\c_acc_reg[39]_i_1_n_1 ,\c_acc_reg[39]_i_1_n_2 ,\c_acc_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[39:36]),
        .O({\c_acc_reg[39]_i_1_n_4 ,\c_acc_reg[39]_i_1_n_5 ,\c_acc_reg[39]_i_1_n_6 ,\c_acc_reg[39]_i_1_n_7 }),
        .S({\c_acc[39]_i_2_n_0 ,\c_acc[39]_i_3_n_0 ,\c_acc[39]_i_4_n_0 ,\c_acc[39]_i_5_n_0 }));
  FDCE \c_acc_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[3]_i_1_n_4 ),
        .Q(o_c[3]));
  CARRY4 \c_acc_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\c_acc_reg[3]_i_1_n_0 ,\c_acc_reg[3]_i_1_n_1 ,\c_acc_reg[3]_i_1_n_2 ,\c_acc_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[3:0]),
        .O({\c_acc_reg[3]_i_1_n_4 ,\c_acc_reg[3]_i_1_n_5 ,\c_acc_reg[3]_i_1_n_6 ,\c_acc_reg[3]_i_1_n_7 }),
        .S({\c_acc[3]_i_2_n_0 ,\c_acc[3]_i_3_n_0 ,\c_acc[3]_i_4_n_0 ,\c_acc[3]_i_5_n_0 }));
  FDCE \c_acc_reg[40] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[43]_i_1_n_7 ),
        .Q(o_c[40]));
  FDCE \c_acc_reg[41] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[43]_i_1_n_6 ),
        .Q(o_c[41]));
  FDCE \c_acc_reg[42] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[43]_i_1_n_5 ),
        .Q(o_c[42]));
  FDCE \c_acc_reg[43] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[43]_i_1_n_4 ),
        .Q(o_c[43]));
  CARRY4 \c_acc_reg[43]_i_1 
       (.CI(\c_acc_reg[39]_i_1_n_0 ),
        .CO({\c_acc_reg[43]_i_1_n_0 ,\c_acc_reg[43]_i_1_n_1 ,\c_acc_reg[43]_i_1_n_2 ,\c_acc_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[43:40]),
        .O({\c_acc_reg[43]_i_1_n_4 ,\c_acc_reg[43]_i_1_n_5 ,\c_acc_reg[43]_i_1_n_6 ,\c_acc_reg[43]_i_1_n_7 }),
        .S({\c_acc[43]_i_2_n_0 ,\c_acc[43]_i_3_n_0 ,\c_acc[43]_i_4_n_0 ,\c_acc[43]_i_5_n_0 }));
  FDCE \c_acc_reg[44] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[47]_i_1_n_7 ),
        .Q(o_c[44]));
  FDCE \c_acc_reg[45] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[47]_i_1_n_6 ),
        .Q(o_c[45]));
  FDCE \c_acc_reg[46] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[47]_i_1_n_5 ),
        .Q(o_c[46]));
  FDCE \c_acc_reg[47] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[47]_i_1_n_4 ),
        .Q(o_c[47]));
  CARRY4 \c_acc_reg[47]_i_1 
       (.CI(\c_acc_reg[43]_i_1_n_0 ),
        .CO({\c_acc_reg[47]_i_1_n_0 ,\c_acc_reg[47]_i_1_n_1 ,\c_acc_reg[47]_i_1_n_2 ,\c_acc_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[47:44]),
        .O({\c_acc_reg[47]_i_1_n_4 ,\c_acc_reg[47]_i_1_n_5 ,\c_acc_reg[47]_i_1_n_6 ,\c_acc_reg[47]_i_1_n_7 }),
        .S({\c_acc[47]_i_2_n_0 ,\c_acc[47]_i_3_n_0 ,\c_acc[47]_i_4_n_0 ,\c_acc[47]_i_5_n_0 }));
  FDCE \c_acc_reg[48] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[51]_i_1_n_7 ),
        .Q(o_c[48]));
  FDCE \c_acc_reg[49] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[51]_i_1_n_6 ),
        .Q(o_c[49]));
  FDCE \c_acc_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[7]_i_1_n_7 ),
        .Q(o_c[4]));
  FDCE \c_acc_reg[50] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[51]_i_1_n_5 ),
        .Q(o_c[50]));
  FDCE \c_acc_reg[51] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[51]_i_1_n_4 ),
        .Q(o_c[51]));
  CARRY4 \c_acc_reg[51]_i_1 
       (.CI(\c_acc_reg[47]_i_1_n_0 ),
        .CO({\c_acc_reg[51]_i_1_n_0 ,\c_acc_reg[51]_i_1_n_1 ,\c_acc_reg[51]_i_1_n_2 ,\c_acc_reg[51]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[51:48]),
        .O({\c_acc_reg[51]_i_1_n_4 ,\c_acc_reg[51]_i_1_n_5 ,\c_acc_reg[51]_i_1_n_6 ,\c_acc_reg[51]_i_1_n_7 }),
        .S({\c_acc[51]_i_2_n_0 ,\c_acc[51]_i_3_n_0 ,\c_acc[51]_i_4_n_0 ,\c_acc[51]_i_5_n_0 }));
  FDCE \c_acc_reg[52] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[55]_i_1_n_7 ),
        .Q(o_c[52]));
  FDCE \c_acc_reg[53] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[55]_i_1_n_6 ),
        .Q(o_c[53]));
  FDCE \c_acc_reg[54] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[55]_i_1_n_5 ),
        .Q(o_c[54]));
  FDCE \c_acc_reg[55] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[55]_i_1_n_4 ),
        .Q(o_c[55]));
  CARRY4 \c_acc_reg[55]_i_1 
       (.CI(\c_acc_reg[51]_i_1_n_0 ),
        .CO({\c_acc_reg[55]_i_1_n_0 ,\c_acc_reg[55]_i_1_n_1 ,\c_acc_reg[55]_i_1_n_2 ,\c_acc_reg[55]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[55:52]),
        .O({\c_acc_reg[55]_i_1_n_4 ,\c_acc_reg[55]_i_1_n_5 ,\c_acc_reg[55]_i_1_n_6 ,\c_acc_reg[55]_i_1_n_7 }),
        .S({\c_acc[55]_i_2_n_0 ,\c_acc[55]_i_3_n_0 ,\c_acc[55]_i_4_n_0 ,\c_acc[55]_i_5_n_0 }));
  FDCE \c_acc_reg[56] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[59]_i_1_n_7 ),
        .Q(o_c[56]));
  FDCE \c_acc_reg[57] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[59]_i_1_n_6 ),
        .Q(o_c[57]));
  FDCE \c_acc_reg[58] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[59]_i_1_n_5 ),
        .Q(o_c[58]));
  FDCE \c_acc_reg[59] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[59]_i_1_n_4 ),
        .Q(o_c[59]));
  CARRY4 \c_acc_reg[59]_i_1 
       (.CI(\c_acc_reg[55]_i_1_n_0 ),
        .CO({\c_acc_reg[59]_i_1_n_0 ,\c_acc_reg[59]_i_1_n_1 ,\c_acc_reg[59]_i_1_n_2 ,\c_acc_reg[59]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[59:56]),
        .O({\c_acc_reg[59]_i_1_n_4 ,\c_acc_reg[59]_i_1_n_5 ,\c_acc_reg[59]_i_1_n_6 ,\c_acc_reg[59]_i_1_n_7 }),
        .S({\c_acc[59]_i_2_n_0 ,\c_acc[59]_i_3_n_0 ,\c_acc[59]_i_4_n_0 ,\c_acc[59]_i_5_n_0 }));
  FDCE \c_acc_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[7]_i_1_n_6 ),
        .Q(o_c[5]));
  FDCE \c_acc_reg[60] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[63]_i_1_n_7 ),
        .Q(o_c[60]));
  FDCE \c_acc_reg[61] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[63]_i_1_n_6 ),
        .Q(o_c[61]));
  FDCE \c_acc_reg[62] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[63]_i_1_n_5 ),
        .Q(o_c[62]));
  FDCE \c_acc_reg[63] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[63]_i_1_n_4 ),
        .Q(o_c[63]));
  CARRY4 \c_acc_reg[63]_i_1 
       (.CI(\c_acc_reg[59]_i_1_n_0 ),
        .CO({\c_acc_reg[63]_i_1_n_0 ,\c_acc_reg[63]_i_1_n_1 ,\c_acc_reg[63]_i_1_n_2 ,\c_acc_reg[63]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[63:60]),
        .O({\c_acc_reg[63]_i_1_n_4 ,\c_acc_reg[63]_i_1_n_5 ,\c_acc_reg[63]_i_1_n_6 ,\c_acc_reg[63]_i_1_n_7 }),
        .S({\c_acc[63]_i_2_n_0 ,\c_acc[63]_i_3_n_0 ,\c_acc[63]_i_4_n_0 ,\c_acc[63]_i_5_n_0 }));
  FDCE \c_acc_reg[64] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[67]_i_1_n_7 ),
        .Q(o_c[64]));
  FDCE \c_acc_reg[65] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[67]_i_1_n_6 ),
        .Q(o_c[65]));
  FDCE \c_acc_reg[66] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[67]_i_1_n_5 ),
        .Q(o_c[66]));
  FDCE \c_acc_reg[67] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[67]_i_1_n_4 ),
        .Q(o_c[67]));
  CARRY4 \c_acc_reg[67]_i_1 
       (.CI(\c_acc_reg[63]_i_1_n_0 ),
        .CO({\c_acc_reg[67]_i_1_n_0 ,\c_acc_reg[67]_i_1_n_1 ,\c_acc_reg[67]_i_1_n_2 ,\c_acc_reg[67]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[67:64]),
        .O({\c_acc_reg[67]_i_1_n_4 ,\c_acc_reg[67]_i_1_n_5 ,\c_acc_reg[67]_i_1_n_6 ,\c_acc_reg[67]_i_1_n_7 }),
        .S({\c_acc[67]_i_2_n_0 ,\c_acc[67]_i_3_n_0 ,\c_acc[67]_i_4_n_0 ,\c_acc[67]_i_5_n_0 }));
  FDCE \c_acc_reg[68] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[68]_i_1_n_7 ),
        .Q(o_c[68]));
  CARRY4 \c_acc_reg[68]_i_1 
       (.CI(\c_acc_reg[67]_i_1_n_0 ),
        .CO(\NLW_c_acc_reg[68]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_c_acc_reg[68]_i_1_O_UNCONNECTED [3:1],\c_acc_reg[68]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\c_acc[68]_i_2_n_0 }));
  FDCE \c_acc_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[7]_i_1_n_5 ),
        .Q(o_c[6]));
  FDCE \c_acc_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[7]_i_1_n_4 ),
        .Q(o_c[7]));
  CARRY4 \c_acc_reg[7]_i_1 
       (.CI(\c_acc_reg[3]_i_1_n_0 ),
        .CO({\c_acc_reg[7]_i_1_n_0 ,\c_acc_reg[7]_i_1_n_1 ,\c_acc_reg[7]_i_1_n_2 ,\c_acc_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[7:4]),
        .O({\c_acc_reg[7]_i_1_n_4 ,\c_acc_reg[7]_i_1_n_5 ,\c_acc_reg[7]_i_1_n_6 ,\c_acc_reg[7]_i_1_n_7 }),
        .S({\c_acc[7]_i_2_n_0 ,\c_acc[7]_i_3_n_0 ,\c_acc[7]_i_4_n_0 ,\c_acc[7]_i_5_n_0 }));
  FDCE \c_acc_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[11]_i_1_n_7 ),
        .Q(o_c[8]));
  FDCE \c_acc_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[11]_i_1_n_6 ),
        .Q(o_c[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \c_in[67]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(\c_in[68]_i_2_n_0 ),
        .O(\c_in[67]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    \c_in[68]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .O(\c_in[68]_i_2_n_0 ));
  FDCE \c_in_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[0]),
        .Q(in[0]));
  FDCE \c_in_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[10]),
        .Q(in[10]));
  FDCE \c_in_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[11]),
        .Q(in[11]));
  FDCE \c_in_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[12]),
        .Q(in[12]));
  FDCE \c_in_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[13]),
        .Q(in[13]));
  FDCE \c_in_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[14]),
        .Q(in[14]));
  FDCE \c_in_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[15]),
        .Q(in[15]));
  FDCE \c_in_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[16]),
        .Q(in[16]));
  FDCE \c_in_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[17]),
        .Q(in[17]));
  FDCE \c_in_reg[18] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[18]),
        .Q(in[18]));
  FDCE \c_in_reg[19] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[19]),
        .Q(in[19]));
  FDCE \c_in_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[1]),
        .Q(in[1]));
  FDCE \c_in_reg[20] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[20]),
        .Q(in[20]));
  FDCE \c_in_reg[21] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[21]),
        .Q(in[21]));
  FDCE \c_in_reg[22] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[22]),
        .Q(in[22]));
  FDCE \c_in_reg[23] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[23]),
        .Q(in[23]));
  FDCE \c_in_reg[24] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[24]),
        .Q(in[24]));
  FDCE \c_in_reg[25] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[25]),
        .Q(in[25]));
  FDCE \c_in_reg[26] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[26]),
        .Q(in[26]));
  FDCE \c_in_reg[27] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[27]),
        .Q(in[27]));
  FDCE \c_in_reg[28] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[28]),
        .Q(in[28]));
  FDCE \c_in_reg[29] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[29]),
        .Q(in[29]));
  FDCE \c_in_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[2]),
        .Q(in[2]));
  FDCE \c_in_reg[30] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[30]),
        .Q(in[30]));
  FDCE \c_in_reg[31] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[31]),
        .Q(in[31]));
  FDCE \c_in_reg[32] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[32]),
        .Q(in[32]));
  FDCE \c_in_reg[33] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[33]),
        .Q(in[33]));
  FDCE \c_in_reg[34] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[34]),
        .Q(in[34]));
  FDCE \c_in_reg[35] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[35]),
        .Q(in[35]));
  FDCE \c_in_reg[36] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[36]),
        .Q(in[36]));
  FDCE \c_in_reg[37] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[37]),
        .Q(in[37]));
  FDCE \c_in_reg[38] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[38]),
        .Q(in[38]));
  FDCE \c_in_reg[39] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[39]),
        .Q(in[39]));
  FDCE \c_in_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[3]),
        .Q(in[3]));
  FDCE \c_in_reg[40] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[40]),
        .Q(in[40]));
  FDCE \c_in_reg[41] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[41]),
        .Q(in[41]));
  FDCE \c_in_reg[42] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[42]),
        .Q(in[42]));
  FDCE \c_in_reg[43] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[43]),
        .Q(in[43]));
  FDCE \c_in_reg[44] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[44]),
        .Q(in[44]));
  FDCE \c_in_reg[45] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[45]),
        .Q(in[45]));
  FDCE \c_in_reg[46] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[46]),
        .Q(in[46]));
  FDCE \c_in_reg[47] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[47]),
        .Q(in[47]));
  FDCE \c_in_reg[48] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[48]),
        .Q(in[48]));
  FDCE \c_in_reg[49] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[49]),
        .Q(in[49]));
  FDCE \c_in_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[4]),
        .Q(in[4]));
  FDCE \c_in_reg[50] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[50]),
        .Q(in[50]));
  FDCE \c_in_reg[51] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[51]),
        .Q(in[51]));
  FDCE \c_in_reg[52] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[52]),
        .Q(in[52]));
  FDCE \c_in_reg[53] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[53]),
        .Q(in[53]));
  FDCE \c_in_reg[54] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[54]),
        .Q(in[54]));
  FDCE \c_in_reg[55] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[55]),
        .Q(in[55]));
  FDCE \c_in_reg[56] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[56]),
        .Q(in[56]));
  FDCE \c_in_reg[57] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[57]),
        .Q(in[57]));
  FDCE \c_in_reg[58] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[58]),
        .Q(in[58]));
  FDCE \c_in_reg[59] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[59]),
        .Q(in[59]));
  FDCE \c_in_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[5]),
        .Q(in[5]));
  FDCE \c_in_reg[60] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[60]),
        .Q(in[60]));
  FDCE \c_in_reg[61] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[61]),
        .Q(in[61]));
  FDCE \c_in_reg[62] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[62]),
        .Q(in[62]));
  FDCE \c_in_reg[63] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[63]),
        .Q(in[63]));
  FDCE \c_in_reg[64] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[64]),
        .Q(in[64]));
  FDCE \c_in_reg[65] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[65]),
        .Q(in[65]));
  FDCE \c_in_reg[66] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[66]),
        .Q(in[66]));
  FDCE \c_in_reg[67] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[67]),
        .Q(in[67]));
  FDCE \c_in_reg[68] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[68]),
        .Q(in[68]));
  FDCE \c_in_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[6]),
        .Q(in[6]));
  FDCE \c_in_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[7]),
        .Q(in[7]));
  FDCE \c_in_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[8]),
        .Q(in[8]));
  FDCE \c_in_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[9]),
        .Q(in[9]));
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
        .Q(u_a),
        .\b_seq_reg[71] (u_b),
        .\en_buf_reg[2] (\c_in[68]_i_2_n_0 ),
        .\en_buf_reg[4] (\c_in[67]_i_2_n_0 ),
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
JcXUBBkTH5Y+gV3vUKsBD4+hF5TGA4L4mzGCNNG9AylTj5ez2qvMPJfyUG+VUYOktUvU7zVO4jgd
z5gY13D8jOo0tMcaTBauAhwhT/ciBGba8YjWuBV7OteFTAuJUnXuDHUlMcyILddoQ6KPlwIbg1up
mnJjmuRKWL2jSM7x1PjBYYTKZdKuGIa9P81FYxhJukiQTlnly1c2HEihS3S+X3H7CSHawyJeYX/c
89ZtPveDcb4Xg/OO9Q7mSDtETMnt8QywA7zZUYAb9Liyr9zaM+V6wTEuIGo6mcJ6a1iiKolleh36
YJQ6Jp+uRko0JFvgdqW10MkGu/a/CBsLbHkpjA==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
qrk/vlwmwM4TEA/5pvI0rcpQlqb0fLiPZ5fqGKjZYHsMCiezuqfHpZFYoLFDu6GCwCzd8xb13qII
1NOH5PcpxppjnpT/GOxIbmyGXmpAtnD3Q4BxX99Z21nvboOzahldO/tZU+ZdR7EgYjbtDRDM+gho
WIAiq7wbfxM0EvkJuFP0KGDRKFK8t4CMioK0ORTa0HvxUtN3wEalImJ1BMW0TUOtjK8JUKZA0wnt
OAsUmWAilus/lK9Tk8hiojKecAZgcr2W6QNn5r70fXLK0FxcCC43gR2UY1uyTKOrBS5O2yVXnp+/
oYyzqf/pRMLSNyhmK9B80ZI6kSOS0+k8gFU58A==


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
JcXUBBkTH5Y+gV3vUKsBD4+hF5TGA4L4mzGCNNG9AylTj5ez2qvMPJfyUG+VUYOktUvU7zVO4jgd
z5gY13D8jOo0tMcaTBauAhwhT/ciBGba8YjWuBV7OteFTAuJUnXuDHUlMcyILddoQ6KPlwIbg1up
mnJjmuRKWL2jSM7x1PjBYYTKZdKuGIa9P81FYxhJukiQTlnly1c2HEihS3S+X3H7CSHawyJeYX/c
89ZtPveDcb4Xg/OO9Q7mSDtETMnt8QywA7zZUYAb9Liyr9zaM+V6wTEuIGo6mcJ6a1iiKolleh36
YJQ6Jp+uRko0JFvgdqW10MkGu/a/CBsLbHkpjA==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
qrk/vlwmwM4TEA/5pvI0rcpQlqb0fLiPZ5fqGKjZYHsMCiezuqfHpZFYoLFDu6GCwCzd8xb13qII
1NOH5PcpxppjnpT/GOxIbmyGXmpAtnD3Q4BxX99Z21nvboOzahldO/tZU+ZdR7EgYjbtDRDM+gho
WIAiq7wbfxM0EvkJuFP0KGDRKFK8t4CMioK0ORTa0HvxUtN3wEalImJ1BMW0TUOtjK8JUKZA0wnt
OAsUmWAilus/lK9Tk8hiojKecAZgcr2W6QNn5r70fXLK0FxcCC43gR2UY1uyTKOrBS5O2yVXnp+/
oYyzqf/pRMLSNyhmK9B80ZI6kSOS0+k8gFU58A==


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
