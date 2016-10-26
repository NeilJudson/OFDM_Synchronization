`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2016/10/26 13:39:19
// Design Name: 
// Module Name: test_axis_interface_fifo
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


module test_axis_interface_fifo;

	// Inputs
	reg axis_aclk;
	reg axis_areset;
	reg data_valid;
	reg data_last;
	reg [31:0] data;
	reg m_axis_data_trdy;

	// Outputs
	wire almost_full;
	wire m_axis_data_tvalid;
	wire m_axis_data_tlast;
	wire [31:0] m_axis_data_tdata;
	
	reg [39:0] count;

	// Instantiate the Unit Under Test (UUT)
	axis_interface_fifo #(
		.DATA_WIDTH(6'd32)
	)uut(
		.axis_aclk(axis_aclk), 
		.axis_areset(axis_areset), 
		.data_valid(data_valid), 
		.data_last(data_last), 
		.data(data), 
		.almost_full(almost_full), 
		.m_axis_data_tvalid(m_axis_data_tvalid), 
		.m_axis_data_tlast(m_axis_data_tlast), 
		.m_axis_data_tdata(m_axis_data_tdata), 
		.m_axis_data_trdy(m_axis_data_trdy)
	);

	initial begin
		// Initialize Inputs
		axis_aclk = 0;
		axis_areset = 0;
		data_valid = 0;
		data_last = 0;
		data = 0;
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
			data_valid	<= 1'b0;
			data		<= 32'd0;
		end
		else if(count[2:0] == 3'd7) begin
			data_valid	<= 1'b1;
			data		<= count[34:3];
		end
		else begin
			data_valid	<= 1'b0;
			data		<= data;
		end
	end
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			m_axis_data_trdy <= 1'b0;
		end
		else if(count[4:0] == 5'd10) begin
			m_axis_data_trdy <= 1'b1;
		end
		else begin
			m_axis_data_trdy <= 1'b0;
		end
	end
	
endmodule
