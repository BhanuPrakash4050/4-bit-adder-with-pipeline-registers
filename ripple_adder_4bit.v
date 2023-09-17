`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2023 08:37:17
// Design Name: 
// Module Name: ripple_adder_4bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ripple_adder_4bit(
    input [3:0]A,
    input [3:0]B,
    input cin,
    input clk,
    input rst,
    output [3:0] S,
    output cout
    );
    wire c0,c1,c2,c3;
   rippleadder RA1 (.A(A[0]),.B(B[0]),.cin(cin),.clk(clk),.rst(rst),.S(S[0]),.cout(c0));
   rippleadder RA2 (.A(A[1]),.B(B[1]),.cin(c0),.clk(clk),.rst(rst),.S(S[1]),.cout(c1));
   rippleadder RA3 (.A(A[2]),.B(B[2]),.clk(clk),.rst(rst),.cin(c1),.S(S[2]),.cout(c2));
   rippleadder RA4 (.A(A[3]),.B(B[3]),.clk(clk),.rst(rst),.cin(c2),.S(S[3]),.cout(c3));
   
  assign cout = c3;
endmodule