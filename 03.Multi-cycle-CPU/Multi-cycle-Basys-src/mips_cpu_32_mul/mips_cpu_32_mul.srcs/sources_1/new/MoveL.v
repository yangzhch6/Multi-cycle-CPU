`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:55:27 12/15/2016 
// Design Name: 
// Module Name:    MoveL 
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
module MoveL(in, out);
	
	input wire [31:0] in;
	output [31:0] out;
	
	assign out = (in << 2);

endmodule