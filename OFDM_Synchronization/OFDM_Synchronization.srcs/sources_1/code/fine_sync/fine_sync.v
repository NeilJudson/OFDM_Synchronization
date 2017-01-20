`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/01/20 13:34:09
// Design Name: 
// Module Name: fine_sync
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


module fine_sync #(
	parameter PSI_WIDTH      = 30, // <=30
	parameter PHI_WIDTH      = 31, // <=31
	parameter RAM_ADDR_WIDTH = 10
	)
	(
	axis_aclk           ,
	axis_areset         ,
	
	i_work_ctrl_en      ,
	i_work_ctrl         ,
	
	i_psi_phi_data_valid,
	i_psi_data_i        ,
	i_psi_data_q        ,
	i_phi_data          ,
	i_psi_phi_data_addr ,
	i_rou_en            ,
	i_rou               ,
	
	o_fine_sync_ok      ,
	o_fine_sync_L       ,
	o_fine_sync_addr
	);
	input                axis_aclk           ;
	input                axis_areset         ;
	
	input                i_work_ctrl_en      ;
	input                i_work_ctrl         ; // 1'b0: 停止工作；1'b1: 开始工作
	
	input                i_psi_phi_data_valid;
	input  signed [29:0] i_psi_data_i        ;
	input  signed [29:0] i_psi_data_q        ;
	input  signed [30:0] i_phi_data          ;
	input         [15:0] i_psi_phi_data_addr ;
	input                i_rou_en            ;
	input         [7:0]  i_rou               ; // 系数，fix0_8
	
	output               o_fine_sync_ok      ;
	output        [4:0]  o_fine_sync_L       ;
	output        [15:0] o_fine_sync_addr    ;
	
//================================================================================
// variable
//================================================================================
	localparam LAMBDA_WIDTH = 2*(PSI_WIDTH+5)+1; // 71 <=71
	
	wire               u1_i_work_ctrl_en      ;
	wire               u1_i_work_ctrl         ;
	wire               u1_i_psi_phi_data_valid;
	wire signed [29:0] u1_i_psi_data_i        ;
	wire signed [29:0] u1_i_psi_data_q        ;
	wire signed [30:0] u1_i_phi_data          ;
	wire        [15:0] u1_i_psi_phi_data_addr ;
	wire               u1_i_rou_en            ;
	wire        [7:0]  u1_i_rou               ;
	wire               u1_o_lambda_data_valid ;
	wire signed [70:0] u1_o_lambda_data_32    ;
	wire signed [70:0] u1_o_lambda_data_31    ;
	wire signed [70:0] u1_o_lambda_data_30    ;
	wire signed [70:0] u1_o_lambda_data_29    ;
	wire signed [70:0] u1_o_lambda_data_28    ;
	wire signed [70:0] u1_o_lambda_data_27    ;
	wire signed [70:0] u1_o_lambda_data_26    ;
	wire signed [70:0] u1_o_lambda_data_25    ;
	wire signed [70:0] u1_o_lambda_data_24    ;
	wire signed [70:0] u1_o_lambda_data_23    ;
	wire        [15:0] u1_o_lambda_data_addr  ;
	
	wire               u2_i_work_ctrl_en      ;
	wire               u2_i_work_ctrl         ;
	wire               u2_i_lambda_data_valid ;
	wire signed [70:0] u2_i_lambda_data_32    ;
	wire signed [70:0] u2_i_lambda_data_31    ;
	wire signed [70:0] u2_i_lambda_data_30    ;
	wire signed [70:0] u2_i_lambda_data_29    ;
	wire signed [70:0] u2_i_lambda_data_28    ;
	wire signed [70:0] u2_i_lambda_data_27    ;
	wire signed [70:0] u2_i_lambda_data_26    ;
	wire signed [70:0] u2_i_lambda_data_25    ;
	wire signed [70:0] u2_i_lambda_data_24    ;
	wire signed [70:0] u2_i_lambda_data_23    ;
	wire        [15:0] u2_i_lambda_data_addr  ;
	wire               u2_o_fine_sync_ok      ;
	wire        [4:0]  u2_o_fine_sync_L       ;
	wire        [15:0] u2_o_fine_sync_addr    ;
	
//================================================================================
// lambda
//================================================================================
	assign u1_i_work_ctrl_en       = i_work_ctrl_en      ;
	assign u1_i_work_ctrl          = i_work_ctrl         ;
	assign u1_i_psi_phi_data_valid = i_psi_phi_data_valid;
	assign u1_i_psi_data_i         = i_psi_data_i        ;
	assign u1_i_psi_data_q         = i_psi_data_q        ;
	assign u1_i_phi_data           = i_phi_data          ;
	assign u1_i_psi_phi_data_addr  = i_psi_phi_data_addr ;
	assign u1_i_rou_en             = i_rou_en            ;
	assign u1_i_rou                = i_rou               ;
	
	lambda #(
		.PSI_WIDTH           (PSI_WIDTH              ), // <=30
		.PHI_WIDTH           (PHI_WIDTH              ), // <=31
		.RAM_ADDR_WIDTH      (RAM_ADDR_WIDTH         )
	) u1_lambda (
		.axis_aclk           (axis_aclk              ),
		.axis_areset         (axis_areset            ),
		.i_work_ctrl_en      (u1_i_work_ctrl_en      ),
		.i_work_ctrl         (u1_i_work_ctrl         ),
		.i_psi_phi_data_valid(u1_i_psi_phi_data_valid),
		.i_psi_data_i        (u1_i_psi_data_i        ),
		.i_psi_data_q        (u1_i_psi_data_q        ),
		.i_phi_data          (u1_i_phi_data          ),
		.i_psi_phi_data_addr (u1_i_psi_phi_data_addr ),
		.i_rou_en            (u1_i_rou_en            ),
		.i_rou               (u1_i_rou               ),
		.o_lambda_data_valid (u1_o_lambda_data_valid ),
		.o_lambda_data_32    (u1_o_lambda_data_32    ),
		.o_lambda_data_31    (u1_o_lambda_data_31    ),
		.o_lambda_data_30    (u1_o_lambda_data_30    ),
		.o_lambda_data_29    (u1_o_lambda_data_29    ),
		.o_lambda_data_28    (u1_o_lambda_data_28    ),
		.o_lambda_data_27    (u1_o_lambda_data_27    ),
		.o_lambda_data_26    (u1_o_lambda_data_26    ),
		.o_lambda_data_25    (u1_o_lambda_data_25    ),
		.o_lambda_data_24    (u1_o_lambda_data_24    ),
		.o_lambda_data_23    (u1_o_lambda_data_23    ),
		.o_lambda_data_addr  (u1_o_lambda_data_addr  )
	);
	
//================================================================================
// search peak
//================================================================================
	assign u2_i_work_ctrl_en      = i_work_ctrl_en        ;
	assign u2_i_work_ctrl         = i_work_ctrl           ;
	assign u2_i_lambda_data_valid = u1_o_lambda_data_valid;
	assign u2_i_lambda_data_32    = u1_o_lambda_data_32   ;
	assign u2_i_lambda_data_31    = u1_o_lambda_data_31   ;
	assign u2_i_lambda_data_30    = u1_o_lambda_data_30   ;
	assign u2_i_lambda_data_29    = u1_o_lambda_data_29   ;
	assign u2_i_lambda_data_28    = u1_o_lambda_data_28   ;
	assign u2_i_lambda_data_27    = u1_o_lambda_data_27   ;
	assign u2_i_lambda_data_26    = u1_o_lambda_data_26   ;
	assign u2_i_lambda_data_25    = u1_o_lambda_data_25   ;
	assign u2_i_lambda_data_24    = u1_o_lambda_data_24   ;
	assign u2_i_lambda_data_23    = u1_o_lambda_data_23   ;
	assign u2_i_lambda_data_addr  = u1_o_lambda_data_addr ;
	
	peak_search #(
		.LAMBDA_WIDTH       (LAMBDA_WIDTH          ), // <=71
		.RAM_ADDR_WIDTH     (RAM_ADDR_WIDTH        )
	) u2_peak_search (
		.axis_aclk          (axis_aclk             ),
		.axis_areset        (axis_areset           ),
		.i_work_ctrl_en     (u2_i_work_ctrl_en     ),
		.i_work_ctrl        (u2_i_work_ctrl        ),
		.i_lambda_data_valid(u2_i_lambda_data_valid),
		.i_lambda_data_32   (u2_i_lambda_data_32   ),
		.i_lambda_data_31   (u2_i_lambda_data_31   ),
		.i_lambda_data_30   (u2_i_lambda_data_30   ),
		.i_lambda_data_29   (u2_i_lambda_data_29   ),
		.i_lambda_data_28   (u2_i_lambda_data_28   ),
		.i_lambda_data_27   (u2_i_lambda_data_27   ),
		.i_lambda_data_26   (u2_i_lambda_data_26   ),
		.i_lambda_data_25   (u2_i_lambda_data_25   ),
		.i_lambda_data_24   (u2_i_lambda_data_24   ),
		.i_lambda_data_23   (u2_i_lambda_data_23   ),
		.i_lambda_data_22   ({(71){1'b1}}          ),
		.i_lambda_data_21   ({(71){1'b1}}          ),
		.i_lambda_data_20   ({(71){1'b1}}          ),
		.i_lambda_data_19   ({(71){1'b1}}          ),
		.i_lambda_data_18   ({(71){1'b1}}          ),
		.i_lambda_data_17   ({(71){1'b1}}          ),
		.i_lambda_data_16   ({(71){1'b1}}          ),
		.i_lambda_data_15   ({(71){1'b1}}          ),
		.i_lambda_data_14   ({(71){1'b1}}          ),
		.i_lambda_data_13   ({(71){1'b1}}          ),
		.i_lambda_data_12   ({(71){1'b1}}          ),
		.i_lambda_data_11   ({(71){1'b1}}          ),
		.i_lambda_data_10   ({(71){1'b1}}          ),
		.i_lambda_data_9    ({(71){1'b1}}          ),
		.i_lambda_data_8    ({(71){1'b1}}          ),
		.i_lambda_data_7    ({(71){1'b1}}          ),
		.i_lambda_data_6    ({(71){1'b1}}          ),
		.i_lambda_data_5    ({(71){1'b1}}          ),
		.i_lambda_data_4    ({(71){1'b1}}          ),
		.i_lambda_data_3    ({(71){1'b1}}          ),
		.i_lambda_data_2    ({(71){1'b1}}          ),
		.i_lambda_data_1    ({(71){1'b1}}          ),
		.i_lambda_data_addr (u2_i_lambda_data_addr ),
		.o_fine_sync_ok     (u2_o_fine_sync_ok     ),
		.o_fine_sync_L      (u2_o_fine_sync_L      ),
		.o_fine_sync_addr   (u2_o_fine_sync_addr   )
	);
	
	assign o_fine_sync_ok   = u2_o_fine_sync_ok  ;
	assign o_fine_sync_L    = u2_o_fine_sync_L   ;
	assign o_fine_sync_addr = u2_o_fine_sync_addr;
	
endmodule
