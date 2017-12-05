`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:04:49 03/17/2017 
// Design Name: 
// Module Name:    adder_4bit 
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
module adder_4bit(
	 input [3:0]a,
	 input [3:0]b,
	 input ci,
	 output wire [3:0]s,
	 output wire cf	
    );
	 wire [2:0]c;
	 fadder x0(a[0],b[0],ci,s[0],c[0]);
	 fadder x1(a[1],b[1],c[0],s[1],c[1]);
	 fadder x2(a[2],b[2],c[1],s[2],c[2]);
	 fadder x3(a[3],b[3],c[2],s[3],cf);
	 
endmodule
