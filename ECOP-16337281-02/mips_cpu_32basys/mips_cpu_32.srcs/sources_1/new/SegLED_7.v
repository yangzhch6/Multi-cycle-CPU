`timescale 1ns / 1ps
module SegLED_7(
input [3:0] display_data1,display_data2,display_data3,display_data4,which_guan,
output reg [7:0] dispcode
);
reg [3:0]display_data;
always @(which_guan)begin
case(which_guan)
    4'b0111: display_data = display_data1;
    4'b1011: display_data = display_data2;
    4'b1101: display_data = display_data3;
    4'b1110: display_data = display_data4;
endcase
end

always @( display_data ) begin
    case (display_data)
        4'b0000 : dispcode = 8'b1100_0000; //0 £ª'0'- ¡¡µ∆£¨'1'- œ®µ∆
        4'b0001 : dispcode = 8'b1111_1001; //1
        4'b0010 : dispcode = 8'b1010_0100; //2
        4'b0011 : dispcode = 8'b1011_0000; //3
        4'b0100 : dispcode = 8'b1001_1001; //4
        4'b0101 : dispcode = 8'b1001_0010; //5
        4'b0110 : dispcode = 8'b1000_0010; //6
        4'b0111 : dispcode = 8'b1101_1000; //7
        4'b1000 : dispcode = 8'b1000_0000; //8
        4'b1001 : dispcode = 8'b1001_0000; //9
        4'b1010 : dispcode = 8'b1000_1000; //A
        4'b1011 : dispcode = 8'b1000_0011; //b
        4'b1100 : dispcode = 8'b1100_0110; //C
        4'b1101 : dispcode = 8'b1010_0001; //d
        4'b1110 : dispcode = 8'b1000_0110; //E
        4'b1111 : dispcode = 8'b1000_1110; //F
        default : dispcode = 8'b0000_0000; // ≤ª¡¡
        endcase
    end
endmodule