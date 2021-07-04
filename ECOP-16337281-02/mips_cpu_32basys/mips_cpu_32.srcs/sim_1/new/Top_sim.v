`timescale 1ns / 1ps

module Top_sim();
    //input
    reg CLK;
    reg RST;
    reg Reset;
    //output
   
    wire [31:0] nowIns,nowPC, nextAddr, aluRe, writeData, readData1, readData2, ExtendData, RAMDataOut,Jump_out;
    wire [2:0] aluOp;
    wire [5:0] insToCtrl;
    wire Zero, Sign;
    wire [1:0] pcSrc;
    
    Top uut(
    .CLK(CLK),
    .RST(RST),
    .Reset(Reset),
    .nowIns(nowIns),
    .nowPC(nowPC),
    .nextAddr(nextAddr),
    .aluRe(aluRe),
    .writeData(writeData),
    .readData1(readData1),
    .readData2(readData2),
    .ExtendData(ExtendData),
    .RAMDataOut(RAMDataOut),
    .Jump_out(Jump_out),
    .aluOp(aluOp),
    .insToCtrl(insToCtrl),
    .Zero(Zero),
    .Sign(Sign),
    .pcSrc(pcSrc)
    );
    always #5 CLK=~CLK;
    initial begin
        CLK = 1;
        RST = 1;
        Reset = 1;
        #10
        Reset = 0;
    end
   
endmodule
