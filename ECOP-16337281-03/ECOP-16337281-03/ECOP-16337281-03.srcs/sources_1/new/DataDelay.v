`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:24:59 12/08/2016 
// Design Name: 
// Module Name:    DataDelay 
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
module DataDelay(CLK, in, out);
	input wire CLK;
	input wire [31:0] in;
	output reg [31:0] out;
	
	initial begin
		out = 0;
	end
	
	always @(posedge CLK) begin
		out <= in;
	end

endmodule
