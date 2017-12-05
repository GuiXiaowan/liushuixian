`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:07:28 05/05/2017 
// Design Name: 
// Module Name:    ALUwhole 
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
module ALUwhole( 
	input [1:0] ALUop,
	input [5:0] Fuc,
	input [31:0] Adat,
	input [31:0] Bdat,
	output [31:0] Result,
	output zero,carryout,overflow
    );
	 wire [2:0] ALUoper;
	ALUCtr ctrl(ALUop, Fuc, ALUoper);
	ALU	 rALU(Adat, Bdat,ALUoper, Result, zero, carryout, overflow);
endmodule
