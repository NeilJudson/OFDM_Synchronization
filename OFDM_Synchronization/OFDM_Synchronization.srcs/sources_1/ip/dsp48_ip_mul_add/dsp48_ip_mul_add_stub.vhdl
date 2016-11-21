-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
-- Date        : Mon Nov 21 18:57:41 2016
-- Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/dsp48_ip_mul_add/dsp48_ip_mul_add_stub.vhdl
-- Design      : dsp48_ip_mul_add
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045fbg676-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dsp48_ip_mul_add is
  Port ( 
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 17 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    C : in STD_LOGIC_VECTOR ( 47 downto 0 );
    P : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );

end dsp48_ip_mul_add;

architecture stub of dsp48_ip_mul_add is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,A[17:0],B[17:0],C[47:0],P[47:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "xbip_dsp48_macro_v3_0,Vivado 2015.2.1";
begin
end;
