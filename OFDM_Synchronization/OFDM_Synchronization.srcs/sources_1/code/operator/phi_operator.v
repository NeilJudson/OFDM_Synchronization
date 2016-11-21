`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2016/11/21 15:37:37
// Design Name: 
// Module Name: phi_operator
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


module phi_operator(
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
	input		[31:0]	i_data		; // 高位虚部，低位实部。
	
	output				o_data_valid;
	output		[33:0]	o_data		;
	
//================================================================================
// variable
//================================================================================
	wire		[15:0]	i_data_i			;
	wire		[15:0]	i_data_q_neg		;
	
	reg					u1_i_data_valid		;
	reg			[17:0]	u1_i_data_i			;
	reg			[17:0]	u1_i_data_q			;
	wire				u1_o_data_valid		;
	wire		[35:0]	u1_o_data			;
	
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
	
	reg					u1_o_data_valid_dly1;
	reg					u1_o_data_valid_dly2;
	reg			[32:0]	add12				;
	reg			[32:0]	add34				;
	reg			[33:0]	add1234				;
	
//================================================================================
// complex abs power2
//================================================================================
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			u1_i_data_valid	<= 1'b0;
			u1_i_data_i		<= 18'd0;
			u1_i_data_q		<= 18'd0;
		end
		else if(i_data_valid == 1'b1) begin
			u1_i_data_valid	<= 1'b1;
			u1_i_data_i		<= {{(2){i_data[15]}},i_data[15:0]};
			u1_i_data_q		<= {{(2){i_data[31]}},i_data[31:16]};
		end
		else begin
			u1_i_data_valid	<= 1'b0;
			u1_i_data_i		<= u1_i_data_i;
			u1_i_data_q		<= u1_i_data_q;
		end
	end

	complex_abs_power2_18 u1_complex_abs_power2_18(
		.i_clk			(clk			),
		.i_data_valid	(u1_i_data_valid),
		.i_data_i		(u1_i_data_i	),
		.i_data_q		(u1_i_data_q	),
		.o_data_valid	(u1_o_data_valid), // 3dly
		.o_data			(u1_o_data		)
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
		else if(u1_o_data_valid == 1'b1) begin
			u2_wea		<= 1'b1;
			u2_wr_addr	<= u2_wr_addr + 1'd1;
			u2_rd_addr	<= u2_rd_addr + 1'd1;
			u2_addra	<= u2_wr_addr + 1'd1;
			u2_dina		<= {u1_o_data[31:0]};
		end
		else begin
			u2_wea		<= 1'b0;
			u2_wr_addr	<= u2_wr_addr;
			u2_rd_addr	<= u2_rd_addr;
			u2_addra	<= u2_rd_addr;
			u2_dina		<= u2_dina;
		end
	end
	
	spram_32_64_ip u2_spram_32_64_ip (
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
		else if(u1_o_data_valid == 1'b1) begin
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
	
	spram_32_64_ip u3_spram_32_64_ip (
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
		else if(u1_o_data_valid == 1'b1) begin
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
	
	spram_32_64_ip u4_spram_32_64_ip (
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
			u1_o_data_valid_dly1 <= 1'b0;
			u1_o_data_valid_dly2 <= 1'b0;
		end
		else begin
			u1_o_data_valid_dly1 <= u1_o_data_valid;
			u1_o_data_valid_dly2 <= u1_o_data_valid_dly1;
		end
	end
	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			add12 <= 33'd0;
			add34 <= 33'd0;
		end
		else if(u1_o_data_valid == 1'b1) begin
			add12 <= u1_o_data[31:0] + u2_douta[31:0];
			add34 <= u3_douta[31:0] + u4_douta[31:0];
		end
		else begin
			add12 <= add12;
			add34 <= add34;
		end
	end
	

	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			add1234 <= 34'd0;
		end
		else if(u1_o_data_valid_dly1 == 1'b1) begin
			add1234 <= add12 + add34;
		end
		else begin
			add1234 <= add1234;
		end
	end
	
	assign o_data_valid = u1_o_data_valid_dly2;
	assign o_data = add1234;
	
endmodule
