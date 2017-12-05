`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:35:53 04/06/2017 
// Design Name: 
// Module Name:    adder_32bit 
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
module adder_32bit(
	//input clk,
	input [31:0]a,
	input [31:0]b,
	input choose,
	output wire [31:0]s,
	//output wire sf,cf,of,zf,pf
	output cf,of
    );
	
	adder_4bit a0(a[3:0],b[3:0]^{choose,choose,choose,choose},choose,s[3:0],c1);
	adder_4bit a1(a[7:4],b[7:4]^{choose,choose,choose,choose},c1,s[7:4],c2);
	adder_4bit a2(a[11:8],b[11:8]^{choose,choose,choose,choose},c2,s[11:8],c3);
	adder_4bit a3(a[15:12],b[15:12]^{choose,choose,choose,choose},c3,s[15:12],c4);
	adder_4bit a4(a[19:16],b[19:16]^{choose,choose,choose,choose},c4,s[19:16],c5);
	adder_4bit a5(a[23:20],b[23:20]^{choose,choose,choose,choose},c5,s[23:20],c6);
	adder_4bit a6(a[27:24],b[27:24]^{choose,choose,choose,choose},c6,s[27:24],c7);
	adder_4bit a7(a[31:28],b[31:28]^{choose,choose,choose,choose},c7,s[31:28],c8);
	
	
	 assign cf=c8;
	 //assign zf=~(s[0]|s[1]|s[2]|s[3]|s[4]|s[5]|s[6]|s[7]|s[8]|s[9]|s[10]|s[11]|s[12]|s[13]|s[14]|s[15]|s[16]|s[17]|s[18]|s[19]|s[20]|s[21]|s[22]|s[23]|s[24]|s[25]|s[26]|s[27]|s[28]|s[29]|s[30]|s[31]);
	 //assign pf=s[0];
	 //assign sf=s[31];
	 assign of=c7^c8;

endmodule
