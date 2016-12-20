`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2016/11/24 14:20:28
// Design Name: 
// Module Name: tar_operator
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


module tar_operator #(
	parameter PSI_WIDTH = 34,
	parameter PHI_WIDTH = 35,
	parameter TAR_WIDTH = 2*(PSI_WIDTH+5)+1 // 79
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
	
	o_tar_data_valid, // 11dly
	o_tar_data		
    );
	input									clk				;
	input									reset			;
	
	input									i_work_ctrl_en	;
	input									i_work_ctrl		; // 1'b0: 停止工作；1'b1: 开始工作，进入清零状态
	
	input									i_psi_phi_data_valid;
	input		signed	[PSI_WIDTH-1:0]		i_psi_data_i	;
	input		signed	[PSI_WIDTH-1:0]		i_psi_data_q	;
	input		signed	[PHI_WIDTH-1:0]		i_phi_data		;
	
	output	reg								o_tar_data_valid;
	output	reg	signed	[TAR_WIDTH-1:0]		o_tar_data		;
	
//================================================================================
// variable
//================================================================================
	localparam	SPRAM_ADDR_WIDTH= 5;
	localparam	SPRAM_DATA_WIDTH= 108;
	localparam	PSI_SUM_WIDTH	= PSI_WIDTH+5; // 39
	localparam	PHI_SUM_WIDTH	= PHI_WIDTH+5; // 40
	localparam	PSI_POWER_WIDTH	= 2*PSI_SUM_WIDTH; // 78
	localparam	PHI_POWER_WIDTH	= 2*(PHI_SUM_WIDTH-1); // 78
	// state
	localparam	IDLE			= 2'd0,
				CLEAR			= 2'd1,
				WORK			= 2'd2;
	
	reg				[1:0]					state			;
	reg				[SPRAM_ADDR_WIDTH:0]	clear_count		;
	
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
					else if(clear_count >= 'd35) begin
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
				// IDLE: begin
					// clear_count <= 'd0;
				// end
				CLEAR: begin
					clear_count <= clear_count + 1'd1;
				end
				// WORK: begin
					// clear_count <= 'd0;
				// end
				default: begin
					clear_count <= 'd0;
				end
			endcase
		end
	end
	
//================================================================================
// sum
//================================================================================
	localparam u1_rd_addr_init = 'd1;
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			u1_wea		<= 1'b0;
			u1_wr_addr	<= 'd0;
			u1_rd_addr	<= u1_rd_addr_init;
			u1_addra	<= 'd0;
			u1_dina		<= 'd0;
		end
		else begin
			case(state)
				IDLE: begin
					u1_wea		<= 1'b0;
					u1_wr_addr	<= 'd0;
					u1_rd_addr	<= u1_rd_addr_init;
					u1_addra	<= 'd0;
					u1_dina		<= 'd0;
				end
				CLEAR: begin
					u1_wea		<= 1'b1;
					u1_wr_addr	<= 'd0;
					u1_rd_addr	<= u1_rd_addr_init;
					u1_addra	<= u1_addra + 1'd1;
					u1_dina		<= 'd0;
				end
				WORK: begin
					if(i_psi_phi_data_valid == 1'b1) begin
						u1_wea		<= 1'b1;
						u1_wr_addr	<= u1_wr_addr + 1'd1;
						u1_rd_addr	<= u1_rd_addr + 1'd1;
						u1_addra	<= u1_wr_addr + 1'd1;
						u1_dina		<= {{(SPRAM_DATA_WIDTH-PHI_WIDTH-2*PSI_WIDTH){1'b0}},
										i_phi_data[PHI_WIDTH-1:0],
										i_psi_data_q,
										i_psi_data_i};
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
					u1_wea		<= 1'b0;
					u1_wr_addr	<= 'd0;
					u1_rd_addr	<= u1_rd_addr_init;
					u1_addra	<= 'd0;
					u1_dina		<= 'd0;
				end
			endcase
		end
	end
	
	spram_108_32_ip u1_spram_108_32_ip (
		.clka	(clk		),	// input clka;
		.wea	(u1_wea		),	// input [0:0]wea;
		.addra	(u1_addra	),	// input [4:0]addra;
		.dina	(u1_dina	),	// input [107:0]dina;
		.douta	(u1_douta	)	// output [107:0]douta;
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
							- {u1_douta[2*PSI_WIDTH-1],u1_douta[2*PSI_WIDTH-1:PSI_WIDTH]};
			phi_add		<= {i_phi_data[PHI_WIDTH-1],i_phi_data}
							- {u1_douta[PHI_WIDTH+2*PSI_WIDTH-1],u1_douta[PHI_WIDTH+2*PSI_WIDTH-1:2*PSI_WIDTH]};
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
			i_psi_phi_data_valid_dly1 <= i_psi_phi_data_valid;
		end
	end
	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			sum_valid	<= 1'b0;
			psi_i_sum	<= 'd0;
			psi_q_sum	<= 'd0;
			phi_sum		<= 'd0;
		end
		else if(i_psi_phi_data_valid_dly1 == 1'b1) begin
			sum_valid	<= 1'b1;
			psi_i_sum	<= psi_i_sum + {{(PSI_SUM_WIDTH-PSI_WIDTH-1){psi_i_add[PSI_WIDTH]}},psi_i_add};
			psi_q_sum	<= psi_q_sum + {{(PSI_SUM_WIDTH-PSI_WIDTH-1){psi_q_add[PSI_WIDTH]}},psi_q_add};
			phi_sum		<= phi_sum + {{(PHI_SUM_WIDTH-PHI_WIDTH-1){phi_add[PHI_WIDTH]}},phi_add};
		end
		else begin
			sum_valid	<= 1'b0;
			psi_i_sum	<= psi_i_sum;
			psi_q_sum	<= psi_q_sum;
			phi_sum		<= phi_sum;
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
	
	complex_abs_power2_42 u2_complex_abs_power2_42 (
		.i_clk			(clk			),
		.i_data_valid	(u2_i_data_valid),
		.i_data_i		(u2_i_data_i	),
		.i_data_q		(u2_i_data_q	),
		.o_data_valid	(u2_o_data_valid), // 8dly
		.o_data			(u2_o_data		)
	);
	
	multiplier_42_42_ip u3_multiplier_42_42_ip(
		.CLK(clk	),	// input CLK;
		.A	(u3_A	),	// input [41:0]A;
		.B	(u3_B	),	// input [41:0]B;
		.P	(u3_P	)	// output [83:0]P; // 7dly
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
			o_tar_data_valid	<= 1'b0;
			o_tar_data			<= 'd0;
		end
		else if(power_valid == 1'b1) begin
			o_tar_data_valid	<= 1'b1; // 11dly
			o_tar_data			<= {psi_power[PSI_POWER_WIDTH-1],psi_power}
									- {{(PSI_POWER_WIDTH-PHI_POWER_WIDTH+3){phi_power[PHI_POWER_WIDTH-1]}},phi_power[PHI_POWER_WIDTH-1:2]};
									// psi_power-(0.5*0.5)*phi_power
		end
		else begin
			o_tar_data_valid	<= 1'b0;
			o_tar_data			<= o_tar_data;
		end
	end
	
endmodule
