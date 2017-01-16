`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2017/01/06 16:05:24
// Design Name: 
// Module Name: complex_abs_power2_42
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


module complex_abs_power2_42(
	i_clk,
	i_data_valid,
	i_data_i,
	i_data_q,
	o_data_valid,
	o_data
    );
	input						i_clk;
	input						i_data_valid;
	input		signed	[41:0]	i_data_i;
	input		signed	[41:0]	i_data_q;
	output	reg					o_data_valid; // 8dly
	output	reg	signed	[83:0]	o_data;
	
//================================================================================
// variable
//================================================================================
	reg				[6:0]	i_data_valid_reg;
	
	wire	signed	[41:0]	u1_A;
	wire	signed	[41:0]	u1_B;
	wire	signed	[83:0]	u1_P;
	
	wire	signed	[41:0]	u2_A;
	wire	signed	[41:0]	u2_B;
	wire	signed	[83:0]	u2_P;
	
	always @(posedge i_clk) begin
		i_data_valid_reg <= {i_data_valid_reg[5:0],i_data_valid};
	end
	
	assign u1_A = i_data_i;
	assign u1_B = i_data_i;
	assign u2_A = i_data_q;
	assign u2_B = i_data_q;
	
	multiplier_42_42_ip u1_multiplier_42_42_ip(
		.CLK(i_clk	),	// input CLK;
		.A	(u1_A	),	// input [41:0]A;
		.B	(u1_B	),	// input [41:0]B;
		.P	(u1_P	)	// output [83:0]P; // 7dly
	);
	
	multiplier_42_42_ip u2_multiplier_42_42_ip(
		.CLK(i_clk	),	// input CLK;
		.A	(u2_A	),	// input [41:0]A;
		.B	(u2_B	),	// input [41:0]B;
		.P	(u2_P	)	// output [83:0]P; // 7dly
	);
	
	always @(posedge i_clk) begin
		if(i_data_valid_reg[6] == 1'b1) begin
			o_data_valid	<= 1'b1;
			o_data			<= u1_P[82:0] + u2_P[82:0];
		end
		else begin
			o_data_valid	<= 1'b0;
			o_data			<= o_data;
		end
	end
	
endmodule
