`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:48:37 10/25/2017 
// Design Name: 
// Module Name:    EX 
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
module EX(
	input [31:0]clkd,
	input RegDst,Jump,ALUsrc,MemtoReg,MemRead,MemWrite,Branch,RegWrite,[1:0]ALUop,
	input [5:0]Fuc,
	input [31:0]PCplus4,
	input [31:0]Adat,[31:0]Bdat,
	input [31:0]imm,
	input [4:0]rd,[4:0]rt,
	output reg oMemtoReg,oMemWrite,oMemRead,oBranch,oRegWrite,
	output reg [31:0]opcplusimediate,
	output reg ozero,
	output reg [31:0]ooALU,
	output reg [31:0]oBdat,
	output reg [4:0]oregW
    );
	 wire [1:0]uless;
	 wire [31:0]pcplusimediate;
	 wire [31:0]BdatALUin;
	 wire [31:0]oALU;
	 wire [4:0]regW;
	 adder_32bit add32(PCplus4, imm, 1'b0, pcplusimediate, uless[1],uless[0]);
	 mux1_2_32bit alusrc(ALUsrc, Bdat, imm,BdatALUin);
	 ALUwhole alu(ALUop,Fuc[5:0],Adat,BdatALUin,oALU, zero, carryout, overflow);
	 mux1_2_5bit regdst(RegDst,rt,rd,regW);
	
	always @ (posedge clkd[0])begin
		oMemtoReg<=MemtoReg;
		oMemWrite<=MemWrite;
		oBranch<=Branch;
		oRegWrite<=RegWrite;
		opcplusimediate<=pcplusimediate;
		ozero<=zero;
		ooALU<=oALU;
		oBdat<=Bdat;
		oregW<=regW;
	end
	initial begin 
		oMemtoReg<=0;
		oMemWrite<=0;
		oBranch<=0;
		oRegWrite<=0;
		opcplusimediate<=0;
		ozero<=0;
		ooALU<=0;
		oBdat<=0;
		oregW<=0;
	end



endmodule
