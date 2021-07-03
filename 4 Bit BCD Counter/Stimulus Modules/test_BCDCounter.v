
`timescale 1ns/100ps

module test_Counter();
  reg  CLK,Clear;
  wire [3:0] unidades, decenas;
  wire carry1, carry2;
  BCDCounter C1(CLK,unidades,Clear,carry1);
  BCDCounter C2(carry1,decenas,Clear,carry2);
initial CLK = 1'b0; 
  always #5 CLK = ~CLK;
initial
  begin

    $dumpfile("out.vcd");
    $dumpvars(1,test_Counter);
            Clear = 1'b0;
       #5   Clear = 1'b1;
       #282 Clear = 1'b0;
       #20  Clear = 1'b1;
       #282;
  end
initial
  $monitor ("CLR=%b, COUNT=%x,%x ",Clear,decenas,unidades);
initial
#600 $finish;
endmodule
