`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2016/10/25 22:24:49
// Design Name: 
// Module Name: axis_interface_fifo
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


module axis_interface_fifo #(
	parameter DATA_WIDTH = 6'd32
	)
	(
	axis_aclk	,
	axis_areset	,
	
	data_valid	,
	data_last	,
	data		,
	almost_full	,
	
	m_axis_data_tvalid	,
	m_axis_data_tlast	,
	m_axis_data_tdata	,
	m_axis_data_trdy
	);
	input							axis_aclk	;
	input							axis_areset	;
	
	input							data_valid	;
	input							data_last	;
	input		[DATA_WIDTH-1:0]	data		;
	output	reg						almost_full	;
	
	output	reg						m_axis_data_tvalid	;
	output							m_axis_data_tlast	;
	output		[DATA_WIDTH-1:0]	m_axis_data_tdata	;
	input							m_axis_data_trdy	;
	
	localparam DATA_DEPTH = 4'd8;
	
	reg			[DATA_WIDTH:0]		ram[DATA_DEPTH-1:0];
	reg			[2:0]				waddr;
	reg			[2:0]				raddr;
	reg			[DATA_WIDTH:0]		rdata;
	
// write
	always @(posedge axis_aclk or negedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			waddr <= 3'd0;
			ram[0][DATA_WIDTH:0] <= {1'b0,{DATA_WIDTH{1'b0}}};
		end
		else if(data_valid == 1'b1) begin
			waddr <= waddr + 1'b1;
			ram[waddr][DATA_WIDTH:0] <= {data_last,data};
		end
		else begin
			waddr <= waddr;
			ram[waddr][DATA_WIDTH:0] <= ram[waddr][DATA_WIDTH:0];
		end
	end
	
// read
	always @(posedge axis_aclk or negedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			raddr <= 3'd0;
			rdata <= {1'b0,{DATA_WIDTH{1'b0}}};
		end
		else if((waddr!=raddr) && ((m_axis_data_tvalid==1'b0)||(m_axis_data_trdy==1'b1))) begin
			raddr <= raddr + 1'b1;
			rdata <= ram[raddr];
		end
		else begin
			raddr <= raddr;
			rdata <= rdata;
		end
	end
	
	always @(posedge axis_aclk or negedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			m_axis_data_tvalid <= 1'b0;
		end
		else if(waddr != raddr) begin
			m_axis_data_tvalid <= 1'b1;
		end
		else if(m_axis_data_trdy == 1'b0) begin
			m_axis_data_tvalid <= m_axis_data_tvalid;
		end
		else begin
			m_axis_data_tvalid <= 1'b0;
		end
	end
	assign m_axis_data_tlast = rdata[DATA_WIDTH];
	assign m_axis_data_tdata = rdata[DATA_WIDTH-1:0];
	
	always @(posedge axis_aclk or negedge axis_areset) begin
		if(axis_areset == 1'b1)
			almost_full <= 1'b0;
		else if(waddr - raddr >= 3'd3) begin
			almost_full <= 1'b1;
		end
		else begin
			almost_full <= 1'b0;
		end
	end
	
endmodule
