`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2024 16:38:11
// Design Name: 
// Module Name: q2_1006290_tb
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


module multiplexer_tb();
    reg[1:0]A;
    reg[1:0]B;
    reg[1:0]C;
    reg[1:0]D;
    reg[1:0]SEL;
    wire [1:0]X;
    
multiplexer multiplexer_u1(.A(A),.B(B),.C(C),.D(D),.SEL(SEL),.X(X));

initial begin
A = 2'b00;
B = 2'b01;
C = 2'b10;
D = 2'b11;
SEL = 0;
#10 SEL = 1;
#10 SEL = 2;
#10 SEL = 3;
#10 SEL = 4;
#10 $stop;
$finish;
end
endmodule