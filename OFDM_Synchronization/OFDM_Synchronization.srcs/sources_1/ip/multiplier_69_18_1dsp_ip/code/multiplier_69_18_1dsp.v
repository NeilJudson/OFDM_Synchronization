`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2017/01/11 14:23:24
// Design Name: 
// Module Name: multiplier_69_18_1dsp
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


module multiplier_69_18_1dsp(
    i_clk	,
	i_rst	,
	i_en	,
    i_a		,
    i_b		,
	o_in_en	,
	o_c_en	,
    o_c
    );
	input							i_clk	;
	input							i_rst	;
	
	input							i_en	;
    input		signed		[68:0]	i_a		;
    input		signed		[17:0]	i_b		;
	
	output							o_in_en	;
	output							o_c_en	; // 9dly
    output		signed		[85:0]	o_c		;
	
	reg						[8:0]	en_buf	;
	reg			signed		[68:0]	a_buf	;
	reg			signed		[17:0]	b_buf	;
	
	reg			signed		[17:0]	u_a		;
	reg			signed		[17:0]	u_b		;
	wire		signed		[47:0]	u_p		;
	
	reg			signed		[85:0]	c_in	;
	// reg						[16:0]	c_in_17	;
	reg			signed		[85:0]	c_acc	;
	// reg			signed		[69:0]	c_acc	;
	
	// 数据输入标志buf
	always @(posedge i_clk or posedge i_rst)
		begin
			if(i_rst == 1'b1)
				en_buf <= 9'd0;
			else
				if(i_en == 1'b1)
					en_buf <= {en_buf[7:0],1'b1};
				else
					en_buf <= {en_buf[7:0],1'b0};
		end

	always @(posedge i_clk)
		begin
			if(i_en == 1'b1)
				begin
					a_buf <= i_a; // 1dly
					b_buf <= i_b;
				end
			else
				begin
					a_buf <= a_buf;
					b_buf <= b_buf;
				end
		end
	
	always @(posedge i_clk)
		begin
			case({en_buf[3:0]})
				4'd1:
					begin
						u_a <= {a_buf[68:51]}; // 1dly
						u_b <= b_buf;
					end
				4'd2:
					begin
						u_a <= {1'b0,a_buf[50:34]};
						u_b <= b_buf;
					end
				4'd4:
					begin
						u_a <= {1'b0,a_buf[33:17]};
						u_b <= b_buf;
					end
				4'd8:
					begin
						u_a <= {1'b0,a_buf[16:0]};
						u_b <= b_buf;
					end
				default:
					begin
						u_a <= 18'd0;
						u_b <= 18'd0;
					end
			endcase
		end
	
	dsp48_mul_ip u_dsp48_mul_ip(
		.CLK(i_clk),
		.A	(u_a),
		.B	(u_b),
		.P	(u_p) // 2dly
		);
	
	// 各乘积扩大对应2^n倍
	always @(posedge i_clk)
		begin
			case(en_buf[6:3])
				4'd1: c_in <= {u_p[34:0],51'd0};
				4'd2: c_in <= {{(4){u_p[47]}},u_p,34'd0};
				4'd4: c_in <= {{(21){u_p[47]}},u_p,17'd0};
				4'd8: c_in <= {{(38){u_p[47]}},u_p};
				default: c_in <= 86'd0;
			endcase
		end
	
	// 累加
	always @(posedge i_clk)
		begin
			// if(en_buf[3] == 1'b1)
				// c_acc <= 103'b0;
			if(en_buf[4] == 1'b1)
				begin
					c_acc <= c_in;
					// c_acc <= c_in[102:17];
					// c_in_17 <= c_in[16:0];
				end
			else
				begin
					c_acc <= c_acc + c_in;
					// c_acc <= c_acc + c_in[102:17];
					// c_in_17 <= c_in[16:0];
				end
		end

	// 输出
	assign o_in_en = en_buf[4];
	assign o_c_en = en_buf[8];
	assign o_c = c_acc;
	// assign o_c = {c_acc,c_in_17};

endmodule
