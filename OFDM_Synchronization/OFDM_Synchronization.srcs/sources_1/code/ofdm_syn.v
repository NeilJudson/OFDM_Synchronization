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
	parameter SYNC_DATA_WIDTH = 16 // <=18
	)
	(
	axis_aclk         ,
	axis_areset       ,
	
	s_axis_ctrl_tvalid,
	s_axis_ctrl_tlast ,
	s_axis_ctrl_tdata ,
	s_axis_ctrl_trdy  ,
	
	s_axis_data_tvalid,
	s_axis_data_tlast ,
	s_axis_data_tdata ,
	s_axis_data_trdy  ,
	
	m_axis_ctrl_tvalid,
	m_axis_ctrl_tlast ,
	m_axis_ctrl_tdata ,
	m_axis_ctrl_trdy  ,
	
	m_axis_data_tvalid,
	m_axis_data_tlast ,
	m_axis_data_tdata ,
	m_axis_data_trdy
    );
	input         axis_aclk         ;
	input         axis_areset       ;
	
	input         s_axis_ctrl_tvalid;
	input         s_axis_ctrl_tlast ;
	input  [31:0] s_axis_ctrl_tdata ;
	output        s_axis_ctrl_trdy  ;
	
	input         s_axis_data_tvalid;
	input         s_axis_data_tlast ;
	input  [47:0] s_axis_data_tdata ;
	output        s_axis_data_trdy  ;
	
	output        m_axis_ctrl_tvalid;
	output        m_axis_ctrl_tlast ;
	output [31:0] m_axis_ctrl_tdata ;
	input         m_axis_ctrl_trdy  ;
	
	output        m_axis_data_tvalid;
	output        m_axis_data_tlast ;
	output [31:0] m_axis_data_tdata ;
	input         m_axis_data_trdy  ;
	
//================================================================================
// variable
//================================================================================
	localparam PSI_WIDTH      = 2*SYNC_DATA_WIDTH+2; // 34
	localparam PHI_WIDTH      = 2*SYNC_DATA_WIDTH+1+2; // 35
	localparam PSI_WIDTH2     = 30; // <=30
	localparam PHI_WIDTH2     = 31; // <=31
	localparam PSI_CUT_WIDTH  = PSI_WIDTH - PSI_WIDTH2; // 4
	localparam PHI_CUT_WIDTH  = PHI_WIDTH - PHI_WIDTH2; // 4
	localparam RAM_ADDR_WIDTH = 10;
	// sync_state
	localparam SYNC_IDLE          = 3'd0,
	           SYNC_COARSE_SEARCH = 3'd1,
	           // SYNC_COARSE_DONE   = 3'd2,
	           SYNC_FINE_SEARCH   = 3'd3,
	           SYNC_FINE_DONE     = 3'd4,
	           SYNC_DATA_OUTPUT   = 3'd5;
	
	reg          ctrl_work_flag       ;
	reg          ctrl_work_flag_dly1  ;
	reg          ctrl_work_data       ;
	reg          ctrl_work_en         ;
	reg          ctrl_work            ; // 1'b0: 停止工作；1'b1: 开始工作
	
	reg  [2:0]   sync_state           ;
	reg  [2:0]   sync_state_dly1      ;
	
	wire [2:0]   u1_i_sync_state      ;
	
	wire         u1_s_axis_data_tvalid;
	wire         u1_s_axis_data_tlast ;
	wire [47:0]  u1_s_axis_data_tdata ;
	wire         u1_s_axis_data_trdy  ;
	
	reg  [15:0]  u1_i_cp_start_addr   ;
	
	wire         u1_m_axis_data_for_coarse_tvalid;
	wire         u1_m_axis_data_for_coarse_tlast ;
	wire [95:0]  u1_m_axis_data_for_coarse_tdata ;
	wire [15:0]  u1_m_axis_data_for_coarse_taddr ;
	wire         u1_m_axis_data_for_coarse_trdy  ;
	
	wire         u1_m_axis_data_after_fine_tvalid;
	wire         u1_m_axis_data_after_fine_tlast ;
	wire [47:0]  u1_m_axis_data_after_fine_tdata ;
	wire         u1_m_axis_data_after_fine_trdy  ;
	
	reg          u2_i_work_ctrl_en    ;
	reg          u2_i_work_ctrl       ;
	
	wire         u2_s_axis_data_tvalid;
	wire         u2_s_axis_data_tlast ;
	wire [95:0]  u2_s_axis_data_tdata ;
	wire [15:0]  u2_s_axis_data_taddr ;
	wire         u2_s_axis_data_trdy  ;
	
	wire         u2_m_axis_data_tvalid;
	wire         u2_m_axis_data_tlast ;
	wire [119:0] u2_m_axis_data_tdata ;
	wire [15:0]  u2_m_axis_data_taddr ;
	wire         u2_m_axis_data_trdy  ;
	
	wire         u2_o_coarse_sync_ok  ;
	
	reg          u3_i_work_ctrl_en      ;
	reg          u3_i_work_ctrl         ;
	
	wire         u3_i_psi_phi_data_valid;
	wire [29:0]  u3_i_psi_data_i        ;
	wire [29:0]  u3_i_psi_data_q        ;
	wire [30:0]  u3_i_phi_data          ;
	wire [15:0]  u3_i_psi_phi_data_addr ;
	wire         u3_i_rou_en            ;
	wire [7:0]   u3_i_rou               ;
	
	wire         u3_o_fine_sync_ok      ;
	wire [4:0]   u3_o_channel_length    ;
	wire [15:0]  u3_o_cp_start_addr     ;
	
