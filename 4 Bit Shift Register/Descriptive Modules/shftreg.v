`timescale 1ns/100ps


module shftreg(
  input CLK,RL,LD,
  output reg [3:0] D,
  input [3:0] InP,
  input InS,Clear);

  always @(Clear)
  if (Clear == 0)
    D = 4'b0000;        // Clear
  always @(negedge CLK)
    case ({LD,RL,Clear})
    3'b001 : D = {InS,D[3:1]};  // Shift Right
    3'b011 : D = {D[2:0],InS};  // Shift Left
    3'b101 : D = InP;           
    3'b111 : D = InP;
  endcase
endmodule
