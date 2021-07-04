`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:00:25 12/08/2016 
// Design Name: 
// Module Name:    InsMem 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module InsMem(InsMemRW, in_IM, out_IM);
	input wire InsMemRW;
	input wire [31:0] in_IM;
	output reg [31:0] out_IM;
	reg [7:0] InsData [0:127];
	
	initial begin
		out_IM = 0;
		$readmemb("C:/Users/ASROCK/Desktop/mips_cpu_32_mul/rom_data.coe", InsData);
	end
	
	always @(InsMemRW or in_IM) begin
		out_IM[31:24] = InsData[in_IM + 0 - 32'h00000000];
		out_IM[23:16] = InsData[in_IM + 1 - 32'h00000000];
		out_IM[15:8] = InsData[in_IM + 2 - 32'h00000000];
		out_IM[7:0] = InsData[in_IM + 3 - 32'h00000000];
	end

endmodule
