`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:58:03 05/05/2017 
// Design Name: 
// Module Name:    SignExtend 
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
module SignExtend(
	input [15:0]in,
	output [31:0]out
    );
	assign out = {in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15:0]};

endmodule
