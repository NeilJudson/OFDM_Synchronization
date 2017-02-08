-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
-- Date        : Wed Feb 08 11:25:08 2017
-- Host        : FUTURE3 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/multiplier_35_1dsp_ip/multiplier_35_1dsp_ip_stub.vhdl
-- Design      : multiplier_35_1dsp_ip
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045fbg676-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplier_35_1dsp_ip is
  Port ( 
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_en : in STD_LOGIC;
    i_a : in STD_LOGIC_VECTOR ( 34 downto 0 );
    i_b : in STD_LOGIC_VECTOR ( 34 downto 0 );
    o_c_en : out STD_LOGIC;
    o_c : out STD_LOGIC_VECTOR ( 68 downto 0 )
  );

end multiplier_35_1dsp_ip;

architecture stub of multiplier_35_1dsp_ip is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_rst,i_en,i_a[34:0],i_b[34:0],o_c_en,o_c[68:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "multiplier_35_1dsp,Vivado 2015.2.1";
begin
end;
