`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:01:29 12/08/2016 
// Design Name: 
// Module Name:    Mux_4_1 
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
module Mux_4_1(Ctrl, in_0, in_1, in_2, in_3, out);
	input wire [1:0] Ctrl;
	input wire [31:0] in_0, in_1, in_2, in_3;
	output reg [31:0] out;
	
	always @(Ctrl or in_0 or in_1 or in_2 or in_3) begin
		if (Ctrl == 2'b00)
			out = in_0;
		else if (Ctrl == 2'b01)
			out = in_1;
		else if (Ctrl == 2'b10)
			out = in_2;
		else if (Ctrl == 2'b11)
			out = in_3;
	end
	
endmodule
