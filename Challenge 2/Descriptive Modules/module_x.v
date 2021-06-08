`timescale 1ns/100ps

module module_x(
  	input A,
    input B,
    input Cin,
    output G,
    output P,
    output S);

    wire xor1_xor2;

    and (G,A,B);
    or (P,A,B);
    xor xor1(xor1_xor2,A,B);
  xor xor2(S,xor1_xor2,Cin);

endmodule
