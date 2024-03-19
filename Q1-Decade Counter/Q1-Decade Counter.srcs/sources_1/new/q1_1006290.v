`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2024 15:57:21
// Design Name: 
// Module Name: decade_counter
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


//!DO NOT EDIT MODULE NAME AND PORT NAME!
module decade_counter(
    input clk,
    input rst,
    output [3:0] count,
    output ten
);
//YOUR CODE HERE
reg [3:0] count1;
reg ten1;

assign count[3:0] = count1[3:0];
assign ten = ten1;

always@(posedge clk, negedge rst) 
begin
    if(rst) 
    begin 
        count1<=4'b0000;
        ten1<=1'b0;
    end
    else if(count == 4'b1001) 
    begin
        count1<=4'b0000;
        ten1<=1'b1;
    end
    else begin
        count1 <= count1+1'b1;// increment the counter
        ten1 <= 1'b0;
    end 
end
     
endmodule
