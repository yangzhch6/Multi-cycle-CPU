`timescale 1ns / 1ps

// ��52��ʱ�ӷ�Ƶ��
module clock (
input wire mclk,
output wire clk48
);
reg [24:0] q;
// 25 λ������
always @ (posedge mclk )
begin
q <= q + 1;
end
assign clk48 = q[18]; // 47.7 Hz
endmodule