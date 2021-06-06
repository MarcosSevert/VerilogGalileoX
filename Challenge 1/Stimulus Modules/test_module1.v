`timescale 1ns/100ps

module test_m3();
  reg [2:0] A;
  wire m;
  mi_modulo m1(A[2],A[1],A[0],m);
initial
begin
    $dumpfile("out.vcd");
    $dumpvars(1,test_m3);

              A=0;
       #25    A=1;
       #25    A=2;
       #25    A=3;
       #25    A=4;
       #25    A=5;
       #25    A=6;
       #25    A=7;
end
initial
#250 $finish;
endmodule
