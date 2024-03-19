`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2024 16:34:56
// Design Name: 
// Module Name: q2_1006290
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

module multiplexer(
    input [1:0]A,
    input [1:0]B,
    input [1:0]C,
    input [1:0]D,
    input [1:0]SEL,
    output [1:0]X
);
//YOUR CODE HERE
//TIPS: IN THE VERILOG CASE STATEMENT, YOU HAVE TO LIST ALL CONDITION TO AVIOD ANY AMBIGUOUS STATEMENT;
reg [1:0] x;
assign X[1:0] = x[1:0];
always @(SEL,A,B,C,D)begin
    case(SEL)
        2'b00: x = A;
        2'b01: x = B;
        2'b10: x = C;
        2'b11: x = D;
        default: x = 2'b00;
    endcase
    
end

endmodule
