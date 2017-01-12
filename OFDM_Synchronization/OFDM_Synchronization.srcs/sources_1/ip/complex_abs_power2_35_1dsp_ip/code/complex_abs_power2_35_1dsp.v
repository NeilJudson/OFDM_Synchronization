`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2017/01/06 16:17:58
// Design Name: 
// Module Name: complex_abs_power2_35_1dsp
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


module complex_abs_power2_35_1dsp(
	i_clk,
	i_rst,
	i_en,
	i_r,
	i_i,
	o_p_en,
	o_p
    );
	input					i_clk;
	input					i_rst;
	input					i_en; // 6个周期后才能输入下一个数据
	input	signed	[34:0]	i_r;
	input	signed	[34:0]	i_i;
	output					o_p_en; // 12dly
	output	signed	[69:0]	o_p;
	
	reg				[11:0]	en_buf;
	reg		signed	[34:0]	r_buf = 35'd0;
	reg		signed	[34:0]	i_buf = 35'd0;
	
	reg		signed	[17:0]	u_a;
	reg		signed	[17:0]	u_b;
	reg		signed	[47:0]	u_c;
	wire	signed	[47:0]	u_p;
	
	reg		signed	[69:0]	p_in;
	reg		signed	[69:0]	p_acc = 70'd0;

	always @(posedge i_clk or posedge i_rst) begin
		if(i_rst == 1'b1) begin
			en_buf <= 11'd0;
		end
		else if(i_en == 1'b1) begin
			en_buf <= {en_buf[10:0],1'b1};
		end
		else begin
			en_buf <= {en_buf[10:0],1'b0};
		end
	end

	always @(posedge i_clk or posedge i_rst) begin
		if(i_rst == 1'b1) begin
			r_buf <= 35'd0;
			i_buf <= 35'd0;
		end
		else if(i_en == 1'b1) begin
			r_buf <= i_r; // 1dly
			i_buf <= i_i;
		end
		else begin
			r_buf <= r_buf;
			i_buf <= i_buf;
		end
	end
	
	always @(posedge i_clk or posedge i_rst) begin
		if(i_rst == 1'b1) begin
			u_a <= 18'd0;
			u_b <= 18'd0;
			u_c <= 48'd0;
		end
		else begin
			case({en_buf[6:0]})
				7'd1: begin
					u_a <= {r_buf[34:17]}; // 1dly
					u_b <= {r_buf[34:17]};
					u_c <= 48'd0;
				end
				7'd2: begin
					u_a <= {r_buf[34:17]};
					u_b <= {1'b0,r_buf[16:0]};
					u_c <= 48'd0;
				end
				7'd4: begin
					u_a <= {1'b0,r_buf[16:0]};
					u_b <= {1'b0,r_buf[16:0]};
					u_c <= 48'd0;
				end
				7'd8: begin
					u_a <= {i_buf[34:17]};
					u_b <= {i_buf[34:17]};
					u_c <= 48'd0;
				end
				7'd16: begin
					u_a <= {i_buf[34:17]};
					u_b <= {1'b0,i_buf[16:0]};
					u_c <= u_p;
				end
				7'd32: begin
					u_a <= {1'b0,i_buf[16:0]};
					u_b <= {1'b0,i_buf[16:0]};
					u_c <= u_p;
				end
				7'd64: begin
					u_a <= 18'd0;
					u_b <= 18'd0;
					u_c <= u_p;
				end
				default: begin
					u_a <= 18'd0;
					u_b <= 18'd0;
					u_c <= 48'd0;
				end
			endcase
		end
	end
	
	dsp48_mul_add_ip u_dsp48_mul_add_ip(	// 3dly
		.CLK(i_clk),
		.A	(u_a),
		.B	(u_b),
		.C	(u_c),
		.P	(u_p)
		);
		
	always @(posedge i_clk or posedge i_rst) begin
		if(i_rst == 1'b1) begin
			p_in <= 70'd0;
		end
		else begin
			case(en_buf[9:7])
				3'd1: p_in <= {u_p[35:0],34'd0};
				3'd2: p_in <= {{(4){u_p[47]}},u_p,18'd0}; // 这里乘以2了
				3'd4: p_in <= {{(22){u_p[47]}},u_p};
				default: p_in <= 70'd0;
			endcase
		end
	end
		
	always @(posedge i_clk or posedge i_rst) begin
		if(i_rst == 1'b1) begin
			p_acc <= 70'd0;
		end
		else if(en_buf[8] == 1'b1) begin
			p_acc <= p_in;
		end
		else begin
			p_acc <= p_acc + p_in;
		end
	end
	
	assign o_p_en = en_buf[11];
	assign o_p = p_acc;
	
endmodule
