-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
-- Date        : Fri Jan 06 16:10:34 2017
-- Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/complex_abs_power2_42_ip/complex_abs_power2_42_ip_stub.vhdl
-- Design      : complex_abs_power2_42_ip
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045fbg676-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity complex_abs_power2_42_ip is
  Port ( 
    i_clk : in STD_LOGIC;
    i_data_valid : in STD_LOGIC;
    i_data_i : in STD_LOGIC_VECTOR ( 41 downto 0 );
    i_data_q : in STD_LOGIC_VECTOR ( 41 downto 0 );
    o_data_valid : out STD_LOGIC;
    o_data : out STD_LOGIC_VECTOR ( 83 downto 0 )
  );

end complex_abs_power2_42_ip;

architecture stub of complex_abs_power2_42_ip is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_data_valid,i_data_i[41:0],i_data_q[41:0],o_data_valid,o_data[83:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "complex_abs_power2_42,Vivado 2015.2.1";
begin
end;
