`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:58:03 03/17/2017 
// Design Name: 
// Module Name:    fadder 
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
module fadder(
    input wire a, b, ci, 
    output wire s, co);
	 
    and m0(c1,a,b);
    and m1(c2,b,ci);
    and m2(c3,a,ci);
    xor m3(s1,a,b); 
    xor m4(s,s1,ci);
    or  m5(co,c1,c2,c3);
endmodule
