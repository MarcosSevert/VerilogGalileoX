`timescale 1ns/100ps

module mi_modulo(
  input x,
  input y,
  input z,
  output m);
    wire e;
  	xor x1(e,x,z);
  	and a1(m,y,e);
endmodule
