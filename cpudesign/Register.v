`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:01:29 05/05/2017 
// Design Name: 
// Module Name:    Register 
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
module Register(
	input clk,RegWrite,
	input [31:0] idat,
	output reg [31:0] odat
    );
	reg[31:0]kdat;
	always @(idat)begin
		if(RegWrite) kdat <= idat;
	end
	
	always @(posedge clk) begin
		odat <= kdat;
	end
	
endmodule
