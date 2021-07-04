`timescale 1ns / 1ps
module Button( in_key,out_key,clk);  
 input in_key,clk;  
 output out_key;  
 reg delay1,delay2,delay3;  
 always@( posedge clk)
    begin  
        delay1  <= in_key;   
        delay2  <= delay1;  
        delay3  <= delay2;    
    end   
assign out_key = delay1&delay2&delay3;     
endmodule  
