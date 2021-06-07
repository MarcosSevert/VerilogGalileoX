`timescale 1ns/100ps

module carryLook_4bit(
  input [3:0] P,
  input [3:0] G,
  input Cin,
  output [4:1] C);

    wire h,i,j,k,a,b,c,d,e,f;

	and (h,P[3],P[2],P[1],P[0],Cin);
	and (i,P[3],P[2],P[1],G[0]);
    and (j,P[3],P[2],G[1]);
    and (k,P[3],G[2]);
    and (a,P[2],P[1],P[0],Cin);
    and (b,P[2],P[1],G[0]);
    and (c,P[2],G[1]);
    and (d,P[1],P[0],Cin);
    and (e,P[1],G[0]);
    and (f,P[0],Cin);

  or (C[4],h,i,j,k,G[3]);
  or (C[3],a,b,c,G[2]);
  or (C[2],d,e,G[1]);
  or (C[1],f,G[0]);
endmodule
