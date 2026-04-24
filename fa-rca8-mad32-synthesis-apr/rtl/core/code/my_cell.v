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

module NAND2_X1(out, a, b);
  input  a, b;
  output out;

  assign out = ~(a & b);
endmodule

module NAND2_X2(out, a, b);
  input  a, b;
  output out;

  assign out = ~(a & b);
endmodule

module NOR2_X1(out, a, b);
  input  a, b;
  output out;

  assign out = ~(a | b);
endmodule

module NOR2_X2(out, a, b);
  input  a, b;
  output out;

  assign out = ~(a | b);
endmodule

