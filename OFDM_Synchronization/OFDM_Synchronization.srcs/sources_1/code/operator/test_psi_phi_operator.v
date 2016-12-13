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
	reg i_work_ctrl_en;
	reg i_work_ctrl;
	reg i_data_valid;
	reg [31:0] i_data;
	reg [31:0] i_data_dly;

	// Outputs
	wire o_psi_data_valid;
	wire o_phi_data_valid;
	wire [67:0] o_psi_data;
	wire [34:0] o_phi_data;
	
	reg [39:0] count;

	// Instantiate the Unit Under Test (UUT)
	psi_operator #(
		.SYNC_DATA_WIDTH(16),
		.PSI_WIDTH(34)
	)uut_psi(
		.clk(clk), 
		.reset(reset), 
		.i_work_ctrl_en(i_work_ctrl_en),
		.i_work_ctrl(i_work_ctrl),
		.i_data_valid(i_data_valid), 
		.i_data(i_data), 
		.i_data_dly(i_data_dly), 
		.o_psi_data_valid(o_psi_data_valid), 
		.o_psi_data(o_psi_data)
	);
	
	phi_operator #(
		.SYNC_DATA_WIDTH(16),
		.PHI_WIDTH(35)
	)uut_phi(
		.clk(clk), 
		.reset(reset),
		.i_work_ctrl_en(i_work_ctrl_en),
		.i_work_ctrl(i_work_ctrl),
		.i_data_valid(i_data_valid), 
		.i_data(i_data), 
		.i_data_dly(i_data_dly), 
		.o_phi_data_valid(o_phi_data_valid), 
		.o_phi_data(o_phi_data)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		i_work_ctrl_en = 0;
		i_work_ctrl = 0;
		i_data_valid = 0;
		i_data = 0;
		i_data_dly = 0;

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
			i_data_valid	<= 1'b0;
			i_data			<= 'd0;
			i_data_dly		<= 'd0;
		end
		else if(count[2:0] == 3'd7) begin
			i_data_valid	<= 1'b1;
			i_data			<= count[34:3];
			i_data_dly		<= 'd1;
		end
		else begin
			i_data_valid	<= 1'b0;
			i_data			<= i_data;
			i_data_dly		<= i_data_dly;
		end
	end
	
	
	
      
endmodule