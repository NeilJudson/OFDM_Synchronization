`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2016/11/22 19:43:08
// Design Name: 
// Module Name: coarse_sync
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


module coarse_sync #(
	parameter SYNC_DATA_WIDTH = 16
	)
	(
	axis_aclk			,
	axis_areset			,
	
	s_axis_ctrl_tvalid	,
	s_axis_ctrl_tlast	,
	s_axis_ctrl_tdata	,
	s_axis_ctrl_trdy	,
	
	s_axis_data_tvalid	,
	s_axis_data_tlast	,
	s_axis_data_tdata	,
	s_axis_data_trdy	,
	
	m_axis_ctrl_tvalid	,
	m_axis_ctrl_tlast	,
	m_axis_ctrl_tdata	,
	m_axis_ctrl_trdy	,
	
	m_axis_data_tvalid	,
	m_axis_data_tlast	,
	m_axis_data_tdata	,
	m_axis_data_trdy
    );
	input			axis_aclk			;
	input			axis_areset			;
	
	input			s_axis_ctrl_tvalid	;
	input			s_axis_ctrl_tlast	;
	input	[31:0]	s_axis_ctrl_tdata	;
	output			s_axis_ctrl_trdy	;
	
	input			s_axis_data_tvalid	;
	input			s_axis_data_tlast	;
	input	[63:0]	s_axis_data_tdata	;
	output			s_axis_data_trdy	;
	
	output			m_axis_ctrl_tvalid	;
	output			m_axis_ctrl_tlast	;
	output	[31:0]	m_axis_ctrl_tdata	;
	input			m_axis_ctrl_trdy	;
	
	output			m_axis_data_tvalid	;
	output			m_axis_data_tlast	;
	output	[31:0]	m_axis_data_tdata	;
	input			m_axis_data_trdy	;
	
//================================================================================
// variable
//================================================================================
	localparam PSI_WIDTH = 2*SYNC_DATA_WIDTH+2; // 34
	localparam PHI_WIDTH = 2*SYNC_DATA_WIDTH+1+2; // 35
	localparam TAR_WIDTH = PSI_WIDTH+1; // 35
	// coarse_sync_state
	localparam	COARSE_SYNC_IDLE= 3'd0,
				COARSE_SYNC_ING	= 3'd1, 
				COARSE_SYNC_FIR	= 3'd2,
				COARSE_SYNC_SEC	= 3'd3;
	
	reg										ctrl_work_en	= 1'b0;
	reg										ctrl_work		= 1'b0; // 1'b0: 停止工作；1'b1: 开始工作
	
	reg				[2:0]					coarse_sync_state	;
	reg				[6:0]					coarse_sync_fir_count;
	
	wire									u1_i_work_ctrl_en	;
	wire									u1_i_work_ctrl		;
	reg										u1_i_data_valid		;
	reg				[2*SYNC_DATA_WIDTH-1:0]	u1_i_data			;
	reg				[2*SYNC_DATA_WIDTH-1:0]	u1_i_data_dly		;
	wire									u1_o_psi_data_valid	;
	wire			[2*PSI_WIDTH-1:0]		u1_o_psi_data		;
	
	wire									u2_i_work_ctrl_en	;
	wire									u2_i_work_ctrl		;
	wire									u2_i_data_valid		;
	wire			[2*SYNC_DATA_WIDTH-1:0]	u2_i_data			;
	wire			[2*SYNC_DATA_WIDTH-1:0]	u2_i_data_dly		;
	wire									u2_o_phi_data_valid	;
	wire	signed	[PHI_WIDTH-1:0]			u2_o_phi_data		;
	
	wire									u3_i_work_ctrl_en	;
	wire									u3_i_work_ctrl		;
	wire									u3_i_psi_phi_data_valid;
	wire			[2*PSI_WIDTH-1:0]		u3_i_psi_data		;
	wire	signed	[PHI_WIDTH-1:0]			u3_i_phi_data		;
	wire									u3_o_tar_data_valid	;
	wire	signed	[TAR_WIDTH-1:0]			u3_o_tar_data		;
	
//================================================================================
// ctrl_decode
//================================================================================
	always @(posedge axis_aclk) begin
		if(s_axis_ctrl_tvalid == 1'b1) begin
			case(s_axis_ctrl_tdata[31:24])
				8'd0: begin
					ctrl_work_en	<= 1'b1;
					ctrl_work		<= s_axis_ctrl_tdata[0]; // 1'b0: 停止工作；1'b1: 开始工作
				end
			endcase
		end
		else begin
			ctrl_work_en	<= ctrl_work_en;
			ctrl_work		<= ctrl_work;
		end
	end
	
//================================================================================
// coarse_sync_state
//================================================================================
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			coarse_sync_state <= COARSE_SYNC_IDLE;
		end
		else begin
			case(coarse_sync_state)
				COARSE_SYNC_IDLE: begin
					if((ctrl_work_en==1'b1) && (ctrl_work==1'b1)) begin
						coarse_sync_state <= COARSE_SYNC_ING;
					end
					else begin
						coarse_sync_state <= COARSE_SYNC_IDLE;
					end
				end
				COARSE_SYNC_ING: begin							// 开始粗同步搜索
					if((ctrl_work_en==1'b1) && (ctrl_work==1'b0)) begin
						coarse_sync_state <= COARSE_SYNC_IDLE;
					end
					else if((u3_o_tar_dat_valid==1'b1) && (u3_o_tar_data[TAR_WIDTH-1]==1'b0)) begin
						coarse_sync_state <= COARSE_SYNC_FIR;
					end
					else begin
						coarse_sync_state <= COARSE_SYNC_ING;
					end
				end
				COARSE_SYNC_FIR: begin							// 出现1次tar正值
					if((ctrl_work_en==1'b1) && (ctrl_work==1'b0)) begin
						coarse_sync_state <= COARSE_SYNC_IDLE;
					end
					if(coarse_sync_pre_count < 7'd70) begin
						if((u3_o_tar_dat_valid==1'b1) && (u3_o_tar_data[TAR_WIDTH-1]==1'b0)) begin
							coarse_sync_state <= COARSE_SYNC_SEC;
						end
						else begin
							coarse_sync_state <= COARSE_SYNC_FIR;
						end
					end
					else begin
						coarse_sync_state <= COARSE_SYNC_ING;
					end
				end
				COARSE_SYNC_SEC: begin							// 70个tar内有2次正值，确认为粗同步
					if((ctrl_work_en==1'b1) && (ctrl_work==1'b0)) begin
						coarse_sync_state <= COARSE_SYNC_IDLE;
					end
					else begin
						coarse_sync_state <= COARSE_SYNC_IDLE;
					end
				end
				default: begin
					coarse_sync_state <= COARSE_SYNC_IDLE;
				end
			endcase
		end
	end
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			coarse_sync_fir_count <= 7'd0;
		end
		else begin
			case(coarse_sync_state)
				// COARSE_SYNC_IDLE: begin
					// coarse_sync_fir_count <= 7'd0;
				// end
				// COARSE_SYNC_ING: begin
					// coarse_sync_fir_count <= 7'd0;
				// end
				COARSE_SYNC_FIR: begin
					if(u3_o_tar_dat_valid == 1'b1) begin
						coarse_sync_fir_count <= coarse_sync_fir_count + 1'd1;
					end
					else begin
						coarse_sync_fir_count <= coarse_sync_fir_count;
					end
				end
				// COARSE_SYNC_SEC: begin
					// coarse_sync_fir_count <= 7'd0;
				// end
				default: begin
					coarse_sync_fir_count <= 7'd0;
				end
			endcase
		end
	end
	
//================================================================================
// psi、phi
//================================================================================
	assign u1_i_work_ctrl_en	= ctrl_work_en;
	assign u1_i_work_ctrl		= ctrl_work;
	assign u2_i_work_ctrl_en	= ctrl_work_en;
	assign u2_i_work_ctrl		= ctrl_work;
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			u1_i_data_valid	<= 1'b0;
			u1_i_data		<= 'd0;
			u1_i_data_dly	<= 'd0;
		end
		else if(s_axis_data_tvalid == 1'b1) begin
			u1_i_data_valid	<= 1'b1;
			u1_i_data		<= s_axis_data_tdata[2*SYNC_DATA_WIDTH-1:0];
			u1_i_data_dly	<= s_axis_data_tdata[32+2*SYNC_DATA_WIDTH-1:32];
		end
		else begin
			u1_i_data_valid	<= 1'b0;
			u1_i_data		<= u1_i_data;
			u1_i_data_dly	<= u1_i_data_dly;
		end
	end
	
	assign u2_i_data_valid	= u1_i_data_valid;
	assign u2_i_data		= u1_i_data;
	assign u2_i_data_dly	= u1_i_data_dly;
	
	psi_operator #(
		.SYNC_DATA_WIDTH	(SYNC_DATA_WIDTH	),
		.PSI_WIDTH			(PSI_WIDTH			)
	)u1_psi_operator(
		.clk				(axis_aclk			),
		.reset				(axis_areset		),
		.i_work_ctrl_en		(u1_i_work_ctrl_en	),
		.i_work_ctrl		(u1_i_work_ctrl		),
		.i_data_valid		(u1_i_data_valid	),
		.i_data				(u1_i_data			),
		.i_data_dly			(u1_i_data_dly		),
		.o_psi_data_valid	(u1_o_psi_data_valid), // 9dly
		.o_psi_data			(u1_o_psi_data		)
	);
	
	phi_operator #(
		.SYNC_DATA_WIDTH(SYNC_DATA_WIDTH	),
		.PHI_WIDTH			(PHI_WIDTH			)
	)u2_phi_operator(
		.clk				(axis_aclk			),
		.reset				(axis_areset		),
		.i_work_ctrl_en		(u2_i_work_ctrl_en	),
		.i_work_ctrl		(u2_i_work_ctrl		),
		.i_data_valid		(u2_i_data_valid	),
		.i_data				(u2_i_data			),
		.i_data_dly			(u2_i_data_dly		),
		.o_phi_data_valid	(u2_o_phi_data_valid), // 6dly
		.o_phi_data			(u2_o_phi_data		)
	);
	
//================================================================================
// tar
//================================================================================
	assign u3_i_work_ctrl_en		= ctrl_work_en;
	assign u3_i_work_ctrl			= ctrl_work;
	assign u3_i_psi_phi_data_valid	= u1_o_psi_data_valid;
	assign u3_i_psi_data			= u1_o_psi_data;
	assign u3_i_phi_data			= u2_o_phi_data;
	
	tar_operator #(
		.PSI_WIDTH			(PSI_WIDTH			),
		.PHI_WIDTH			(PHI_WIDTH			),
		.TAR_WIDTH			(TAR_WIDTH			)
	)u3_tar_operator(
		.clk				(axis_aclk			),
		.reset				(axis_areset		),
		.i_work_ctrl_en		(u3_i_work_ctrl_en	),
		.i_work_ctrl		(u3_i_work_ctrl		),
		.i_psi_data_valid	(u3_i_psi_phi_data_valid),
		.i_psi_data			(u3_i_psi_data		),
		.i_phi_data			(u3_i_phi_data		),
		.o_tar_data_valid	(u3_o_tar_data_valid),
		.o_tar_data			(u3_o_tar_data		)
	);
	
	
	
	
endmodule
