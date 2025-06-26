`timescale 1ns/1ps
module ALU_tb;
  reg[3:0]A, B;
  reg[2:0]sel;
  wire[3:0]result;
  ALU uut(
    . A(A), 
    . B(B), 
    . sel(sel), 
    . result (result) 
);
initial begin
  $dumpfile("dump.vcd");
  $dumpvars;
  $display("A\tB\tsel\result") ;
                  
  A=4'b0011;B=4'b0001;sel=3'b000;#10;
  $display("%b\t%b\t%3b\t%b", A, B, sel, result);
  
A=4'b0100;B=4'b0001;sel=3'b001;#10;
  $display("%b\t%b\t%3b\t%b", A, B, sel, result);
  A=4'b1100;B=4'b1010;sel=3'b010;#10;
  $display("%b\t%b\t%3b\t%b", A, B, sel, result);
  A=4'b1100;B=4'b1010;sel=3'b0011;#10;
  $display("%b\t%b\t%3b\t%b", A, B, sel , result);
  A=4'b1010;B=4'b0000;sel=3'b100;#10;
  $display("%b\t%b\t%3b\t%b", A, B, sel, result);
  $finish;
end 
endmodule
