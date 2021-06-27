`timescale 1ns/10ps

// Latch SR
module SRFF(
  input Set,Reset,
  output Q, QPrima);

  nor (QPrima,Set,Q);
  nor (Q,Reset,QPrima);

endmodule
