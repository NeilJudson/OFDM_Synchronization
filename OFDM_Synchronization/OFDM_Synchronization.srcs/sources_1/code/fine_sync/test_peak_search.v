`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/01/18 09:05:47
// Design Name: 
// Module Name: test_peak_search
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


module test_peak_search;

	// Inputs
	reg axis_aclk;
	reg axis_areset;
	reg i_work_ctrl_en;
	reg i_work_ctrl;
	reg i_lambda_data_valid;
	reg [70:0] i_lambda_data_32;
	reg [70:0] i_lambda_data_31;
	reg [70:0] i_lambda_data_30;
	reg [70:0] i_lambda_data_29;
	reg [70:0] i_lambda_data_28;
	reg [70:0] i_lambda_data_27;
	reg [70:0] i_lambda_data_26;
	reg [70:0] i_lambda_data_25;
	reg [70:0] i_lambda_data_24;
	reg [70:0] i_lambda_data_23;
	reg [70:0] i_lambda_data_22;
	reg [70:0] i_lambda_data_21;
	reg [70:0] i_lambda_data_20;
	reg [70:0] i_lambda_data_19;
	reg [70:0] i_lambda_data_18;
	reg [70:0] i_lambda_data_17;
	reg [70:0] i_lambda_data_16;
	reg [70:0] i_lambda_data_15;
	reg [70:0] i_lambda_data_14;
	reg [70:0] i_lambda_data_13;
	reg [70:0] i_lambda_data_12;
	reg [70:0] i_lambda_data_11;
	reg [70:0] i_lambda_data_10;
	reg [70:0] i_lambda_data_9;
	reg [70:0] i_lambda_data_8;
	reg [70:0] i_lambda_data_7;
	reg [70:0] i_lambda_data_6;
	reg [70:0] i_lambda_data_5;
	reg [70:0] i_lambda_data_4;
	reg [70:0] i_lambda_data_3;
	reg [70:0] i_lambda_data_2;
	reg [70:0] i_lambda_data_1;
	reg [15:0] i_lambda_data_addr;
	

	// Outputs
	wire o_fine_sync_ok;
	wire [4:0] o_fine_sync_L;
	wire [15:0] o_fine_sync_addr;
	
	reg [95:0] count;

	// Instantiate the Unit Under Test (UUT)
	peak_search uut (
		.axis_aclk(axis_aclk), 
		.axis_areset(axis_areset), 
		.i_work_ctrl_en(i_work_ctrl_en), 
		.i_work_ctrl(i_work_ctrl), 
		.i_lambda_data_valid(i_lambda_data_valid), 
		.i_lambda_data_32(i_lambda_data_32), 
		.i_lambda_data_31(i_lambda_data_31), 
		.i_lambda_data_30(i_lambda_data_30), 
		.i_lambda_data_29(i_lambda_data_29), 
		.i_lambda_data_28(i_lambda_data_28), 
		.i_lambda_data_27(i_lambda_data_27), 
		.i_lambda_data_26(i_lambda_data_26), 
		.i_lambda_data_25(i_lambda_data_25), 
		.i_lambda_data_24(i_lambda_data_24), 
		.i_lambda_data_23(i_lambda_data_23), 
		.i_lambda_data_22({(71){1'b1}}), 
		.i_lambda_data_21({(71){1'b1}}), 
		.i_lambda_data_20({(71){1'b1}}), 
		.i_lambda_data_19({(71){1'b1}}), 
		.i_lambda_data_18({(71){1'b1}}), 
		.i_lambda_data_17({(71){1'b1}}), 
		.i_lambda_data_16({(71){1'b1}}), 
		.i_lambda_data_15({(71){1'b1}}), 
		.i_lambda_data_14({(71){1'b1}}), 
		.i_lambda_data_13({(71){1'b1}}), 
		.i_lambda_data_12({(71){1'b1}}), 
		.i_lambda_data_11({(71){1'b1}}), 
		.i_lambda_data_10({(71){1'b1}}), 
		.i_lambda_data_9({(71){1'b1}}), 
		.i_lambda_data_8({(71){1'b1}}), 
		.i_lambda_data_7({(71){1'b1}}), 
		.i_lambda_data_6({(71){1'b1}}), 
		.i_lambda_data_5({(71){1'b1}}), 
		.i_lambda_data_4({(71){1'b1}}), 
		.i_lambda_data_3({(71){1'b1}}), 
		.i_lambda_data_2({(71){1'b1}}), 
		.i_lambda_data_1({(71){1'b1}}), 
		.i_lambda_data_addr(i_lambda_data_addr), 
		.o_fine_sync_ok(o_fine_sync_ok),
		.o_fine_sync_L(o_fine_sync_L),
		.o_fine_sync_addr(o_fine_sync_addr)
	);

	initial begin
		// Initialize Inputs
		axis_aclk = 0;
		axis_areset = 0;
		i_work_ctrl_en = 0;
		i_work_ctrl = 0;
		i_lambda_data_valid = 0;
		i_lambda_data_32 = 0;
		i_lambda_data_31 = 0;
		i_lambda_data_30 = 0;
		i_lambda_data_29 = 0;
		i_lambda_data_28 = 0;
		i_lambda_data_27 = 0;
		i_lambda_data_26 = 0;
		i_lambda_data_25 = 0;
		i_lambda_data_24 = 0;
		i_lambda_data_23 = 0;
		i_lambda_data_22 = 0;
		i_lambda_data_21 = 0;
		i_lambda_data_20 = 0;
		i_lambda_data_19 = 0;
		i_lambda_data_18 = 0;
		i_lambda_data_17 = 0;
		i_lambda_data_16 = 0;
		i_lambda_data_15 = 0;
		i_lambda_data_14 = 0;
		i_lambda_data_13 = 0;
		i_lambda_data_12 = 0;
		i_lambda_data_11 = 0;
		i_lambda_data_10 = 0;
		i_lambda_data_9 = 0;
		i_lambda_data_8 = 0;
		i_lambda_data_7 = 0;
		i_lambda_data_6 = 0;
		i_lambda_data_5 = 0;
		i_lambda_data_4 = 0;
		i_lambda_data_3 = 0;
		i_lambda_data_2 = 0;
		i_lambda_data_1 = 0;
		i_lambda_data_addr = 0;

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
			i_work_ctrl_en <= 1'b0;
			i_work_ctrl    <= 1'b0;
		end
		else if(count == 70) begin
			i_work_ctrl_en <= 1'b1;
			i_work_ctrl    <= 1'b1;
		end
		else begin
			i_work_ctrl_en <= 1'b0;
			i_work_ctrl    <= 1'b0;
		end
	end
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			i_lambda_data_valid <= 1'b0;
			i_lambda_data_32 <= 'd0;
			i_lambda_data_31 <= 'd0;
			i_lambda_data_30 <= 'd0;
			i_lambda_data_29 <= 'd0;
			i_lambda_data_28 <= 'd0;
			i_lambda_data_27 <= 'd0;
			i_lambda_data_26 <= 'd0;
			i_lambda_data_25 <= 'd0;
			i_lambda_data_24 <= 'd0;
			i_lambda_data_23 <= 'd0;
			i_lambda_data_22 <= 'd0;
			i_lambda_data_addr <= 'd0;
		end
		else if((count > 'd80) && (count[2:0] == 3'd7)) begin
			i_lambda_data_valid <= 1'b1;
			i_lambda_data_32 <= count[73:3] + 1;
			i_lambda_data_31 <= count[73:3] + 2;
			i_lambda_data_30 <= count[73:3] + 3;
			i_lambda_data_29 <= count[73:3] + 4;
			i_lambda_data_28 <= count[73:3] + 5;
			i_lambda_data_27 <= count[73:3] + 6;
			i_lambda_data_26 <= count[73:3] + 4;
			i_lambda_data_25 <= count[73:3] + 2;
			i_lambda_data_24 <= count[73:3];
			i_lambda_data_23 <= count[73:3] - 2;
			i_lambda_data_22 <= count[73:3] - 4;
			i_lambda_data_addr <= count[18:3];
		end
		else begin
			i_lambda_data_valid <= 1'b0;
			i_lambda_data_32 <= i_lambda_data_32;
			i_lambda_data_31 <= i_lambda_data_31;
			i_lambda_data_30 <= i_lambda_data_30;
			i_lambda_data_29 <= i_lambda_data_29;
			i_lambda_data_28 <= i_lambda_data_28;
			i_lambda_data_27 <= i_lambda_data_27;
			i_lambda_data_26 <= i_lambda_data_26;
			i_lambda_data_25 <= i_lambda_data_25;
			i_lambda_data_24 <= i_lambda_data_24;
			i_lambda_data_23 <= i_lambda_data_23;
			i_lambda_data_22 <= i_lambda_data_22;
			i_lambda_data_addr <= i_lambda_data_addr;
		end
	end
	
	always @(posedge axis_aclk) begin
		if(count == 'd8000) begin
			$stop;
		end
	end
	
      
endmodule
