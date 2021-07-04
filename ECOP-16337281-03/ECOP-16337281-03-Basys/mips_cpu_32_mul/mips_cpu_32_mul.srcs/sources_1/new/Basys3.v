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
// MIPS_CPU32( CLK,RST,Reset ,nowIns,nowPC, nextAddr, ExtendData, RAMDataOut, aluOp, Sign,Zero, pcSrc, insToCtrl, Jump_out, aluRe, writeData, readData1, readData2); 
wire m_bntr,sb;
wire clkdiv;
wire [5:0] opcode;
wire Zero, Sign;
//wire [1:0] pcSrc;
wire [31:0] nowIns,nowPC, readData2, nextAddr, aluRe, writeData, readData1;
//wire [2:0] aluOp;
Button Button(bntr,m_bntr,CLK);
CLK_div CLK_div(CLK,clkdiv);
Top Top(m_bntr,Reset,opcode,nowIns, readData1, readData2,aluRe,nowPC, nextAddr,sb, Sign,Zero, writeData);
Display_out Display_out(clkdiv,RST,{sw15,sw14},nowPC[7:0],nextAddr[7:0],nowIns[25:21], readData1,nowIns[20:16],readData2,aluRe,writeData,scan,display_out);

endmodule
