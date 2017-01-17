`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/01/16 20:29:12
// Design Name: 
// Module Name: peak_search
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


module peak_search #(
	parameter LAMBDA_WIDTH   = 71, // <=71
	parameter RAM_ADDR_WIDTH = 10
	)
	(
	axis_aclk          ,
	axis_areset        ,
	
	i_lambda_data_valid,
	i_lambda_data_32   ,
	i_lambda_data_31   ,
	i_lambda_data_30   ,
	i_lambda_data_29   ,
	i_lambda_data_28   ,
	i_lambda_data_27   ,
	i_lambda_data_26   ,
	i_lambda_data_25   ,
	i_lambda_data_24   ,
	i_lambda_data_23   ,
	i_lambda_data_addr ,
	
	
	
	
	
	
	
	
	
	
	
	);
	input                axis_aclk          ;
	input                axis_areset        ;
	
	output               i_lambda_data_valid;
	output signed [70:0] i_lambda_data_32   ;
	output signed [70:0] i_lambda_data_31   ;
	output signed [70:0] i_lambda_data_30   ;
	output signed [70:0] i_lambda_data_29   ;
	output signed [70:0] i_lambda_data_28   ;
	output signed [70:0] i_lambda_data_27   ;
	output signed [70:0] i_lambda_data_26   ;
	output signed [70:0] i_lambda_data_25   ;
	output signed [70:0] i_lambda_data_24   ;
	output signed [70:0] i_lambda_data_23   ;
	output        [15:0] i_lambda_data_addr ;
	
	
	
	
	
//================================================================================
// variable
//================================================================================
	reg        [7:0]              i_lambda_data_valid_buf;
	
	reg signed [LAMBDA_WIDTH-1:0] data_32_31;
	reg                           flag_32_31;
	reg signed [LAMBDA_WIDTH-1:0] data_30_29;
	reg                           flag_30_29;
	reg signed [LAMBDA_WIDTH-1:0] data_28_27;
	reg                           flag_28_27;
	reg signed [LAMBDA_WIDTH-1:0] data_26_25;
	reg                           flag_26_25;
	reg signed [LAMBDA_WIDTH-1:0] data_24_23;
	reg                           flag_24_23;
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			i_lambda_data_valid_buf <= 8'd0;
		end
		else begin
			i_lambda_data_valid_buf <= {i_lambda_data_valid_buf[6:0],i_lambda_data_valid};
		end
	end
	
	/* 1/2 */
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			data_32_31 <= 'd0;
			flag_32_31 <= 1'b0;
			data_30_29 <= 'd0;
			flag_30_29 <= 1'b0;
			data_28_27 <= 'd0;
			flag_28_27 <= 1'b0;
			data_26_25 <= 'd0;
			flag_26_25 <= 1'b0;
			data_24_23 <= 'd0;
			flag_24_23 <= 1'b0;
		end
		else if(i_lambda_data_valid == 1'b1) begin
			if(i_lambda_data_32 > i_lambda_data_31) begin
				data_32_31 <= i_lambda_data_32;
				flag_32_31 <= 1'b0;
			end
			else begin
				data_32_31 <= i_lambda_data_31;
				flag_32_31 <= 1'b1;
			end
			if(i_lambda_data_30 > i_lambda_data_29) begin
				data_30_29 <= i_lambda_data_30;
				flag_30_29 <= 1'b0;
			end
			else begin
				data_30_29 <= i_lambda_data_29;
				flag_30_29 <= 1'b1;
			end
			if(i_lambda_data_28 > i_lambda_data_27) begin
				data_28_27 <= i_lambda_data_28;
				flag_28_27 <= 1'b0;
			end
			else begin
				data_28_27 <= i_lambda_data_27;
				flag_28_27 <= 1'b1;
			end
			if(i_lambda_data_26 > i_lambda_data_25) begin
				data_26_25 <= i_lambda_data_26;
				flag_26_25 <= 1'b0;
			end
			else begin
				data_26_25 <= i_lambda_data_25;
				flag_26_25 <= 1'b1;
			end
			if(i_lambda_data_24 > i_lambda_data_23) begin
				data_24_23 <= i_lambda_data_24;
				flag_24_23 <= 1'b0;
			end
			else begin
				data_24_23 <= i_lambda_data_23;
				flag_24_23 <= 1'b1;
			end
		end
		else begin
			data_32_31 <= data_32_31;
			flag_32_31 <= flag_32_31;
			data_30_29 <= data_30_29;
			flag_30_29 <= flag_30_29;
			data_28_27 <= data_28_27;
			flag_28_27 <= flag_28_27;
			data_26_25 <= data_26_25;
			flag_26_25 <= flag_26_25;
			data_24_23 <= data_24_23;
			flag_24_23 <= flag_24_23;
		end
	end
	
	
	
	
endmodule
