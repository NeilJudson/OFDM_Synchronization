`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/12/14 22:58:08
// Design Name: 
// Module Name: test_coarse_sync
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


module test_coarse_sync;

	// Inputs
	reg axis_aclk;
	reg axis_areset;
	reg s_axis_ctrl_tvalid;
	reg s_axis_ctrl_tlast;
	reg [31:0] s_axis_ctrl_tdata;
	reg s_axis_data_tvalid;
	reg s_axis_data_tlast;
	reg [63:0] s_axis_data_tdata;
	reg m_axis_ctrl_trdy;
	reg m_axis_data_trdy;

	// Outputs
	wire s_axis_ctrl_trdy;
	wire s_axis_data_trdy;
	wire m_axis_ctrl_tvalid;
	wire m_axis_ctrl_tlast;
	wire [31:0] m_axis_ctrl_tdata;
	wire m_axis_data_tvalid;
	wire m_axis_data_tlast;
	wire [111:0] m_axis_data_tdata;

	// Instantiate the Unit Under Test (UUT)
	coarse_sync uut (
		.axis_aclk(axis_aclk), 
		.axis_areset(axis_areset), 
		.s_axis_ctrl_tvalid(s_axis_ctrl_tvalid), 
		.s_axis_ctrl_tlast(s_axis_ctrl_tlast), 
		.s_axis_ctrl_tdata(s_axis_ctrl_tdata), 
		.s_axis_ctrl_trdy(s_axis_ctrl_trdy), 
		.s_axis_data_tvalid(s_axis_data_tvalid), 
		.s_axis_data_tlast(s_axis_data_tlast), 
		.s_axis_data_tdata(s_axis_data_tdata), 
		.s_axis_data_trdy(s_axis_data_trdy), 
		.m_axis_ctrl_tvalid(m_axis_ctrl_tvalid), 
		.m_axis_ctrl_tlast(m_axis_ctrl_tlast), 
		.m_axis_ctrl_tdata(m_axis_ctrl_tdata), 
		.m_axis_ctrl_trdy(m_axis_ctrl_trdy), 
		.m_axis_data_tvalid(m_axis_data_tvalid), 
		.m_axis_data_tlast(m_axis_data_tlast), 
		.m_axis_data_tdata(m_axis_data_tdata), 
		.m_axis_data_trdy(m_axis_data_trdy)
	);

	initial begin
		// Initialize Inputs
		axis_aclk = 0;
		axis_areset = 0;
		s_axis_ctrl_tvalid = 0;
		s_axis_ctrl_tlast = 0;
		s_axis_ctrl_tdata = 0;
		s_axis_data_tvalid = 0;
		s_axis_data_tlast = 0;
		s_axis_data_tdata = 0;
		m_axis_ctrl_trdy = 0;
		m_axis_data_trdy = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule
