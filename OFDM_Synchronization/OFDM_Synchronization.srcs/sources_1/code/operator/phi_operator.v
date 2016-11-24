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


module phi_operator #(
	parameter SYNC_DATA_WIDTH = 16,
	parameter PHI_WIDTH = 2*SYNC_DATA_WIDTH+2 // 34
	)
	(
	clk			,
	reset		,
	
	i_work_ctrl_en,
	i_work_ctrl	,
	
	i_data_valid,
	i_data		,
	
	o_data_valid,
	o_data
	);
	input								clk			;
	input								reset		;
	
	input								i_work_ctrl_en;
	input								i_work_ctrl	; // 1'b0: 停止工作；1'b1: 开始工作，进入清零状态
	
	input								i_data_valid;
	input		[2*SYNC_DATA_WIDTH-1:0]	i_data		; // 高位虚部，低位实部。输入应是延迟后的数据
	
	output								o_data_valid; // 6dly
	output		[PHI_WIDTH-1:0]			o_data		;
	
//================================================================================
// variable
//================================================================================
	localparam SPRAM_ADDR_WIDTH = 6;
	localparam SPRAM_DATA_WIDTH = 32;
	localparam DATA_POWER_WIDTH = 2*SYNC_DATA_WIDTH; // 32
	// state
	localparam	IDLE	= 2'd0,
				CLEAR	= 2'd1,
				WORK	= 2'd2;
	
	reg				[1:0]					state			;
	reg				[SPRAM_ADDR_WIDTH:0]	clear_count		;
	
	reg										u1_i_data_valid	;
	reg		signed	[17:0]					u1_i_data_i		;
	reg		signed	[17:0]					u1_i_data_q		;
	wire									u1_o_data_valid	;
	wire	signed	[35:0]					u1_o_data		;
	
	reg										u2_wea			;
	reg				[SPRAM_ADDR_WIDTH-1:0]	u2_wr_addr		;
	reg				[SPRAM_ADDR_WIDTH-1:0]	u2_rd_addr		;
	reg				[SPRAM_ADDR_WIDTH-1:0]	u2_addra		;
	reg				[SPRAM_DATA_WIDTH-1:0]	u2_dina			;
	wire			[SPRAM_DATA_WIDTH-1:0]	u2_douta		;

	wire									u3_wea			;
	wire			[SPRAM_ADDR_WIDTH-1:0]	u3_wr_addr		;
	wire			[SPRAM_ADDR_WIDTH-1:0]	u3_rd_addr		;
	wire			[SPRAM_ADDR_WIDTH-1:0]	u3_addra		;
	wire			[SPRAM_DATA_WIDTH-1:0]	u3_dina			;
	wire			[SPRAM_DATA_WIDTH-1:0]	u3_douta		;

	wire									u4_wea			;
	wire			[SPRAM_ADDR_WIDTH-1:0]	u4_wr_addr		;
	wire			[SPRAM_ADDR_WIDTH-1:0]	u4_rd_addr		;
	wire			[SPRAM_ADDR_WIDTH-1:0]	u4_addra		;
	wire			[SPRAM_DATA_WIDTH-1:0]	u4_dina			;
	wire			[SPRAM_DATA_WIDTH-1:0]	u4_douta		;
	
	reg										u1_o_data_valid_dly1;
	reg										u1_o_data_valid_dly2;
	reg		signed	[DATA_POWER_WIDTH:0]	add12			;
	reg		signed	[DATA_POWER_WIDTH:0]	add34			;
	reg		signed	[DATA_POWER_WIDTH+1:0]	add1234			;
	
