`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:50:40 12/01/2016 
// Design Name: 
// Module Name:    PC 
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
module PC(CLK, RST, PCWre, in_PC, out_PC, new_PC);
	input wire CLK, RST, PCWre;
	input wire [31:0] in_PC, new_PC;
	output reg [31:0] out_PC;
	
	always @(posedge PCWre or posedge RST) begin
		if (RST == 1)
			out_PC = new_PC;
		else if (PCWre)
			out_PC = in_PC;
		else if (!PCWre)
			out_PC = out_PC;
	end

endmodule
