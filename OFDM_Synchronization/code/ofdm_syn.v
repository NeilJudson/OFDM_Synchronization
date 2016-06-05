`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
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
	parameter	DATA_WIDTH		= 16,
				SYN_DATA_WIDTH	= 13
	)
	(
	axis_aclk			,
	axis_arst			,
	
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
	input	axis_aclk			;
	input	axis_arst			;
	
	input	s_axis_ctrl_tvalid	;
	input	s_axis_ctrl_tlast	;
	input	s_axis_ctrl_tdata	;
	output	s_axis_ctrl_trdy	;
	
	input	s_axis_data_tvalid	;
	input	s_axis_data_tlast	;
	input	s_axis_data_tdata	;
	output	s_axis_data_trdy	;
	
	output	m_axis_ctrl_tvalid	;
	output	m_axis_ctrl_tlast	;
	output	m_axis_ctrl_tdata	;
	input	m_axis_ctrl_trdy	;
	
	output	m_axis_data_tvalid	;
	output	m_axis_data_tlast	;
	output	m_axis_data_tdata	;
	input	m_axis_data_trdy	;
	
//====================================================================
//1.data_dpram
//====================================================================
	data_dpram #(
		.DATA_WIDTH(DATA_WIDTH),
		.SYN_DATA_WIDTH(SYN_DATA_WIDTH),
	)u1_data_dpram(
		.axis_aclk(axis_aclk),
		.axis_arst(axis_arst),
		
		.s_axis_ctrl_tvalid	,
		.s_axis_ctrl_tlast	,
		.s_axis_ctrl_tdata	,
		.s_axis_ctrl_trdy	,
		
		.s_axis_data_tvalid	,
		.s_axis_data_tlast	,
		.s_axis_data_tdata	,
		.s_axis_data_trdy	,
		
		.m_axis_ctrl_tvalid	,
		.m_axis_ctrl_tlast	,
		.m_axis_ctrl_tdata	,
		.m_axis_ctrl_trdy	,
		
		.m_axis_data_tvalid	,
		.m_axis_data_tlast	,
		.m_axis_data_tdata	,
		.m_axis_data_trdy
	);

endmodule
