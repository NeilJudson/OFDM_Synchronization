`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/01/20 16:32:03
// Design Name: 
// Module Name: test_coarse_sync_fine_sync
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


module test_coarse_sync_fine_sync;

	// Inputs
	reg axis_aclk;
	reg axis_areset;
	reg s_axis_ctrl_tvalid;
	reg s_axis_ctrl_tlast;
	reg [31:0] s_axis_ctrl_tdata;
	reg s_axis_data_tvalid;
	reg s_axis_data_tlast;
	reg [95:0] s_axis_data_tdata;
	reg [15:0] s_axis_data_taddr;
	reg m_axis_data_trdy;

	// Outputs
	wire s_axis_data_trdy;
	wire m_axis_data_tvalid;
	wire m_axis_data_tlast;
	wire [119:0] m_axis_data_tdata;
	wire [15:0] m_axis_data_taddr;
	wire o_coarse_sync_ok;
	
	// Inputs
	wire i_work_ctrl_en;
	wire i_work_ctrl;
	wire i_psi_phi_data_valid;
	wire [29:0] i_psi_data_i;
	wire [29:0] i_psi_data_q;
	wire [30:0] i_phi_data;
	wire [15:0] i_psi_phi_data_addr;
	reg i_rou_en;
	reg [7:0] i_rou;

	// Outputs
	wire o_fine_sync_ok;
	wire [4:0] o_fine_sync_L;
	wire [15:0] o_fine_sync_addr;
	
	reg [31:0] data_in[0:4000];
	integer clk_cnt;
	integer data_cnt;

	// Instantiate the Unit Under Test (UUT)
	coarse_sync #(
		.SYNC_DATA_WIDTH(16),
		.RAM_ADDR_WIDTH(10)
	) uut_coarse_sync (
		.axis_aclk(axis_aclk), 
		.axis_areset(axis_areset), 
		.s_axis_ctrl_tvalid(s_axis_ctrl_tvalid), 
		.s_axis_ctrl_tlast(s_axis_ctrl_tlast), 
		.s_axis_ctrl_tdata(s_axis_ctrl_tdata), 
		.s_axis_ctrl_trdy(s_axis_ctrl_trdy), 
		.s_axis_data_tvalid(s_axis_data_tvalid), 
		.s_axis_data_tlast(s_axis_data_tlast), 
		.s_axis_data_tdata(s_axis_data_tdata), 
		.s_axis_data_taddr(s_axis_data_taddr), 
		.s_axis_data_trdy(s_axis_data_trdy), 
		.m_axis_data_tvalid(m_axis_data_tvalid), 
		.m_axis_data_tlast(m_axis_data_tlast), 
		.m_axis_data_tdata(m_axis_data_tdata), 
		.m_axis_data_taddr(m_axis_data_taddr), 
		.m_axis_data_trdy(m_axis_data_trdy),
		.o_coarse_sync_ok(o_coarse_sync_ok)
	);
	
	assign i_work_ctrl_en       = (o_coarse_sync_ok==1'b1) ? 1'b1 : 1'b0;
	assign i_work_ctrl          = (o_coarse_sync_ok==1'b1) ? 1'b1 : 1'b0;
	assign i_psi_phi_data_valid = m_axis_data_tvalid;
	assign i_psi_data_i         = m_axis_data_tdata[33:4];
	assign i_psi_data_q         = m_axis_data_tdata[73:44];
	assign i_phi_data           = m_axis_data_tdata[114:84];
	assign i_psi_phi_data_addr  = m_axis_data_taddr;
	
	fine_sync #(
		.PSI_WIDTH(30),
		.PHI_WIDTH(31),
		.RAM_ADDR_WIDTH(10)
	) uut_fine_sync (
		.axis_aclk(axis_aclk), 
		.axis_areset(axis_areset), 
		.i_work_ctrl_en(i_work_ctrl_en),
		.i_work_ctrl(i_work_ctrl),
		.i_psi_phi_data_valid(i_psi_phi_data_valid),
		.i_psi_data_i(i_psi_data_i),
		.i_psi_data_q(i_psi_data_q),
		.i_phi_data(i_phi_data),
		.i_psi_phi_data_addr(i_psi_phi_data_addr),
		.i_rou_en(i_rou_en),
		.i_rou(i_rou),
		.o_fine_sync_ok(o_fine_sync_ok),
		.o_fine_sync_L(o_fine_sync_L),
		.o_fine_sync_addr(o_fine_sync_addr)
	);

	initial begin
		// Initialize Inputs
		$readmemh("ofdm_source.dat",data_in);
		axis_aclk = 0;
		axis_areset = 0;
		s_axis_ctrl_tvalid = 0;
		s_axis_ctrl_tlast = 0;
		s_axis_ctrl_tdata = 0;
		s_axis_data_tvalid = 0;
		s_axis_data_tlast = 0;
		s_axis_data_tdata = 0;
		s_axis_data_taddr = 0;
		m_axis_data_trdy = 0;
		
		i_rou_en = 0;
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
			clk_cnt <= 4;
		end
		else begin
			clk_cnt <= clk_cnt + 1;
		end
	end
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			s_axis_ctrl_tvalid	<= 1'b0;
			s_axis_ctrl_tdata	<= 32'd0;
		end
		else if(clk_cnt == 80) begin
			s_axis_ctrl_tvalid	<= 1'b1;
			s_axis_ctrl_tdata	<= {8'd1,24'd1};
		end
		else begin
			s_axis_ctrl_tvalid	<= 1'b0;
			s_axis_ctrl_tdata	<= 32'd0;
		end
	end
	
	always @(posedge axis_aclk or posedge axis_areset) begin
		if(axis_areset == 1'b1) begin
			s_axis_data_tvalid	<= 1'b0;
			s_axis_data_tdata	<= 96'd0;
			s_axis_data_taddr	<= 16'd0;
			data_cnt			<= 0;
		end
		else begin
			if(clk_cnt[2:0] == 3'd3) begin
				s_axis_data_tvalid	<= 1'b1;
				s_axis_data_taddr	<= data_cnt + 1;
				data_cnt			<= data_cnt + 1;
				if(data_cnt >= 3200) begin
					s_axis_data_tdata <= 96'd0;
				end
				else begin
					s_axis_data_tdata <= {8'd0,data_in[data_cnt][15:0],
											8'd0,data_in[data_cnt][31:16],
											8'd0,data_in[data_cnt+32][15:0],
											8'd0,data_in[data_cnt+32][31:16]};
				end
			end
			else begin
				s_axis_data_tvalid	<= 1'b0;
				s_axis_data_tdata	<= s_axis_data_tdata;
				s_axis_data_taddr	<= s_axis_data_taddr;
				data_cnt			<= data_cnt;
			end
		end
	end
	
	always @(posedge axis_aclk) begin
		if(clk_cnt == 30000) begin
			$stop;
		end
	end
	
      
endmodule
