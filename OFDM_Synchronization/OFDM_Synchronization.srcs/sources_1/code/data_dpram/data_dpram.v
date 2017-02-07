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
	parameter SYNC_DATA_WIDTH = 16, // <=18
	parameter RAM_ADDR_WIDTH  = 10  // <=16
	)
	(
	axis_aclk         ,
	axis_areset       ,
	
	i_sync_state      ,
	
	s_axis_data_tvalid,
	s_axis_data_tlast ,
	s_axis_data_tdata , // [47:0]：虚部，[23:0]：实部
	s_axis_data_trdy  ,
	
	i_cp_start_addr   ,
	
	m_axis_data_for_coarse_tvalid,
	m_axis_data_for_coarse_tlast ,
	m_axis_data_for_coarse_tdata , // [95:48]：延时数据，[47:0]：原始数据
	m_axis_data_for_coarse_taddr ,
	m_axis_data_for_coarse_trdy  ,
	
	m_axis_data_after_fine_tvalid,
	m_axis_data_after_fine_tlast ,
	m_axis_data_after_fine_tdata ,
	m_axis_data_after_fine_trdy
	);
	input         axis_aclk         ;
	input         axis_areset       ;
	
	input  [2:0]  i_sync_state      ;
	
	input         s_axis_data_tvalid;
	input         s_axis_data_tlast ;
	input  [47:0] s_axis_data_tdata ;
	output reg    s_axis_data_trdy  ;
	
	input  [15:0] i_cp_start_addr   ;
	
	output        m_axis_data_for_coarse_tvalid;
	output        m_axis_data_for_coarse_tlast ;
	output [95:0] m_axis_data_for_coarse_tdata ;
	output [15:0] m_axis_data_for_coarse_taddr ;
	input         m_axis_data_for_coarse_trdy  ;
	
	output        m_axis_data_after_fine_tvalid;
	output        m_axis_data_after_fine_tlast ;
	output [47:0] m_axis_data_after_fine_tdata ;
	input         m_axis_data_after_fine_trdy  ;
	
//================================================================================
// variable
//================================================================================
	localparam DPRAM_ADDR_WIDTH = 10; // RAM_ADDR_WIDTH
	localparam DPRAM_DATA_WIDTH = 36;
	// sync_state
	localparam SYNC_IDLE          = 3'd0,
	           SYNC_COARSE_SEARCH = 3'd1,
	           // SYNC_COARSE_DONE   = 3'd2,
	           SYNC_FINE_SEARCH   = 3'd3,
	           SYNC_FINE_DONE     = 3'd4,
	           SYNC_DATA_OUTPUT   = 3'd5;
	
	wire [2:0]                  sync_state       ;
	
	reg                         u1_dpram_wea     ;
	reg  [DPRAM_ADDR_WIDTH-1:0] u1_dpram_addra_wr;
	reg  [DPRAM_ADDR_WIDTH-1:0] u1_dpram_addra_rd;
	wire [DPRAM_ADDR_WIDTH-1:0] u1_dpram_addra   ;
	reg  [DPRAM_DATA_WIDTH-1:0] u1_dpram_dina    ;
	wire [DPRAM_DATA_WIDTH-1:0] u1_dpram_douta   ;
	reg  [DPRAM_ADDR_WIDTH-1:0] u1_dpram_addrb   ;
	wire [DPRAM_DATA_WIDTH-1:0] u1_dpram_doutb   ;
	
	reg                         u1_dpram_wea_dly1;
	reg                         u1_dpram_wea_dly2;
	reg                         u1_dpram_wea_dly3;
	
	wire                        u2_dpram_wea     ;
	wire [DPRAM_ADDR_WIDTH-1:0] u2_dpram_addra   ;
	wire [DPRAM_DATA_WIDTH-1:0] u2_dpram_dina    ;
	wire [DPRAM_DATA_WIDTH-1:0] u2_dpram_douta   ;
	reg  [DPRAM_ADDR_WIDTH-1:0] u2_dpram_addrb   ;
	wire [DPRAM_DATA_WIDTH-1:0] u2_dpram_doutb   ;
	
	reg                         u2_dpram_rdb_en  ;
	reg                         u2_dpram_rdb_en_dly1;
	reg                         u2_dpram_rdb_en_dly2;
	reg                         u2_dpram_rdb_en_dly3;
	
	wire                                          u3_data_valid        ;
	wire [4*SYNC_DATA_WIDTH+DPRAM_ADDR_WIDTH-1:0] u3_data              ;
	wire                                          u3_almost_full       ;
	wire                                          u3_m_axis_data_tvalid;
	wire                                          u3_m_axis_data_tlast ;
	wire [4*SYNC_DATA_WIDTH+DPRAM_ADDR_WIDTH-1:0] u3_m_axis_data_tdata ;
	wire                                          u3_m_axis_data_trdy  ;
	
	wire                         u4_data_valid        ;
	wire [2*SYNC_DATA_WIDTH-1:0] u4_data              ;
	wire                         u4_almost_full       ;
	wire                         u4_m_axis_data_tvalid;
	wire                         u4_m_axis_data_tlast ;
	wire [2*SYNC_DATA_WIDTH-1:0] u4_m_axis_data_tdata ;
	wire                         u4_m_axis_data_trdy  ;
	
