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
	input				i_clk;
	input				i_data_valid;
	input		[17:0]	i_data_i;
	input		[17:0]	i_data_q;
	output				o_data_valid;
	output		[35:0]	o_data;
	
	reg					i_data_valid_dly1;
	reg					i_data_valid_dly2;
	reg					i_data_valid_dly3;
	wire		[47:0]	u1_p;
	wire		[47:0]	u2_p;

	always @(posedge i_clk) begin
		i_data_valid_dly1 <= i_data_valid;
		i_data_valid_dly2 <= i_data_valid_dly1;
		i_data_valid_dly3 <= i_data_valid_dly2;
	end
	
	dsp48_ip_mul u1_dsp48_ip_mul(
		.CLK	(i_clk		),	// input CLK;
		.A		(i_data_i	),	// input [17:0]A;
		.B		(i_data_q	),	// input [17:0]B;
		.P		(u1_p		)	// output [47:0]P; // 2dly
	);
	
	dsp48_ip_mul_add u2_dsp48_ip_mul_add(
		.CLK	(i_clk	),	// input CLK;
		.A		(i_i	),	// input [17:0]A;
		.B		(i_i	),	// input [17:0]B;
		.C		(u1_p	),	// input [47:0]C;
		.P		(u2_p	)	// output [47:0]P; // 3dly
	);
	
	assign o_data_valid = i_data_valid_dly3;
	assign o_p = u2_p[35:0];

endmodule
