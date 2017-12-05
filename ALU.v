`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:02 05/05/2017 
// Design Name: 
// Module Name:    ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU(Adat, Bdat, ALUoper, Result, zero, carryout, overflow
    );
input [31:0]Adat;
input [31:0]Bdat;
input[2:0]ALUoper;
output [31:0]Result;

output zero,carryout,overflow;

wire slt, caryt, overf;
wire [31:0] andt; 
wire [31:0] orxt;
wire [31:0] addsub;

assign andt = Adat & Bdat; // and
assign orxt = Adat | Bdat; // or
adder_32bit add32(Adat, Bdat, ALUoper[2], addsub, caryt, overf); // add/sub
wire cyt;
xor(cyt, caryt, ALUoper[2]);
xor(slt, overf, addsub[31]);


mux4to1_32bit mux4_1(ALUoper[1:0], andt, orxt, addsub, {31'h0, slt},Result);


assign carryout = ALUoper[1] & ~ALUoper[0] & cyt;
assign overflow = ALUoper[1] & ~ALUoper[0] & overflow;
assign zero = ~(Result[0] | Result[1] | Result[2]| Result[3]
| Result[4]| Result[5]| Result[6]| Result[7]
| Result[8]| Result[9]| Result[10]| Result[11]
| Result[12]| Result[13]| Result[14]| Result[15]
| Result[16]| Result[17]| Result[18]| Result[19]
| Result[20]| Result[21]| Result[22]| Result[23]
| Result[24]| Result[25]| Result[26]| Result[27]
| Result[28]| Result[29]| Result[30]| Result[31] );

endmodule
