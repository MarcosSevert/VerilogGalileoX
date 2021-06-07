`timescale 1ns/100ps

module test_carryLook_4bit_adder();
  reg [3:0] A,B;
  wire [4:0] Sum;

  carryLook_4bit_adder cl4ba(A,B,0,Sum[3:0],Sum[4]);
initial
begin
    $dumpfile("out.vcd");
    $dumpvars(1,test_carryLook_4bit_adder);

 	// Modify the entries for the desired test
  		A = 1; B = 2;
  	#25	A = 1; B = 1;
  	#25;
end
initial
#75 $finish;
endmodule
