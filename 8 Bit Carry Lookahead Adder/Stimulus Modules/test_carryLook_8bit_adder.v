`timescale 1ns/100ps

module test_carryLook_8bit_adder();
  reg [7:0] A;
  reg [7:0] B;
  reg Co;
  wire [7:0] S;

  carryLook_8bit_adder cl8ba(A,B,Co,S);
initial
begin
    $dumpfile("out.vcd");
    $dumpvars(1,test_carryLook_8bit_adder);

 	// Modify the entries for the desired test
  			A = 15; B = 15; Co = 1'b0;
  	#100	A = 127; B = 127; Co = 1'b0;
  	#100;
end
initial
#250 $finish;
endmodule
