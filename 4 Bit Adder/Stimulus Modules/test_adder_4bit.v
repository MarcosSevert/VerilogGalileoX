`timescale 1ns/100ps

module test_4bit_adder();
  reg [3:0] A;
  reg [3:0] B;
  reg Cin;
  wire [3:0] S;
  wire Cout;
  adder_4bit ba4(A,B,Cin,S,Cout);
initial
begin
    $dumpfile("out.vcd");
    $dumpvars(1,test_4bit_adder);

  // Test for any value between 0 and 7 of A and B and for Cin to 0 or 1.
              A=0;	B=0;	Cin=1'b0;
       #25    A=1;	B=6;	Cin=1'b1;
       #25;
end
initial
#75 $finish;
endmodule
