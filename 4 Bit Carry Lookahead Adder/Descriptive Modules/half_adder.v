`timescale 1ns/100ps

module half_adder(
  input A,
  input B,
  output S,
  output Cout);

  xor x1(S,A,B);
  and a1(Cout,A,B);
endmodule
