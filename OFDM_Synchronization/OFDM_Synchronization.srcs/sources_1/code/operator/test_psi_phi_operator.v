`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2016/11/18 11:29:32
// Design Name: 
// Module Name: test_psi_phi_operator
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


module test_psi_phi_operator;

	// Inputs
	reg clk;
	reg reset;
	reg i_start_work;
	reg i_stop_work;
	reg i_data_valid;
	reg [31:0] i_data;
	reg [31:0] i_data_dly;

	// Outputs
	wire o_data_valid_psi;
	wire o_data_valid_phi;
	wire [67:0] o_data_psi;
	wire [33:0] o_data_phi;
	
	reg [39:0] count;

	// Instantiate the Unit Under Test (UUT)
	psi_operator #(
		.SYNC_DATA_WIDTH(16),
		.PSI_WIDTH(68)
	)uut_psi(
		.clk(clk), 
		.reset(reset), 
		.i_start_work(i_start_work),
		.i_stop_work(i_stop_work),
		.i_data_valid(i_data_valid), 
		.i_data(i_data), 
		.i_data_dly(i_data_dly), 
		.o_data_valid(o_data_valid_psi), 
		.o_data(o_data_psi)
	);
	
	phi_operator #(
		.SYNC_DATA_WIDTH(16),
		.PHI_WIDTH(34)
	)uut_phi(
		.clk(clk), 
		.reset(reset),
		.i_start_work(i_start_work),
		.i_stop_work(i_stop_work),
		.i_data_valid(i_data_valid), 
		.i_data(i_data-6'd32), 
		.o_data_valid(o_data_valid_phi), 
		.o_data(o_data_phi)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		i_start_work = 0;
		i_stop_work = 0;
		i_data_valid = 0;
		i_data = 0;
		i_data_dly = 0;

		// Wait 100 ns for global reset to finish
		#10;
		reset = 1;
		#10;
		reset = 0;
		#10;
		i_start_work =1;
		#10;
        
		// Add stimulus here

	end
	
	always
		#5 clk = ~clk;
	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			count <= 40'd0;
		end
		else begin
			count <= count + 1'd1;
		end
	end
	
	always @(posedge clk or posedge reset) begin
		if(reset == 1'b1) begin
			i_data_valid	<= 1'b0;
			i_data			<= 32'd0;
			i_data_dly		<= 32'd0;
		end
		else if(count[2:0] == 3'd7) begin
			i_data_valid	<= 1'b1;
			i_data			<= count[34:3];
			i_data_dly		<= 32'd1;
		end
		else begin
			i_data_valid	<= 1'b0;
			i_data			<= i_data;
			i_data_dly		<= i_data_dly;
		end
	end
	
	
	
      
endmodule