`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2023 15:17:09
// Design Name: 
// Module Name: rippleadder
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


module rippleadder(
    input A,
    input B,
    input cin,
    input clk,
    input rst,
    output reg S,
    output reg cout
    );
    wire S_f,cout_f;
    reg A_r,B_r,cin_r;
   FA1 RA (.A(A_r),.B(B_r),.cin(cin_r),.S(S_f),.cout(cout_f));
    
    always @(posedge clk,posedge rst)
     begin
     if(rst)
        begin
          A_r <= 1'b0;
          B_r <= 1'b0;
          cin_r <=1'b0;
          S<=0;
         cout<=0;
        end 
      else
        begin
          A_r <= A;
          B_r <= B;
          cin_r <= cin;
          S<=S_f;
          cout<=cout_f;
         end
      end      
endmodule
