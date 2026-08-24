module mux2to1_tb;

reg s, i0, i1;
wire y;

// Instantiate the DUT
mux2to1 mux (
    .s(s),
    .i0(i0),
    .i1(i1),
    .y(y)
);

initial begin
    s=0; i0=0; i1=0; #10;
    s=0; i0=0; i1=1; #10;
    s=0; i0=1; i1=0; #10;
    s=0; i0=1; i1=1; #10;
    s=1; i0=0; i1=0; #10;
    s=1; i0=0; i1=1; #10;
    s=1; i0=1; i1=0; #10;
    s=1; i0=1; i1=1; #10;
    $finish;
end

initial begin
    $monitor("Time=%0t s=%0b i0=%0b i1=%0b y=%0b",
              $time, s, i0, i1, y);
end

endmodule






















