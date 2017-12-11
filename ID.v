`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:24:16 10/25/2017 
// Design Name: 
// Module Name:    ID 
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
module ID(
	input [15:11]s,
	input rst,
	input segRegDat,
	input [31:0]clkd,
	input	[31:0]PC,
	input [31:0]Instru,
	input oWriteRegout,
	input [31:0]Wdat,
	output RegDst,Jump,ALUsrc,MemtoReg,MemRead,MemWrite,Branch,RegWrite,[1:0]ALUop,
	output reg [31:0]PCout,
	output reg [31:0]Aout,
	output reg [31:0]Bout,
	output reg [31:0]imm,
	output reg [4:0]rd,
	output reg [4:0]rt,
	output reg [5:0]Func
    );
	//wire [31:0]Wdat;
	wire [31:0]Adat;
	wire [31:0]Bdat;
	wire [31:0]showdat;//ÐèÒª²¹È«
	//wire [31:0]oWriteRegout;
	controlunit ctr(Instru[31:26],RegDst,Jump,ALUsrc,MemtoReg,MemRead,MemWrite,Branch,RegWrite,ALUop[1:0]);
	RegFile RegFile(s[15:11], clkd[0], rst, Instru[25:21], Instru[20:16], Instru[15:11], Wdat, Adat, Bdat, oWriteRegout,showdat);
	sctr stallctr();
	always @ (posedge clkd)begin
		PCout<=PC;
		Aout<=Adat;
		Bout<=Bdat;
		imm<={16'b0,Instru[15:0]};
		rd<=Instru[15:11];
		rt<=Instru[20:16];
		Func<=Instru[5:0];
	end
	initial begin 
		PCout<=0;
		Aout<=0;
		Bout<=0;
		imm<=0;
		rd<=0;
		rt<=0;
		Func<=0;
	end
	
endmodule
