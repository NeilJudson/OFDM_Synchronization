`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/01/03 14:44:42
// Design Name: 
// Module Name: lambda
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


module lambda #(
	parameter PSI_WIDTH		= 30, // <=30
	parameter PHI_WIDTH		= 31, // <=31
	parameter RAM_ADDR_WIDTH= 10
	)
	(
	axis_aclk			,
	axis_areset			,
	
	i_work_ctrl_en		,
	i_work_ctrl			,
	
	i_psi_phi_data_valid,
	i_psi_data_i		,
	i_psi_data_q		,
	i_phi_data			,
	i_psi_phi_data_addr	,
	
	i_rou_en			,
	i_rou				,
	
	o_psi_phi_sum_valid	,
	o_psi_i_sum_1		,
	o_psi_q_sum_1		,
	o_phi_sum_1			,
	o_psi_i_sum_2		,
	o_psi_q_sum_2		,
	o_phi_sum_2			,
	o_psi_i_sum_3		,
	o_psi_q_sum_3		,
	o_phi_sum_3			,
	o_psi_i_sum_4		,
	o_psi_q_sum_4		,
	o_phi_sum_4			,
	o_psi_i_sum_5		,
	o_psi_q_sum_5		,
	o_phi_sum_5			,
	o_psi_i_sum_6		,
	o_psi_q_sum_6		,
	o_phi_sum_6			,
	o_psi_i_sum_7		,
	o_psi_q_sum_7		,
	o_phi_sum_7			,
	o_psi_i_sum_8		,
	o_psi_q_sum_8		,
	o_phi_sum_8			,
	o_psi_i_sum_9		,
	o_psi_q_sum_9		,
	o_phi_sum_9			,
	o_psi_i_sum_10		,
	o_psi_q_sum_10		,
	o_phi_sum_10		,
	o_psi_phi_sum_addr
    );
	input					axis_aclk			;
	input					axis_areset			;
	
	input					i_work_ctrl_en		;
	input					i_work_ctrl			; // 1'b0: 停止工作；1'b1: 开始工作，进入清零状态
	
	input					i_psi_phi_data_valid;
	input	signed	[29:0]	i_psi_data_i		;
	input	signed	[29:0]	i_psi_data_q		;
	input	signed	[30:0]	i_phi_data			;
	input			[15:0]	i_psi_phi_data_addr	;
	
	input					i_rou_en			;
	input			[7:0]	i_rou				;
	
	output					o_psi_phi_sum_valid	;
	output					o_psi_i_sum_1		;
	output					o_psi_q_sum_1		;
	output					o_phi_sum_1			;
	output					o_psi_i_sum_2		;
	output					o_psi_q_sum_2		;
	output					o_phi_sum_2			;
	output					o_psi_i_sum_3		;
	output					o_psi_q_sum_3		;
	output					o_phi_sum_3			;
	output					o_psi_i_sum_4		;
	output					o_psi_q_sum_4		;
	output					o_phi_sum_4			;
	output					o_psi_i_sum_5		;
	output					o_psi_q_sum_5		;
	output					o_phi_sum_5			;
	output					o_psi_i_sum_6		;
	output					o_psi_q_sum_6		;
	output					o_phi_sum_6			;
	output					o_psi_i_sum_7		;
	output					o_psi_q_sum_7		;
	output					o_phi_sum_7			;
	output					o_psi_i_sum_8		;
	output					o_psi_q_sum_8		;
	output					o_phi_sum_8			;
	output					o_psi_i_sum_9		;
	output					o_psi_q_sum_9		;
	output					o_phi_sum_9			;
	output					o_psi_i_sum_10		;
	output					o_psi_q_sum_10		;
	output					o_phi_sum_10		;
	output			[15:0]	o_psi_phi_sum_addr	;
	
//================================================================================
// variable
//================================================================================
	localparam	RAM_ADDR_WIDTH2	= 6;
	localparam	RAM_DATA_DEPTH	= 2**RAM_ADDR_WIDTH2;	// 64
	localparam	STAGE_NUM		= 10;
	localparam	PSI_SUM_WIDTH	= PSI_WIDTH+5;			// 35 // <=35
	localparam	PHI_SUM_WIDTH	= PHI_WIDTH+5;			// 36 // <=36
	localparam	PSI_POWER_WIDTH	= 2*PSI_SUM_WIDTH;		// 70
	localparam	PHI_POWER_WIDTH	= 2*(PHI_SUM_WIDTH-1);	// 70
	localparam	LAMBDA_WIDTH	= PSI_POWER_WIDTH+1;	// 71
	// state
	localparam	IDLE			= 2'd0,
				WORK			= 2'd3;
	
	reg				[1:0]					state						;
	
	reg				[RAM_ADDR_WIDTH2:0]		clear_addr					;
	reg				[RAM_ADDR_WIDTH2-1:0]	wr_addr						;
	reg				[PSI_WIDTH-1:0]			ram_psi_i[0:RAM_DATA_DEPTH-1];
	reg				[PSI_WIDTH-1:0]			ram_psi_q[0:RAM_DATA_DEPTH-1];
	reg				[PHI_WIDTH-1:0]			ram_phi[0:RAM_DATA_DEPTH-1]	;
	reg				[RAM_ADDR_WIDTH2-1:0]	rd_addr						;
	reg				[RAM_ADDR_WIDTH2-1:0]	rd_addr2[0:STAGE_NUM-1]		;
	reg		signed	[PSI_WIDTH:0]			ram_psi_i_add[0:STAGE_NUM-1];
	reg		signed	[PSI_WIDTH:0]			ram_psi_q_add[0:STAGE_NUM-1];
	reg		signed	[PHI_WIDTH:0]			ram_phi_add[0:STAGE_NUM-1]	;
	reg										i_psi_phi_data_valid_dly1 = 1'b0;
	reg										sum_valid = 1'b0			;
	reg		signed	[PSI_SUM_WIDTH-1:0]		ram_psi_i_sum[0:STAGE_NUM-1];
	reg		signed	[PSI_SUM_WIDTH-1:0]		ram_psi_q_sum[0:STAGE_NUM-1];
	reg		signed	[PHI_SUM_WIDTH-1:0]		ram_phi_sum[0:STAGE_NUM-1]	;
	
	wire									u10_o_p_en					;
	wire	signed	[69:0]					u10_o_p						;
	wire	signed	[69:0]					u11_o_p						;
	wire	signed	[69:0]					u12_o_p						;
	wire	signed	[69:0]					u13_o_p						;
	wire	signed	[69:0]					u14_o_p						;
	wire	signed	[69:0]					u15_o_p						;
	wire	signed	[69:0]					u16_o_p						;
	wire	signed	[69:0]					u17_o_p						;
	wire	signed	[69:0]					u18_o_p						;
	wire	signed	[69:0]					u19_o_p						;
	reg		signed	[PSI_POWER_WIDTH-1:0]	psi_power[0:STAGE_NUM-1]	;
	
	wire									u20_o_c_en					;
	wire	signed	[68:0]					u20_o_c						;
	wire	signed	[68:0]					u21_o_c						;
	wire	signed	[68:0]					u22_o_c						;
	wire	signed	[68:0]					u23_o_c						;
	wire	signed	[68:0]					u24_o_c						;
	wire	signed	[68:0]					u25_o_c						;
	wire	signed	[68:0]					u26_o_c						;
	wire	signed	[68:0]					u27_o_c						;
	wire	signed	[68:0]					u28_o_c						;
	wire	signed	[68:0]					u29_o_c						;
	
	reg				[7:0]					rou							;
	reg				[7:0]					rou2						;
	wire									u30_o_c_en					;
	wire	signed	[85:0]					u30_o_c						;
	wire	signed	[85:0]					u31_o_c						;
	wire	signed	[85:0]					u32_o_c						;
	wire	signed	[85:0]					u33_o_c						;
	wire	signed	[85:0]					u34_o_c						;
	wire	signed	[85:0]					u35_o_c						;
	wire	signed	[85:0]					u36_o_c						;
	wire	signed	[85:0]					u37_o_c						;
	wire	signed	[85:0]					u38_o_c						;
	wire	signed	[85:0]					u39_o_c						;
	reg										power_valid					;
	reg		signed	[PHI_POWER_WIDTH-1:0]	rou_phi_power[0:STAGE_NUM-1];
	
	reg										lambda_data_valid			;
	reg		signed	[LAMBDA_WIDTH-1:0]		lambda_data[0:STAGE_NUM-1]	;
	// reg				[RAM_ADDR_WIDTH-1:0]	lambda_data_addr	;
	
//================================================================================
// state
//================================================================================
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
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
	
//================================================================================
// sum
//================================================================================
	localparam rd_addr_init = 6'd32;
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			clear_addr		<= 'd0;
			wr_addr			<= 'd0;
			ram_psi_i[0]	<= 'd0;
			ram_psi_q[0]	<= 'd0;
			ram_phi[0]		<= 'd0;
			rd_addr			<= rd_addr_init; // 可以依据STAGE_NUM修改，64-STAGE_NUM
		end
		else begin
			case(state)
				IDLE: begin
					if(clear_addr < RAM_DATA_DEPTH) begin
						clear_addr				<= clear_addr + 1'd1;
						ram_psi_i[clear_addr]	<= 'd0;
						ram_psi_q[clear_addr]	<= 'd0;
						ram_phi[clear_addr]		<= 'd0;
					end
					else begin
						clear_addr		<= clear_addr;
						ram_psi_i[0]	<= 'd0;
						ram_psi_q[0]	<= 'd0;
						ram_phi[0]		<= 'd0;
					end
					wr_addr <= 'd0;
					rd_addr <= rd_addr_init;
				end
				WORK: begin
					clear_addr <= 'd0;
					if(i_psi_phi_data_valid == 1'b1) begin
						wr_addr				<= wr_addr + 1'd1;
						ram_psi_i[wr_addr]	<= i_psi_data_i[PSI_WIDTH-1:0];
						ram_psi_q[wr_addr]	<= i_psi_data_q[PSI_WIDTH-1:0];
						ram_phi[wr_addr]	<= i_phi_data[PHI_WIDTH-1:0];
						rd_addr				<= rd_addr + 1'd1;
					end
					else begin
						wr_addr				<= wr_addr;
						ram_psi_i[wr_addr]	<= ram_psi_i[wr_addr];
						ram_psi_q[wr_addr]	<= ram_psi_q[wr_addr];
						ram_phi[wr_addr]	<= ram_phi[wr_addr];
						rd_addr				<= rd_addr;
					end
				end
				default: begin
					clear_addr		<= 'd0;
					wr_addr			<= 'd0;
					ram_psi_i[0]	<= 'd0;
					ram_psi_q[0]	<= 'd0;
					ram_phi[0]		<= 'd0;
					rd_addr			<= rd_addr_init;
				end
			endcase
		end
	end
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			i_psi_phi_data_valid_dly1 <= 1'b0;
			sum_valid <= 1'b0;
		end
		else begin
			i_psi_phi_data_valid_dly1 <= i_psi_phi_data_valid;
			sum_valid <= i_psi_phi_data_valid_dly1;
		end
	end
	
	genvar i;
	generate
		for(i=0; i<STAGE_NUM; i=i+1) begin
			always @(posedge axis_aclk or posedge axis_areset) begin
				if(axis_areset == 1'b1) begin
					rd_addr2[i]			<= rd_addr_init + i + 1'd1;
					ram_psi_i_add[i]	<= 'd0;
					ram_psi_q_add[i]	<= 'd0;
					ram_phi_add[i]		<= 'd0;
				end
				else if(i_psi_phi_data_valid == 1'b1) begin
					rd_addr2[i]			<= rd_addr2[i] + 1'd1;
					ram_psi_i_add[i]	<= {ram_psi_i[rd_addr2[i]][PSI_WIDTH-1],ram_psi_i[rd_addr2[i]]}
											- {ram_psi_i[rd_addr][PSI_WIDTH-1],ram_psi_i[rd_addr]};
					ram_psi_q_add[i]	<= {ram_psi_q[rd_addr2[i]][PSI_WIDTH-1],ram_psi_q[rd_addr2[i]]}
											- {ram_psi_q[rd_addr][PSI_WIDTH-1],ram_psi_q[rd_addr]};
					ram_phi_add[i]		<= {ram_phi[rd_addr2[i]][PHI_WIDTH-1],ram_phi[rd_addr2[i]]}
											- {ram_phi[rd_addr][PHI_WIDTH-1],ram_phi[rd_addr]};
				end
				else begin
					rd_addr2[i]			<= rd_addr2[i];
					ram_psi_i_add[i]	<= ram_psi_i_add[i];
					ram_psi_q_add[i]	<= ram_psi_q_add[i];
					ram_phi_add[i]		<= ram_phi_add[i];
				end
			end
			
			always @(posedge axis_aclk or posedge axis_areset) begin
				if(axis_areset == 1'b1) begin
					ram_psi_i_sum[i]<= 'd0;
					ram_psi_q_sum[i]<= 'd0;
					ram_phi_sum[i]	<= 'd0;
				end
				else if(i_psi_phi_data_valid_dly1 == 1'b1) begin
					ram_psi_i_sum[i]<= ram_psi_i_sum[i]
										+ {{(PSI_SUM_WIDTH-PSI_WIDTH-1){ram_psi_i_add[i][PSI_WIDTH]}},ram_psi_i_add[i]};
					ram_psi_q_sum[i]<= ram_psi_q_sum[i]
										+ {{(PSI_SUM_WIDTH-PSI_WIDTH-1){ram_psi_q_add[i][PSI_WIDTH]}},ram_psi_q_add[i]};
					ram_phi_sum[i]	<= ram_phi_sum[i]
										+ {{(PHI_SUM_WIDTH-PHI_WIDTH-1){ram_phi_add[i][PHI_WIDTH]}},ram_phi_add[i]};
				end
				else begin
					ram_psi_i_sum[i]<= ram_psi_i_sum[i];
					ram_psi_q_sum[i]<= ram_psi_q_sum[i];
					ram_phi_sum[i]	<= ram_phi_sum[i];
				end
			end
		end
	endgenerate
	
//================================================================================
// psi_power
//================================================================================
	complex_abs_power2_35_1dsp_ip u10_complex_abs_power2_35_1dsp_ip(
		.i_clk	(axis_aclk	),	// input i_clk;
		.i_rst	(axis_areset),	// input i_rst;
		.i_en	(sum_valid	),	// input i_en; // 6个周期后才能输入下一个数据
		.i_r	({{(35-PSI_SUM_WIDTH){ram_psi_i_sum[0][PSI_SUM_WIDTH-1]}},ram_psi_i_sum[0]}), // input signed [34:0] i_r;
		.i_i	({{(35-PSI_SUM_WIDTH){ram_psi_q_sum[0][PSI_SUM_WIDTH-1]}},ram_psi_q_sum[0]}), // input signed [34:0] i_i;
		.o_p_en	(u10_o_p_en	),	// output o_p_en; // 12dly
		.o_p	(u10_o_p	)	// output signed [69:0] o_p;
	);
	complex_abs_power2_35_1dsp_ip u11_complex_abs_power2_35_1dsp_ip(
		.i_clk	(axis_aclk	),	// input i_clk;
		.i_rst	(axis_areset),	// input i_rst;
		.i_en	(sum_valid	),	// input i_en; // 6个周期后才能输入下一个数据
		.i_r	({{(35-PSI_SUM_WIDTH){ram_psi_i_sum[1][PSI_SUM_WIDTH-1]}},ram_psi_i_sum[1]}), // input signed [34:0] i_r;
		.i_i	({{(35-PSI_SUM_WIDTH){ram_psi_q_sum[1][PSI_SUM_WIDTH-1]}},ram_psi_q_sum[1]}), // input signed [34:0] i_i;
		.o_p_en	(			),	// output o_p_en; // 12dly
		.o_p	(u11_o_p	)	// output signed [69:0] o_p;
	);
	complex_abs_power2_35_1dsp_ip u12_complex_abs_power2_35_1dsp_ip(
		.i_clk	(axis_aclk	),	// input i_clk;
		.i_rst	(axis_areset),	// input i_rst;
		.i_en	(sum_valid	),	// input i_en; // 6个周期后才能输入下一个数据
		.i_r	({{(35-PSI_SUM_WIDTH){ram_psi_i_sum[2][PSI_SUM_WIDTH-1]}},ram_psi_i_sum[2]}), // input signed [34:0] i_r;
		.i_i	({{(35-PSI_SUM_WIDTH){ram_psi_q_sum[2][PSI_SUM_WIDTH-1]}},ram_psi_q_sum[2]}), // input signed [34:0] i_i;
		.o_p_en	(			),	// output o_p_en; // 12dly
		.o_p	(u12_o_p	)	// output signed [69:0] o_p;
	);
	complex_abs_power2_35_1dsp_ip u13_complex_abs_power2_35_1dsp_ip(
		.i_clk	(axis_aclk	),	// input i_clk;
		.i_rst	(axis_areset),	// input i_rst;
		.i_en	(sum_valid	),	// input i_en; // 6个周期后才能输入下一个数据
		.i_r	({{(35-PSI_SUM_WIDTH){ram_psi_i_sum[3][PSI_SUM_WIDTH-1]}},ram_psi_i_sum[3]}), // input signed [34:0] i_r;
		.i_i	({{(35-PSI_SUM_WIDTH){ram_psi_q_sum[3][PSI_SUM_WIDTH-1]}},ram_psi_q_sum[3]}), // input signed [34:0] i_i;
		.o_p_en	(			),	// output o_p_en; // 12dly
		.o_p	(u13_o_p	)	// output signed [69:0] o_p;
	);
	complex_abs_power2_35_1dsp_ip u14_complex_abs_power2_35_1dsp_ip(
		.i_clk	(axis_aclk	),	// input i_clk;
		.i_rst	(axis_areset),	// input i_rst;
		.i_en	(sum_valid	),	// input i_en; // 6个周期后才能输入下一个数据
		.i_r	({{(35-PSI_SUM_WIDTH){ram_psi_i_sum[4][PSI_SUM_WIDTH-1]}},ram_psi_i_sum[4]}), // input signed [34:0] i_r;
		.i_i	({{(35-PSI_SUM_WIDTH){ram_psi_q_sum[4][PSI_SUM_WIDTH-1]}},ram_psi_q_sum[4]}), // input signed [34:0] i_i;
		.o_p_en	(			),	// output o_p_en; // 12dly
		.o_p	(u14_o_p	)	// output signed [69:0] o_p;
	);
	complex_abs_power2_35_1dsp_ip u15_complex_abs_power2_35_1dsp_ip(
		.i_clk	(axis_aclk	),	// input i_clk;
		.i_rst	(axis_areset),	// input i_rst;
		.i_en	(sum_valid	),	// input i_en; // 6个周期后才能输入下一个数据
		.i_r	({{(35-PSI_SUM_WIDTH){ram_psi_i_sum[5][PSI_SUM_WIDTH-1]}},ram_psi_i_sum[5]}), // input signed [34:0] i_r;
		.i_i	({{(35-PSI_SUM_WIDTH){ram_psi_q_sum[5][PSI_SUM_WIDTH-1]}},ram_psi_q_sum[5]}), // input signed [34:0] i_i;
		.o_p_en	(			),	// output o_p_en; // 12dly
		.o_p	(u15_o_p	)	// output signed [69:0] o_p;
	);
	complex_abs_power2_35_1dsp_ip u16_complex_abs_power2_35_1dsp_ip(
		.i_clk	(axis_aclk	),	// input i_clk;
		.i_rst	(axis_areset),	// input i_rst;
		.i_en	(sum_valid	),	// input i_en; // 6个周期后才能输入下一个数据
		.i_r	({{(35-PSI_SUM_WIDTH){ram_psi_i_sum[6][PSI_SUM_WIDTH-1]}},ram_psi_i_sum[6]}), // input signed [34:0] i_r;
		.i_i	({{(35-PSI_SUM_WIDTH){ram_psi_q_sum[6][PSI_SUM_WIDTH-1]}},ram_psi_q_sum[6]}), // input signed [34:0] i_i;
		.o_p_en	(			),	// output o_p_en; // 12dly
		.o_p	(u16_o_p	)	// output signed [69:0] o_p;
	);
	complex_abs_power2_35_1dsp_ip u17_complex_abs_power2_35_1dsp_ip(
		.i_clk	(axis_aclk	),	// input i_clk;
		.i_rst	(axis_areset),	// input i_rst;
		.i_en	(sum_valid	),	// input i_en; // 6个周期后才能输入下一个数据
		.i_r	({{(35-PSI_SUM_WIDTH){ram_psi_i_sum[7][PSI_SUM_WIDTH-1]}},ram_psi_i_sum[7]}), // input signed [34:0] i_r;
		.i_i	({{(35-PSI_SUM_WIDTH){ram_psi_q_sum[7][PSI_SUM_WIDTH-1]}},ram_psi_q_sum[7]}), // input signed [34:0] i_i;
		.o_p_en	(			),	// output o_p_en; // 12dly
		.o_p	(u17_o_p	)	// output signed [69:0] o_p;
	);
	complex_abs_power2_35_1dsp_ip u18_complex_abs_power2_35_1dsp_ip(
		.i_clk	(axis_aclk	),	// input i_clk;
		.i_rst	(axis_areset),	// input i_rst;
		.i_en	(sum_valid	),	// input i_en; // 6个周期后才能输入下一个数据
		.i_r	({{(35-PSI_SUM_WIDTH){ram_psi_i_sum[8][PSI_SUM_WIDTH-1]}},ram_psi_i_sum[8]}), // input signed [34:0] i_r;
		.i_i	({{(35-PSI_SUM_WIDTH){ram_psi_q_sum[8][PSI_SUM_WIDTH-1]}},ram_psi_q_sum[8]}), // input signed [34:0] i_i;
		.o_p_en	(			),	// output o_p_en; // 12dly
		.o_p	(u18_o_p	)	// output signed [69:0] o_p;
	);
	complex_abs_power2_35_1dsp_ip u19_complex_abs_power2_35_1dsp_ip(
		.i_clk	(axis_aclk	),	// input i_clk;
		.i_rst	(axis_areset),	// input i_rst;
		.i_en	(sum_valid	),	// input i_en; // 6个周期后才能输入下一个数据
		.i_r	({{(35-PSI_SUM_WIDTH){ram_psi_i_sum[9][PSI_SUM_WIDTH-1]}},ram_psi_i_sum[9]}), // input signed [34:0] i_r;
		.i_i	({{(35-PSI_SUM_WIDTH){ram_psi_q_sum[9][PSI_SUM_WIDTH-1]}},ram_psi_q_sum[9]}), // input signed [34:0] i_i;
		.o_p_en	(			),	// output o_p_en; // 12dly
		.o_p	(u19_o_p	)	// output signed [69:0] o_p;
	);
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			psi_power[0] <= 'd0;
			psi_power[1] <= 'd0;
			psi_power[2] <= 'd0;
			psi_power[3] <= 'd0;
			psi_power[4] <= 'd0;
			psi_power[5] <= 'd0;
			psi_power[6] <= 'd0;
			psi_power[7] <= 'd0;
			psi_power[8] <= 'd0;
			psi_power[9] <= 'd0;
		end
		else if(u10_o_p_en == 1'b1) begin
			psi_power[0] <= u10_o_p;
			psi_power[1] <= u11_o_p;
			psi_power[2] <= u12_o_p;
			psi_power[3] <= u13_o_p;
			psi_power[4] <= u14_o_p;
			psi_power[5] <= u15_o_p;
			psi_power[6] <= u16_o_p;
			psi_power[7] <= u17_o_p;
			psi_power[8] <= u18_o_p;
			psi_power[9] <= u19_o_p;
		end
		else begin
			psi_power[0] <= psi_power[0];
			psi_power[1] <= psi_power[1];
			psi_power[2] <= psi_power[2];
			psi_power[3] <= psi_power[3];
			psi_power[4] <= psi_power[4];
			psi_power[5] <= psi_power[5];
			psi_power[6] <= psi_power[6];
			psi_power[7] <= psi_power[7];
			psi_power[8] <= psi_power[8];
			psi_power[9] <= psi_power[9];
		end
	end
	
//================================================================================
// phi_power
//================================================================================
	multiplier_35_1dsp_ip u20_multiplier_35_1dsp_ip(
		.i_clk	(axis_aclk	),	// input i_clk;
		.i_rst	(axis_areset),	// input i_rst;
		.i_en	(sum_valid	),	// input i_en; // 4个工作周期内只能1个数据
		.i_a	({{(35-PHI_WIDTH+1){ram_phi_sum[0][PHI_WIDTH-1]}},ram_phi_sum[0][PHI_WIDTH-1:1]}),	// input signed [34:0] i_a;
		.i_b	({{(35-PHI_WIDTH+1){ram_phi_sum[0][PHI_WIDTH-1]}},ram_phi_sum[0][PHI_WIDTH-1:1]}),	// input signed [34:0] i_b;
		.o_c_en	(u20_o_c_en	),	// output o_c_en;
		.o_c	(u20_o_c	)	// output signed [68:0] o_c; // 8dly
	);
	multiplier_35_1dsp_ip u21_multiplier_35_1dsp_ip(
		.i_clk	(axis_aclk	),	// input i_clk;
		.i_rst	(axis_areset),	// input i_rst;
		.i_en	(sum_valid	),	// input i_en; // 4个工作周期内只能1个数据
		.i_a	({{(35-PHI_WIDTH+1){ram_phi_sum[1][PHI_WIDTH-1]}},ram_phi_sum[1][PHI_WIDTH-1:1]}),	// input signed [34:0] i_a;
		.i_b	({{(35-PHI_WIDTH+1){ram_phi_sum[1][PHI_WIDTH-1]}},ram_phi_sum[1][PHI_WIDTH-1:1]}),	// input signed [34:0] i_b;
		.o_c_en	(			),	// output o_c_en;
		.o_c	(u21_o_c	)	// output signed [68:0] o_c; // 8dly
	);
	multiplier_35_1dsp_ip u22_multiplier_35_1dsp_ip(
		.i_clk	(axis_aclk	),	// input i_clk;
		.i_rst	(axis_areset),	// input i_rst;
		.i_en	(sum_valid	),	// input i_en; // 4个工作周期内只能1个数据
		.i_a	({{(35-PHI_WIDTH+1){ram_phi_sum[2][PHI_WIDTH-1]}},ram_phi_sum[2][PHI_WIDTH-1:1]}),	// input signed [34:0] i_a;
		.i_b	({{(35-PHI_WIDTH+1){ram_phi_sum[2][PHI_WIDTH-1]}},ram_phi_sum[2][PHI_WIDTH-1:1]}),	// input signed [34:0] i_b;
		.o_c_en	(			),	// output o_c_en;
		.o_c	(u22_o_c	)	// output signed [68:0] o_c; // 8dly
	);
	multiplier_35_1dsp_ip u23_multiplier_35_1dsp_ip(
		.i_clk	(axis_aclk	),	// input i_clk;
		.i_rst	(axis_areset),	// input i_rst;
		.i_en	(sum_valid	),	// input i_en; // 4个工作周期内只能1个数据
		.i_a	({{(35-PHI_WIDTH+1){ram_phi_sum[3][PHI_WIDTH-1]}},ram_phi_sum[3][PHI_WIDTH-1:1]}),	// input signed [34:0] i_a;
		.i_b	({{(35-PHI_WIDTH+1){ram_phi_sum[3][PHI_WIDTH-1]}},ram_phi_sum[3][PHI_WIDTH-1:1]}),	// input signed [34:0] i_b;
		.o_c_en	(			),	// output o_c_en;
		.o_c	(u23_o_c	)	// output signed [68:0] o_c; // 8dly
	);
	multiplier_35_1dsp_ip u24_multiplier_35_1dsp_ip(
		.i_clk	(axis_aclk	),	// input i_clk;
		.i_rst	(axis_areset),	// input i_rst;
		.i_en	(sum_valid	),	// input i_en; // 4个工作周期内只能1个数据
		.i_a	({{(35-PHI_WIDTH+1){ram_phi_sum[4][PHI_WIDTH-1]}},ram_phi_sum[4][PHI_WIDTH-1:1]}),	// input signed [34:0] i_a;
		.i_b	({{(35-PHI_WIDTH+1){ram_phi_sum[4][PHI_WIDTH-1]}},ram_phi_sum[4][PHI_WIDTH-1:1]}),	// input signed [34:0] i_b;
		.o_c_en	(			),	// output o_c_en;
		.o_c	(u24_o_c	)	// output signed [68:0] o_c; // 8dly
	);
	multiplier_35_1dsp_ip u25_multiplier_35_1dsp_ip(
		.i_clk	(axis_aclk	),	// input i_clk;
		.i_rst	(axis_areset),	// input i_rst;
		.i_en	(sum_valid	),	// input i_en; // 4个工作周期内只能1个数据
		.i_a	({{(35-PHI_WIDTH+1){ram_phi_sum[5][PHI_WIDTH-1]}},ram_phi_sum[5][PHI_WIDTH-1:1]}),	// input signed [34:0] i_a;
		.i_b	({{(35-PHI_WIDTH+1){ram_phi_sum[5][PHI_WIDTH-1]}},ram_phi_sum[5][PHI_WIDTH-1:1]}),	// input signed [34:0] i_b;
		.o_c_en	(			),	// output o_c_en;
		.o_c	(u25_o_c	)	// output signed [68:0] o_c; // 8dly
	);
	multiplier_35_1dsp_ip u26_multiplier_35_1dsp_ip(
		.i_clk	(axis_aclk	),	// input i_clk;
		.i_rst	(axis_areset),	// input i_rst;
		.i_en	(sum_valid	),	// input i_en; // 4个工作周期内只能1个数据
		.i_a	({{(35-PHI_WIDTH+1){ram_phi_sum[6][PHI_WIDTH-1]}},ram_phi_sum[6][PHI_WIDTH-1:1]}),	// input signed [34:0] i_a;
		.i_b	({{(35-PHI_WIDTH+1){ram_phi_sum[6][PHI_WIDTH-1]}},ram_phi_sum[6][PHI_WIDTH-1:1]}),	// input signed [34:0] i_b;
		.o_c_en	(			),	// output o_c_en;
		.o_c	(u26_o_c	)	// output signed [68:0] o_c; // 8dly
	);
	multiplier_35_1dsp_ip u27_multiplier_35_1dsp_ip(
		.i_clk	(axis_aclk	),	// input i_clk;
		.i_rst	(axis_areset),	// input i_rst;
		.i_en	(sum_valid	),	// input i_en; // 4个工作周期内只能1个数据
		.i_a	({{(35-PHI_WIDTH+1){ram_phi_sum[7][PHI_WIDTH-1]}},ram_phi_sum[7][PHI_WIDTH-1:1]}),	// input signed [34:0] i_a;
		.i_b	({{(35-PHI_WIDTH+1){ram_phi_sum[7][PHI_WIDTH-1]}},ram_phi_sum[7][PHI_WIDTH-1:1]}),	// input signed [34:0] i_b;
		.o_c_en	(			),	// output o_c_en;
		.o_c	(u27_o_c	)	// output signed [68:0] o_c; // 8dly
	);
	multiplier_35_1dsp_ip u28_multiplier_35_1dsp_ip(
		.i_clk	(axis_aclk	),	// input i_clk;
		.i_rst	(axis_areset),	// input i_rst;
		.i_en	(sum_valid	),	// input i_en; // 4个工作周期内只能1个数据
		.i_a	({{(35-PHI_WIDTH+1){ram_phi_sum[8][PHI_WIDTH-1]}},ram_phi_sum[8][PHI_WIDTH-1:1]}),	// input signed [34:0] i_a;
		.i_b	({{(35-PHI_WIDTH+1){ram_phi_sum[8][PHI_WIDTH-1]}},ram_phi_sum[8][PHI_WIDTH-1:1]}),	// input signed [34:0] i_b;
		.o_c_en	(			),	// output o_c_en;
		.o_c	(u28_o_c	)	// output signed [68:0] o_c; // 8dly
	);
	multiplier_35_1dsp_ip u29_multiplier_35_1dsp_ip(
		.i_clk	(axis_aclk	),	// input i_clk;
		.i_rst	(axis_areset),	// input i_rst;
		.i_en	(sum_valid	),	// input i_en; // 4个工作周期内只能1个数据
		.i_a	({{(35-PHI_WIDTH+1){ram_phi_sum[9][PHI_WIDTH-1]}},ram_phi_sum[9][PHI_WIDTH-1:1]}),	// input signed [34:0] i_a;
		.i_b	({{(35-PHI_WIDTH+1){ram_phi_sum[9][PHI_WIDTH-1]}},ram_phi_sum[9][PHI_WIDTH-1:1]}),	// input signed [34:0] i_b;
		.o_c_en	(			),	// output o_c_en;
		.o_c	(u29_o_c	)	// output signed [68:0] o_c; // 8dly
	);
	
//================================================================================
// lambda
//================================================================================
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			rou <= 8'b0100_0000;
		end
		else if(i_rou_en == 1'b1) begin
			rou <= i_rou;
		end
	end
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			rou2 <= 8'b0100_0000;
		end
		else if((i_work_ctrl_en==1'b1) && (i_work_ctrl==1'b1)) begin
			rou2 <= rou;
		end
	end
	
	multiplier_69_18_1dsp_ip u30_multiplier_69_18_1dsp_ip(
		.i_clk	(axis_aclk		),	// input i_clk;
		.i_rst	(axis_areset	),	// input i_rst;
		.i_en	(u20_o_c_en		),	// input i_en;
		.i_a	(u20_o_c		),	// input signed [68:0] i_a;
		.i_b	({10'd0,rou2}	),	// input signed [17:0] i_b;
		.o_in_en(				),	// output o_in_en;
		.o_c_en	(u30_o_c_en		),	// output o_c_en; // 9dly
		.o_c	(u30_o_c		)	// output signed [85:0] o_c;
	);
	multiplier_69_18_1dsp_ip u31_multiplier_69_18_1dsp_ip(
		.i_clk	(axis_aclk		),	// input i_clk;
		.i_rst	(axis_areset	),	// input i_rst;
		.i_en	(u20_o_c_en		),	// input i_en;
		.i_a	(u21_o_c		),	// input signed [68:0] i_a;
		.i_b	({10'd0,rou2}	),	// input signed [17:0] i_b;
		.o_in_en(				),	// output o_in_en;
		.o_c_en	(				),	// output o_c_en; // 9dly
		.o_c	(u31_o_c		)	// output signed [85:0] o_c;
	);
	multiplier_69_18_1dsp_ip u32_multiplier_69_18_1dsp_ip(
		.i_clk	(axis_aclk		),	// input i_clk;
		.i_rst	(axis_areset	),	// input i_rst;
		.i_en	(u20_o_c_en		),	// input i_en;
		.i_a	(u22_o_c		),	// input signed [68:0] i_a;
		.i_b	({10'd0,rou2}	),	// input signed [17:0] i_b;
		.o_in_en(				),	// output o_in_en;
		.o_c_en	(				),	// output o_c_en; // 9dly
		.o_c	(u32_o_c		)	// output signed [85:0] o_c;
	);
	multiplier_69_18_1dsp_ip u33_multiplier_69_18_1dsp_ip(
		.i_clk	(axis_aclk		),	// input i_clk;
		.i_rst	(axis_areset	),	// input i_rst;
		.i_en	(u20_o_c_en		),	// input i_en;
		.i_a	(u23_o_c		),	// input signed [68:0] i_a;
		.i_b	({10'd0,rou2}	),	// input signed [17:0] i_b;
		.o_in_en(				),	// output o_in_en;
		.o_c_en	(				),	// output o_c_en; // 9dly
		.o_c	(u33_o_c		)	// output signed [85:0] o_c;
	);
	multiplier_69_18_1dsp_ip u34_multiplier_69_18_1dsp_ip(
		.i_clk	(axis_aclk		),	// input i_clk;
		.i_rst	(axis_areset	),	// input i_rst;
		.i_en	(u20_o_c_en		),	// input i_en;
		.i_a	(u24_o_c		),	// input signed [68:0] i_a;
		.i_b	({10'd0,rou2}	),	// input signed [17:0] i_b;
		.o_in_en(				),	// output o_in_en;
		.o_c_en	(				),	// output o_c_en; // 9dly
		.o_c	(u34_o_c		)	// output signed [85:0] o_c;
	);
	multiplier_69_18_1dsp_ip u35_multiplier_69_18_1dsp_ip(
		.i_clk	(axis_aclk		),	// input i_clk;
		.i_rst	(axis_areset	),	// input i_rst;
		.i_en	(u20_o_c_en		),	// input i_en;
		.i_a	(u25_o_c		),	// input signed [68:0] i_a;
		.i_b	({10'd0,rou2}	),	// input signed [17:0] i_b;
		.o_in_en(				),	// output o_in_en;
		.o_c_en	(				),	// output o_c_en; // 9dly
		.o_c	(u35_o_c		)	// output signed [85:0] o_c;
	);
	multiplier_69_18_1dsp_ip u36_multiplier_69_18_1dsp_ip(
		.i_clk	(axis_aclk		),	// input i_clk;
		.i_rst	(axis_areset	),	// input i_rst;
		.i_en	(u20_o_c_en		),	// input i_en;
		.i_a	(u26_o_c		),	// input signed [68:0] i_a;
		.i_b	({10'd0,rou2}	),	// input signed [17:0] i_b;
		.o_in_en(				),	// output o_in_en;
		.o_c_en	(				),	// output o_c_en; // 9dly
		.o_c	(u36_o_c		)	// output signed [85:0] o_c;
	);
	multiplier_69_18_1dsp_ip u37_multiplier_69_18_1dsp_ip(
		.i_clk	(axis_aclk		),	// input i_clk;
		.i_rst	(axis_areset	),	// input i_rst;
		.i_en	(u20_o_c_en		),	// input i_en;
		.i_a	(u27_o_c		),	// input signed [68:0] i_a;
		.i_b	({10'd0,rou2}	),	// input signed [17:0] i_b;
		.o_in_en(				),	// output o_in_en;
		.o_c_en	(				),	// output o_c_en; // 9dly
		.o_c	(u37_o_c		)	// output signed [85:0] o_c;
	);
	multiplier_69_18_1dsp_ip u38_multiplier_69_18_1dsp_ip(
		.i_clk	(axis_aclk		),	// input i_clk;
		.i_rst	(axis_areset	),	// input i_rst;
		.i_en	(u20_o_c_en		),	// input i_en;
		.i_a	(u28_o_c		),	// input signed [68:0] i_a;
		.i_b	({10'd0,rou2}	),	// input signed [17:0] i_b;
		.o_in_en(				),	// output o_in_en;
		.o_c_en	(				),	// output o_c_en; // 9dly
		.o_c	(u38_o_c		)	// output signed [85:0] o_c;
	);
	multiplier_69_18_1dsp_ip u39_multiplier_69_18_1dsp_ip(
		.i_clk	(axis_aclk		),	// input i_clk;
		.i_rst	(axis_areset	),	// input i_rst;
		.i_en	(u20_o_c_en		),	// input i_en;
		.i_a	(u29_o_c		),	// input signed [68:0] i_a;
		.i_b	({10'd0,rou2}	),	// input signed [17:0] i_b;
		.o_in_en(				),	// output o_in_en;
		.o_c_en	(				),	// output o_c_en; // 9dly
		.o_c	(u39_o_c		)	// output signed [85:0] o_c;
	);
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			power_valid		<= 1'b0;
			rou_phi_power[0]<= 'd0;
			rou_phi_power[1]<= 'd0;
			rou_phi_power[2]<= 'd0;
			rou_phi_power[3]<= 'd0;
			rou_phi_power[4]<= 'd0;
			rou_phi_power[5]<= 'd0;
			rou_phi_power[6]<= 'd0;
			rou_phi_power[7]<= 'd0;
			rou_phi_power[8]<= 'd0;
			rou_phi_power[9]<= 'd0;
		end
		else if(u10_o_p_en == 1'b1) begin
			power_valid		<= 1'b1;
			rou_phi_power[0]<= u30_o_c[PHI_POWER_WIDTH+7:8];
			rou_phi_power[1]<= u31_o_c[PHI_POWER_WIDTH+7:8];
			rou_phi_power[2]<= u32_o_c[PHI_POWER_WIDTH+7:8];
			rou_phi_power[3]<= u33_o_c[PHI_POWER_WIDTH+7:8];
			rou_phi_power[4]<= u34_o_c[PHI_POWER_WIDTH+7:8];
			rou_phi_power[5]<= u35_o_c[PHI_POWER_WIDTH+7:8];
			rou_phi_power[6]<= u36_o_c[PHI_POWER_WIDTH+7:8];
			rou_phi_power[7]<= u37_o_c[PHI_POWER_WIDTH+7:8];
			rou_phi_power[8]<= u38_o_c[PHI_POWER_WIDTH+7:8];
			rou_phi_power[9]<= u39_o_c[PHI_POWER_WIDTH+7:8];
		end
		else begin
			power_valid		<= 1'b0;
			rou_phi_power[0]<= rou_phi_power[0];
			rou_phi_power[1]<= rou_phi_power[1];
			rou_phi_power[2]<= rou_phi_power[2];
			rou_phi_power[3]<= rou_phi_power[3];
			rou_phi_power[4]<= rou_phi_power[4];
			rou_phi_power[5]<= rou_phi_power[5];
			rou_phi_power[6]<= rou_phi_power[6];
			rou_phi_power[7]<= rou_phi_power[7];
			rou_phi_power[8]<= rou_phi_power[8];
			rou_phi_power[9]<= rou_phi_power[9];
		end
	end
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			lambda_data_valid <= 1'b0;
		end
		else if(power_valid == 1'b1) begin
			lambda_data_valid <= 1'b1;
		end
		else begin
			lambda_data_valid <= 1'b0;
		end
	end
	
	genvar j;
	generate
		for(j=0; j<STAGE_NUM; j=j+1) begin
			always @(posedge axis_aclk or posedge axis_areset) begin
				if(axis_areset == 1'b1) begin
					lambda_data[j] <= 'd0;
				end
				else if(power_valid == 1'b1) begin
					lambda_data[j] <= {{(LAMBDA_WIDTH-PSI_POWER_WIDTH){psi_power[j][PSI_POWER_WIDTH-1]}},psi_power[j]}
										- {{(LAMBDA_WIDTH-PHI_POWER_WIDTH){rou_phi_power[j][PHI_POWER_WIDTH-1]}},rou_phi_power[j]};
				end
				else begin
					lambda_data[j] <= lambda_data[j];
				end
			end
		end
	endgenerate
	
	
	
endmodule
