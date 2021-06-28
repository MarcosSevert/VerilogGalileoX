`timescale 1ns/100ps
//Flip-Flop D Master-Slave
module DFF(
   input D,
   output reg Q,
   output QPrima,
   input CLK);

   assign QPrima = ~Q;

   always @(posedge CLK)
   case ({D})
   	1'b0 : Q = 1'b0;  //Reset
    1'b1 : Q = 1'b1;  //Set
   endcase

endmodule
