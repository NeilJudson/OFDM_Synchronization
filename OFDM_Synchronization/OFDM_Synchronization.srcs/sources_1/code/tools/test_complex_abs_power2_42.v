`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/11/25 19:57:58
// Design Name: 
// Module Name: test_complex_abs_power2_42
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


module test_complex_abs_power2_42;

	// Inputs
	reg i_clk;
	reg i_data_valid;
	reg [41:0] i_data_i;
	reg [41:0] i_data_q;

	// Outputs
	wire o_data_valid;
	wire [83:0] o_data;
	
	reg reset;
	reg [49:0] count;

	// Instantiate the Unit Under Test (UUT)
	complex_abs_power2_42 uut (
		.i_clk(i_clk), 
		.i_data_valid(i_data_valid), 
		.i_data_i(i_data_i), 
		.i_data_q(i_data_q), 
		.o_data_valid(o_data_valid), 
		.o_data(o_data)
	);

	initial begin
		// Initialize Inputs
		i_clk = 0;
		i_data_valid = 0;
		i_data_i = 0;
		i_data_q = 0;

		// Wait 100 ns for global reset to finish
		#10;
		reset = 1;
		#10;
		reset = 0;
		#10;
        
		// Add stimulus here

	end
	
	always
		#5 i_clk = ~i_clk;
	
	always @(posedge i_clk or posedge reset) begin
		if(reset == 1'b1) begin
			count <= 50'd0;
		end
		else begin
			count <= count + 1'd1;
		end
	end
	
	always @(posedge i_clk or posedge reset) begin
		if(reset == 1'b1) begin
			i_data_valid	<= 1'b0;
			i_data_i		<= 'd0;
			i_data_q		<= 'd0;
		end
		else if(count[2:0] == 3'd7) begin
			i_data_valid	<= 1'b1;
			i_data_i		<= count[44:3];
			i_data_q		<= 42'd1;
		end
		else begin
			i_data_valid	<= 1'b0;
			i_data_i		<= i_data_i;
			i_data_q		<= i_data_q;
		end
	end
      
endmodule
