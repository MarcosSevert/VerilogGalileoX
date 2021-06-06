`timescale 1ns/100ps

module test_half_adder();
  reg A,B;
  wire S,Cout;
  half_adder ha(A,B,S,Cout);
initial
begin
    $dumpfile("out.vcd");
    $dumpvars(1,test_half_adder);

              A=1'b0;	B=1'b0;
       #25    A=1'b0;	B=1'b1;
       #25    A=1'b1;	B=1'b0;
       #25    A=1'b1;	B=1'b1;
       #25;
end
initial
#125 $finish;
endmodule
