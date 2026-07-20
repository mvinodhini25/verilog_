module mux2to1_tb;

reg s,a,b;
wire y;

// Instantiate the DUT
mux m(
    .s(s),
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    s=0; a=0; b=0; #10;
    s=0; a=0; b=1; #10;
    s=0; a=1; b=0; #10;
    s=0; a=1; b=1; #10;
    s=1; a=0; b=0; #10;
    s=1; a=0; b=1; #10;
    s=1; a=1; b=0; #10;
    s=1; a=1; b=1; #10;
    $finish;
end

initial begin
    $monitor("Time=%0t s=%0b a=%0b b=%0b y=%0b",
              $time, s, a, b, y);
end

endmodule
