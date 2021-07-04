`timescale 1ns / 1ps

module dataSelect_321(PCSrc,A,B,C,out);
input [1:0]PCSrc;
input [31:0]A;
input [31:0]B;
input [31:0]C;
output reg [31:0]out;
always@(*)  begin
      case(PCSrc)
      'b00:
      begin
         out = A;
      end
      'b01:
      begin
         out = B;
      end
      'b10:
      begin
         out = C;
      end
      endcase 
    end
endmodule
