`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2016/06/05 20:55:31
// Design Name: 
// Module Name: ofdm_syn
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


module ofdm_syn #(
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
	input		[31:0]	s_axis_data_tdata	;
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
	localparam	RAM_ADDR_WIDTH		= 10;
	// sync_state
	localparam	SYNC_IDLE			= 3'd0,
				SYNC_COARSE_SEARCH	= 3'd1,
				SYNC_COARSE_DONE	= 3'd2,
				SYNC_FINE_SEARCH	= 3'd3,
				SYNC_FINE_DONE		= 3'd4,
				SYNC_DATA_OUTPUT	= 3'd5;
	
	wire			rx_state;
	
	reg		[2:0]	sync_state;
	
	wire	[31:0]	u1_s_axis_ctrl_tdata;
	
	wire			u2_s_axis_ctrl_tvalid	;
	wire			u2_s_axis_ctrl_tlast	;
	wire	[31:0]	u2_s_axis_ctrl_tdata	;
	wire			u2_s_axis_ctrl_trdy		;
	
	wire			u2_s_axis_data_tvalid	;
	wire			u2_s_axis_data_tlast	;
	wire	[63:0]	u2_s_axis_data_tdata	;
	wire	[15:0]	u2_s_axis_data_taddr	;
	wire			u2_s_axis_data_trdy		;
	
	wire			u2_m_axis_data_tvalid	;
	wire			u2_m_axis_data_tlast	;
	wire	[111:0]	u2_m_axis_data_tdata	;
	wire	[15:0]	u2_m_axis_data_taddr	;
	wire			u2_m_axis_data_trdy		;
	
	wire			u2_o_coarse_sync_ok		;
	
//================================================================================
// s_axis_ctrl_tdata
//================================================================================
	assign rx_state = s_axis_ctrl_tdata[0];
	
//================================================================================
// synchronization state
//================================================================================
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			sync_state <= SYNC_IDLE;
		end
		else begin
			case(sync_state)
				SYNC_IDLE: begin
					if(rx_state == 1'b1) begin
						sync_state <= SYNC_COARSE_SEARCH;
					end
					else begin
						sync_state <= SYNC_IDLE;
					end
				end
				SYNC_COARSE_SEARCH: begin
					if(u2_o_coarse_sync_ok == 1'b1) begin
						sync_state <= SYNC_COARSE_DONE;
					end
					else begin
						sync_state <= SYNC_COARSE_SEARCH;
					end
				end
				SYNC_COARSE_DONE: begin
					sync_state <= SYNC_FINE_SEARCH;
				end
				SYNC_FINE_SEARCH: begin
					if(u3_fine_sync_ok == 1'b1) begin
						sync_state <= SYNC_FINE_DONE;
					end
					else begin
						sync_state <= SYNC_FINE_SEARCH;
					end
				end
				SYNC_FINE_DONE: begin
					sync_state <= SYNC_DATA_OUTPUT;
				end
				SYNC_DATA_OUTPUT: begin
				
				end
				default: begin
					sync_state <= sync_state;
				end
			endcase
		end
	end
	
//================================================================================
// data dpram
//================================================================================
	data_dpram #(
		.SYNC_DATA_WIDTH	(SYNC_DATA_WIDTH		),
		.RAM_ADDR_WIDTH		(RAM_ADDR_WIDTH			)
	)u1_data_dpram(
		.axis_aclk			(axis_aclk				),
		.axis_areset		(axis_areset			),
		
		.s_axis_ctrl_tvalid	(),
		.s_axis_ctrl_tlast	(),
		.s_axis_ctrl_tdata	(),
		.s_axis_ctrl_trdy	(),
		
		.s_axis_data_tvalid	(),
		.s_axis_data_tlast	(),
		.s_axis_data_tdata	(),
		.s_axis_data_trdy	(),
		
		.m_axis_ctrl_tvalid	(),
		.m_axis_ctrl_tlast	(),
		.m_axis_ctrl_tdata	(),
		.m_axis_ctrl_trdy	(),
		
		.m_axis_data_tvalid	(),
		.m_axis_data_tlast	(),
		.m_axis_data_tdata	(),
		.m_axis_data_trdy	()
	);
	
//================================================================================
// coarse synchronization
//================================================================================
	coarse_sync #(
		.SYNC_DATA_WIDTH	(SYNC_DATA_WIDTH		),
		.RAM_ADDR_WIDTH		(RAM_ADDR_WIDTH			)
	)u2_coarse_sync(
		.axis_aclk			(axis_aclk				),
		.axis_areset		(axis_areset			),
		
		.s_axis_ctrl_tvalid	(u2_s_axis_ctrl_tvalid	),
		.s_axis_ctrl_tlast	(u2_s_axis_ctrl_tlast	),
		.s_axis_ctrl_tdata	(u2_s_axis_ctrl_tdata	),
		.s_axis_ctrl_trdy	(u2_s_axis_ctrl_trdy	),
		
		.s_axis_data_tvalid	(u2_s_axis_data_tvalid	),
		.s_axis_data_tlast	(u2_s_axis_data_tlast	),
		.s_axis_data_tdata	(u2_s_axis_data_tdata	),
		.s_axis_data_taddr	(u2_s_axis_data_taddr	),
		.s_axis_data_trdy	(u2_s_axis_data_trdy	),
		
		.m_axis_data_tvalid	(u2_m_axis_data_tvalid	),
		.m_axis_data_tlast	(u2_m_axis_data_tlast	),
		.m_axis_data_tdata	(u2_m_axis_data_tdata	),
		.m_axis_data_taddr	(u2_m_axis_data_taddr	),
		.m_axis_data_trdy	(u2_m_axis_data_trdy	),
		
		.o_coarse_sync_ok	(u2_o_coarse_sync_ok	)
	);
	
	
endmodule
