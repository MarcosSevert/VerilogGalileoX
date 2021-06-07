`timescale 1ns/100ps

module carryLook_4bit_adder(
  input [3:0] A,
  input [3:0] B,
  input Cin,
  output [3:0] S,
  output Cout);

  wire [3:0] P,G;
  wire [4:1] C;

  half_adder ha1(A[0],B[0],P[0],G[0]);
  half_adder ha2(A[1],B[1],P[1],G[1]);
  half_adder ha3(A[2],B[2],P[2],G[2]);
  half_adder ha4(A[3],B[3],P[3],G[3]);

  carryLook_4bit cl4b(P,G,C,Cin);

  xor (S[3],P[3],C[3]);
  xor (S[2],P[2],C[2]);
  xor (S[1],P[1],C[1]);
  xor (S[0],P[0],Cin);

  assign Cout=C[4];
endmodule
