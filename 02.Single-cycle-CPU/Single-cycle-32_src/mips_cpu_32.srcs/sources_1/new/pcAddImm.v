module pcAddImm(now_pc, addNum, o_pc);
  input [31:0] now_pc, addNum;
  output [31:0] o_pc;
  assign o_pc = now_pc + (addNum * 4); //×óÒÆÁ½Î»
endmodule