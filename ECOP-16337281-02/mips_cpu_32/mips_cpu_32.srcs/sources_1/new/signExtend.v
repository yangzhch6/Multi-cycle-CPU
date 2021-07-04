module signExtend(i_num, extSel, o_num);
  input wire[15:0] i_num;
  input wire extSel;
  output reg[31:0] o_num;
  initial begin
    o_num = 0;
  end
  always @(i_num or extSel) begin
    if (extSel) begin
      o_num <= {{16{i_num[15]}}, i_num[15:0]};
    end
    else begin
        o_num[15:0]<=i_num[15:0];
    end
  end
endmodule