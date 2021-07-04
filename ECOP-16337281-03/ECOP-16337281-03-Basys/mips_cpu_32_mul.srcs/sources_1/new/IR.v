`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:28:49 12/08/2016 
// Design Name: 
// Module Name:    IR 
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
module IR(CLK, IRWre, in_IR, out_IR);
	input wire CLK, IRWre;
	input wire [31:0] in_IR;
	output reg [31:0] out_IR;
	
	always @(negedge CLK) begin
		if (IRWre)
			out_IR = in_IR;
	end

endmodule
