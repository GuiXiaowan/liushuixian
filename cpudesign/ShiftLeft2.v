`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:56:38 05/05/2017 
// Design Name: 
// Module Name:    ShiftLeft2 
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
module ShiftLeft2(
	input [31:0]in,
	output [31:0]out
    );
	assign out = {in[29:0],2'b0};

endmodule
