`timescale 1ns / 1ps
module choose_dis(
    input clock,
    input [7:0] nowpc,
    input [7:0] nextpc,
    input [7:0] rs_add,
    input [7:0] rs_data,
    input [7:0] rt_add,
    input [7:0] rt_data,
    input [7:0] alu_out,
    input [7:0] db_data,
    input sw14,
    input sw15,
    output [3:0] xianshing,
    output [7:0] xianshism
    );
    
reg [3:0]display_1,display_2,display_3,display_4,which_guan;  
wire [3:0]display_1_,display_2_,display_3_,display_4_,which_guan_;  
reg [1:0]count;
initial count = 0;
always@(posedge clock) begin
case(count%4)//显示哪一根数码管
    2'b00: which_guan = 4'b0111;
    2'b01: which_guan = 4'b1011;
    2'b10: which_guan = 4'b1101;
    2'b11: which_guan = 4'b1110;
    default: which_guan = 4'b1111;
endcase
count=count+1;
end


assign display_4_ = display_4;
assign display_1_ = display_1;
assign display_2_ = display_2;
assign display_3_ = display_3;
assign which_guan_ = which_guan;
assign xianshing = which_guan;

SegLED_7 seg_1(display_1_display_2_,display_3_,display_4_,which_guan_,xianshism);

  
    always@(posedge clock) begin
        case( {sw15,sw14} )
            2'b00: 
            begin 
                  display_1 = nowpc[7:4];
                  display_2 = nowpc[3:0];
                  display_3 = nextpc[7:4];
                  display_4 = nextpc[3:0];
            end
            2'b01:
            begin
            display_1 = rs_add[7:4];
            display_2 = rs_add[3:0];
            display_3 = rs_data[7:4];
            display_4 = rs_data[3:0];    
            end        
            2'b10:
            begin
            display_1 = rt_add[7:4];
            display_2 = rt_add[3:0];
            display_3 = rt_data[7:4];
            display_4 = rt_data[3:0];                
            end
            2'b11:
            begin
            display_1 = alu_out[7:4];
            display_2 = alu_out[3:0];
            display_3 = db_data[7:4];
            display_4 = db_data[3:0];                
            end
    endcase
    end
    
endmodule
