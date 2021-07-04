`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:57:32 12/08/2016 
// Design Name: 
// Module Name:    Mux_2_1 
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
module Mux_2_1(Ctrl, in_0, in_1, out);
	input wire Ctrl;
	input wire [31:0] in_0, in_1;
	output reg [31:0] out;
	
	always @(Ctrl or in_0 or in_1)
		out = Ctrl ? in_1 : in_0;
		
endmodule
