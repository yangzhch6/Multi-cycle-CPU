
//////////////////////////////////////////////////////////////////////////////////
module pc(clk, i_pc, pcWire, reset, o_pc);
  input wire clk, pcWire, reset;
  input wire [31:0] i_pc;
  output reg [31:0] o_pc;
  always @(posedge clk) begin
    if (reset) begin
      o_pc = 0;
    end else if (pcWire) begin
      o_pc = i_pc;
    end else if (!pcWire) begin //Í£»ú
        o_pc = o_pc;
     end
  end
endmodule