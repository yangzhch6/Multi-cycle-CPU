`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:29:05 12/15/2016 
// Design Name: 
// Module Name:    ALU 
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
module ALU(in_data1, in_data2, ALUOp, Zero, out_data,Sign);
	input wire [31:0] in_data1, in_data2;
	input wire [2:0] ALUOp;
	output wire Zero,Sign;
	output reg [31:0] out_data;
	
	initial begin
		out_data = 0;
	end
	
	assign Zero = (out_data ? 0 : 1);
	assign Sign = (out_data > 0 || in_data1==in_data2 )? 1:0;
	always @(ALUOp or in_data1 or in_data2) begin
		case (ALUOp)
			0: out_data = in_data1 + in_data2;
			1: out_data = in_data1 - in_data2;
			2: out_data = (in_data1 < in_data2 ? 1 : 0);
			4: out_data = in_data2 << in_data1;
			5: out_data = in_data1 | in_data2;
			6: out_data = in_data1 & in_data2;
			7: out_data = (in_data1 & ~in_data2) | (~in_data1 & in_data2);
			3:begin
			   if(in_data1<in_data2 && (in_data1[31] == in_data2[31]))
			       out_data = 1;
			   else if(in_data1[31] == 1 && in_data2[31] == 0)
			       out_data = 1;
			   else 
			       out_data = 0;
			end
			default: out_data = 0;
		endcase
	end

endmodule
