`timescale 1ns/100ps

module BCDCounter(
  input CLK,
  output reg [3:0] Count,
  input Clear,
  output reg carry);
	always @(Clear)
 	if (Clear == 0)
   		Count = 4'b0000;
  	always @(negedge CLK)
      if (Clear == 1) begin
        if(Count == 9) begin
          Count= 1'b0;
          carry = 1'b0;
        end
        else begin
          Count= Count+1;
          carry = 1'b1;
        end
      end


endmodule
