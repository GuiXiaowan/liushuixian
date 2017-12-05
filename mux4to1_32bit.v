`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:13 05/05/2017 
// Design Name: 
// Module Name:    mux4to1_32bit 
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
module mux4to1_32bit( 
	input [1:0]code, 
	input [31:0] a, 
	input [31:0] b,
	input [31:0] c,
	input [31:0] d,
	output [31:0] s
    );
	assign s = (code[1] == 0) ? ((code[0] == 0)? a : b) : ((code[0] == 0)? c : d);

endmodule
