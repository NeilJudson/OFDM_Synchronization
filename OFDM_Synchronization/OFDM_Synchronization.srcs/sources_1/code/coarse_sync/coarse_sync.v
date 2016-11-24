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
	input				axis_aclk			;
	input				axis_areset			;
	
	input				s_axis_ctrl_tvalid	;
	input				s_axis_ctrl_tlast	;
	input		[31:0]	s_axis_ctrl_tdata	;
	output				s_axis_ctrl_trdy	;
	
	input				s_axis_data_tvalid	;
	input				s_axis_data_tlast	;
	input		[63:0]	s_axis_data_tdata	;
	output				s_axis_data_trdy	;
	
	output				m_axis_ctrl_tvalid	;
	output				m_axis_ctrl_tlast	;
	output		[31:0]	m_axis_ctrl_tdata	;
	input				m_axis_ctrl_trdy	;
	
	output				m_axis_data_tvalid	;
	output				m_axis_data_tlast	;
	output		[31:0]	m_axis_data_tdata	;
	input				m_axis_data_trdy	;
	
//================================================================================
// variable
//================================================================================
	localparam PSI_WIDTH = 2*(2*SYNC_DATA_WIDTH+2); // 68
	localparam PHI_WIDTH = 2*SYNC_DATA_WIDTH+2; // 34
	
	reg									ctrl_work_en	= 1'b0;
	reg									ctrl_work		= 1'b0; // 1'b0: 停止工作；1'b1: 开始工作
	
	wire								u1_i_work_ctrl_en;
	wire								u1_i_work_ctrl	;
	reg									u1_i_data_valid	;
	reg			[2*SYNC_DATA_WIDTH-1:0]	u1_i_data		;
	reg			[2*SYNC_DATA_WIDTH-1:0]	u1_i_data_dly	;
	wire								u1_o_data_valid	;
	wire		[PSI_WIDTH-1:0]			u1_o_data		;
	
	wire								u2_i_work_ctrl_en;
	wire								u2_i_work_ctrl	;
	wire								u2_i_data_valid	;
	wire		[2*SYNC_DATA_WIDTH-1:0]	u2_i_data		;
	wire								u2_o_data_valid	;
	wire		[PHI_WIDTH-1:0]			u2_o_data		;
	
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
			ctrl_work_en	<= ctrl_work_en	;
			ctrl_work		<= ctrl_work	;
		end
	end
	
//================================================================================
// accumulate
//================================================================================
	assign u1_i_work_ctrl_en= ctrl_work_en;
	assign u1_i_work_ctrl	= ctrl_work;
	assign u2_i_work_ctrl_en= ctrl_work_en;
	assign u2_i_work_ctrl	= ctrl_work;
	
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
	assign u2_i_data		= u1_i_data_dly;
	
	psi_operator #(
		.SYNC_DATA_WIDTH(SYNC_DATA_WIDTH	),
		.PSI_WIDTH		(PSI_WIDTH			)
	)u1_psi_operator(
		.clk			(axis_aclk			),
		.reset			(axis_areset		),
		.i_work_ctrl_en	(u1_i_work_ctrl_en	),
		.i_work_ctrl	(u1_i_work_ctrl		),
		.i_data_valid	(u1_i_data_valid	),
		.i_data			(u1_i_data			),
		.i_data_dly		(u1_i_data_dly		),
		.o_data_valid	(u1_o_data_valid	), // 9dly
		.o_data			(u1_o_data			)
	);
	
	phi_operator #(
		.SYNC_DATA_WIDTH(SYNC_DATA_WIDTH	),
		.PHI_WIDTH		(PHI_WIDTH			)
	)u2_phi_operator(
		.clk			(axis_aclk			),
		.reset			(axis_areset		),
		.i_work_ctrl_en	(u2_i_work_ctrl_en	),
		.i_work_ctrl	(u2_i_work_ctrl		),
		.i_data_valid	(u2_i_data_valid	),
		.i_data			(u2_i_data			),
		.o_data_valid	(u2_o_data_valid	), // 6dly
		.o_data			(u2_o_data			)
	);
	
	
	
endmodule
