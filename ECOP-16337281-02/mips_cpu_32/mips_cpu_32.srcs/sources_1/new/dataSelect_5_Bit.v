module dataSelect_5_Bit(A, B, Ctrl, S);
  input [4:0] A, B; //��������
  input Ctrl; //�����ź�
  output [4:0] S;
  assign S = (Ctrl == 1'b0 ? A : B);
endmodule