//================================================================================
// state
//================================================================================
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			state <= IDLE;
		end
		else begin
			case(state)
				IDLE: begin
					if((i_work_ctrl_en==1'b1) && (i_work_ctrl==1'b1)) begin
						state <= CLEAR;
					end
					else begin
						state <= IDLE;
					end
				end
				CLEAR: begin
					if((i_work_ctrl_en==1'b1) && (i_work_ctrl==1'b0)) begin
						state <= IDLE;
					end
					else if(clear_count >= 'd65) begin
						state <= WORK;
					end
					else begin
						state <= CLEAR;
					end
				end
				WORK: begin
					if((i_work_ctrl_en==1'b1) && (i_work_ctrl==1'b0)) begin
						state <= IDLE;
					end
					else begin
						state <= WORK;
					end
				end
				default: begin
					state <= IDLE;
				end
			endcase
		end
	end
	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			clear_count <= 'd0;
		end
		else begin
			case(state)
				IDLE: begin
					clear_count <= 'd0;
				end
				CLEAR: begin
					clear_count <= clear_count + 1'd1;
				end
				WORK: begin
					clear_count <= 'd0;
				end
				default: begin
					clear_count <= 'd0;
				end
			endcase
		end
	end
	
//================================================================================
// complex abs power2
//================================================================================
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			u1_i_data_valid	<= 1'b0;
			u1_i_data_i		<= 18'd0;
			u1_i_data_q		<= 18'd0;
		end
		else if((state==WORK) && (i_data_valid==1'b1)) begin
			u1_i_data_valid	<= 1'b1;
			u1_i_data_i		<= {{(18-SYNC_DATA_WIDTH){i_data[SYNC_DATA_WIDTH-1]}},
								i_data[SYNC_DATA_WIDTH-1:0]};
			u1_i_data_q		<= {{(18-SYNC_DATA_WIDTH){i_data[2*SYNC_DATA_WIDTH-1]}},
								i_data[2*SYNC_DATA_WIDTH-1:SYNC_DATA_WIDTH]};
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
			u2_wr_addr	<= 'd0;
			u2_rd_addr	<= 'd1;
			u2_addra	<= 'd0;
			u2_dina		<= 'd0;
		end
		else begin
			case(state)
				IDLE: begin
					u2_wea		<= 1'b0;
					u2_wr_addr	<= 'd0;
					u2_rd_addr	<= 'd1;
					u2_addra	<= 'd0;
					u2_dina		<= 'd0;
				end
				CLEAR: begin
					u2_wea		<= 1'b1;
					u2_wr_addr	<= 'd0;
					u2_rd_addr	<= 'd1;
					u2_addra	<= u2_addra + 1'd1;
					u2_dina		<= 'd0;
				end
				WORK: begin
					if(u1_o_data_valid == 1'b1) begin
						u2_wea		<= 1'b1;
						u2_wr_addr	<= u2_wr_addr + 1'd1;
						u2_rd_addr	<= u2_rd_addr + 1'd1;
						u2_addra	<= u2_wr_addr + 1'd1;
						u2_dina		<= {{(SPRAM_DATA_WIDTH-DATA_POWER_WIDTH){u1_o_data[DATA_POWER_WIDTH-1]}},
										u1_o_data[DATA_POWER_WIDTH-1:0]};
					end
					else begin
						u2_wea		<= 1'b0;
						u2_wr_addr	<= u2_wr_addr;
						u2_rd_addr	<= u2_rd_addr;
						u2_addra	<= u2_rd_addr;
						u2_dina		<= u2_dina;
					end
				end
				default: begin
					u2_wea		<= 1'b0;
					u2_wr_addr	<= 'd0;
					u2_rd_addr	<= 'd1;
					u2_addra	<= 'd0;
					u2_dina		<= 'd0;
				end
			endcase
		end
		
	end
	
	assign u3_wea		= u2_wea	;
	assign u3_wr_addr	= u2_wr_addr;
	assign u3_rd_addr	= u2_rd_addr;
	assign u3_addra		= u2_addra	;
	assign u3_dina		= u2_dina	;
	
	assign u4_wea		= u2_wea	;
	assign u4_wr_addr	= u2_wr_addr;
	assign u4_rd_addr	= u2_rd_addr;
	assign u4_addra		= u2_addra	;
	assign u4_dina		= u3_dina	;
	
	spram_32_64_ip u2_spram_32_64_ip (
		.clka	(clk		),	// input clka;
		.wea	(u2_wea		),	// input [0:0]wea;
		.addra	(u2_addra	),	// input [5:0]addra;
		.dina	(u2_dina	),	// input [31:0]dina;
		.douta	(u2_douta	)	// output [31:0]douta;
	);
	
	spram_32_64_ip u3_spram_32_64_ip (
		.clka	(clk		),	// input clka;
		.wea	(u3_wea		),	// input [0:0]wea;
		.addra	(u3_addra	),	// input [5:0]addra;
		.dina	(u3_dina	),	// input [31:0]dina;
		.douta	(u3_douta	)	// output [31:0]douta;
	);
	
	spram_32_64_ip u4_spram_32_64_ip (
		.clka	(clk		),	// input clka;
		.wea	(u4_wea		),	// input [0:0]wea;
		.addra	(u4_addra	),	// input [5:0]addra;
		.dina	(u4_dina	),	// input [31:0]dina;
		.douta	(u4_douta	)	// output [31:0]douta;
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
			add12 <= 'd0;
			add34 <= 'd0;
		end
		else if(u1_o_data_valid == 1'b1) begin
			add12 <= u1_o_data[DATA_POWER_WIDTH-1:0]
					+ u2_douta[DATA_POWER_WIDTH-1:0];
			add34 <= u3_douta[DATA_POWER_WIDTH-1:0]
					+ u4_douta[DATA_POWER_WIDTH-1:0];
		end
		else begin
			add12 <= add12;
			add34 <= add34;
		end
	end
	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			add1234 <= 'd0;
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
