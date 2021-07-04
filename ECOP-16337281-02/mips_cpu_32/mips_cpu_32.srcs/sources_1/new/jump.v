
module jump(
    pc_head4,addr_last26,jump_out
    );
    input [3:0] pc_head4;
    input [25:0] addr_last26;
    output [31:0] jump_out;
    assign jump_out[31:0] = {pc_head4[3:0],addr_last26[25:0],2'b00};
endmodule
