`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2024 16:49:27
// Design Name: 
// Module Name: q3_1006290
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


module demultiplexer(
    input [1:0]A,
    input [1:0]SEL,
    output [1:0]W,
    output [1:0]X,
    output [1:0]Y,
    output [1:0]Z
    );

reg [1:0] w;
reg [1:0] x;
reg [1:0] y;
reg [1:0] z;
assign W[1:0] = w[1:0];
assign X[1:0] = x[1:0];
assign Y[1:0] = y[1:0];
assign Z[1:0] = z[1:0];
 
always @(*)begin
w=0;x=0;y=0;z=0;
    case(SEL)
        2'b00: w[1:0] = A;
        2'b01: x[1:0] = A;
        2'b10: y[1:0] = A;
        2'b11: z[1:0] = A;
        default: begin w=0;x=0;y=0;z=0; end // Default case, should not be reached
    endcase
end
endmodule
