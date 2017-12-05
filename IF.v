`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:39:32 10/18/2017 
// Design Name: 
// Module Name:    IF 
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
module IF(
	 input [31:0]clkd,
	 input spc,[31:0]pcplusimm,
	 output reg [31:0]PCout,
	 output reg [31:0]InstruOut
    );
	 //<pc change>	
	 //why not +4?
	 reg [31:0]InstruAddr = 0;
	 wire [31:0]PCplus4;
	 assign PCplus4 = InstruAddr + 1;
	 wire [31:0]Instru;
	 initial begin 
		PCout = 0; 
		InstruOut = 0;
	 end
	 //caculate im jump
	 //adder_32bit add32(PCplus4, inumext, 1'b0, pcplusimediate, uless[1],uless[0]);
	 //choose im or pcplus4->pcsell
	 wire [31:0] pcsel1;
	 //assign  spc = zero & Branch;
	 mux1_2_32bit zeroandbranch(spc, PCplus4, pcplusimm, pcsel1);
	 //choose jor pcsell->InstruAddrin
	 //wire [31:0] jaddr;
	 //why + PCplus4?
	 //assign jaddr = {6'b0,Instru[25:0]} + PCplus4;
	 //mux1_2_32bit pcselfinal(Jump, pcsel1, jaddr, InstruAddrin);
	 //</pc change>
	 //if instr==0 don't move
	 always @ (posedge clkd[3]) begin
		//if (Instru == 32'b0) begin InstruAddr <= InstruAddr; end
		//else begin  end
		InstruAddr <= pcsel1;
		PCout<=PCplus4;
		InstruOut<=Instru;
	 end
	 //read instruction
	 
	 instru readinstru1(clkd[2],1'b0,InstruAddr[7:0],32'b0,Instru);

endmodule
