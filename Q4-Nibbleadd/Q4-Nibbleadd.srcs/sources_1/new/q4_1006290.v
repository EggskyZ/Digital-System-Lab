`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2024 17:05:53
// Design Name: 
// Module Name: q4_1006290
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


//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module nibbleadd(
    input [7:0]A,
    input [7:0]B,
    input ctrl,
    output [4:0]q
);

reg [4:0] Q;
assign q[4:0] = Q[4:0];
always @(*) begin
if (ctrl)
Q[4:0] = A[7:4]+ B[7:4];
else
Q[4:0] = A[3:0]+ B[3:0];
end
endmodule