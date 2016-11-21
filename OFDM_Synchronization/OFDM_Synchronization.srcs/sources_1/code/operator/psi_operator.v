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
	output		[67:0]	o_data		;
	
//================================================================================
// variable
//================================================================================
	wire		[15:0]	i_data_i			;
	wire		[15:0]	i_data_q_neg		;
	
	reg					u1_s_axis_a_tvalid	;
	reg			[31:0]	u1_s_axis_a_tdata	;
	reg			[31:0]	u1_s_axis_b_tdata	;
	wire				u1_m_axis_dout_tvalid;
	wire		[79:0]	u1_m_axis_dout_tdata;
	
	reg					u2_wea				;
	reg			[5:0]	u2_wr_addr			;
	reg			[5:0]	u2_rd_addr			;
	reg			[5:0]	u2_addra			;
	reg			[63:0]	u2_dina				;
	wire		[63:0]	u2_douta			;

	reg					u3_wea				;
	reg			[5:0]	u3_wr_addr			;
	reg			[5:0]	u3_rd_addr			;
	reg			[5:0]	u3_addra			;
	reg			[63:0]	u3_dina				;
	wire		[63:0]	u3_douta			;

	reg					u4_wea				;
	reg			[5:0]	u4_wr_addr			;
	reg			[5:0]	u4_rd_addr			;
	reg			[5:0]	u4_addra			;
	reg			[63:0]	u4_dina				;
	wire		[63:0]	u4_douta			;
	
	reg					u1_m_axis_dout_tvalid_dly1;
	reg					u1_m_axis_dout_tvalid_dly2;
	reg			[32:0]	add12_i				;
	reg			[32:0]	add34_i				;
	reg			[33:0]	add1234_i			;
	reg			[32:0]	add12_q				;
	reg			[32:0]	add34_q				;
	reg			[33:0]	add1234_q			;
	
