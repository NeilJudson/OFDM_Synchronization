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
	i_data_dly	,
	
	o_data_valid,
	o_data
	
	);
	input				clk			;
	input				reset		;
	
	input				i_data_valid;
	input		[31:0]	i_data		; // 高位虚部，低位实部。
	input		[31:0]	i_data_dly	; // 高位虚部，低位实部。
	
	output				o_data_valid;
	output		[63:0]	o_data		;
	
//================================================================================
// variable
//================================================================================
	reg					u1_s_axis_a_tvalid
	reg			[31:0]	u1_s_axis_a_tdata
	reg					u1_s_axis_b_tvalid
	reg			[31:0]	u1_s_axis_b_tdata
	wire				u1_data_valid;
	wire		[79:0]	u1_data		;
	
	reg					u2_ena		;
	reg					u2_wea		;
	reg			[7:0]	u2_addra	;
	reg			[63:0]	u2_dina		;
	reg			[63:0]	u2_douta	;
	
	
	
	complex_multiplier_ip_16_16 u1_complex_multiplier_ip_16_16(
		.aclk				(clk				),	// input aclk;
		.s_axis_a_tvalid	(u1_s_axis_a_tvalid	),	// input s_axis_a_tvalid;
		.s_axis_a_tdata		(u1_s_axis_a_tdata	),	// input [31:0]s_axis_a_tdata;
		.s_axis_b_tvalid	(u1_s_axis_b_tvalid	),	// input s_axis_b_tvalid;
		.s_axis_b_tdata		(u1_s_axis_b_tdata	),	// input [31:0]s_axis_b_tdata;
		.m_axis_dout_tvalid	(u1_data_valid		),	// output m_axis_dout_tvalid; // dly6
		.m_axis_dout_tdata	(u1_data			)	// output [79:0]m_axis_dout_tdata;
	);
	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			u1_data_valid_dly1 <= 1'b0;
			u1_data_valid_dly2 <= 1'b0;
			u1_data_valid_dly3 <= 1'b0;
		end
		else begin
			u1_data_valid_dly1 <= u1_data_valid;
			u1_data_valid_dly2 <= u1_data_valid_dly1;
			u1_data_valid_dly3 <= u1_data_valid_dly2;
		end
	end
	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			u2_dina <= 64'd0;
		end
		else begin
			u2_dina <= {u1_data[71:40],u1_data[31:0]};
		end
	end
	
	spram_256_ip u2_spram_256_ip (
		.clka	(clk		),	// input clka;
		.ena	(u2_ena		),	// input ena;
		.wea	(u2_wea		),	// input [0:0]wea;
		.addra	(u2_addra	),	// input [7:0]addra;
		.dina	(u2_dina	),	// input [63:0]dina;
		.douta	(u2_douta	)	// output [63:0]douta;
	);
	
endmodule
