`timescale 1ns / 1ps
module Display(
    input wire clk190,
    input wire rst,
    input wire [1:0] SW_in,
    input wire [7:0] curPC,
    input wire [7:0] nextPC,
    input wire [4:0] rs,
    input wire [31:0] rs_data,
    input wire [4:0] rt,
    input wire [31:0] rt_data,
    input wire [31:0] Result,
    input wire [31:0]WriteData,
    output reg [3:0] an,
    output wire [7:0] a_to_g
    );
    reg [3:0] BCD;
    reg [15:0] data;
    
    always @(posedge clk190 or negedge rst) 
    begin
       if(rst == 0) begin
            data <= 16'hffff;
        end
      else
                 case(SW_in)
                2'b00:begin                 
                   data <= {curPC[7:0], nextPC[7:0]}; end
               2'b01:begin
                  data <= {3'b000, rs, rs_data[7:0]}; end
              2'b10:begin
                   data <= {3'b000, rt, rt_data[7:0]}; end
               2'b11:begin
                   data <= {Result[7:0], WriteData[7:0]}; end
            endcase
    end
      
    always@(posedge clk190)
    begin
        case(an)
            4'b0111:begin 
               an <= 4'b1011;
               BCD[3:0] <= data[11:8]; end
            4'b1011:begin
               an <= 4'b1101;
               BCD[3:0] <= data[7:4]; end
             4'b1101:begin
               an <= 4'b1110;
               BCD <= data[3:0]; end
             4'b1110:begin
               an <= 4'b0111;
               BCD <= data[15:12];end
             default:begin
               an <= 4'b0111;
               BCD <= data[15:12];end
          endcase
        end
        led_7 led_7(BCD,a_to_g);
     
endmodule
