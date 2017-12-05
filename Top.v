`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:20:40 05/05/2017 
// Design Name: 
// Module Name:    Top 
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


module Top(
	 input clk, //DEBUG
	 //input clk200P,clk200N,
	 input [15:0]s,
	 input buzzer,
	 output SEGCLK,
	 output SEGCLR,
	 output SEGDT,
	 output SEGEN,
	 output [31:0] clkd_out,
	 output [31:0] PC_out,
	 output [31:0] instr_out
	 
	);
	 assign buzzer = 1'b1;
	 reg [31:0] clkd;
	 
	 //wire clk;
	 //clock
	 //clk_diff cl(clk200P,clk200N,1'b0,clkd,clk);
	  
	 //DEBUG
	 initial begin
		clkd=0;
	 end
	 always @ (posedge clk ) begin 
		    //if (rst) clkd <= 0; 
		    //else clkd <= clkd + 1'b1; 
			 clkd <= clkd + 1'b1; 
	 end
	 //DEBUG/
	 
	 wire rst;//reset
	 assign rst = s[1];
	 //IF
	 wire [31:0]PC;
	 //DEBUG
	 assign clkd_out = clkd;
	 assign PC_out = PC;
	 assign instr_out = InstruOut;
	 wire [31:0]InstruOut;
	 //ID
	 wire RegDst,Jump,ALUsrc,MemtoReg,MemRead,MemWrite,Branch,RegWrite;
    wire [1:0]ALUop;
	 wire [31:0]PCout;
	 wire [31:0] Aout;
    wire [31:0] Bout;
    wire [31:0] imm;
	 wire [4:0] rd;
	 wire [4:0] rt;
	 wire [5:0] oFuc;
	 //EX
	 wire oMemtoReg,oMemWrite,oBranch,oRegWrite;
	 wire [31:0]opcplusimediate;
	 wire ozero;
	 wire [31:0]ooALU;
	 wire [31:0]oBdat;
	 wire [4:0]oregW;
	 //MEM
    wire WriteRegout,MemToRegout,spc;
	 wire [31:0]pcplusimm;
	 wire [31:0]Wdat;
	 wire [31:0]oALUout;
	 wire [4:0]regWout;
	 //WB
	 wire oWriteRegout;
	 wire [4:0]oregWout;
	 wire [31:0]Wdatout;
//	 initial begin 
//		spc = 0; 
//	 end
	 
	 IF IF(clkd[31:0],spc,pcplusimm[31:0],
		   PC[31:0],InstruOut[31:0]);
	 ID ID(s[15:11],rst,segRegDat,clkd[31:0],PC[31:0],InstruOut[31:0],oWriteRegout,Wdatout[31:0],
	       RegDst,Jump,ALUsrc,MemtoReg,MemRead,MemWrite,Branch,RegWrite,ALUop[1:0],PCout[31:0],Aout[31:0],Bout[31:0],imm[31:0],rd[4:0],rt[4:0],oFuc[5:0]);
	 EX EX(clkd,RegDst,Jump,ALUsrc,MemtoReg,MemRead,MemWrite,Branch,RegWrite,ALUop[1:0],oFuc,PCout,Aout[31:0],Bout[31:0],imm[31:0],rd[4:0],rt[4:0],
		    oMemtoReg,oMemWrite,oMemrRead,oBranch,oRegWrite,opcplusimediate[31:0],ozero,ooALU[31:0],oBdat[31:0],oregW[4:0]);
	 MEM MEM(clkd[31:0],oRegWrite,oMemtoReg,oMemWrite,oMemrRead,oBranch,opcplusimediate[31:0],ozero,ooALU[31:0],oBdat[31:0],oregW[4:0],
			   WriteRegout,MemToRegout,spc,pcplusimm[31:0],Wdat[31:0],oALUout[31:0],regWout[4:0]);
	 WB WB(clkd,WriteRegout,MemToRegout,Wdat,oALUout,regWout,
		    oWriteRegout,oregWout,Wdatout);
	 
	
endmodule




/*
module Top(
    
	 input clk200P,clk200N,
	 input [15:0]s,
	 input buzzer,
	 output SEGCLK,
	 output SEGCLR,
	 output SEGDT,
	 output SEGEN
	 );
    // 	 assign segRegDat2 = segRegDat;
	 //assign regW2 = regW;
	 //assign Wdat2 = Wdat;
	 //assign RegWrite2 = RegWrite;
	 assign buzzer = 1'b1;
	 wire [31:0] clkd;
	 wire clk;
	 clk_diff cl(clk200P,clk200N,1'b0,clkd,clk);
	 //clkdiv cl(.clk(clk),.rst(1'b0),.clkdiv(clkd));	
	 wire rst;
	 assign rst = s[1];
	 reg [31:0] InstruAddr = 32'b0;
	 wire [31:0]InstruAddrin;
	 wire [31:0] Instru; 
	 wire [31:0] PCplus4;
    wire spc;
    wire [31:0] pcplusimediate;
	 //for test

    wire [1:0] uless;
    wire [31:0] Adat;
    wire [31:0] Bdat;
    wire [31:0] Wdat;
    wire [4:0]  regW;
    wire [31:0] oALU;
    wire zero, carryout, overflow;
    wire [31:0] inumext;
    wire [31:0] BdatALUin;
    wire [31:0] oMemory;
	 wire [31:0] segRegDat;
    //<Display>
	 reg  [31:0]SEG = 0;
	 always@(negedge clkd[15])begin
		if(s[0] == 1) begin SEG <= InstruAddr;end 
		else begin SEG <= segRegDat;end
	 end
	 	Display showseg(.clk(clk),.rst(1'b0),.Start(clkd[15]),.Text(1'b1),.flash(1'b0),
							 .Hexs(SEG),.point(8'b0),.LES(8'b0),
							 .segclk(SEGCLK),.segsout(SEGDT),.SEGEN(SEGEN),	.segclrn(SEGCLR));
    //</Display>
	 always @ (posedge clkd[3]) begin//
		if (Instru == 32'b0) begin InstruAddr <= InstruAddr; end
		else begin InstruAddr <= InstruAddrin; end
	 end
	 assign PCplus4 = InstruAddr + 1;
	 instru readinstru1(clkd[2],1'b0,InstruAddr[7:0],32'b0,Instru);//

	 //<control unit>
    wire RegDst,Jump,ALUsrc,MemtoReg,MemRead,MemWrite,Branch,RegWrite;
    wire [1:0]ALUop;
    controlunit ctr(Instru[31:26],RegDst,Jump,ALUsrc,MemtoReg,MemRead,MemWrite,Branch,RegWrite,ALUop[1:0]);
	 //</control unit>
    //<pc change>	
	 assign  spc = zero & Branch;
	 adder_32bit add32(PCplus4, inumext, 1'b0, pcplusimediate, uless[1],uless[0]);
	 wire [31:0] pcsel1;
	 	 assign pcplusimediate2 = pcsel1;
	 mux1_2_32bit zeroandbranch(spc, PCplus4, pcplusimediate, pcsel1);
	 wire [31:0] jaddr;
	 assign jaddr = {6'b0,Instru[25:0]} + PCplus4;
	 mux1_2_32bit pcselfinal(Jump, pcsel1, jaddr, InstruAddrin);
	 //</pc change>
     mux1_2_5bit regdst(RegDst,Instru[20:16],Instru[15:11],regW);
	 RegFile regfile(s[15:11], clkd[1], rst, Instru[25:21], Instru[20:16], regW, Wdat, Adat, Bdat, RegWrite,segRegDat);///
	 SignExtend sign(Instru[15:0],inumext);
	 mux1_2_32bit alusrc(ALUsrc, Bdat, inumext,BdatALUin);
	 ALUwhole alu(ALUop,inumext[5:0],Adat, BdatALUin, oALU, zero, carryout, overflow);	
	 memory m1(clkd[0] & (MemWrite | MemRead), MemWrite, oALU[7:0], Bdat,oMemory);//
	 mux1_2_32bit memtoreg(MemtoReg, oALU, oMemory, Wdat);
endmodule
*/