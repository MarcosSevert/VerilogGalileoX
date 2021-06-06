`timescale 1ns/100ps

module full_adder(
  input A,
  input B,
  input Cin,
  output S,
  output Cout);

  wire P,G,H;

  half_adder ha1(A,B,P,G);
  half_adder ha2(P,Cin,S,H);
  or (Cout,G,H);

endmodule
