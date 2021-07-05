`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:43:29 12/08/2016 
// Design Name: 
// Module Name:    RegFile 
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
module RegFile(rs, rt, WriteReg, RegWre, CLK, WriteData, ReadData_1, ReadData_2);
	input wire [4:0] rs, rt, WriteReg;
	input wire [31:0] WriteData;
	input wire CLK, RegWre;
	output wire [31:0] ReadData_1, ReadData_2;
	reg [31:0] register [1:31];
	
	integer i;  
    initial begin  
        for (i = 1 ; i < 32; i = i+1)   
              register[i] = 0;  
    end
	
	assign ReadData_1 = (rs == 0) ? 0 : register[rs];
	assign ReadData_2 = (rt == 0) ? 0 : register[rt];
	
	always @(negedge CLK) begin
		if ((WriteReg != 0) && (RegWre == 1))
			register[WriteReg] = WriteData;
	end
endmodule