//================================================================================
// ctrl data decode
//================================================================================
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			ctrl_work_flag <= 1'b0;
			ctrl_work_data <= 1'b0;
		end
		else if(s_axis_ctrl_tvalid == 1'b1) begin
			if(s_axis_ctrl_tdata[24] == 1'b1) begin
				ctrl_work_flag <= ~ctrl_work_flag;
				ctrl_work_data <= s_axis_ctrl_tdata[0]; // 1'b0: 停止工作；1'b1: 开始工作
			end
		end
		else begin
			ctrl_work_flag <= ctrl_work_flag;
			ctrl_work_data <= ctrl_work_data;
		end
	end
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			ctrl_work_flag_dly1 <= 1'b0;
		end
		else begin
			ctrl_work_flag_dly1 <= ctrl_work_flag;
		end
	end
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			ctrl_work_en <= 1'b0;
			ctrl_work    <= 1'b0;
		end
		else begin
			ctrl_work_en <= ctrl_work_flag^ctrl_work_flag_dly1;
			ctrl_work    <= ctrl_work_data;
		end
	end
	
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
					if((ctrl_work_en==1'b1) && (ctrl_work==1'b1)) begin
						sync_state <= SYNC_COARSE_SEARCH;
					end
					else begin
						sync_state <= SYNC_IDLE;
					end
				end
				SYNC_COARSE_SEARCH: begin
					if((ctrl_work_en==1'b1) && (ctrl_work==1'b0)) begin
						sync_state <= SYNC_IDLE;
					end
					else if(u2_o_coarse_sync_ok == 1'b1) begin
						sync_state <= SYNC_FINE_SEARCH;
					end
					else begin
						sync_state <= SYNC_COARSE_SEARCH;
					end
				end
				// SYNC_COARSE_DONE: begin
					// sync_state <= SYNC_FINE_SEARCH;
				// end
				SYNC_FINE_SEARCH: begin
					if((ctrl_work_en==1'b1) && (ctrl_work==1'b0)) begin
						sync_state <= SYNC_IDLE;
					end
					else if(u3_o_fine_sync_ok == 1'b1) begin
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
					if((ctrl_work_en==1'b1) && (ctrl_work==1'b0)) begin
						sync_state <= SYNC_IDLE;
					end
					else begin
						sync_state <= SYNC_DATA_OUTPUT;
					end
				end
				default: begin
					sync_state <= SYNC_IDLE;
				end
			endcase
		end
	end
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			sync_state_dly1 <= SYNC_IDLE;
		end
		else begin
			sync_state_dly1 <= sync_state;
		end
	end
	
//================================================================================
// data dpram
//================================================================================
	assign u1_i_sync_state = sync_state;
	assign u1_s_axis_data_tvalid = s_axis_data_tvalid;
	assign u1_s_axis_data_tlast  = s_axis_data_tlast ;
	assign u1_s_axis_data_tdata  = s_axis_data_tdata ;
	assign u1_s_axis_data_trdy   = s_axis_data_trdy  ;
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			u1_i_cp_start_addr <= 16'd0;
		end
		else if(u3_o_fine_sync_ok == 1'b1) begin
			u1_i_cp_start_addr <= u3_o_cp_start_addr; // sync_state == SYNC_FINE_DONE
		end
		else begin
			u1_i_cp_start_addr <= 16'd0;
		end
	end
	
	data_dpram #(
		.SYNC_DATA_WIDTH   (SYNC_DATA_WIDTH      ),
		.RAM_ADDR_WIDTH    (RAM_ADDR_WIDTH       )
	)u1_data_dpram(
		.axis_aclk         (axis_aclk            ),
		.axis_areset       (axis_areset          ),
		
		.i_sync_state      (u1_i_sync_state      ),
		
		.s_axis_data_tvalid(u1_s_axis_data_tvalid),
		.s_axis_data_tlast (u1_s_axis_data_tlast ),
		.s_axis_data_tdata (u1_s_axis_data_tdata ), // [47:0]：虚部，[23:0]：实部
		.s_axis_data_trdy  (u1_s_axis_data_trdy  ),
		
		.i_cp_start_addr   (u1_i_cp_start_addr   ),
		
		.m_axis_data_for_coarse_tvalid(u1_m_axis_data_for_coarse_tvalid),
		.m_axis_data_for_coarse_tlast (u1_m_axis_data_for_coarse_tlast ),
		.m_axis_data_for_coarse_tdata (u1_m_axis_data_for_coarse_tdata ), // [95:48]：延时数据，[47:0]：原始数据
		.m_axis_data_for_coarse_taddr (u1_m_axis_data_for_coarse_taddr ),
		.m_axis_data_for_coarse_trdy  (u1_m_axis_data_for_coarse_trdy  ),
		
		.m_axis_data_after_fine_tvalid(u1_m_axis_data_after_fine_tvalid),
		.m_axis_data_after_fine_tlast (u1_m_axis_data_after_fine_tlast ),
		.m_axis_data_after_fine_tdata (u1_m_axis_data_after_fine_tdata ),
		.m_axis_data_after_fine_trdy  (u1_m_axis_data_after_fine_trdy  )
	);
	
//================================================================================
// coarse synchronization
//================================================================================
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			u2_i_work_ctrl_en <= 1'b0;
			u2_i_work_ctrl    <= 1'b0;
		end
		else begin
			case(sync_state)
				SYNC_IDLE: begin
					if(sync_state_dly1 != SYNC_IDLE) begin
						u2_i_work_ctrl_en <= 1'b1;
						u2_i_work_ctrl    <= 1'b0;
					end
					else begin
						u2_i_work_ctrl_en <= 1'b0;
						u2_i_work_ctrl    <= 1'b0;
					end
				end
				SYNC_COARSE_SEARCH: begin
					if(sync_state_dly1 == SYNC_IDLE) begin
						u2_i_work_ctrl_en <= 1'b1;
						u2_i_work_ctrl    <= 1'b1;
					end
					else begin
						u2_i_work_ctrl_en <= 1'b0;
						u2_i_work_ctrl    <= 1'b0;
					end
				end
				// SYNC_FINE_SEARCH: begin
				// end
				// SYNC_FINE_DONE: begin
				// end
				default: begin
					u2_i_work_ctrl_en <= 1'b0;
					u2_i_work_ctrl    <= 1'b0;
				end
			endcase
		end
	end
	
	assign u2_s_axis_data_tvalid = u1_m_axis_data_for_coarse_tvalid;
	assign u2_s_axis_data_tlast  = u1_m_axis_data_for_coarse_tlast ;
	assign u2_s_axis_data_tdata  = u1_m_axis_data_for_coarse_tdata ;
	assign u2_s_axis_data_taddr  = u1_m_axis_data_for_coarse_taddr ;
	assign u2_s_axis_data_trdy   = u1_m_axis_data_for_coarse_trdy  ;
	
	coarse_sync #(
		.SYNC_DATA_WIDTH   (SYNC_DATA_WIDTH      ), // <=18
		.PSI_WIDTH         (PSI_WIDTH            ), // <=38
		.PHI_WIDTH         (PHI_WIDTH            ), // <=39
		.RAM_ADDR_WIDTH    (RAM_ADDR_WIDTH       )  // <=16
	)u2_coarse_sync(
		.axis_aclk         (axis_aclk            ),
		.axis_areset       (axis_areset          ),
		
		.i_work_ctrl_en    (u2_i_work_ctrl_en    ),
		.i_work_ctrl       (u2_i_work_ctrl       ),
		
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
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			u3_i_work_ctrl_en <= 1'b0;
			u3_i_work_ctrl    <= 1'b0;
		end
		else begin
			case(sync_state)
				SYNC_IDLE: begin
					if(sync_state_dly1 != SYNC_IDLE) begin
						u3_i_work_ctrl_en <= 1'b1;
						u3_i_work_ctrl    <= 1'b0;
					end
					else begin
						u3_i_work_ctrl_en <= 1'b0;
						u3_i_work_ctrl    <= 1'b0;
					end
				end
				// SYNC_COARSE_SEARCH: begin
				// end
				SYNC_FINE_SEARCH: begin
					if(sync_state_dly1 == SYNC_COARSE_SEARCH) begin
						u3_i_work_ctrl_en <= 1'b1;
						u3_i_work_ctrl    <= 1'b1;
					end
					else begin
						u3_i_work_ctrl_en <= 1'b0;
						u3_i_work_ctrl    <= 1'b0;
					end
				end
				SYNC_FINE_DONE: begin
					if(sync_state_dly1 == SYNC_FINE_SEARCH) begin
						u3_i_work_ctrl_en <= 1'b1;
						u3_i_work_ctrl    <= 1'b0;
					end
					else begin
						u3_i_work_ctrl_en <= 1'b0;
						u3_i_work_ctrl    <= 1'b0;
					end
				end
				default: begin
					u3_i_work_ctrl_en <= 1'b0;
					u3_i_work_ctrl    <= 1'b0;
				end
			endcase
		end
	end
	
	assign u3_i_psi_phi_data_valid = u2_m_axis_data_tvalid;
	assign u3_i_psi_data_i         = u2_m_axis_data_tdata[PSI_WIDTH-1:PSI_CUT_WIDTH];
	assign u3_i_psi_data_q         = u2_m_axis_data_tdata[PSI_WIDTH-1+40:PSI_CUT_WIDTH+40];
	assign u3_i_phi_data           = u2_m_axis_data_tdata[PHI_WIDTH-1+80:PHI_CUT_WIDTH+80];
	assign u3_i_psi_phi_data_addr  = u2_m_axis_data_taddr;
	assign u3_i_rou_en             = 1'b0;
	assign u3_i_rou                = 8'd0;
	
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
	
//================================================================================
// nco
//================================================================================
	
	
endmodule