//================================================================================
// complex multiply
//================================================================================
	assign i_data_i		= i_data[15:0];
	assign i_data_q_neg	= -i_data[31:16];
	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			u1_s_axis_a_tvalid	<= 1'b0;
			u1_s_axis_a_tdata	<= 32'd0;
			u1_s_axis_b_tdata	<= 32'd0;
		end
		else if(i_data_valid == 1'b1) begin
			u1_s_axis_a_tvalid	<= 1'b1;
			u1_s_axis_a_tdata	<= {i_data_q_neg,i_data_i};
			u1_s_axis_b_tdata	<= i_data_dly;
		end
		else begin
			u1_s_axis_a_tvalid	<= 1'b0;
			u1_s_axis_a_tdata	<= u1_s_axis_a_tdata;
			u1_s_axis_b_tdata	<= u1_s_axis_b_tdata;
		end
	end
	
	complex_multiplier_ip_16_16 u1_complex_multiplier_ip_16_16(
		.aclk				(clk					),	// input aclk;
		.s_axis_a_tvalid	(u1_s_axis_a_tvalid		),	// input s_axis_a_tvalid;
		.s_axis_a_tdata		(u1_s_axis_a_tdata		),	// input [31:0]s_axis_a_tdata;
		.s_axis_b_tvalid	(u1_s_axis_a_tvalid		),	// input s_axis_b_tvalid;
		.s_axis_b_tdata		(u1_s_axis_b_tdata		),	// input [31:0]s_axis_b_tdata;
		.m_axis_dout_tvalid	(u1_m_axis_dout_tvalid	),	// output m_axis_dout_tvalid; // dly6
		.m_axis_dout_tdata	(u1_m_axis_dout_tdata	)	// output [79:0]m_axis_dout_tdata; // 高位虚部，低位实部。
	);
	
//================================================================================
// 3级64深度延迟
//================================================================================
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			u2_wea		<= 1'b0;
			u2_wr_addr	<= 6'd0;
			u2_rd_addr	<= 6'd1;
			u2_addra	<= 6'd0;
			u2_dina		<= 64'd0;
		end
		else if(u1_m_axis_dout_tvalid == 1'b1) begin
			u2_wea		<= 1'b1;
			u2_wr_addr	<= u2_wr_addr + 1'd1;
			u2_rd_addr	<= u2_rd_addr + 1'd1;
			u2_addra	<= u2_wr_addr + 1'd1;
			u2_dina		<= {u1_m_axis_dout_tdata[71:40],u1_m_axis_dout_tdata[31:0]};
		end
		else begin
			u2_wea		<= 1'b0;
			u2_wr_addr	<= u2_wr_addr;
			u2_rd_addr	<= u2_rd_addr;
			u2_addra	<= u2_rd_addr;
			u2_dina		<= u2_dina;
		end
	end
	
	spram_64_64_ip u2_spram_64_64_ip (
		.clka	(clk		),	// input clka;
		.wea	(u2_wea		),	// input [0:0]wea;
		.addra	(u2_addra	),	// input [5:0]addra;
		.dina	(u2_dina	),	// input [63:0]dina;
		.douta	(u2_douta	)	// output [63:0]douta;
	);
	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			u3_wea		<= 1'b0;
			u3_wr_addr	<= 6'd0;
			u3_rd_addr	<= 6'd1;
			u3_addra	<= 6'd0;
			u3_dina		<= 64'd0;
		end
		else if(u1_m_axis_dout_tvalid == 1'b1) begin
			u3_wea		<= 1'b1;
			u3_wr_addr	<= u3_wr_addr + 1'd1;
			u3_rd_addr	<= u3_rd_addr + 1'd1;
			u3_addra	<= u3_wr_addr + 1'd1;
			u3_dina		<= u2_douta;
		end
		else begin
			u3_wea		<= 1'b0;
			u3_wr_addr	<= u3_wr_addr;
			u3_rd_addr	<= u3_rd_addr;
			u3_addra	<= u3_rd_addr;
			u3_dina		<= u3_dina;
		end
	end
	
	spram_64_64_ip u3_spram_64_64_ip (
		.clka	(clk		),	// input clka;
		.wea	(u3_wea		),	// input [0:0]wea;
		.addra	(u3_addra	),	// input [5:0]addra;
		.dina	(u3_dina	),	// input [63:0]dina;
		.douta	(u3_douta	)	// output [63:0]douta;
	);
	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			u4_wea		<= 1'b0;
			u4_wr_addr	<= 6'd0;
			u4_rd_addr	<= 6'd1;
			u4_addra	<= 6'd0;
			u4_dina		<= 64'd0;
		end
		else if(u1_m_axis_dout_tvalid == 1'b1) begin
			u4_wea		<= 1'b1;
			u4_wr_addr	<= u4_wr_addr + 1'd1;
			u4_rd_addr	<= u4_rd_addr + 1'd1;
			u4_addra	<= u4_wr_addr + 1'd1;
			u4_dina		<= u3_douta;
		end
		else begin
			u4_wea		<= 1'b0;
			u4_wr_addr	<= u4_wr_addr;
			u4_rd_addr	<= u4_rd_addr;
			u4_addra	<= u4_rd_addr;
			u4_dina		<= u4_dina;
		end
	end
	
	spram_64_64_ip u4_spram_64_64_ip (
		.clka	(clk		),	// input clka;
		.wea	(u4_wea		),	// input [0:0]wea;
		.addra	(u4_addra	),	// input [5:0]addra;
		.dina	(u4_dina	),	// input [63:0]dina;
		.douta	(u4_douta	)	// output [63:0]douta;
	);
	
//================================================================================
// exception
//================================================================================
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			u1_m_axis_dout_tvalid_dly1 <= 1'b0;
			u1_m_axis_dout_tvalid_dly2 <= 1'b0;
		end
		else begin
			u1_m_axis_dout_tvalid_dly1 <= u1_m_axis_dout_tvalid;
			u1_m_axis_dout_tvalid_dly2 <= u1_m_axis_dout_tvalid_dly1;
		end
	end
	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			add12_i <= 33'd0;
			add34_i <= 33'd0;
			add12_q <= 33'd0;
			add34_q <= 33'd0;
		end
		else if(u1_m_axis_dout_tvalid == 1'b1) begin
			add12_i <= u1_m_axis_dout_tdata[31:0] + u2_douta[31:0];
			add34_i <= u3_douta[31:0] + u4_douta[31:0];
			add12_q <= u1_m_axis_dout_tdata[71:40] + u2_douta[63:32];
			add34_q <= u3_douta[63:32] + u4_douta[63:32];
		end
		else begin
			add12_i <= add12_i;
			add34_i <= add34_i;
			add12_q <= add12_q;
			add34_q <= add34_q;
		end
	end
	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			add1234_i <= 34'd0;
			add1234_q <= 34'd0;
		end
		else if(u1_m_axis_dout_tvalid_dly1 == 1'b1) begin
			add1234_i <= add12_i + add34_i;
			add1234_q <= add12_q + add34_q;
		end
		else begin
			add1234_i <= add1234_i;
			add1234_q <= add1234_q;
		end
	end
	
	assign o_data_valid = u1_m_axis_dout_tvalid_dly2;
	assign o_data = {add1234_q,add1234_i};
	
endmodule
