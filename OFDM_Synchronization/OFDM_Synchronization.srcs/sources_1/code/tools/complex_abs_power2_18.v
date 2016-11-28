`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2016/11/21 15:51:39
// Design Name: 
// Module Name: complex_abs_power2_18
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


module complex_abs_power2_18(
	i_clk,
	i_data_valid,
	i_data_i,
	i_data_q,
	o_data_valid,
	o_data
    );
	input						i_clk;
	input						i_data_valid;
	input		signed	[17:0]	i_data_i;
	input		signed	[17:0]	i_data_q;
	output						o_data_valid;
	output		signed	[35:0]	o_data;
	
//================================================================================
// variable
//================================================================================
	reg							i_data_valid_dly1;
	reg							i_data_valid_dly2;
	reg							i_data_valid_dly3;
	
	wire		signed	[17:0]	u1_A;
	wire		signed	[17:0]	u1_B;
	wire		signed	[47:0]	u1_P;
	
	wire		signed	[17:0]	u2_A;
	wire		signed	[17:0]	u2_B;
	wire		signed	[47:0]	u2_C;
	wire		signed	[47:0]	u2_P;
	
	always @(posedge i_clk) begin
		i_data_valid_dly1 <= i_data_valid;
		i_data_valid_dly2 <= i_data_valid_dly1;
		i_data_valid_dly3 <= i_data_valid_dly2;
	end
	
	assign u1_A = i_data_i;
	assign u1_B = i_data_i;
	assign u2_A = i_data_q;
	assign u2_B = i_data_q;
	assign u2_C = u1_P;
	
	dsp48_ip_mul u1_dsp48_ip_mul(
		.CLK	(i_clk	),	// input CLK;
		.A		(u1_A	),	// input [17:0]A;
		.B		(u1_B	),	// input [17:0]B;
		.P		(u1_P	)	// output [47:0]P; // 2dly
	);
	
	dsp48_ip_mul_add u2_dsp48_ip_mul_add(
		.CLK	(i_clk	),	// input CLK;
		.A		(u2_A	),	// input [17:0]A;
		.B		(u2_B	),	// input [17:0]B;
		.C		(u2_C	),	// input [47:0]C;
		.P		(u2_P	)	// output [47:0]P; // 3dly
	);
	
	assign o_data_valid	= i_data_valid_dly3;
	assign o_data		= u2_P[35:0];

endmodule
