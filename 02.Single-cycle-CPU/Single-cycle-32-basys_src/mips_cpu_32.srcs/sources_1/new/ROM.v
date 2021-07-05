`timescale 1ns/10ps
module ROM (idataout, addr, InsMemRW);
    input InsMemRW;
    input [31:0] addr; //2^5条指令地址 32条指令读取
    output reg [31:0] idataout;
    reg [7:0] mem [0:127]; //最大读取32条指令
    initial begin
        $readmemb("C:/Users/DELL/Desktop/mips_cpu_32basys/rom_data.coe", mem);
          idataout = 0;
     end
    always @( addr or InsMemRW)
        if (InsMemRW) begin
          idataout[31:24] = mem[addr];
          idataout[23:16] = mem[addr+1];
          idataout[15:8] = mem[addr+2];
          idataout[7:0] = mem[addr+3];
        end
endmodule