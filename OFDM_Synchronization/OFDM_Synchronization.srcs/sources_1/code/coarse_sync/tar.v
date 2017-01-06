`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2016/11/24 14:20:28
// Design Name: 
// Module Name: tar
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


module tar #(
	parameter PSI_WIDTH		= 30, // 34, // <=38
	parameter PHI_WIDTH		= 31, // 35, // <=39
	parameter RAM_ADDR_WIDTH= 10
	)
	(
	clk				,
	reset			,
	
	i_work_ctrl_en	,
	i_work_ctrl		,
	
	i_psi_phi_data_valid,
	i_psi_data_i	,
	i_psi_data_q	,
	i_phi_data		,
	i_psi_phi_data_addr,
	
	o_tar_data_valid, // 11dly
	o_tar_data		,
	o_tar_data_addr
    );
	input					clk				;
	input					reset			;
	
	input					i_work_ctrl_en	;
	input					i_work_ctrl		; // 1'b0: 停止工作；1'b1: 开始工作，进入清零状态
	
	input					i_psi_phi_data_valid;
	input	signed	[37:0]	i_psi_data_i	;
	input	signed	[37:0]	i_psi_data_q	;
	input	signed	[38:0]	i_phi_data		;
	input			[15:0]	i_psi_phi_data_addr;
	
	output					o_tar_data_valid;
	output	signed	[86:0]	o_tar_data		;
	output			[15:0]	o_tar_data_addr	;

	
//================================================================================
// variable
//================================================================================
	localparam	SPRAM_DATA_WIDTH	= 144;
	localparam	SPRAM_ADDR_WIDTH	= 5;
	localparam	SPRAM_DATA_DEPTH	= 2**SPRAM_ADDR_WIDTH; // 32
	localparam	PSI_SUM_WIDTH		= PSI_WIDTH+5; // 35 // 39
	localparam	PHI_SUM_WIDTH		= PHI_WIDTH+5; // 36 // 40
	localparam	PSI_POWER_WIDTH		= 2*PSI_SUM_WIDTH; // 70 // 78
	localparam	PHI_POWER_WIDTH		= 2*(PHI_SUM_WIDTH-1); // 70 // 78
	localparam	TAR_WIDTH			= PSI_POWER_WIDTH+1; // 71 // 79
	// state
	localparam	IDLE	= 2'd0,
				WORK	= 2'd2;
	
	reg				[1:0]					state			;
	reg				[2:0]					cnt				;
	
	reg				[SPRAM_ADDR_WIDTH:0]	clear_addr		;
	reg										u1_wea			;
	reg				[SPRAM_ADDR_WIDTH-1:0]	u1_wr_addr		;
	reg				[SPRAM_ADDR_WIDTH-1:0]	u1_rd_addr		;
	reg				[SPRAM_ADDR_WIDTH-1:0]	u1_addra		;
	reg				[SPRAM_DATA_WIDTH-1:0]	u1_dina			;
	wire			[SPRAM_DATA_WIDTH-1:0]	u1_douta		;
	
	reg		signed	[PSI_WIDTH:0]			psi_i_add		;
	reg		signed	[PSI_WIDTH:0]			psi_q_add		;
	reg		signed	[PHI_WIDTH:0]			phi_add			;
	
	reg										i_psi_phi_data_valid_dly1;
	reg										sum_valid		;
	reg		signed	[PSI_SUM_WIDTH-1:0]		psi_i_sum		;
	reg		signed	[PSI_SUM_WIDTH-1:0]		psi_q_sum		;
	reg		signed	[PHI_SUM_WIDTH-1:0]		phi_sum			;
	reg				[RAM_ADDR_WIDTH-1:0]	sum_addr		;
	
	wire									u2_i_data_valid	;
	wire	signed	[41:0]					u2_i_data_i		;
	wire	signed	[41:0]					u2_i_data_q		;
	wire									u2_o_data_valid	;
	wire	signed	[83:0]					u2_o_data		;
	
	wire	signed	[41:0]					u3_A			;
	wire	signed	[41:0]					u3_B			;
	wire	signed	[83:0]					u3_P			;
	
	wire									power_valid		;
	wire	signed	[PSI_POWER_WIDTH-1:0]	psi_power		;
	wire	signed	[PHI_POWER_WIDTH-1:0]	phi_power		;
	
	reg										tar_data_valid	;
	reg		signed	[TAR_WIDTH-1:0]			tar_data		;
	reg				[RAM_ADDR_WIDTH-1:0]	tar_data_addr	;
	
	wire			[63:0]					test_psi_power	; // test
	wire			[63:0]					test_phi_power	; // test
	
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
		else if(i_psi_phi_data_valid == 1'b1) begin
			cnt <= 3'd1;
		end
		else begin
			cnt <= cnt + 1'd1;
		end
	end
	
//================================================================================
// sum
//================================================================================
	localparam u1_rd_addr_init = 'd1;
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			clear_addr	<= 'd0;
			u1_wea		<= 1'b0;
			u1_wr_addr	<= 'd0;
			u1_rd_addr	<= u1_rd_addr_init;
			u1_addra	<= 'd0;
			u1_dina		<= 'd0;
		end
		else begin
			case(state)
				IDLE: begin
					if(clear_addr < SPRAM_DATA_DEPTH) begin
						clear_addr	<= clear_addr + 1'd1;
						u1_wea		<= 1'b1;
						u1_addra	<= clear_addr;
					end
					else begin
						clear_addr	<= clear_addr;
						u1_wea		<= 1'b0;
						u1_addra	<= 'd0;
					end
					u1_wr_addr	<= 'd0;
					u1_rd_addr	<= u1_rd_addr_init;
					u1_dina		<= 'd0;
				end
				WORK: begin
					clear_addr	<= 'd0;
					if(i_psi_phi_data_valid == 1'b1) begin
						u1_wea		<= 1'b1; // cnt=1
						u1_wr_addr	<= u1_wr_addr + 1'd1;
						u1_rd_addr	<= u1_rd_addr + 1'd1;
						u1_addra	<= u1_wr_addr + 1'd1;
						u1_dina		<= {{(SPRAM_DATA_WIDTH-120){1'b0}},
										1'd0,i_phi_data,
										2'd0,i_psi_data_q,
										2'd0,i_psi_data_i};
					end
					else begin
						u1_wea		<= 1'b0;
						u1_wr_addr	<= u1_wr_addr;
						u1_rd_addr	<= u1_rd_addr;
						u1_addra	<= u1_rd_addr;
						u1_dina		<= u1_dina;
					end
				end
				default: begin
					clear_addr	<= 'd0;
					u1_wea		<= 1'b0;
					u1_wr_addr	<= 'd0;
					u1_rd_addr	<= u1_rd_addr_init;
					u1_addra	<= 'd0;
					u1_dina		<= 'd0;
				end
			endcase
		end
	end
	
	spram_144_32_ip u1_spram_144_32_ip (
		.clka	(clk		),	// input clka;
		.wea	(u1_wea		),	// input [0:0]wea;
		.addra	(u1_addra	),	// input [4:0]addra;
		.dina	(u1_dina	),	// input [143:0]dina;
		.douta	(u1_douta	)	// output [143:0]douta;
	);
	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			psi_i_add	<= 'd0;
			psi_q_add	<= 'd0;
			phi_add		<= 'd0;
		end
		else if(i_psi_phi_data_valid == 1'b1) begin
			psi_i_add	<= {i_psi_data_i[PSI_WIDTH-1],i_psi_data_i}
							- {u1_douta[PSI_WIDTH-1],u1_douta[PSI_WIDTH-1:0]};
			psi_q_add	<= {i_psi_data_q[PSI_WIDTH-1],i_psi_data_q}
							- {u1_douta[40+PSI_WIDTH-1],u1_douta[40+PSI_WIDTH-1:40]};
			phi_add		<= {i_phi_data[PHI_WIDTH-1],i_phi_data}
							- {u1_douta[80+PHI_WIDTH-1],u1_douta[80+PHI_WIDTH-1:80]};
		end
		else begin
			psi_i_add	<= psi_i_add;
			psi_q_add	<= psi_q_add;
			phi_add		<= phi_add;
		end
	end
	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			i_psi_phi_data_valid_dly1 <= 1'b0;
		end
		else begin
			i_psi_phi_data_valid_dly1 <= i_psi_phi_data_valid; // cnt=1
		end
	end
	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			sum_valid	<= 1'b0;
			psi_i_sum	<= 'd0;
			psi_q_sum	<= 'd0;
			phi_sum		<= 'd0;
			sum_addr	<= 'd0;
		end
		else if(i_psi_phi_data_valid_dly1 == 1'b1) begin
			sum_valid	<= 1'b1; // cnt=2
			psi_i_sum	<= psi_i_sum + {{(PSI_SUM_WIDTH-PSI_WIDTH-1){psi_i_add[PSI_WIDTH]}},psi_i_add};
			psi_q_sum	<= psi_q_sum + {{(PSI_SUM_WIDTH-PSI_WIDTH-1){psi_q_add[PSI_WIDTH]}},psi_q_add};
			phi_sum		<= phi_sum + {{(PHI_SUM_WIDTH-PHI_WIDTH-1){phi_add[PHI_WIDTH]}},phi_add};
			sum_addr	<= i_psi_phi_data_addr[RAM_ADDR_WIDTH-1:0] - 5'd31;
		end
		else begin
			sum_valid	<= 1'b0;
			psi_i_sum	<= psi_i_sum;
			psi_q_sum	<= psi_q_sum;
			phi_sum		<= phi_sum;
			sum_addr	<= sum_addr;
		end
	end
	
//================================================================================
// power
//================================================================================
	assign u2_i_data_valid	= sum_valid;
	assign u2_i_data_i		= {{(42-PSI_SUM_WIDTH){psi_i_sum[PSI_SUM_WIDTH-1]}},psi_i_sum};
	assign u2_i_data_q		= {{(42-PSI_SUM_WIDTH){psi_q_sum[PSI_SUM_WIDTH-1]}},psi_q_sum};
	assign u3_A				= {{(42-PHI_SUM_WIDTH+1){phi_sum[PHI_SUM_WIDTH-1]}},phi_sum[PHI_SUM_WIDTH-1:1]}; // *0.5
	assign u3_B				= {{(42-PHI_SUM_WIDTH+1){phi_sum[PHI_SUM_WIDTH-1]}},phi_sum[PHI_SUM_WIDTH-1:1]};
	
	complex_abs_power2_42_ip u2_complex_abs_power2_42_ip(
		.i_clk			(clk			),
		.i_data_valid	(u2_i_data_valid),
		.i_data_i		(u2_i_data_i	),
		.i_data_q		(u2_i_data_q	),
		.o_data_valid	(u2_o_data_valid), // 8dly，cnt=2
		.o_data			(u2_o_data		)
	);
	
	multiplier_42_42_ip u3_multiplier_42_42_ip(
		.CLK(clk	),	// input CLK;
		.A	(u3_A	),	// input [41:0]A;
		.B	(u3_B	),	// input [41:0]B;
		.P	(u3_P	)	// output [83:0]P; // 7dly，cnt=1
	);
	
	assign power_valid	= u2_o_data_valid;
	assign psi_power	= u2_o_data[PSI_POWER_WIDTH-1:0];
	assign phi_power	= u3_P[PHI_POWER_WIDTH-1:0];
	assign test_psi_power = psi_power[63:0]; // test
	assign test_phi_power = phi_power[65:2]; // test
	
//================================================================================
// tar
//================================================================================
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			tar_data_valid	<= 1'b0;
			tar_data		<= 'd0;
			tar_data_addr	<= 'd0;
		end
		else if(power_valid == 1'b1) begin
			tar_data_valid	<= 1'b1; // 11dly，cnt=3
			tar_data		<= {psi_power[PSI_POWER_WIDTH-1],psi_power}
								- {{(PSI_POWER_WIDTH-PHI_POWER_WIDTH+3){phi_power[PHI_POWER_WIDTH-1]}},phi_power[PHI_POWER_WIDTH-1:2]};
								// psi_power-(0.5*0.5)*phi_power
			tar_data_addr	<= sum_addr - 1'd1;
		end
		else begin
			tar_data_valid	<= 1'b0;
			tar_data		<= tar_data;
			tar_data_addr	<= tar_data_addr;
		end
	end
	
	assign o_tar_data_valid	= tar_data_valid;
	assign o_tar_data		= {{(87-TAR_WIDTH){tar_data[TAR_WIDTH-1]}},tar_data};
	assign o_tar_data_addr	= {{(16-RAM_ADDR_WIDTH){1'b0}},tar_data_addr};

	
endmodule