//================================================================================
// synchronization state
//================================================================================
	assign sync_state = i_sync_state;
	
//================================================================================
// coarse synchronization
//================================================================================
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			u1_dpram_wea      <= 1'b0;
			u1_dpram_addra_wr <= 'd0;
			u1_dpram_dina     <= 'd0;
		end
		else if(sync_state == SYNC_IDLE) begin
			u1_dpram_wea      <= 1'b0;
			u1_dpram_addra_wr <= u1_dpram_addra_wr;
			u1_dpram_dina     <= 'd0;
		end
		else if(s_axis_data_tvalid == 1'b1) begin
			u1_dpram_wea      <= 1'b1;
			u1_dpram_addra_wr <= u1_dpram_addra_wr + 1'd1;
			u1_dpram_dina     <= {{(36-2*SYNC_DATA_WIDTH){1'b0}},
			                      s_axis_data_tdata[SYNC_DATA_WIDTH+24-1:24],
			                      s_axis_data_tdata[SYNC_DATA_WIDTH-1:0]};
		end
		else begin
			u1_dpram_wea      <= 1'b0;
			u1_dpram_addra_wr <= u1_dpram_addra_wr;
			u1_dpram_dina     <= u1_dpram_dina;
		end
	end
	
	always @(posedge axis_aclk or posedge axis_areset) begin
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
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			u1_dpram_addrb <= 10'd0;
		end 
		else if(s_axis_data_tvalid == 1'b1) begin
			u1_dpram_addrb <= u1_dpram_addra_rd - 10'd31;
		end
		else begin
			u1_dpram_addrb <= u1_dpram_addrb;
		end
	end
	
	dpram_36_1024_ip u1_dpram_36_1024_ip (
		.clka (axis_aclk     ), // input clka;
		.wea  (u1_dpram_wea  ), // input [0:0]wea;
		.addra(u1_dpram_addra), // input [9:0]addra;
		.dina (u1_dpram_dina ), // input [35:0]dina;
		.douta(u1_dpram_douta), // output [35:0]douta;
		.clkb (axis_aclk     ), // input clkb;
		.web  (1'b0          ), // input [0:0]web;
		.addrb(u1_dpram_addrb), // input [9:0]addrb;
		.dinb ('d0           ), // input [35:0]dinb;
		.doutb(u1_dpram_doutb)  // output [35:0]doutb;
	);
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			u1_dpram_wea_dly1 <= 1'b0;
			u1_dpram_wea_dly2 <= 1'b0;
			u1_dpram_wea_dly3 <= 1'b0;
		end
		else if(sync_state == SYNC_IDLE) begin
			u1_dpram_wea_dly1 <= 1'b0;
			u1_dpram_wea_dly2 <= 1'b0;
			u1_dpram_wea_dly3 <= 1'b0;
		end
		else begin
			u1_dpram_wea_dly1 <= u1_dpram_wea;
			u1_dpram_wea_dly2 <= u1_dpram_wea_dly1;
			u1_dpram_wea_dly3 <= u1_dpram_wea_dly2;
		end
	end
	
//================================================================================
// syn data output
//================================================================================
	assign u2_dpram_wea   = u1_dpram_wea;
	assign u2_dpram_addra = u1_dpram_addra_wr;
	assign u2_dpram_dina  = u1_dpram_dina;
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			u2_dpram_rdb_en <= 1'b0;
			u2_dpram_addrb  <= 10'd0;
		end
		else begin
			case(sync_state)
				SYNC_FINE_DONE: begin
					u2_dpram_rdb_en <= 1'b0;
					u2_dpram_addrb  <= i_cp_start_addr[RAM_ADDR_WIDTH-1:0];
				end
				SYNC_DATA_OUTPUT: begin
					if(u2_dpram_addrb == u2_dpram_addra) begin
						u2_dpram_rdb_en <= 1'b0;
						u2_dpram_addrb  <= u2_dpram_addrb;
					end
					else begin
						u2_dpram_rdb_en <= 1'b1;
						u2_dpram_addrb  <= u2_dpram_addrb + 1'd1;
					end
				end
				default: begin
					u2_dpram_rdb_en <= 1'b0;
					u2_dpram_addrb  <= 10'd0;
				end
			endcase
		end
	end
	
	dpram_36_1024_ip u2_dpram_36_1024_ip (
		.clka (axis_aclk     ), // input clka;
		.wea  (u2_dpram_wea  ), // input [0:0]wea;
		.addra(u2_dpram_addra), // input [9:0]addra;
		.dina (u2_dpram_dina ), // input [35:0]dina;
		.douta(u2_dpram_douta), // output [35:0]douta;
		.clkb (axis_aclk     ), // input clkb;
		.web  (1'b0          ), // input [0:0]web;
		.addrb(u2_dpram_addrb), // input [9:0]addrb;
		.dinb (32'd0         ), // input [35:0]dinb;
		.doutb(u2_dpram_doutb)  // output [35:0]doutb;
	);
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			u2_dpram_rdb_en_dly1 <= 1'b0;
			u2_dpram_rdb_en_dly2 <= 1'b0;
			u2_dpram_rdb_en_dly3 <= 1'b0;
		end
		else if(sync_state == SYNC_COARSE_SEARCH) begin
			u2_dpram_rdb_en_dly1 <= u2_dpram_rdb_en;
			u2_dpram_rdb_en_dly2 <= u2_dpram_rdb_en_dly1;
			u2_dpram_rdb_en_dly3 <= u2_dpram_rdb_en_dly2;
		end
		else begin
			u2_dpram_rdb_en_dly1 <= 1'b0;
			u2_dpram_rdb_en_dly2 <= 1'b0;
			u2_dpram_rdb_en_dly3 <= 1'b0;
		end
	end
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			s_axis_data_trdy <= 1'b0;
		end
		else if((u3_almost_full!=1'b1) && (u4_almost_full!=1'b1)) begin
			s_axis_data_trdy <= 1'b1;
		end
		else begin
			s_axis_data_trdy <= 1'b0;
		end
	end
	
//================================================================================
// axis_interface_fifo
//================================================================================
	assign u3_data_valid = u1_dpram_wea_dly3;
	assign u3_data       = {u1_dpram_addrb,
	                        u1_dpram_doutb[2*SYNC_DATA_WIDTH-1:0],
	                        u1_dpram_douta[2*SYNC_DATA_WIDTH-1:0]};
	axis_interface_fifo #(
		.DATA_IN_WIDTH     (4*SYNC_DATA_WIDTH+DPRAM_ADDR_WIDTH),
		.DATA_OUT_WIDTH    (4*SYNC_DATA_WIDTH+DPRAM_ADDR_WIDTH)
	)u3_axis_interface_fifo(
		.axis_aclk         (axis_aclk            ),
		.axis_areset       (axis_areset          ),
		.data_valid        (u3_data_valid        ),
		.data_last         (1'b0                 ),
		.data              (u3_data              ),
		.almost_full       (u3_almost_full       ),
		.m_axis_data_tvalid(u3_m_axis_data_tvalid),
		.m_axis_data_tlast (u3_m_axis_data_tlast ),
		.m_axis_data_tdata (u3_m_axis_data_tdata ),
		.m_axis_data_trdy  (u3_m_axis_data_trdy  )
	);
	assign m_axis_data_for_coarse_tvalid = u3_m_axis_data_tvalid;
	assign m_axis_data_for_coarse_tlast  = u3_m_axis_data_tlast;
	assign m_axis_data_for_coarse_tdata  = {{(24-SYNC_DATA_WIDTH){1'b0}},u3_m_axis_data_tdata[4*SYNC_DATA_WIDTH-1:3*SYNC_DATA_WIDTH],
	                                        {(24-SYNC_DATA_WIDTH){1'b0}},u3_m_axis_data_tdata[3*SYNC_DATA_WIDTH-1:2*SYNC_DATA_WIDTH],
	                                        {(24-SYNC_DATA_WIDTH){1'b0}},u3_m_axis_data_tdata[2*SYNC_DATA_WIDTH-1:SYNC_DATA_WIDTH],
	                                        {(24-SYNC_DATA_WIDTH){1'b0}},u3_m_axis_data_tdata[SYNC_DATA_WIDTH-1:0]};
	assign m_axis_data_for_coarse_taddr  = {{(16-RAM_ADDR_WIDTH){1'b0}},u3_m_axis_data_tdata[4*SYNC_DATA_WIDTH+DPRAM_ADDR_WIDTH-1:4*SYNC_DATA_WIDTH]};
	
	assign u4_data_valid = u2_dpram_rdb_en_dly3;
	assign u4_data       = u2_dpram_doutb[2*SYNC_DATA_WIDTH-1:0];
	axis_interface_fifo #(
		.DATA_IN_WIDTH     (2*SYNC_DATA_WIDTH),
		.DATA_OUT_WIDTH    (2*SYNC_DATA_WIDTH)
	)u4_axis_interface_fifo(
		.axis_aclk         (axis_aclk            ),
		.axis_areset       (axis_areset          ),
		.data_valid        (u4_data_valid        ),
		.data_last         (1'b0                 ),
		.data              (u4_data              ),
		.almost_full       (u4_almost_full       ),
		.m_axis_data_tvalid(u4_m_axis_data_tvalid),
		.m_axis_data_tlast (u4_m_axis_data_tlast ),
		.m_axis_data_tdata (u4_m_axis_data_tdata ),
		.m_axis_data_trdy  (u4_m_axis_data_trdy  )
	);
	assign m_axis_data_after_fine_tvalid = u4_m_axis_data_tvalid;
	assign m_axis_data_after_fine_tlast  = u4_m_axis_data_tlast;
	assign m_axis_data_after_fine_tdata  = {{(24-SYNC_DATA_WIDTH){1'b0}},u4_m_axis_data_tdata[2*SYNC_DATA_WIDTH-1:SYNC_DATA_WIDTH],
	                                        {(24-SYNC_DATA_WIDTH){1'b0}},u4_m_axis_data_tdata[SYNC_DATA_WIDTH-1:0]};
	
endmodule
