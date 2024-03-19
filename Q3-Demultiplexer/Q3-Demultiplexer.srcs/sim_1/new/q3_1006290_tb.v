`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2024 16:57:30
// Design Name: 
// Module Name: q3_1006290_tb
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


module demultiplexer_tb();
    reg[1:0]A;
    reg[1:0]SEL;
    wire [1:0]W;
    wire [1:0]X;
    wire [1:0]Y;
    wire [1:0]Z;
demultiplexer demultiplexer_u1(A,SEL,W,X,Y,Z);
initial begin
A = 1;
SEL =0;
#10 SEL = 1;
#10 SEL = 2;
#10 SEL = 3;
#10 A=2;
SEL =0;
#10 SEL = 1;
#10 SEL = 2;
#10 SEL = 3;
#10 $stop;
$finish;
end
endmodule
