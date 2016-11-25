`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2016/11/25 19:39:28
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
	input					i_clk;
	input					i_data_valid;
	input	signed	[41:0]	i_data_i;
	input	signed	[41:0]	i_data_q;
	output					o_data_valid;
	output	signed	[83:0]	o_data;
	
	reg						i_data_valid_dly1;
	reg						i_data_valid_dly2;
	reg						i_data_valid_dly3;
	wire	signed	[83:0]	u1_p;
	
	always @(posedge i_clk) begin
		i_data_valid_dly1 <= i_data_valid;
		i_data_valid_dly2 <= i_data_valid_dly1;
		i_data_valid_dly3 <= i_data_valid_dly2;
	end
	
	multiplier_ip_42_42 u1_multiplier_ip_42_42(
		CLK	(i_clk		),	// input CLK;
		A	(i_data_i	),	// input [41:0]A;
		B	(i_data_i	),	// input [41:0]B;
		P	(u1_P		)	// output [83:0]P;	
	);
	
endmodule
