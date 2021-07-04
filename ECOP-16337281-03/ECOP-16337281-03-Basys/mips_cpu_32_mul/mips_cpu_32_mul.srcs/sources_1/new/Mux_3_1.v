`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:04 12/08/2016 
// Design Name: 
// Module Name:    Mux_3_1 
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
module Mux_3_1(Ctrl, in_1, in_2, out);
	input wire [1:0] Ctrl;
	input wire [4:0] in_1, in_2;
	output reg [4:0] out;
	
	wire [4:0] in_0;
	assign in_0 = 5'h1f;
	
	initial begin
		out = 0;
	end
	
	always @(in_1 or in_2 or Ctrl) begin
		if (Ctrl == 2'b00)
			out = in_0;
		else if (Ctrl == 2'b01)
			out = in_1;
		else if (Ctrl == 2'b10)
			out = in_2;
	end

endmodule
