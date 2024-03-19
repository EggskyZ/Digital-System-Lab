`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2024 17:41:10
// Design Name: 
// Module Name: q5_1006290
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
module CCTA(
        input [3:0] A,
        input [3:0] B,
        input [3:0] C,
        input rst,
        input ctrl,
        output [4:0] q
);
reg [4:0]Q;
assign q[4:0] = Q[4:0];
always @(*)begin
    if(rst)
        Q = 0;
    else if(ctrl)
            Q = A - C;
         else
            Q = A + B;
end
endmodule
