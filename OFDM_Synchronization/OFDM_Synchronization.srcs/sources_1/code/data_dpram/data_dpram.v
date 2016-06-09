`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2016/06/05 20:04:56
// Design Name: 
// Module Name: data_dpram
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


module data_dpram #(
	parameter	DATA_WIDTH		= 16,
				SYN_DATA_WIDTH	= 13 // 同步数据位宽
	)
	(
	axis_aclk,
	axis_areset,
	
	s_axis_ctrl_tvalid	,
	s_axis_ctrl_tlast	,
	s_axis_ctrl_tdata	,
	s_axis_ctrl_trdy	,
	
	s_axis_data_tvalid	,
	s_axis_data_tlast	,
	s_axis_data_tdata	,
	s_axis_data_trdy	,
	
	m_axis_ctrl_tvalid	,
	m_axis_ctrl_tlast	,
	m_axis_ctrl_tdata	,
	m_axis_ctrl_trdy	,
	
	m_axis_data_tvalid	,
	m_axis_data_tlast	,
	m_axis_data_tdata	,
	m_axis_data_trdy
    );
	input						axis_aclk			;
	input						axis_areset			;
	
	input						s_axis_ctrl_tvalid	;
	input						s_axis_ctrl_tlast	;
	input				[31:0]	s_axis_ctrl_tdata	;
	output						s_axis_ctrl_trdy	;
	
	input						s_axis_data_tvalid	;
	input						s_axis_data_tlast	;
	input				[31:0]	s_axis_data_tdata	;
	output						s_axis_data_trdy	;
	
	output						m_axis_ctrl_tvalid	;
	output						m_axis_ctrl_tlast	;
	output				[31:0]	m_axis_ctrl_tdata	;
	input						m_axis_ctrl_trdy	;
	
	output						m_axis_data_tvalid	;
	output						m_axis_data_tlast	;
	output				[31:0]	m_axis_data_tdata	;
	input						m_axis_data_trdy	;
	
//==============================================================================
//0.Variable define
//==============================================================================
	localparam RAM_ADDR_WIDTH = 10;
	
	reg							u1_dpram_wea		;
	reg					[9:0]	u1_dpram_addra_wr	;
	reg					[9:0]	u1_dpram_addra_rd	;
	wire				[9:0]	u1_dpram_addra		;
	reg					[31:0]	u1_dpram_dina		;
	wire				[31:0]	u1_dpram_douta		;
	reg					[9:0]	u1_dpram_addrb		;
	wire				[31:0]	u1_dpram_doutb		;
	
	wire						u2_dpram_wea		;
	wire				[9:0]	u2_dpram_addra		;
	wire				[31:0]	u2_dpram_dina		;
	wire				[31:0]	u2_dpram_douta		;
	reg					[9:0]	u2_dpram_addrb		;
	wire				[31:0]	u2_dpram_doutb		;
	
//==============================================================================
//1.coarse syn
//==============================================================================
	always @(posedge axis_aclk or posedge axis_areset)
		begin
			if(axis_areset == 1'b1) begin
				u1_dpram_wea <= 1'b0;
				u1_dpram_addra_wr <= 10'd0;
				u1_dpram_dina <= 32'd0;
			end
			else if(s_axis_data_tvalid == 1'b1) begin
				u1_dpram_wea <= 1'b1;
				u1_dpram_addra_wr <= u1_dpram_addra_wr + 10'd1;
				u1_dpram_dina <= s_axis_data_tdata;
			end
				else begin
					u1_dpram_wea <= 1'b0;
					u1_dpram_addra_wr <= u1_dpram_addra_wr;
					u1_dpram_dina <= s_axis_data_tdata;
				end
		end
	
	always @(posedge axis_aclk or posedge axis_areset)
		begin
			if(axis_areset == 1'b1) begin
				u1_dpram_addra_rd <= 10'd0;
			end 
			else if(s_axis_data_tvalid == 1'b1) begin
				u1_dpram_addra_rd <= u1_dpram_addra_wr - 10'd2;
			end
				else begin
					u1_dpram_addra_rd <= u1_dpram_addra_rd;
				end
		end
	
	assign u1_dpram_addra = (u1_dpram_wea == 1'b1) ? u1_dpram_addra_wr : u1_dpram_addra_rd;
	
	always @(posedge axis_aclk or posedge axis_areset)
		begin
			if(axis_areset == 1'b1) begin
				u1_dpram_addrb <= 10'd0;
			end 
			else if(s_axis_data_tvalid == 1'b1) begin
				u1_dpram_addrb <= u1_dpram_addra_rd - 10'd127;
			end
				else begin
					u1_dpram_addrb <= u1_dpram_addrb;
				end
		end
	
	dpram_1024_ip u1_dpram_1024_ip (
		.clka	(axis_aclk		),	// input wire clka
		.wea	(u1_dpram_wea	),	// input wire [0 : 0] wea
		.addra	(u1_dpram_addra	),	// input wire [9 : 0] addra
		.dina	(u1_dpram_dina	),	// input wire [31 : 0] dina
		.douta	(u1_dpram_douta	),	// output wire [31 : 0] douta
		.clkb	(axis_aclk		),	// input wire clkb
		.web	(1'b0			),	// input wire [0 : 0] web
		.addrb	(u1_dpram_addrb	),	// input wire [9 : 0] addrb
		.dinb	(32'd0			),	// input wire [31 : 0] dinb
		.doutb	(u1_dpram_doutb	)	// output wire [31 : 0] doutb
	);
	
//==============================================================================
//3.fine syn & syn data output
//==============================================================================
	assign dpram_u2_wea = u1_dpram_wea;
	assign dpram_u2_addra = u1_dpram_addra_wr;
	assign dpram_u2_dina = u1_dpram_dina;
	
	dpram_1024_ip u2_dpram_1024_ip (
		.clka	(axis_aclk		),	// input wire clka
		.wea	(u2_dpram_wea	),	// input wire [0 : 0] wea
		.addra	(u2_dpram_addra	),	// input wire [9 : 0] addra
		.dina	(u2_dpram_dina	),	// input wire [31 : 0] dina
		.douta	(u2_dpram_douta	),	// output wire [31 : 0] douta
		.clkb	(axis_aclk		),	// input wire clkb
		.web	(1'b0			),	// input wire [0 : 0] web
		.addrb	(u2_dpram_addrb	),	// input wire [9 : 0] addrb
		.dinb	(32'd0			),	// input wire [31 : 0] dinb
		.doutb	(u2_dpram_doutb	)	// output wire [31 : 0] doutb
	);
	
endmodule
