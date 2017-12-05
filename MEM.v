`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:28:52 10/25/2017 
// Design Name: 
// Module Name:    MEM 
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
module MEM(
	input [31:0]clkd,
	input WriteReg,MemToReg,WriteMem,MemRead,Branch,
	input [31:0]pcplusimm,
	input zero,
	input [31:0]oALU,
	input [31:0]Bdat,
	input [4:0]regW,
	output reg WriteRegout,
	output reg MemToRegout,
	output reg spco,//branch&zero to PC
	output reg [31:0]pcplusimmout,//to PC mux 1
	output reg [31:0]Wdat,//dataout
	output reg [31:0]oALUout,//ALUresult
	output reg [4:0]regWout//mux rd rt to ID ND
    );
	 assign  spc = zero & Branch;
	 wire [31:0]oMemory;
	 memory m1(clkd[0] & (WriteMem | MemRead), WriteMem, oALU[7:0], Bdat,oMemory);//
	always @ (posedge clkd[3])begin
		WriteRegout<=WriteReg;
		MemToRegout<=MemToReg;
		spco<=spc;
		pcplusimmout<=pcplusimm;//to PC mux 1
		Wdat<=oMemory;//dataout
		oALUout<=oALU;//ALUresult
		regWout<=regW;
	end
	initial begin 
		WriteRegout<=0;
		MemToRegout<=0;
		spco<=0;
		pcplusimmout<=0;//to PC mux 1
		Wdat<=0;//dataout
		oALUout<=0;//ALUresult
		regWout<=0;
	end
	

endmodule
