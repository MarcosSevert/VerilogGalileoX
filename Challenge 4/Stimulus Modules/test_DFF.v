`timescale 1ns/100ps

module test_DFF();
  reg  D,CLK;
  wire Q1,Q1Prima;
  DFF D1(D, Q1, Q1Prima, CLK);

initial CLK = 1'b0;
always #5 CLK = ~CLK;

initial
  begin
      $dumpfile("out.vcd");
      $dumpvars(1,test_DFF);
            D = 1'b0;
       #25  D = 1'b1;
       #25  D = 1'b1;
       #25  D = 1'b0;
       #25  D = 1'b1;
	 #25;
end
initial
#250 $finish;
endmodule
