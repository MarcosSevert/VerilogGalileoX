`timescale 1ns/100ps

module carryLook_8bit_adder(
  input [7:0] A,
  input [7:0] B,
  input Co,
  output [7:0] S);

  	// Wires between Y0 and X0
    wire Y0_Clo_X0_Cin;
 	wire X0_P_Y0_Pl;
  	wire X0_G_Y0_Gl;

  	// Wires between Y0 and X1
    wire Y0_Ch_X1_Cin;
 	wire X1_P_Y0_Ph;
  	wire X1_G_Y0_Gh;

  	// Wires between Y1 and X2
    wire Y1_Clo_X2_Cin;
 	wire X2_P_Y1_Pl;
  	wire X2_G_Y1_Gl;

  	// Wires between Y1 and X3
    wire Y1_Ch_X3_Cin;
 	wire X3_P_Y1_Ph;
  	wire X3_G_Y1_Gh;

  	// Wires between Y2 and X4
    wire Y2_Clo_X4_Cin;
 	wire X4_P_Y2_Pl;
  	wire X4_G_Y2_Gl;

  	// Wires between Y2 and X5
    wire Y2_Ch_X5_Cin;
 	wire X5_P_Y2_Ph;
  	wire X5_G_Y2_Gh;

  	// Wires between Y3 and X6
    wire Y3_Clo_X6_Cin;
 	wire X6_P_Y3_Pl;
  	wire X6_G_Y3_Gl;

  	// Wires between Y3 and X7
    wire Y3_Ch_X7_Cin;
 	wire X7_P_Y3_Ph;
  	wire X7_G_Y3_Gh;

  	// Wire between Y0 and Y4
  	wire Y0_Ghl_Y4_Gl;
  	wire Y0_Phl_Y4_Pl;
 	wire Y4_Clo_Y0_Cl;

  	// Wire between Y1 and Y4
  	wire Y1_Ghl_Y4_Gh;
  	wire Y1_Phl_Y4_Ph;
 	wire Y4_Ch_Y1_Cl;

  	// Wire between Y2 and Y5
  	wire Y2_Ghl_Y5_Gl;
  	wire Y2_Phl_Y5_Pl;
 	wire Y5_Clo_Y2_Cl;

  	// Wire between Y3 and Y5
  	wire Y3_Ghl_Y5_Gh;
  	wire Y3_Phl_Y5_Ph;
 	wire Y5_Ch_Y3_Cl;

  	// Wire between Y4 and Y6
  	wire Y4_Ghl_Y6_Gl;
  	wire Y4_Phl_Y6_Pl;
 	wire Y6_Clo_Y6_Cl;

  	// Wire between Y5 and Y6
  	wire Y5_Ghl_Y6_Gh;
  	wire Y5_Phl_Y6_Ph;
 	wire Y6_Ch_Y5_Cl;

  	//Out Wires
  	wire out1;
  	wire out2;

  	// Modules X
    module_x x0(A[0], B[0], Y0_Clo_X0_Cin, X0_G_Y0_Gl, X0_P_Y0_Pl, S[0]);
    module_x x1(A[1], B[1], Y0_Ch_X1_Cin, X1_G_Y0_Gh, X1_P_Y0_Ph,S[1]);
    module_x x2(A[2], B[2], Y1_Clo_X2_Cin, X2_G_Y1_Gl, X2_P_Y1_Pl, S[2]);
    module_x x3(A[3], B[3], Y1_Ch_X3_Cin, X3_G_Y1_Gh, X3_P_Y1_Ph,S[3]);
    module_x x4(A[4], B[4], Y2_Clo_X4_Cin, X4_G_Y2_Gl, X4_P_Y2_Pl, S[4]);
    module_x x5(A[5], B[5], Y2_Ch_X5_Cin, X5_G_Y2_Gh, X5_P_Y2_Ph,S[5]);
    module_x x6(A[6], B[6], Y3_Clo_X6_Cin, X6_G_Y3_Gl, X6_P_Y3_Pl, S[6]);
    module_x x7(A[7], B[7], Y3_Ch_X7_Cin, X7_G_Y3_Gh, X7_P_Y3_Ph,S[7]);

  	// Modules Y
  	module_y y0(X1_P_Y0_Ph, X1_G_Y0_Gh, Y4_Clo_Y0_Cl, X0_P_Y0_Pl, X0_G_Y0_Gl, Y0_Ghl_Y4_Gl, Y0_Phl_Y4_Pl, Y0_Ch_X1_Cin, Y0_Clo_X0_Cin);
  	module_y y1(X3_P_Y1_Ph, X3_G_Y1_Gh, Y4_Ch_Y1_Cl, X2_P_Y1_Pl, X2_G_Y1_Gl, Y1_Ghl_Y4_Gh, Y1_Phl_Y4_Ph, Y1_Ch_X3_Cin, Y1_Clo_X2_Cin);
  	module_y y2(X5_P_Y2_Ph, X5_G_Y2_Gh, Y5_Clo_Y2_Cl, X4_P_Y2_Pl, X4_G_Y2_Gl, Y2_Ghl_Y5_Gl, Y2_Phl_Y5_Pl, Y2_Ch_X5_Cin, Y2_Clo_X4_Cin);
    module_y y3(X7_P_Y3_Ph, X7_G_Y3_Gh, Y5_Ch_Y3_Cl, X6_P_Y3_Pl, X6_G_Y3_Gl, Y3_Ghl_Y5_Gh, Y3_Phl_Y5_Ph, Y3_Ch_X7_Cin, Y3_Clo_X6_Cin);
    module_y y4(Y1_Phl_Y4_Ph, Y1_Ghl_Y4_Gh, Y6_Clo_Y6_Cl, Y0_Phl_Y4_Pl, Y0_Ghl_Y4_Gl, Y4_Ghl_Y6_Gl, Y4_Phl_Y6_Pl, Y4_Ch_Y1_Cl, Y4_Clo_Y0_Cl);
    module_y y5(Y3_Phl_Y5_Ph, Y3_Ghl_Y5_Gh, Y6_Ch_Y5_Cl,Y2_Phl_Y5_Pl,Y2_Ghl_Y5_Gl,Y5_Ghl_Y6_Gh,Y5_Phl_Y6_Ph,Y5_Ch_Y3_Cl,Y5_Clo_Y2_Cl);
  module_y y6(Y5_Phl_Y6_Ph, Y5_Ghl_Y6_Gh, Co, Y4_Phl_Y6_Pl, Y4_Ghl_Y6_Gl, out1, out2, Y6_Ch_Y5_Cl, Y6_Clo_Y6_Cl);


endmodule
