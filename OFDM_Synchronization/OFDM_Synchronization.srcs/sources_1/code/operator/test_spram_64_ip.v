`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/11/20 17:05:12
// Design Name: 
// Module Name: test_spram_64_ip
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


module test_spram_64_ip;

	// Inputs
	reg clka;
	reg reset;
	reg wea;
	reg [5:0] addra;
	reg [63:0] dina;

	// Outputs
	wire [63:0] douta;
	
	reg [39:0] count;
	reg [5:0] wr_add;
	reg [5:0] rd_add;
	
	// Instantiate the Unit Under Test (UUT)
	spram_64_ip uut (
		.clka	(clka	),	// input clka;
		.wea	(wea	),	// input [0:0]wea;
		.addra	(addra	),	// input [5:0]addra;
		.dina	(dina	),	// input [63:0]dina;
		.douta	(douta	)	// output [63:0]douta;
	);

	initial begin
		// Initialize Inputs
		clka = 0;
		reset = 0;
		wea = 0;
		addra = 0;
		dina = 0;

		// Wait 100 ns for global reset to finish
		#10;
		reset = 1;
		#10;
		reset = 0;
		#10;
        
		// Add stimulus here

	end
	
	always
		#5 clka = ~clka;
	
	always @(posedge clka or posedge reset) begin
		if(reset == 1'b1) begin
			count <= 40'd0;
		end
		else begin
			count <= count + 1'd1;
		end
	end
	
	always @(posedge clka or posedge reset) begin
		if(reset == 1'b1) begin
			wea <= 1'b0;
			addra <= 6'd0;
			wr_add <= 6'd0;
			rd_add <= 6'd1;
			dina <= 64'd0;
		end
		else if(count[2:0] == 3'd7) begin
			wea <= 1'b1;
			addra <= wr_add + 1'd1;
			wr_add <= wr_add + 1'd1;
			rd_add <= rd_add + 1'd1;
			dina <= {32'd0,count[34:3]};
		end
		else begin
			wea <= 1'b0;
			addra <= rd_add;
			wr_add <= wr_add;
			rd_add <= rd_add;
			dina <= dina;
		end
	end
	
endmodule
