`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2016/06/05 20:55:31
// Design Name: 
// Module Name: ofdm_syn
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


module ofdm_syn #(
	parameter SYNC_DATA_WIDTH = 16
	)
	(
	axis_aclk			,
	axis_areset			,
	
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
	input				axis_aclk			;
	input				axis_areset			;
	
	input				s_axis_ctrl_tvalid	;
	input				s_axis_ctrl_tlast	;
	input		[31:0]	s_axis_ctrl_tdata	;
	output				s_axis_ctrl_trdy	;
	
	input				s_axis_data_tvalid	;
	input				s_axis_data_tlast	;
	input		[31:0]	s_axis_data_tdata	;
	output				s_axis_data_trdy	;
	
	output				m_axis_ctrl_tvalid	;
	output				m_axis_ctrl_tlast	;
	output		[31:0]	m_axis_ctrl_tdata	;
	input				m_axis_ctrl_trdy	;
	
	output				m_axis_data_tvalid	;
	output				m_axis_data_tlast	;
	output		[31:0]	m_axis_data_tdata	;
	input				m_axis_data_trdy	;
	
//================================================================================
// variable
//================================================================================
	localparam PSI_WIDTH      = 2*SYNC_DATA_WIDTH+2; // 34
	localparam PHI_WIDTH      = 2*SYNC_DATA_WIDTH+1+2;// 35
	localparam PSI_WIDTH2     = 30; // <=30
	localparam PHI_WIDTH2     = 31; // <=31
	localparam PSI_CUT_WIDTH  = PSI_WIDTH - PSI_WIDTH2; // 4
	localparam PHI_CUT_WIDTH  = PHI_WIDTH - PHI_WIDTH2; // 4
	localparam RAM_ADDR_WIDTH = 10;
	// sync_state
	localparam SYNC_IDLE          = 3'd0,
	           SYNC_COARSE_SEARCH = 3'd1,
	           SYNC_COARSE_DONE   = 3'd2,
	           SYNC_FINE_SEARCH   = 3'd3,
	           SYNC_FINE_DONE     = 3'd4,
	           SYNC_DATA_OUTPUT   = 3'd5;
	
	wire         rx_state               ;
	
	reg  [2:0]   sync_state             ;
	
	wire [31:0]  u1_s_axis_ctrl_tdata   ;
	
	wire         u2_s_axis_ctrl_tvalid  ;
	wire         u2_s_axis_ctrl_tlast   ;
	wire [31:0]  u2_s_axis_ctrl_tdata   ;
	wire         u2_s_axis_ctrl_trdy    ;
	
	wire         u2_s_axis_data_tvalid  ;
	wire         u2_s_axis_data_tlast   ;
	wire [63:0]  u2_s_axis_data_tdata   ;
	wire [15:0]  u2_s_axis_data_taddr   ;
	wire         u2_s_axis_data_trdy    ;
	
	wire         u2_m_axis_data_tvalid  ;
	wire         u2_m_axis_data_tlast   ;
	wire [119:0] u2_m_axis_data_tdata   ;
	wire [15:0]  u2_m_axis_data_taddr   ;
	wire         u2_m_axis_data_trdy    ;
	
	wire         u2_o_coarse_sync_ok    ;
	
	wire         u3_i_work_ctrl_en      ;
	wire         u3_i_work_ctrl         ;
	
	wire         u3_i_psi_phi_data_valid;
	wire [29:0]  u3_i_psi_data_i        ;
	wire [29:0]  u3_i_psi_data_q        ;
	wire [30:0]  u3_i_phi_data          ;
	wire [15:0]  u3_i_psi_phi_data_addr ;
	reg          u3_i_rou_en            ;
	reg  [7:0]   u3_i_rou               ;
	
	wire         u3_o_fine_sync_ok      ;
	wire [4:0]   u3_o_channel_length    ;
	wire [15:0]  u3_o_cp_start_addr     ;
	
//================================================================================
// s_axis_ctrl_tdata
//================================================================================
	assign rx_state = s_axis_ctrl_tdata[0];
	
//================================================================================
// synchronization state
//================================================================================
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			sync_state <= SYNC_IDLE;
		end
		else begin
			case(sync_state)
				SYNC_IDLE: begin
					if(rx_state == 1'b1) begin
						sync_state <= SYNC_COARSE_SEARCH;
					end
					else begin
						sync_state <= SYNC_IDLE;
					end
				end
				SYNC_COARSE_SEARCH: begin
					if(u2_o_coarse_sync_ok == 1'b1) begin
						sync_state <= SYNC_COARSE_DONE;
					end
					else begin
						sync_state <= SYNC_COARSE_SEARCH;
					end
				end
				SYNC_COARSE_DONE: begin
					sync_state <= SYNC_FINE_SEARCH;
				end
				SYNC_FINE_SEARCH: begin
					if(u3_o_fine_sync_ok == 1'b1) begin
						sync_state <= SYNC_FINE_DONE;
					end
					else begin
						sync_state <= SYNC_FINE_SEARCH;
					end
				end
				SYNC_FINE_DONE: begin
					sync_state <= SYNC_DATA_OUTPUT;
				end
				SYNC_DATA_OUTPUT: begin
				
				end
				default: begin
					sync_state <= sync_state;
				end
			endcase
		end
	end
	
//================================================================================
// data dpram
//================================================================================
	data_dpram #(
		.SYNC_DATA_WIDTH    (SYNC_DATA_WIDTH),
		.RAM_ADDR_WIDTH     (RAM_ADDR_WIDTH )
	)u1_data_dpram(
		.axis_aclk          (axis_aclk      ),
		.axis_areset        (axis_areset    ),
		
		.s_axis_ctrl_tvalid (),
		.s_axis_ctrl_tlast  (),
		.s_axis_ctrl_tdata  (),
		.s_axis_ctrl_trdy   (),
		
		.s_axis_data_tvalid (),
		.s_axis_data_tlast  (),
		.s_axis_data_tdata  (),
		.s_axis_data_trdy   (),
		
		.m_axis_ctrl_tvalid (),
		.m_axis_ctrl_tlast  (),
		.m_axis_ctrl_tdata  (),
		.m_axis_ctrl_trdy   (),
		
		.m_axis_data_tvalid (),
		.m_axis_data_tlast  (),
		.m_axis_data_tdata  (),
		.m_axis_data_trdy   ()
	);
	
//================================================================================
// coarse synchronization
//================================================================================
	coarse_sync #(
		.SYNC_DATA_WIDTH   (SYNC_DATA_WIDTH      ),
		.PSI_WIDTH         (PSI_WIDTH            ), // <=34
		.PHI_WIDTH         (PHI_WIDTH            ), // <=35
		.RAM_ADDR_WIDTH    (RAM_ADDR_WIDTH       )
	)u2_coarse_sync(
		.axis_aclk         (axis_aclk            ),
		.axis_areset       (axis_areset          ),
		
		.s_axis_ctrl_tvalid(u2_s_axis_ctrl_tvalid),
		.s_axis_ctrl_tlast (u2_s_axis_ctrl_tlast ),
		.s_axis_ctrl_tdata (u2_s_axis_ctrl_tdata ),
		.s_axis_ctrl_trdy  (u2_s_axis_ctrl_trdy  ),
		
		.s_axis_data_tvalid(u2_s_axis_data_tvalid),
		.s_axis_data_tlast (u2_s_axis_data_tlast ),
		.s_axis_data_tdata (u2_s_axis_data_tdata ),
		.s_axis_data_taddr (u2_s_axis_data_taddr ),
		.s_axis_data_trdy  (u2_s_axis_data_trdy  ),
		
		.m_axis_data_tvalid(u2_m_axis_data_tvalid),
		.m_axis_data_tlast (u2_m_axis_data_tlast ),
		.m_axis_data_tdata (u2_m_axis_data_tdata ),
		.m_axis_data_taddr (u2_m_axis_data_taddr ),
		.m_axis_data_trdy  (u2_m_axis_data_trdy  ),
		
		.o_coarse_sync_ok  (u2_o_coarse_sync_ok  ) // 1clk
	);
	
//================================================================================
// fine synchronization
//================================================================================
	assign u3_i_work_ctrl_en       = u2_o_coarse_sync_ok;
	assign u3_i_work_ctrl          = u2_o_coarse_sync_ok;
	assign u3_i_psi_phi_data_valid = u2_m_axis_data_tvalid;
	assign u3_i_psi_data_i         = u2_m_axis_data_tdata[PSI_WIDTH-1:PSI_CUT_WIDTH];
	assign u3_i_psi_data_q         = u2_m_axis_data_tdata[PSI_WIDTH-1+40:PSI_CUT_WIDTH+40];
	assign u3_i_phi_data           = u2_m_axis_data_tdata[PHI_WIDTH-1+80:PHI_CUT_WIDTH+80];
	assign u3_i_psi_phi_data_addr  = u2_m_axis_data_taddr;
	
	fine_sync #(
		.PSI_WIDTH           (PSI_WIDTH2             ), // <=30
		.PHI_WIDTH           (PHI_WIDTH2             ), // <=31
		.RAM_ADDR_WIDTH      (RAM_ADDR_WIDTH         )
	)u3_fine_sync(
		.axis_aclk           (axis_aclk              ),
		.axis_areset         (axis_areset            ),
		
		.i_work_ctrl_en      (u3_i_work_ctrl_en      ),
		.i_work_ctrl         (u3_i_work_ctrl         ),
		
		.i_psi_phi_data_valid(u3_i_psi_phi_data_valid),
		.i_psi_data_i        (u3_i_psi_data_i        ),
		.i_psi_data_q        (u3_i_psi_data_q        ),
		.i_phi_data          (u3_i_phi_data          ),
		.i_psi_phi_data_addr (u3_i_psi_phi_data_addr ),
		.i_rou_en            (u3_i_rou_en            ),
		.i_rou               (u3_i_rou               ),
		
		.o_fine_sync_ok      (u3_o_fine_sync_ok      ),
		.o_channel_length    (u3_o_channel_length    ),
		.o_cp_start_addr     (u3_o_cp_start_addr     )
	);
	
endmodule
