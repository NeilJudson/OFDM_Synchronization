`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2016/11/22 19:43:08
// Design Name: 
// Module Name: coarse_sync
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


module coarse_sync #(
	parameter SYNC_DATA_WIDTH = 16,
	parameter PSI_WIDTH       = 34, // <=34
	parameter PHI_WIDTH       = 35, // <=35
	parameter RAM_ADDR_WIDTH  = 10
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
	s_axis_data_taddr	,
	s_axis_data_trdy	,
	
	m_axis_data_tvalid	,
	m_axis_data_tlast	,
	m_axis_data_tdata	,
	m_axis_data_taddr	,
	m_axis_data_trdy	,
	
	o_coarse_sync_ok
    );
	input			axis_aclk			;
	input			axis_areset			;
	
	input			s_axis_ctrl_tvalid	;
	input			s_axis_ctrl_tlast	;
	input	[31:0]	s_axis_ctrl_tdata	;
	output			s_axis_ctrl_trdy	;
	
	input			s_axis_data_tvalid	;
	input			s_axis_data_tlast	;
	input	[95:0]	s_axis_data_tdata	; // 高位为dly32数据，低位为最新数据，24bit
	input	[15:0]	s_axis_data_taddr	;
	output			s_axis_data_trdy	;
	
	output			m_axis_data_tvalid	;
	output			m_axis_data_tlast	;
	output	[119:0]	m_axis_data_tdata	; // 高位为phi数据，低位为psi数据，40bit
	output	[15:0]	m_axis_data_taddr	;
	input			m_axis_data_trdy	;
	
	output			o_coarse_sync_ok	;
	
//================================================================================
// variable
//================================================================================
	// localparam PSI_WIDTH = 2*SYNC_DATA_WIDTH+2; // 34
	// localparam PHI_WIDTH = 2*SYNC_DATA_WIDTH+1+2;// 35
	localparam SPRAM_ADDR_WIDTH = 9;
	localparam SPRAM_DATA_WIDTH = 144;
	// coarse_sync_state
	localparam COARSE_SYNC_IDLE = 3'd0,
	           COARSE_SYNC_ING  = 3'd1,
	           COARSE_SYNC_FIR  = 3'd2,
	           COARSE_SYNC_SEC  = 3'd3;
	
	reg										ctrl_work_flag		;
	reg										ctrl_work_flag_dly1	;
	reg										ctrl_work_data		;
	reg										ctrl_work_en		;
	reg										ctrl_work			; // 1'b0: 停止工作；1'b1: 开始工作
	
	reg				[2:0]					coarse_sync_state	;
	reg				[2:0]					coarse_sync_state_dly1;
	reg				[6:0]					coarse_sync_fir_count;
	reg				[7:0]					coarse_sync_sec_count;
	
	wire									u1_i_work_ctrl_en	;
	wire									u1_i_work_ctrl		;
	reg										u1_i_data_valid		;
	reg		signed	[17:0]					u1_i_data_i			;
	reg		signed	[17:0]					u1_i_data_q			;
	reg		signed	[17:0]					u1_i_data_dly_i		;
	reg		signed	[17:0]					u1_i_data_dly_q		;
	reg				[15:0]					u1_i_data_dly_addr	;
	wire									u1_o_self_corr_valid;
	wire	signed	[35:0]					u1_o_self_corr_i	;
	wire	signed	[35:0]					u1_o_self_corr_q	;
	wire	signed	[15:0]					u1_o_self_corr_addr	;
	wire									u1_o_psi_data_valid	;
	wire	signed	[37:0]					u1_o_psi_data_i		;
	wire	signed	[37:0]					u1_o_psi_data_q		;
	wire			[15:0]					u1_o_psi_data_addr	;
	
	wire									u2_i_work_ctrl_en	;
	wire									u2_i_work_ctrl		;
	wire									u2_i_data_valid		;
	wire	signed	[17:0]					u2_i_data_i			;
	wire	signed	[17:0]					u2_i_data_q			;
	wire	signed	[17:0]					u2_i_data_dly_i		;
	wire	signed	[17:0]					u2_i_data_dly_q		;
	wire			[15:0]					u2_i_data_dly_addr	;
	wire									u2_o_phi_data_valid	;
	wire	signed	[38:0]					u2_o_phi_data		;
	wire			[15:0]					u2_o_phi_data_addr	;
	
	wire									u3_i_work_ctrl_en	;
	wire									u3_i_work_ctrl		;
	wire									u3_i_psi_phi_data_valid;
	reg										u3_i_psi_phi_data_valid_dly1;
	wire	signed	[37:0]					u3_i_psi_data_i		;
	wire	signed	[37:0]					u3_i_psi_data_q		;
	wire	signed	[38:0]					u3_i_phi_data		;
	wire			[15:0]					u3_i_psi_phi_data_addr;
	wire									u3_o_tar_data_valid	;
	wire	signed	[86:0]					u3_o_tar_data		;
	wire			[15:0]					u3_o_tar_data_addr	;
	
	reg										u4_wea				;
	reg				[SPRAM_ADDR_WIDTH-1:0]	u4_wr_addr			;
	reg				[SPRAM_ADDR_WIDTH-1:0]	u4_rd_addr			;
	reg				[SPRAM_ADDR_WIDTH-1:0]	u4_addra			;
	reg				[SPRAM_DATA_WIDTH-1:0]	u4_dina				;
	wire			[SPRAM_DATA_WIDTH-1:0]	u4_douta			;
	
	reg										rd_en				;
	reg										rd_en_dly1			;
	reg										rd_en_dly2			;
	reg				[RAM_ADDR_WIDTH-1:0]	data_addr			;
	
	reg										coarse_sync_ok		;
	
	wire			[63:0]					test_u3_o_tar_data	; // test
	
//================================================================================
// ctrl data decode
//================================================================================
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			ctrl_work_flag	<= 1'b0;
			ctrl_work_data	<= 1'b0;
		end
		else if(s_axis_ctrl_tvalid == 1'b1) begin
			case(s_axis_ctrl_tdata[31:24])
				8'b0000_0001: begin
					ctrl_work_flag	<= ~ctrl_work_flag;
					ctrl_work_data	<= s_axis_ctrl_tdata[0]; // 1'b0: 停止工作；1'b1: 开始工作
				end
				// 8'b0000_0010: begin
				// end
				// 8'b0000_0100: begin
				// end
				// 8'b0000_1000: begin
				// end
				// 8'b0001_0000: begin
				// end
				// 8'b0010_0000: begin
				// end
				// 8'b0100_0000: begin
				// end
				// 8'b1000_0000: begin
				// end
			endcase
		end
		else begin
			ctrl_work_flag	<= ctrl_work_flag;
			ctrl_work_data	<= ctrl_work_data;
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
			ctrl_work_en	<= 1'b0;
			ctrl_work		<= 1'b0;
		end
		else begin
			case(coarse_sync_state)
				COARSE_SYNC_IDLE: begin
					if(coarse_sync_state_dly1 == COARSE_SYNC_SEC) begin
						ctrl_work_en	<= 1'b1;
						ctrl_work		<= 1'b0;
					end
					else begin
						ctrl_work_en	<= ctrl_work_flag^ctrl_work_flag_dly1;
						ctrl_work		<= ctrl_work_data;
					end
				end
				// COARSE_SYNC_ING: begin
				// end
				// COARSE_SYNC_FIR: begin
				// end
				// COARSE_SYNC_SEC: begin
				// end
				default: begin
					ctrl_work_en	<= ctrl_work_flag^ctrl_work_flag_dly1;
					ctrl_work		<= ctrl_work_data;
				end
			endcase
		end
	end
	
//================================================================================
// coarse synchronization state
//================================================================================
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			coarse_sync_state <= COARSE_SYNC_IDLE;
		end
		else begin
			case(coarse_sync_state)
				COARSE_SYNC_IDLE: begin
					if((ctrl_work_en==1'b1) && (ctrl_work==1'b1)) begin
						coarse_sync_state <= COARSE_SYNC_ING;
					end
					else begin
						coarse_sync_state <= COARSE_SYNC_IDLE;
					end
				end
				COARSE_SYNC_ING: begin							// 开始粗同步搜索
					if((ctrl_work_en==1'b1) && (ctrl_work==1'b0)) begin
						coarse_sync_state <= COARSE_SYNC_IDLE;
					end
					else if((u3_o_tar_data_valid==1'b1) && ((u3_o_tar_data[86]==1'b0)&&(u3_o_tar_data>'d0))) begin
						coarse_sync_state <= COARSE_SYNC_FIR;
					end
					else begin
						coarse_sync_state <= COARSE_SYNC_ING;
					end
				end
				COARSE_SYNC_FIR: begin							// 出现1次tar正值
					if((ctrl_work_en==1'b1) && (ctrl_work==1'b0)) begin
						coarse_sync_state <= COARSE_SYNC_IDLE;
					end
					else if(coarse_sync_fir_count == 7'd64) begin
						if((u3_o_tar_data_valid==1'b1) && ((u3_o_tar_data[86]==1'b0)&&(u3_o_tar_data>'d0))) begin
							coarse_sync_state <= COARSE_SYNC_SEC;
						end
						else begin
							coarse_sync_state <= COARSE_SYNC_FIR;
						end
					end
					else if(coarse_sync_fir_count == 7'd65) begin
						coarse_sync_state <= COARSE_SYNC_ING;
					end
					else begin
						coarse_sync_state <= COARSE_SYNC_FIR;
					end
				end
				COARSE_SYNC_SEC: begin							// 64个tar后2次正值，确认为粗同步
					if((ctrl_work_en==1'b1) && (ctrl_work==1'b0)) begin
						coarse_sync_state <= COARSE_SYNC_IDLE;
					end
					else if(coarse_sync_sec_count == 8'd200) begin
						coarse_sync_state <= COARSE_SYNC_IDLE;
					end
					else begin
						coarse_sync_state <= COARSE_SYNC_SEC;
					end
				end
				default: begin
					coarse_sync_state <= COARSE_SYNC_IDLE;
				end
			endcase
		end
	end
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			coarse_sync_fir_count <= 7'd0;
			coarse_sync_sec_count <= 8'd0;
		end
		else begin
			case(coarse_sync_state)
				// COARSE_SYNC_IDLE: begin
				// end
				// COARSE_SYNC_ING: begin
				// end
				COARSE_SYNC_FIR: begin
					if(u3_o_tar_data_valid == 1'b1) begin
						coarse_sync_fir_count <= coarse_sync_fir_count + 1'd1;
					end
					else begin
						coarse_sync_fir_count <= coarse_sync_fir_count;
					end
					coarse_sync_sec_count <= 8'd0;
				end
				COARSE_SYNC_SEC: begin
					coarse_sync_fir_count <= 7'd0;
					if(u3_o_tar_data_valid == 1'b1) begin
						coarse_sync_sec_count <= coarse_sync_sec_count + 1'd1;
					end
					else begin
						coarse_sync_sec_count <= coarse_sync_sec_count;
					end
				end
				default: begin
					coarse_sync_fir_count <= 7'd0;
					coarse_sync_sec_count <= 8'd0;
				end
			endcase
		end
	end
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			coarse_sync_state_dly1 <= COARSE_SYNC_IDLE;
		end
		else begin
			coarse_sync_state_dly1 <= coarse_sync_state;
		end
	end
	
//================================================================================
// psi、phi
//================================================================================
	assign u1_i_work_ctrl_en = ctrl_work_en;
	assign u1_i_work_ctrl    = ctrl_work;
	assign u2_i_work_ctrl_en = ctrl_work_en;
	assign u2_i_work_ctrl    = ctrl_work;
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			u1_i_data_valid    <= 1'b0;
			u1_i_data_i        <= 18'd0;
			u1_i_data_q        <= 18'd0;
			u1_i_data_dly_i    <= 18'd0;
			u1_i_data_dly_q    <= 18'd0;
			u1_i_data_dly_addr <= 16'd0;
		end
		else if(s_axis_data_tvalid == 1'b1) begin
			u1_i_data_valid    <= 1'b1;
			u1_i_data_i        <= {{(18-SYNC_DATA_WIDTH){s_axis_data_tdata[SYNC_DATA_WIDTH-1]}},s_axis_data_tdata[SYNC_DATA_WIDTH-1:0]};
			u1_i_data_q        <= {{(18-SYNC_DATA_WIDTH){s_axis_data_tdata[24+SYNC_DATA_WIDTH-1]}},s_axis_data_tdata[24+SYNC_DATA_WIDTH-1:24]};
			u1_i_data_dly_i    <= {{(18-SYNC_DATA_WIDTH){s_axis_data_tdata[48+SYNC_DATA_WIDTH-1]}},s_axis_data_tdata[48+SYNC_DATA_WIDTH-1:48]};
			u1_i_data_dly_q    <= {{(18-SYNC_DATA_WIDTH){s_axis_data_tdata[72+SYNC_DATA_WIDTH-1]}},s_axis_data_tdata[72+SYNC_DATA_WIDTH-1:72]};
			u1_i_data_dly_addr <= s_axis_data_taddr;
		end
		else begin
			u1_i_data_valid    <= 1'b0;
			u1_i_data_i        <= u1_i_data_i;
			u1_i_data_q        <= u1_i_data_q;
			u1_i_data_dly_i    <= u1_i_data_dly_i;
			u1_i_data_dly_q    <= u1_i_data_dly_q;
			u1_i_data_dly_addr <= u1_i_data_dly_addr;
		end
	end
	
	assign u2_i_data_valid    = u1_i_data_valid;
	assign u2_i_data_i        = u1_i_data_i;
	assign u2_i_data_q        = u1_i_data_q;
	assign u2_i_data_dly_i    = u1_i_data_dly_i;
	assign u2_i_data_dly_q    = u1_i_data_dly_q;
	assign u2_i_data_dly_addr = u1_i_data_dly_addr;
	
	psi #(
		.SYNC_DATA_WIDTH  (SYNC_DATA_WIDTH     ), // <=18
		.PSI_WIDTH        (PSI_WIDTH           ), // <=34
		.RAM_ADDR_WIDTH   (RAM_ADDR_WIDTH      ) // <=16
	)u1_psi(
		.clk              (axis_aclk           ),
		.reset            (axis_areset         ),
		.i_work_ctrl_en   (u1_i_work_ctrl_en   ),
		.i_work_ctrl      (u1_i_work_ctrl      ),
		.i_data_valid     (u1_i_data_valid     ),
		.i_data_i         (u1_i_data_i         ),
		.i_data_q         (u1_i_data_q         ),
		.i_data_dly_i     (u1_i_data_dly_i     ),
		.i_data_dly_q     (u1_i_data_dly_q     ),
		.i_data_dly_addr  (u1_i_data_dly_addr  ),
		.o_self_corr_valid(u1_o_self_corr_valid),
		.o_self_corr_i    (u1_o_self_corr_i    ),
		.o_self_corr_q    (u1_o_self_corr_q    ),
		.o_self_corr_addr (u1_o_self_corr_addr ),
		.o_psi_data_valid (u1_o_psi_data_valid ), // 9dly
		.o_psi_data_i     (u1_o_psi_data_i     ),
		.o_psi_data_q     (u1_o_psi_data_q     ),
		.o_psi_data_addr  (u1_o_psi_data_addr  )
	);
	
	phi #(
		.SYNC_DATA_WIDTH    (SYNC_DATA_WIDTH    ), // <=18
		.PHI_WIDTH          (PHI_WIDTH          ), // <=35
		.RAM_ADDR_WIDTH     (RAM_ADDR_WIDTH     ) // <=16
	)u2_phi(
		.clk                (axis_aclk          ),
		.reset              (axis_areset        ),
		.i_work_ctrl_en     (u2_i_work_ctrl_en  ),
		.i_work_ctrl        (u2_i_work_ctrl     ),
		.i_data_valid       (u2_i_data_valid    ),
		.i_data_i           (u2_i_data_i        ),
		.i_data_q           (u2_i_data_q        ),
		.i_data_dly_i       (u2_i_data_dly_i    ),
		.i_data_dly_q       (u2_i_data_dly_q    ),
		.i_data_dly_addr    (u2_i_data_dly_addr ),
		.o_phi_data_valid   (u2_o_phi_data_valid), // 6dly
		.o_phi_data         (u2_o_phi_data      ),
		.o_phi_data_addr    (u2_o_phi_data_addr )
	);
	
//================================================================================
// tar
//================================================================================
	assign u3_i_work_ctrl_en       = ctrl_work_en;
	assign u3_i_work_ctrl          = ctrl_work;
	assign u3_i_psi_phi_data_valid = u1_o_psi_data_valid;
	assign u3_i_psi_data_i         = u1_o_psi_data_i;
	assign u3_i_psi_data_q         = u1_o_psi_data_q;
	assign u3_i_phi_data           = u2_o_phi_data;
	assign u3_i_psi_phi_data_addr  = u1_o_psi_data_addr;
	
	tar #(
		.PSI_WIDTH				(PSI_WIDTH			), // <=38
		.PHI_WIDTH				(PHI_WIDTH			), // <=39
		.RAM_ADDR_WIDTH			(RAM_ADDR_WIDTH		) // <=16
	)u3_tar(
		.clk					(axis_aclk			),
		.reset					(axis_areset		),
		.i_work_ctrl_en			(u3_i_work_ctrl_en	),
		.i_work_ctrl			(u3_i_work_ctrl		),
		.i_psi_phi_data_valid	(u3_i_psi_phi_data_valid),
		.i_psi_data_i			(u3_i_psi_data_i	),
		.i_psi_data_q			(u3_i_psi_data_q	),
		.i_phi_data				(u3_i_phi_data		),
		.i_psi_phi_data_addr	(u3_i_psi_phi_data_addr),
		.o_tar_data_valid		(u3_o_tar_data_valid), // 11dly
		.o_tar_data				(u3_o_tar_data		),
		.o_tar_data_addr		(u3_o_tar_data_addr	)
	);
	assign test_u3_o_tar_data = u3_o_tar_data[63:0]; // test
	
//================================================================================
// output data for fine synchronization
//================================================================================
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			u3_i_psi_phi_data_valid_dly1 <= 1'b0;
		end
		else begin
			u3_i_psi_phi_data_valid_dly1 <= u3_i_psi_phi_data_valid;
		end
	end
	
	localparam u4_rd_addr_init = 'd33; // 64个数据后再次大于0的tar值，其对应32数据窗口第1个数据的存放位置
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			u4_wea		<= 1'b0;
			u4_wr_addr	<= 'd0;
			rd_en		<= 1'b0;
			u4_rd_addr	<= u4_rd_addr_init;
			u4_addra	<= 'd0;
			u4_dina		<= 'd0;
		end
		else begin
			case(coarse_sync_state)
				// COARSE_SYNC_IDLE: begin
				// end
				// COARSE_SYNC_ING: begin
				// end
				COARSE_SYNC_FIR: begin
					if(u3_i_psi_phi_data_valid == 1'b1) begin
						u4_wea		<= 1'b1;
						u4_wr_addr	<= u4_wr_addr + 1'd1;
						rd_en		<= 1'b0;
						u4_rd_addr	<= u4_rd_addr_init;
						u4_addra	<= u4_wr_addr + 1'd1;
						u4_dina		<= {{(SPRAM_DATA_WIDTH-120){1'b0}},
										1'd0,u3_i_phi_data,
										2'd0,u3_i_psi_data_q,
										2'd0,u3_i_psi_data_i};
					end
					else begin
						u4_wea		<= 1'b0;
						u4_wr_addr	<= u4_wr_addr;
						rd_en		<= 1'b0;
						u4_rd_addr	<= u4_rd_addr_init;
						u4_addra	<= u4_wr_addr;
						u4_dina		<= u4_dina;
					end
				end
				COARSE_SYNC_SEC: begin
					if(u3_i_psi_phi_data_valid == 1'b1) begin
						u4_wea		<= 1'b1;
						u4_wr_addr	<= u4_wr_addr + 1'd1;
						rd_en		<= 1'b0;
						u4_rd_addr	<= u4_rd_addr;
						u4_addra	<= u4_wr_addr + 1'd1;
						u4_dina		<= {{(SPRAM_DATA_WIDTH-120){1'b0}},
										1'd0,u3_i_phi_data,
										2'd0,u3_i_psi_data_q,
										2'd0,u3_i_psi_data_i};
					end
					else if(u3_i_psi_phi_data_valid_dly1 == 1'b1) begin
						u4_wea		<= 1'b0;
						u4_wr_addr	<= u4_wr_addr;
						rd_en		<= 1'b1;
						u4_rd_addr	<= u4_rd_addr + 1'd1;
						u4_addra	<= u4_rd_addr + 1'd1;
						u4_dina		<= u4_dina;
					end
					else begin
						u4_wea		<= 1'b0;
						u4_wr_addr	<= u4_wr_addr;
						rd_en		<= 1'b0;
						u4_rd_addr	<= u4_rd_addr;
						u4_addra	<= u4_rd_addr;
						u4_dina		<= u4_dina;
					end
				end
				default: begin
					u4_wea		<= 1'b0;
					u4_wr_addr	<= 'd0;
					rd_en		<= 1'b0;
					u4_rd_addr	<= u4_rd_addr_init;
					u4_addra	<= 'd0;
					u4_dina		<= 'd0;
				end
			endcase
		end
	end
	
	spram_144_512_ip u4_spram_144_512_ip (
		.clka	(axis_aclk	),	// input clka;
		.wea	(u4_wea		),	// input [0:0]wea;
		.addra	(u4_addra	),	// input [8:0]addra;
		.dina	(u4_dina	),	// input [143:0]dina;
		.douta	(u4_douta	)	// output [143:0]douta;
	);
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			rd_en_dly1 <= 1'b0;
			rd_en_dly2 <= 1'b0;
		end
		else begin
			rd_en_dly1 <= rd_en;
			rd_en_dly2 <= rd_en_dly1;
		end
	end
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			data_addr <= 'd0;
		end
		else begin
			case(coarse_sync_state)
				// COARSE_SYNC_IDLE: begin
				// end
				// COARSE_SYNC_ING: begin
				// end
				// COARSE_SYNC_FIR: begin
				// end
				COARSE_SYNC_SEC: begin
					if(coarse_sync_state_dly1 == COARSE_SYNC_FIR) begin
						data_addr <= u3_o_tar_data_addr[RAM_ADDR_WIDTH-1:0] - 1'd1;
					end
					else if(rd_en_dly1 == 1'b1) begin
						data_addr <= data_addr + 1'd1;
					end
					else begin
						data_addr <= data_addr;
					end
				end
				default: begin
					data_addr	<= 'd0;
				end
			endcase
		end
	end
	
	assign m_axis_data_tvalid	= rd_en_dly2;
	assign m_axis_data_tdata	= u4_douta[119:0];
	assign m_axis_data_taddr	= {{(16-RAM_ADDR_WIDTH){1'b0}},data_addr};
	
//================================================================================
// 
//================================================================================
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			coarse_sync_ok <= 1'b0;
		end
		else if((coarse_sync_state==COARSE_SYNC_SEC) && (coarse_sync_state_dly1==COARSE_SYNC_FIR)) begin
			coarse_sync_ok <= 1'b1; // 1clk
		end
		else begin
			coarse_sync_ok <= 1'b0;
		end
	end
	assign o_coarse_sync_ok = coarse_sync_ok;
	
endmodule
