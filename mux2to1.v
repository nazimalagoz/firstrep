`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.12.2022 20:22:20
// Design Name: 
// Module Name: mux2to1
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

module mux2to1
(
output out_o,
input i0_i,
input i1_i,
input sel_i

);

wire not1, and1, and2;

not G1 (not1,sel_i);
and G2 (and1,i0_i,not1);
and G3 (and2,i1_i,sel_i);
or G4 (out_o,and1,and2);

endmodule
