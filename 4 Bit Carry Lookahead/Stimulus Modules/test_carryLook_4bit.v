`timescale 1ns/100ps

module test_carryLook_4bit();
  reg [3:0] P;
  reg [3:0] G;
  reg Cin;
  wire [4:1] C;

  carryLook_4bit cl4b(P,G,Cin,C);
initial
begin
    $dumpfile("out.vcd");
    $dumpvars(1,test_carryLook_4bit);

 	// Modify the entries for the desired test
  		P = 1; G = 12; Cin = 1'b0;
  	#25	P = 1; G = 1; Cin = 1'b1;
  	#25;
end
initial
#250 $finish;
endmodule
