`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2016/11/21 15:37:37
// Design Name: 
// Module Name: phi
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


module phi #(
	parameter SYNC_DATA_WIDTH	= 16, // <=18
	parameter RAM_ADDR_WIDTH	= 10 // <=10
	)
	(
	clk			,
	reset		,
	
	i_work_ctrl_en,
	i_work_ctrl	,
	
	i_data_valid,
	i_data_i	,
	i_data_q	,
	i_data_dly_i,
	i_data_dly_q,
	i_data_dly_addr,
	
	o_phi_data_valid,
	o_phi_data,
	o_phi_data_addr
	);
	input					clk			;
	input					reset		;
	
	input					i_work_ctrl_en;
	input					i_work_ctrl	; // 1'b0: 停止工作；1'b1: 开始工作，先进入清零状态
	
	input					i_data_valid;
	input	signed	[17:0]	i_data_i	;
	input	signed	[17:0]	i_data_q	;
	input	signed	[17:0]	i_data_dly_i;
	input	signed	[17:0]	i_data_dly_q;
	input			[15:0]	i_data_dly_addr;
	
	output					o_phi_data_valid; // 6dly
	output	signed	[38:0]	o_phi_data	;
	output			[15:0]	o_phi_data_addr; // 对应phi期望的第一个值的地址
	
//================================================================================
// variable
//================================================================================
	localparam	SPRAM_DATA_WIDTH	= 36;
	localparam	SPRAM_ADDR_WIDTH	= 6;
	localparam	SPRAM_DATA_DEPTH	= 2**SPRAM_ADDR_WIDTH;	// 64
	localparam	DATA_POWER_WIDTH	= 2*SYNC_DATA_WIDTH;	// 32
	localparam	PHI_WIDTH			= 2*SYNC_DATA_WIDTH+1+2;// 35
	// state
	localparam	IDLE	= 2'd0,
				WORK	= 2'd2;
	
	reg				[1:0]					state			;
	reg				[2:0]					cnt				;
	
	reg										u1_i_data_valid	;
	reg		signed	[17:0]					u1_i_data_i		;
	reg		signed	[17:0]					u1_i_data_q		;
	wire									u1_o_data_valid	;
	wire	signed	[35:0]					u1_o_data		;
	
	reg										u5_i_data_valid	;
	reg		signed	[17:0]					u5_i_data_i		;
	reg		signed	[17:0]					u5_i_data_q		;
	wire									u5_o_data_valid	;
	wire	signed	[35:0]					u5_o_data		;
	
	reg										power_add_valid	;
	reg		signed	[DATA_POWER_WIDTH:0]	power_add		;
	reg				[RAM_ADDR_WIDTH-1:0]	power_add_addr	;
	
	reg				[SPRAM_ADDR_WIDTH:0]	clear_addr		;
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
	reg				[SPRAM_DATA_WIDTH-1:0]	u3_dina			;
	wire			[SPRAM_DATA_WIDTH-1:0]	u3_douta		;

	wire									u4_wea			;
	wire			[SPRAM_ADDR_WIDTH-1:0]	u4_wr_addr		;
	wire			[SPRAM_ADDR_WIDTH-1:0]	u4_rd_addr		;
	wire			[SPRAM_ADDR_WIDTH-1:0]	u4_addra		;
	reg				[SPRAM_DATA_WIDTH-1:0]	u4_dina			;
	wire			[SPRAM_DATA_WIDTH-1:0]	u4_douta		;
	
	reg				[RAM_ADDR_WIDTH-1:0]	u2_dout_addr	;
	reg				[RAM_ADDR_WIDTH-1:0]	u3_dout_addr	;
	reg				[RAM_ADDR_WIDTH-1:0]	u4_dout_addr	;
	reg										u234_dout_valid	;
	
	reg										power_add_valid_dly1;
	reg										power_add_valid_dly2;
	reg		signed	[DATA_POWER_WIDTH+1:0]	add12			;
	reg		signed	[DATA_POWER_WIDTH+1:0]	add34			;
	reg		signed	[PHI_WIDTH-1:0]			add1234			;
	reg				[RAM_ADDR_WIDTH-1:0]	phi_data_addr	;
	
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
						state <= WORK;
					end
					else begin
						state <= IDLE;
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
			cnt <= 3'd0;
		end
		else if(i_data_valid == 1'b1) begin
			cnt <= 3'd1;
		end
		else begin
			cnt <= cnt + 1'd1;
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
			u5_i_data_valid	<= 1'b0;
			u5_i_data_i		<= 18'd0;
			u5_i_data_q		<= 18'd0;
		end
		else if((state==WORK) && (i_data_valid==1'b1)) begin
			u1_i_data_valid	<= 1'b1; // cnt=1
			u1_i_data_i		<= i_data_i;
			u1_i_data_q		<= i_data_q;
			u5_i_data_valid	<= 1'b1;
			u5_i_data_i		<= i_data_dly_i;
			u5_i_data_q		<= i_data_dly_q;
		end
		else begin
			u1_i_data_valid	<= 1'b0;
			u1_i_data_i		<= u1_i_data_i;
			u1_i_data_q		<= u1_i_data_q;
			u5_i_data_valid	<= 1'b0;
			u5_i_data_i		<= u5_i_data_i;
			u5_i_data_q		<= u5_i_data_q;
		end
	end
	
	complex_abs_power2_18_ip u1_complex_abs_power2_18_ip(
		.i_clk			(clk			),
		.i_data_valid	(u1_i_data_valid),
		.i_data_i		(u1_i_data_i	),
		.i_data_q		(u1_i_data_q	),
		.o_data_valid	(u1_o_data_valid), // 3dly，cnt=4
		.o_data			(u1_o_data		)
	);
	
	complex_abs_power2_18_ip u5_complex_abs_power2_18_ip(
		.i_clk			(clk			),
		.i_data_valid	(u5_i_data_valid),
		.i_data_i		(u5_i_data_i	),
		.i_data_q		(u5_i_data_q	),
		.o_data_valid	(u5_o_data_valid), // 3dly，cnt=4
		.o_data			(u5_o_data		)
	);
	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			power_add_valid	<= 1'b0;
			power_add		<= 'd0;
			power_add_addr	<= 'd0;
		end
		else if((u1_o_data_valid==1'b1) && (u5_o_data_valid==1'b1)) begin
			power_add_valid	<= 1'b1; // cnt=5
			power_add		<= {u1_o_data[DATA_POWER_WIDTH-1],u1_o_data[DATA_POWER_WIDTH-1:0]}
								+ {u5_o_data[DATA_POWER_WIDTH-1],u5_o_data[DATA_POWER_WIDTH-1:0]};
			power_add_addr	<= i_data_dly_addr[RAM_ADDR_WIDTH-1:0];
		end
		else begin
			power_add_valid	<= 1'b0;
			power_add		<= power_add;
			power_add_addr	<= power_add_addr;
		end
	end
	
//================================================================================
// 3级64深度延迟
//================================================================================
	localparam u2_rd_addr_init = 'd1;
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			clear_addr	<= 'd0;
			u2_wea		<= 1'b0;
			u2_wr_addr	<= 'd0;
			u2_rd_addr	<= u2_rd_addr_init;
			u2_addra	<= 'd0;
			u2_dina		<= 'd0;
			u3_dina		<= 'd0;
			u4_dina		<= 'd0;
		end
		else begin
			case(state)
				IDLE: begin
					if(clear_addr < SPRAM_DATA_DEPTH) begin
						clear_addr	<= clear_addr + 1'd1;
						u2_wea		<= 1'b1;
						u2_addra	<= clear_addr;
					end
					else begin
						clear_addr	<= clear_addr;
						u2_wea		<= 1'b0;
						u2_addra	<= 'd0;
					end
					u2_wr_addr	<= 'd0;
					u2_rd_addr	<= u2_rd_addr_init;
					u2_dina		<= 'd0;
					u3_dina		<= 'd0;
					u4_dina		<= 'd0;
				end
				WORK: begin
					clear_addr <= 'd0;
					if(power_add_valid == 1'b1) begin
						u2_wea		<= 1'b1; // cnt=6
						u2_wr_addr	<= u2_wr_addr + 1'd1;
						u2_rd_addr	<= u2_rd_addr + 1'd1;
						u2_addra	<= u2_wr_addr + 1'd1;
						u2_dina		<= {{(SPRAM_DATA_WIDTH-DATA_POWER_WIDTH-1){1'b0}},power_add};
						u3_dina		<= u2_douta;
						u4_dina		<= u3_douta;
					end
					else begin
						u2_wea		<= 1'b0;
						u2_wr_addr	<= u2_wr_addr;
						u2_rd_addr	<= u2_rd_addr;
						u2_addra	<= u2_rd_addr;
						u2_dina		<= u2_dina;
						u3_dina		<= u2_douta;
						u4_dina		<= u3_douta;
					end
				end
				default: begin
					u2_wea		<= 1'b0;
					u2_wr_addr	<= 'd0;
					u2_rd_addr	<= u2_rd_addr_init;
					u2_addra	<= 'd0;
					u2_dina		<= 'd0;
					u3_dina		<= 'd0;
					u4_dina		<= 'd0;
				end
			endcase
		end
	end
	
	assign u3_wea		= u2_wea	;
	assign u3_wr_addr	= u2_wr_addr;
	assign u3_rd_addr	= u2_rd_addr;
	assign u3_addra		= u2_addra	;
	
	assign u4_wea		= u2_wea	;
	assign u4_wr_addr	= u2_wr_addr;
	assign u4_rd_addr	= u2_rd_addr;
	assign u4_addra		= u2_addra	;
	
	spram_36_64_ip u2_spram_36_64_ip (
		.clka	(clk		),	// input clka;
		.wea	(u2_wea		),	// input [0:0]wea;
		.addra	(u2_addra	),	// input [5:0]addra;
		.dina	(u2_dina	),	// input [35:0]dina;
		.douta	(u2_douta	)	// output [35:0]douta;
	);
	
	spram_36_64_ip u3_spram_36_64_ip (
		.clka	(clk		),	// input clka;
		.wea	(u3_wea		),	// input [0:0]wea;
		.addra	(u3_addra	),	// input [5:0]addra;
		.dina	(u3_dina	),	// input [35:0]dina;
		.douta	(u3_douta	)	// output [35:0]douta;
	);
	
	spram_36_64_ip u4_spram_36_64_ip (
		.clka	(clk		),	// input clka;
		.wea	(u4_wea		),	// input [0:0]wea;
		.addra	(u4_addra	),	// input [5:0]addra;
		.dina	(u4_dina	),	// input [35:0]dina;
		.douta	(u4_douta	)	// output [35:0]douta;
	);
	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			u234_dout_valid	<= 1'b0;
			u2_dout_addr	<= 'd0;
			u3_dout_addr	<= 'd0;
			u4_dout_addr	<= 'd0;
		end
		else if(cnt == 3'd0) begin
			u234_dout_valid	<= 1'b1; // cnt=1
			u2_dout_addr	<= power_add_addr - 8'd63;
			u3_dout_addr	<= u2_dout_addr - 8'd63;
			u4_dout_addr	<= u3_dout_addr - 8'd63;
		end
		else begin
			u234_dout_valid	<= 1'b0;
			u2_dout_addr	<= u2_dout_addr;
			u3_dout_addr	<= u3_dout_addr;
			u4_dout_addr	<= u4_dout_addr;
		end
	end
	
//================================================================================
// exception
//================================================================================
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			power_add_valid_dly1 <= 1'b0;
			power_add_valid_dly2 <= 1'b0;
		end
		else begin
			power_add_valid_dly1 <= power_add_valid; // cnt=6
			power_add_valid_dly2 <= power_add_valid_dly1; // cnt=7
		end
	end
	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			add12 <= 'd0;
			add34 <= 'd0;
		end
		else if(power_add_valid == 1'b1) begin
			add12 <= {power_add[DATA_POWER_WIDTH],power_add[DATA_POWER_WIDTH:0]}
					+ {u2_douta[DATA_POWER_WIDTH],u2_douta[DATA_POWER_WIDTH:0]};
			add34 <= {u3_douta[DATA_POWER_WIDTH],u3_douta[DATA_POWER_WIDTH:0]}
					+ {u4_douta[DATA_POWER_WIDTH],u4_douta[DATA_POWER_WIDTH:0]};
		end
		else begin
			add12 <= add12;
			add34 <= add34;
		end
	end
	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			add1234			<= 'd0;
			phi_data_addr	<= 'd0;
		end
		else if(power_add_valid_dly1 == 1'b1) begin
			add1234			<= {add12[DATA_POWER_WIDTH+1],add12} + {add34[DATA_POWER_WIDTH+1],add34};
			phi_data_addr	<= u4_dout_addr;
		end
		else begin
			add1234			<= add1234;
			phi_data_addr	<= phi_data_addr;
		end
	end
	
	assign o_phi_data_valid	= power_add_valid_dly2;
	assign o_phi_data		= {{(39-PHI_WIDTH){add1234[PHI_WIDTH-1]}},add1234};
	assign o_phi_data_addr	= {{(16-RAM_ADDR_WIDTH){1'b0}},phi_data_addr};
	
endmodule