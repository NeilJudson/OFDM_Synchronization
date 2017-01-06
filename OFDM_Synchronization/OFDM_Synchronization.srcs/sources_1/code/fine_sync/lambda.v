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
	parameter PSI_WIDTH		= 34, // <=38
	parameter PHI_WIDTH		= 35, // <=39
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
	input	signed	[37:0]	i_psi_data_i		;
	input	signed	[37:0]	i_psi_data_q		;
	input	signed	[38:0]	i_phi_data			;
	input			[15:0]	i_psi_phi_data_addr	;
	
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
	localparam	RAM_DATA_DEPTH	= 2**RAM_ADDR_WIDTH2; // 64
	localparam	STAGE_NUM		= 10;
	localparam	PSI_SUM_WIDTH	= PSI_WIDTH+5; // 39
	localparam	PHI_SUM_WIDTH	= PHI_WIDTH+5; // 40
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
	reg				[RAM_ADDR_WIDTH2-1:0]	rd_addr2					;
	
	reg		signed	[PSI_WIDTH:0]			ram_psi_i_add[0:STAGE_NUM-1];
	reg		signed	[PSI_WIDTH:0]			ram_psi_q_add[0:STAGE_NUM-1];
	reg		signed	[PHI_WIDTH:0]			ram_phi_add[0:STAGE_NUM-1]	;
	
	reg										i_psi_phi_data_valid_dly1	;
	
	reg		signed	[PSI_SUM_WIDTH-1:0]		ram_psi_i_sum[0:STAGE_NUM-1];
	reg		signed	[PSI_SUM_WIDTH-1:0]		ram_psi_q_sum[0:STAGE_NUM-1];
	reg		signed	[PHI_SUM_WIDTH-1:0]		ram_phi_sum[0:STAGE_NUM-1]	;
	
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
						ram_psi_i[wr_addr]	<= i_psi_data_i;
						ram_psi_q[wr_addr]	<= i_psi_data_q;
						ram_phi[wr_addr]	<= i_phi_data;
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
	
	genvar i;
	generate
		for(i=0; i<STAGE_NUM; i=i+1) begin
			always @(posedge axis_aclk or posedge axis_areset) begin
				if(axis_areset == 1'b1) begin
					rd_addr2			<= rd_addr_init + i + 1'd1;
					ram_psi_i_add[i]	<= 'd0;
					ram_psi_q_add[i]	<= 'd0;
					ram_phi_add[i]		<= 'd0;
				end
				else if(i_psi_phi_data_valid == 1'b1) begin
					rd_addr2			<= rd_addr2 + 1'd1;
					ram_psi_i_add[i]	<= ram_psi_i[rd_addr2] - ram_psi_i[rd_addr];
					ram_psi_q_add[i]	<= ram_psi_q[rd_addr2] - ram_psi_q[rd_addr];
					ram_phi_add[i]		<= ram_phi[rd_addr2] - ram_phi[rd_addr];
				end
				else begin
					rd_addr2			<= rd_addr2;
					ram_psi_i_add[i]	<= ram_psi_i_add[i];
					ram_psi_q_add[i]	<= ram_psi_q_add[i];
					ram_phi_add[i]		<= ram_phi_add[i];
				end
			end
		end
	endgenerate
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			i_psi_phi_data_valid_dly1 <= 1'b0;
		end
		else begin
			i_psi_phi_data_valid_dly1 <= i_psi_phi_data_valid;
		end
	end
	
	genvar j;
	generate
		for(j=0; j<STAGE_NUM; j=j+1) begin
			always @(posedge axis_aclk or posedge axis_areset) begin
				if(axis_areset == 1'b1) begin
					ram_psi_i_sum[j]	<= 'd0;
					ram_psi_q_sum[j]	<= 'd0;
					ram_phi_sum[j]		<= 'd0;
				end
				else if(i_psi_phi_data_valid_dly1 == 1'b1) begin
					ram_psi_i_sum[j]	<= ram_psi_i_sum[j] + ram_psi_i_add[j];
					ram_psi_q_sum[j]	<= ram_psi_q_sum[j] + ram_psi_q_add[j];
					ram_phi_sum[j]		<= ram_phi_sum[j] + ram_phi_add[j];
				end
				else begin
					ram_psi_i_sum[j]	<= ram_psi_i_sum[j];
					ram_psi_q_sum[j]	<= ram_psi_q_sum[j];
					ram_phi_sum[j]		<= ram_phi_sum[j];
				end
			end
		end
	endgenerate
	
//================================================================================
// power
//================================================================================
	
//================================================================================
// lambda
//================================================================================
	
endmodule
