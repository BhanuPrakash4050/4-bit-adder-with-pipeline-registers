`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2023 09:50:20
// Design Name: 
// Module Name: rippleadder_tb
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


module rippleadder_tb();
reg A,B;
reg cin;
wire S;
wire cout;
reg clk,rst;
rippleadder RA (.A(A),.B(B),.cin(cin),.clk(clk),.rst(rst),.S(S),.cout(cout));
initial
begin
clk=1'b0;
forever #5 clk =~clk;
end
initial
begin
rst=1;
#50 rst=0;
#1000 $finish;
end
initial
 begin
   A = 1'b0;
   B = 1'b0;
   cin= 1'b0;
end
always
begin
#10 A=~A;
end
always
begin
#20 B=~B;
end
always
begin
#40 cin=~cin;
end
endmodule

