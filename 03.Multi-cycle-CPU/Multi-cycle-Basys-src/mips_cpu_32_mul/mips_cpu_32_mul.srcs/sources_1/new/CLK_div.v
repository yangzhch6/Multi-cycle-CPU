`timescale 1ns / 1ps

// ��52��ʱ�ӷ�Ƶ��
module CLK_div (
input wire mclk,
output wire clk190
);
reg [24:0] q;
// 25 λ������
always @ (posedge mclk )
begin
q <= q + 1;
end      
assign clk190 = q[18]; // 190 Hz
endmodule