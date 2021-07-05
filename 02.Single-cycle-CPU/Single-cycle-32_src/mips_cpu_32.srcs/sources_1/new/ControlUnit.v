`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/19 10:13:18
// Design Name: 
// Module Name: control_unit
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


module control_unit(decode, zero,sign ,PCWre,ALUSrcA,ALUSrcB,RegWre,RegDst,IsMemRW,ExtSel,ALUOp,PCSrc,nRD,nWR,DBData );
input [5:0] decode;
input zero;
input sign;
output reg PCWre;
output reg ALUSrcA;
output reg ALUSrcB;
output reg RegWre;
output reg RegDst;
output reg IsMemRW;
output reg ExtSel;
output reg [2:0] ALUOp;
output reg [1:0] PCSrc;
output reg nRD;
output reg nWR;
output reg DBData;

  initial   begin
        PCWre = 1;
        IsMemRW = 1;
        RegDst = 1;
        ALUSrcA = 0;
        ALUSrcB = 0;
        RegWre = 0;
        ExtSel = 0;
        ALUOp = 'b000;
        PCSrc = 'b00;
        nRD = 0;
        nWR = 0;
        DBData = 0;
  end

always@(decode or zero or sign) begin // 解决跳转相等时候跳转的bug（也是竞争与冒险问题），加多一个zero变化时候也发出控制信号
       case( decode ) 
        6'b000000:
        begin   //以下都是控制单元产生的控制信号
          PCWre = 1;
          ALUSrcA = 0;
          ALUSrcB = 0;
          RegWre = 1;
          RegDst = 1;
          IsMemRW = 1;
          ExtSel = 0;
          ALUOp = 000;
          PCSrc = 00;
          nRD = 1;
          nWR = 1;
          DBData = 0;
        end
        6'b000001:
        begin   //以下都是控制单元产生的控制信号
          PCWre = 1;
          ALUSrcA = 0;
          ALUSrcB = 1;
          RegWre = 1;
          RegDst = 0;
          IsMemRW = 1;
          ExtSel = 1;
          ALUOp = 000;
          PCSrc = 00;
          nRD = 1;
          nWR = 1;
          DBData = 0;
        end
        6'b010000:
        begin   //以下都是控制单元产生的控制信号
          PCWre = 1;
          ALUSrcA = 0;
          ALUSrcB = 1;
          RegWre = 1;
          RegDst = 0;
          IsMemRW = 1;
          ExtSel = 0;
          ALUOp = 011;
          PCSrc = 00;
          nRD = 1;
          nWR = 1;
          DBData = 0;
        end
        6'b000010:
        begin   //以下都是控制单元产生的控制信号
          PCWre = 1;
          ALUSrcA = 0;
          ALUSrcB = 0;
          RegWre = 1;
          RegDst = 1;
          IsMemRW = 1;
          ExtSel = 0;
          ALUOp = 001;
          PCSrc = 00;
          nRD = 1;
          nWR = 1;
          DBData = 0;
        end
        6'b010001:
        begin   //以下都是控制单元产生的控制信号
          PCWre = 1;
          ALUSrcA = 0;
          ALUSrcB = 0;
          RegWre = 1;
          RegDst = 1;
          IsMemRW = 1;
          ExtSel = 0;
          ALUOp = 100;
          PCSrc = 00;
          nRD = 1;
          nWR = 1;
          DBData = 0;
        end
        6'b010010:
        begin   //以下都是控制单元产生的控制信号
          PCWre = 1;
          ALUSrcA = 0;
          ALUSrcB = 0;
          RegWre = 1;
          RegDst = 1;
          IsMemRW = 1;
          ExtSel = 0;
          ALUOp = 011;
          PCSrc = 00;
          nRD = 1;
          nWR = 1;
          DBData = 0;
        end
        6'b011000:
        begin   //以下都是控制单元产生的控制信号
          PCWre = 1;
          ALUSrcA = 1;
          ALUSrcB = 0;
          RegWre = 1;
          RegDst = 1;
          IsMemRW = 1;
          ExtSel = 0;
          ALUOp = 010;
          PCSrc = 00;
          nRD = 1;
          nWR = 1;
          DBData = 0;
        end
        6'b110001:
        begin   //以下都是控制单元产生的控制信号
          PCWre = 1;
          ALUSrcA = 0;
          ALUSrcB = 0;
          RegWre = 0;
          RegDst = 0;
          IsMemRW = 1;
          ExtSel = 1;
          ALUOp = 001;
          if(zero == 0 )
              PCSrc = 01;
          else
              PCSrc = 00;
          nRD = 1;
          nWR = 1;
          DBData = 0;
        end
        6'b011100:
        begin   //以下都是控制单元产生的控制信号
          PCWre = 1;
          ALUSrcA = 0;
          ALUSrcB = 0;
          RegWre = 1;
          RegDst = 1;
          IsMemRW = 1;
          ExtSel = 0;
          ALUOp = 110;
          PCSrc = 00;
          nRD = 1;
          nWR = 1;
          DBData = 0;
        end
        6'b110000:
        begin   //以下都是控制单元产生的控制信号
          PCWre = 1;
          ALUSrcA = 0;
          ALUSrcB = 0;
          RegWre = 0;
          RegDst = 0;
          IsMemRW = 1;
          ExtSel = 1;
          ALUOp = 001;
          if(zero == 1)
               PCSrc = 01;
          else
               PCSrc = 00;
          nRD = 1;
          nWR = 1;
          DBData = 0;
        end
        6'b100110:
        begin   //以下都是控制单元产生的控制信号
          PCWre = 1;
          ALUSrcA = 0;
          ALUSrcB = 1;
          RegWre = 0;
          RegDst = 0;
          IsMemRW = 1;
          ExtSel = 1;
          ALUOp = 000;
          PCSrc = 00;
          nRD = 1;
          nWR = 0;
          DBData = 0;
        end
        6'b100111:
        begin
          PCWre = 1;
          ALUSrcA = 0;
          ALUSrcB = 1;
          RegWre = 1;
          RegDst = 0;
          IsMemRW = 1;
          ExtSel = 1;
          ALUOp = 000;
          PCSrc = 00;
          nRD = 0;
          nWR = 1;
          DBData = 1;        
        end
        6'b110010:
        begin
          PCWre = 1;
          ALUSrcA = 0;
          ALUSrcB = 0;
          RegWre = 0;
          RegDst = 0;
          IsMemRW = 1;
          ExtSel = 1;
          ALUOp = 110;
          if(sign == 0)
             PCSrc = 01;
          else
             PCSrc = 00;
          nRD = 1;
          nWR = 1;
          DBData = 0;        
        end
        6'b111111:
        begin
          PCWre = 0;
          ALUSrcA = 0;
          ALUSrcB = 0;
          RegWre = 0;
          RegDst = 0;
          IsMemRW = 1;
          ExtSel = 0;
          ALUOp = 000;
          PCSrc = 00;
          nRD = 1;
          nWR = 1;
          DBData = 0;
        end
        6'b111000:
        begin
          PCWre = 1;
          ALUSrcA = 0;
          ALUSrcB = 0;
          RegWre = 0;
          RegDst = 0;
          IsMemRW = 1;
          ExtSel = 0;
          ALUOp = 000;
          PCSrc = 10;
          nRD = 1;
          nWR = 1;
          DBData = 0;
        end
    endcase
  end
endmodule