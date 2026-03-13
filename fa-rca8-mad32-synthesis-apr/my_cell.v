module INV_X1(out, in);
  input  in;
  output out;

  assign out = ~in;
endmodule

module INV_X2(out, in);
  input  in;
  output out;

  assign out = ~in;
endmodule

module NAND_X1(out, A, B);
  input  A, B;
  output out;

  assign out = ~(A & B);
endmodule

module NAND_X2(out, A, B);
  input  A, B;
  output out;

  assign out = ~(A & B);
endmodule

module NOR_X1(out, A, B);
  input  A, B;
  output out;

  assign out = ~(A | B);
endmodule

module NOR_X2(out, A, B);
  input  A, B;
  output out;

  assign out = ~(A | B);
endmodule

