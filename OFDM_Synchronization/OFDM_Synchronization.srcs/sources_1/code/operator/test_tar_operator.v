`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/11/25 17:15:29
// Design Name: 
// Module Name: test_tar_operator
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


module test_tar_operator;

	// Inputs
	reg clk;
	reg reset;
	reg i_work_ctrl_en;
	reg i_work_ctrl;
	reg i_psi_data_valid;
	reg [67:0] i_psi_data;
	reg i_phi_data_valid;
	reg [34:0] i_phi_data;

	// Outputs
	wire o_data_valid;
	wire [99:0] o_data;
	
	reg [39:0] count;

	// Instantiate the Unit Under Test (UUT)
	tar_operator #(
		.PSI_WIDTH(34),
		.PHI_WIDTH(35),
		.TAR_WIDTH(100)
	)uut(
		.clk(clk), 
		.reset(reset), 
		.i_work_ctrl_en(i_work_ctrl_en), 
		.i_work_ctrl(i_work_ctrl), 
		.i_psi_data_valid(i_psi_data_valid), 
		.i_psi_data(i_psi_data), 
		.i_phi_data_valid(i_phi_data_valid), 
		.i_phi_data(i_phi_data), 
		.o_data_valid(o_data_valid), 
		.o_data(o_data)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		i_work_ctrl_en = 0;
		i_work_ctrl = 0;
		i_psi_data_valid = 0;
		i_psi_data = 0;
		i_phi_data_valid = 0;
		i_phi_data = 0;

		// Wait 100 ns for global reset to finish
		#10;
		reset = 1;
		#10;
		reset = 0;
		#10;
		i_work_ctrl_en = 1;
		i_work_ctrl = 1;
		#10;
		i_work_ctrl_en = 0;
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
			i_psi_data_valid	<= 1'b0;
			i_psi_data			<= 'd0;
			i_phi_data_valid	<= 1'b0;
			i_phi_data			<= 'd0;
		end
		else if(count[2:0] == 3'd7) begin
			i_psi_data_valid	<= 1'b1;
			i_psi_data			<= count[34:3];
			i_phi_data_valid	<= 1'b1;
			i_phi_data			<= count[34:3]+1'd1;
		end
		else begin
			i_psi_data_valid	<= 1'b0;
			i_psi_data			<= i_psi_data;
			i_phi_data_valid	<= 1'b0;
			i_phi_data			<= i_phi_data;
		end
	end
	
	
	
      
endmodule
