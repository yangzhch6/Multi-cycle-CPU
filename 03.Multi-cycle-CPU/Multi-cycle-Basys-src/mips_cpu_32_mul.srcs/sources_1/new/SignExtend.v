`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:37:01 12/15/2016 
// Design Name: 
// Module Name:    SignExtend 
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
module SignExtend(in_num, ExtSel, out_num);
	input wire [15:0] in_num;
	input wire  ExtSel;
	output reg [31:0] out_num;
	
	initial begin
		out_num = 0;
	end
	
	always @(in_num or ExtSel) begin
		if (ExtSel)
			out_num = {{16{in_num[15]}}, in_num[15:0]};
		else
			out_num = {{16{1'b0}}, in_num[15:0]};
	end

endmodule
