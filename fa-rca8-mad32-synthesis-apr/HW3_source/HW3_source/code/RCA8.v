module RCA8 (
    input      [7:0] A,
    input      [7:0] B,
    input            Cin,
    output reg [7:0] Sum,
    output reg       Cout
);

  reg     [8:0] c;
  integer       i;
  always @(*) begin
    c[0] = Cin;
    for (i = 0; i <= 7; i = i + 1) {c[i+1], Sum} = A[i] + B[i] + c[i];
    Cout = c[8];
  end

endmodule
