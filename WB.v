`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:12:01 10/26/2017 
// Design Name: 
// Module Name:    WB 
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
module WB(
	input [31:0]clkd,
	input WriteReg,
	input MemToReg,
	input [31:0]oMemory,
	input [31:0]oALU,
	input [4:0]regW,
	output reg WriteRegout,
	output reg [4:0]regWout,
	output reg [31:0]Wdatout
    );
	 wire [31:0]Wdat;
	 mux1_2_32bit memtoreg(MemToReg, oALU, oMemory, Wdat);
	always @ (posedge clkd[3])begin
		WriteRegout<=WriteReg;
		regWout<=regW;
		Wdatout<=Wdat;
	end
	initial begin 
		WriteRegout = 0;
		regWout=0;
		Wdatout=0;
	end

endmodule
