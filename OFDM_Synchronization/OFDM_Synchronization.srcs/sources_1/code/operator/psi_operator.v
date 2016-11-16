`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2016/10/27 21:22:58
// Design Name: 
// Module Name: psi_operator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module psi_operator(
	clk			,
	reset		,
	
	i_data_valid,
	i_data		,
	
	o_data_valid,
	o_data
	
	);
	input				clk			;
	input				reset		;
	
	input				i_data_valid;
	input		[63:0]	i_data		; // [63:32]：延时数据，[31:0]：原始数据；高位虚部，低位实部。
	
	output				o_data_valid;
	output		[63:0]	o_data		;
	
	wire				u1_data_valid;
	wire		[63:0]	u1_data		;
	
	complex_multiplier_ip_16_16 u1_complex_multiplier_ip_16_16(
		.aclk				(clk			),	// aclk : IN STD_LOGIC;
		.s_axis_a_tvalid	(i_data_valid	),	// s_axis_a_tvalid : IN STD_LOGIC;
		.s_axis_a_tdata		(i_data[31:0]	),	// s_axis_a_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		.s_axis_b_tvalid	(i_data_valid	),	// s_axis_b_tvalid : IN STD_LOGIC;
		.s_axis_b_tdata		(i_data[63:32]	),	// s_axis_b_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		.m_axis_dout_tvalid	(u1_data_valid	),	// m_axis_dout_tvalid : OUT STD_LOGIC;
		.m_axis_dout_tdata	(u1_data		)	// m_axis_dout_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
	);
	
	
endmodule
