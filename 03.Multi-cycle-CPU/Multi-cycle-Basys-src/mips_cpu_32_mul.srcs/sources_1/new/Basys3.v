`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/24 17:35:58
// Design Name: 
// Module Name: Basys3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Basys3(CLK,RST,Reset, sw15,sw14,bntr,scan,display_out);
input CLK,RST,Reset,sw15,sw14,bntr;
output  [3:0] scan;
output  [7:0] display_out; 
wire Zero, Sign;
wire [31:0] nowIns,nowPC, readData2, nextAddr, aluRe, writeData, readData1;
wire m_bntr,sb;
wire clkdiv;
wire [5:0] opcode;
CPU CPU(m_bntr,Reset,opcode,nowIns, readData1, readData2,aluRe,nowPC, nextAddr,sb, Sign,Zero, writeData);
Light Light(bntr,m_bntr,CLK);
clock clock(CLK,clkdiv);Display Display(clkdiv,RST,{sw15,sw14},nowPC[7:0],nextAddr[7:0],nowIns[25:21], readData1,nowIns[20:16],readData2,aluRe,writeData,scan,display_out);

endmodule
