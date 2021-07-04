module dataSelect_5_Bit(A, B, Ctrl, S);
  input [4:0] A, B; //两个数据
  input Ctrl; //控制信号
  output [4:0] S;
  assign S = (Ctrl == 1'b0 ? A : B);
endmodule