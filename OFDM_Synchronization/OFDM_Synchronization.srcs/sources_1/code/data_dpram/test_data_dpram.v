`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2016/10/22 00:06:31
// Design Name: 
// Module Name: test_data_dpram
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


module test_data_dpram;

	// Inputs
	reg axis_aclk;
	reg axis_areset;
	reg s_axis_ctrl_tvalid;
	reg s_axis_ctrl_tlast;
	reg [31:0] s_axis_ctrl_tdata;
	reg s_axis_data_tvalid;
	reg s_axis_data_tlast;
	reg [31:0] s_axis_data_tdata;
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
	wire [31:0] m_axis_data_tdata;
	
	reg [39:0] count;

	// Instantiate the Unit Under Test (UUT)
	data_dpram uut(
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
		s_axis_data_tlast = 0;
		m_axis_ctrl_trdy = 0;
		m_axis_data_trdy = 0;

		// Wait 100 ns for global reset to finish
		#10;
		axis_areset = 1;
		#10;
		axis_areset = 0;
		#10;
        
		// Add stimulus here

	end
	
	always
		#5 axis_aclk = ~axis_aclk;
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			count <= 40'd0;
		end
		else begin
			count <= count + 1'd1;
		end
	end
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			s_axis_data_tvalid	<= 1'b0;
			s_axis_data_tdata	<= 32'd0;
		end
		else if(count[2:0] == 3'd3) begin
			s_axis_data_tvalid	<= 1'b1;
			s_axis_data_tdata	<= count[34:3];
		end
		else begin
			s_axis_data_tvalid	<= 1'b0;
			s_axis_data_tdata	<= s_axis_data_tdata;
		end
	end
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			m_axis_data_trdy		<= 1'b0;
		end
		else if((count[9]==1'b0) && (count[2:0]==3'd7)) begin
			m_axis_data_trdy		<= 1'b1;
		end
		else if((count[9]==1'b1) && (count[3:0]==4'd15)) begin
			m_axis_data_trdy		<= 1'b1;
		end
		else begin
			m_axis_data_trdy		<= 1'b1;
		end
	end
	
endmodule
