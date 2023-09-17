`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2023 14:41:23
// Design Name: 
// Module Name: FA1
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


module FA1(A,B,cin,S,cout);
input A,B,cin;
output S,cout;

assign S = A^B^cin;
assign cout = A&B|cin&(A^B);
endmodule

