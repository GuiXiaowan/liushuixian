`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/06 17:23:16
// Design Name: 
// Module Name: controunit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module controlunit( 
    input [5:0] i,
    output RegDst,Jump,ALUsrc,MemtoReg,MemRead,MemWrite,Branch,RegWrite,
    output [1:0]ALUop
    );
    assign RegDst   =   ~i[5] & ~i[4] & ~i[3] & ~i[2] & ~i[1] & ~i[0];  //R
    assign Jump     =   ~i[5] & ~i[4] & ~i[3] & ~i[2] &  i[1] & ~i[0];  //J
    assign ALUsrc   =   (i[5] & ~i[4] &  i[3] & ~i[2] &  i[1] &  i[0])| // SW
                        (i[5] & ~i[4] & ~i[3] & ~i[2] &  i[1] &  i[0]); //LW
    assign ALUop[1] =   ~i[5] & ~i[4] & ~i[3] & ~i[2] & ~i[1] & ~i[0];  //R
    assign ALUop[0] =  ~(i[5] & ~i[4] &  i[3] & ~i[2] &  i[1] &  i[0]) & //SW:0
                       ~(i[5] & ~i[4] & ~i[3] & ~i[2] &  i[1] &  i[0]) & //LW:0
                      (~i[5] & ~i[4] & ~i[3] &  i[2] & ~i[1] & ~i[0]); //BEQ:1          
    assign MemtoReg =    i[5] & ~i[4] & ~i[3] & ~i[2] &  i[1] &  i[0]; // LW 
    assign MemWrite =    i[5] & ~i[4] &  i[3] & ~i[2] &  i[1] &  i[0]; // SW
    assign MemRead  =    i[5] & ~i[4] & ~i[3] & ~i[2] &  i[1] &  i[0]; // LW
    assign Branch   =   ~i[5] & ~i[4] & ~i[3] &  i[2] & ~i[1] & ~i[0]; //BEQ
    assign RegWrite =   (i[5] & ~i[4] & ~i[3] & ~i[2] &  i[1] &  i[0])| // LW
                       (~i[5] & ~i[4] & ~i[3] & ~i[2] & ~i[1] & ~i[0]); //R
    
endmodule
