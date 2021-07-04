`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:28:55 12/08/2016 
// Design Name: 
// Module Name:    DataMem 
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
module DataMem(in_Data, Addr, CLK, RD, WR, out_Data);

	input wire [31:0] in_Data, Addr;
	input wire RD, WR, CLK;
	output reg [31:0] out_Data;
	
	reg [7:0] DataMemory [0:63];
	
	initial begin
		out_Data = 0;
	end
	
	always @(RD or WR) begin 
		if (WR == 1) begin
			DataMemory[Addr + 0] = in_Data[31:24];
			DataMemory[Addr + 1] = in_Data[23:16];
			DataMemory[Addr + 2] = in_Data[15:8];
			DataMemory[Addr + 3] = in_Data[7:0];
		end else if (RD == 1) begin
			out_Data[31:24] = DataMemory[Addr + 0];
			out_Data[23:16] = DataMemory[Addr + 1];
			out_Data[15:8] = DataMemory[Addr + 2];
			out_Data[7:0] = DataMemory[Addr + 3];
		end
	end
	
	
endmodule
