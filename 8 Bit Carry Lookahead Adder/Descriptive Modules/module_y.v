`timescale 1ns/100ps

module module_y(
  	input Ph,
  	input Gh,
    input Cl,
  	input Pl,
  	input Gl,
    output Ghl,
    output Phl,
  	output Ch,
  	output Clo);

    wire and1_or1;
  	wire and2_or2;

    and and1(and1_or1,Ph,Gl);
    or or1(Ghl,and1_or1,Gh);

    and and2(and2_or2,Pl,Cl);
    or or2(Ch,and2_or2,Gl);

    and and3(Phl,Ph,Pl);

  	or (Clo,Cl,Cl);
  	//Clo = Cl;

endmodule
