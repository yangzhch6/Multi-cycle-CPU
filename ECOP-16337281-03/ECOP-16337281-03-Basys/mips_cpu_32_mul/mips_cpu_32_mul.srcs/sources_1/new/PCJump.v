`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:09:31 12/15/2016 
// Design Name: 
// Module Name:    PCJump 
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
module PCJump(in_pc, addr, out_pc);
	input wire [31:0] in_pc;
	input wire [25:0] addr;
	output reg [31:0] out_pc;
	
	initial begin
		out_pc = 0;
	end
	
	always @(in_pc or addr) begin
		out_pc[31:28] = in_pc[31:28];
		out_pc[27:2] = addr[25:0];
		out_pc[1:0] = 2'b00;
	end

endmodule
