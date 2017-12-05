`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:29:58 05/05/2017 
// Design Name: 
// Module Name:    Adder4 
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
module Adder4(A,B,Cin,m,S,CF,OF
    );
	input[3:0]A,B;
	input Cin,m;
	output[3:0]S;
	output CF,OF;
	
	wire[3:0]xb,p,g;
	xor(xb[0],B[0],m); xor(xb[1],B[1],m);
	xor(xb[2],B[2],m); xor(xb[3],B[3],m);
	and(g[0],A[0],xb[0]);and(g[1],A[1],xb[1]);
	and(g[2],A[2],xb[2]);and(g[3],A[3],xb[3]);
	or(p[0],A[0],xb[0]);or(p[1],A[1],xb[1]);
	or(p[2],A[2],xb[2]);or(p[3],A[3],xb[3]);
	
	xor(S[0],A[0],xb[0],Cin);
	wire u1,u2;
	and(u1,p[0],Cin);
	or(u2,g[0],u1);
	xor(S[1],A[1],xb[1],u2); //c1 = g0 + p0c0
	wire v1,v2,v3;
	
	
endmodule
