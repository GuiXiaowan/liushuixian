`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:52:51 05/05/2017 
// Design Name: 
// Module Name:    ALUCtr 
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
module ALUCtr(ALUop,Func,ALUoper
    );
	input [1:0]ALUop;
	input [5:0]Func;
	output [2:0] ALUoper;
	
	wire t1,t2;
	assign t1 = Func[0] | Func[3];
	assign t2 = Func[1] & ALUop[1];
	assign ALUoper[2] = t2 | (~ALUop[1] & ALUop[0]);
	assign ALUoper[1] = ~Func[2] | ~ALUop[1];
	assign ALUoper[0] = t1 & ALUop[1];

endmodule
