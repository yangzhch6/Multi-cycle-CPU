module dataSelect_32_Bit(A, B, Ctrl, S);
  input [31:0] A, B; //��������
  input Ctrl; //�����ź�
  output [31:0] S;
  assign S = (Ctrl == 1'b0 ? A : B);
endmodule