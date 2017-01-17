`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/01/04 16:43:12
// Design Name: 
// Module Name: test_lambad
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


module test_lambda;

	// Inputs
	reg axis_aclk;
	reg axis_areset;
	reg i_work_ctrl_en;
	reg i_work_ctrl;
	reg i_psi_phi_data_valid;
	reg [29:0] i_psi_data_i;
	reg [29:0] i_psi_data_q;
	reg [30:0] i_phi_data;
	reg [15:0] i_psi_phi_data_addr;
	reg [7:0] i_rou;

	// Outputs
	wire o_lambda_data_valid;
	wire [70:0] o_lambda_data_32;
	wire [70:0] o_lambda_data_31;
	wire [70:0] o_lambda_data_30;
	wire [70:0] o_lambda_data_29;
	wire [70:0] o_lambda_data_28;
	wire [70:0] o_lambda_data_27;
	wire [70:0] o_lambda_data_26;
	wire [70:0] o_lambda_data_25;
	wire [70:0] o_lambda_data_24;
	wire [70:0] o_lambda_data_23;
	wire [15:0] o_lambda_data_addr;
	
	reg [63:0] count;

	// Instantiate the Unit Under Test (UUT)
	lambda #(
		.PSI_WIDTH(30),
		.PHI_WIDTH(31),
		.RAM_ADDR_WIDTH(10)
	) uut (
		.axis_aclk(axis_aclk), 
		.axis_areset(axis_areset), 
		.i_work_ctrl_en(i_work_ctrl_en),
		.i_work_ctrl(i_work_ctrl),
		.i_psi_phi_data_valid(i_psi_phi_data_valid), 
		.i_psi_data_i(i_psi_data_i), 
		.i_psi_data_q(i_psi_data_q), 
		.i_phi_data(i_phi_data), 
		.i_psi_phi_data_addr(i_psi_phi_data_addr), 
		.i_rou(i_rou),
		.o_lambda_data_valid(o_lambda_data_valid), 
		.o_lambda_data_32(o_lambda_data_32),
		.o_lambda_data_31(o_lambda_data_31),
		.o_lambda_data_30(o_lambda_data_30),
		.o_lambda_data_29(o_lambda_data_29),
		.o_lambda_data_28(o_lambda_data_28),
		.o_lambda_data_27(o_lambda_data_27),
		.o_lambda_data_26(o_lambda_data_26),
		.o_lambda_data_25(o_lambda_data_25),
		.o_lambda_data_24(o_lambda_data_24),
		.o_lambda_data_23(o_lambda_data_23),
		.o_lambda_data_addr(o_lambda_data_addr)
	);

	initial begin
		// Initialize Inputs
		axis_aclk = 0;
		axis_areset = 0;
		i_work_ctrl_en = 0;
		i_work_ctrl = 0;
		i_psi_phi_data_valid = 0;
		i_psi_data_i = 0;
		i_psi_data_q = 0;
		i_phi_data = 0;
		i_psi_phi_data_addr = 0;
		i_rou = 0;

		// Wait 100 ns for global reset to finish
		#5;
		axis_areset = 1;
		#5;
		axis_areset = 0;
		#10;
        
		// Add stimulus here

	end
	
	always
		#5 axis_aclk = ~axis_aclk;
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			count <= 'd0;
		end
		else begin
			count <= count + 1'd1;
		end
	end
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			i_work_ctrl_en	<= 1'b0;
			i_work_ctrl		<= 1'b0;
		end
		else if(count == 70) begin
			i_work_ctrl_en	<= 1'b1;
			i_work_ctrl		<= 1'b1;
		end
		else begin
			i_work_ctrl_en	<= 1'b0;
			i_work_ctrl		<= 1'b0;
		end
	end
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			i_psi_phi_data_valid<= 1'b0;
			i_psi_data_i		<= 'd0;
			i_psi_data_q		<= 'd0;
			i_phi_data			<= 'd0;
			i_psi_phi_data_addr	<= 'd0;
		end
		else if((count > 'd80) && (count[2:0] == 3'd7)) begin
			i_psi_phi_data_valid<= 1'b1;
			i_psi_data_i		<= count[40:3];
			i_psi_data_q		<= count[40:3];
			i_phi_data			<= count[41:3];
			i_psi_phi_data_addr	<= count[18:3];
		end
		else begin
			i_psi_phi_data_valid<= 1'b0;
			i_psi_data_i		<= i_psi_data_i;
			i_psi_data_q		<= i_psi_data_q;
			i_phi_data			<= i_phi_data;
			i_psi_phi_data_addr	<= i_psi_phi_data_addr;
		end
	end
	
	always @(posedge axis_aclk) begin
		if(count == 'd8000) begin
			$stop;
			
		end
	end
	
      
endmodule
