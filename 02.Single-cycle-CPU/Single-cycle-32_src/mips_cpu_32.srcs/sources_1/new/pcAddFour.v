
//////////////////////////////////////////////////////////////////////////////////
module pcAddFour(i_pc, o_pc);
  input wire [31:0] i_pc; //2^5��ָ���ַ 32��ָ���ȡ
  output wire [31:0] o_pc;
  assign o_pc = i_pc + 4;
endmodule