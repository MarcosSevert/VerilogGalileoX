`timescale 1ns/10ps

//Demultiplexer Description Module 1 to 4
module Demux_1_4(
  input I,
  input [1:0] s,
  output reg [3:0] Y);

  always @ (I, s[0], s[1]) //If inputs change
    if (s[1] == 0)
      if (s[0] == 0) // 00
      	begin
          Y[0] = I;
          Y[1] = 1'b0;
          Y[2] = 1'b0;
          Y[3] = 1'b0;
        end
      else // 01
        begin
          Y[0] = 1'b0;
          Y[1] = I;
          Y[2] = 1'b0;
          Y[3] = 1'b0;
        end
    else
      if (s[0] == 0) // 10
        begin
          Y[0] = 1'b0;
          Y[1] = 1'b0;
          Y[2] = I;
          Y[3] = 1'b0;
        end
      else // 11
        begin
          Y[0] = 1'b0;
          Y[1] = 1'b0;
          Y[2] = 1'b0;
          Y[3] = I;
        end
endmodule
