`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/01/12 09:49:44
// Design Name: 
// Module Name: test_complex_abs_power2_35_1dsp
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


module test_complex_abs_power2_35_1dsp;

	// Inputs
	reg i_clk;
	reg i_rst;
	reg i_en;
	reg [34:0] i_r;
	reg [34:0] i_i;

	// Outputs
	wire o_p_en;
	wire [69:0] o_p;
	
	reg [63:0] count;

	// Instantiate the Unit Under Test (UUT)
	complex_abs_power2_35_1dsp uut (
		.i_clk(i_clk), 
		.i_rst(i_rst), 
		.i_en(i_en), 
		.i_r(i_r), 
		.i_i(i_i), 
		.o_p_en(o_p_en), 
		.o_p(o_p)
	);

	initial begin
		// Initialize Inputs
		i_clk = 0;
		i_rst = 0;
		i_en = 0;
		i_r = 0;
		i_i = 0;

		// Wait 100 ns for global reset to finish
		#5;
		i_rst = 1;
		#5;
		i_rst = 0;
		#10;
        
		// Add stimulus here

	end
	
	always
		#5 i_clk = ~i_clk;
	
	always @(posedge i_clk or posedge i_rst) begin
		if(i_rst == 1'b1) begin
			count <= 'd0;
		end
		else begin
			count <= count + 1'd1;
		end
	end
	
	always @(posedge i_clk or posedge i_rst) begin
		if(i_rst == 1'b1) begin
			i_en	<= 1'b0;
			i_r		<= 'd0;
			i_i		<= 'd0;
		end
		else if((count > 'd80) && (count[2:0] == 3'd7)) begin
			i_en	<= 1'b1;
			i_r		<= count[37:3];
			i_i		<= count[37:3];
		end
		else begin
			i_en	<= 1'b0;
			i_r		<= i_r;
			i_i		<= i_i;
		end
	end
	
      
endmodule
