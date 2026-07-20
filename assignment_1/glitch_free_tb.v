module glitch_tb;
wire y;
reg clk62_5;
reg clk250;
reg [1:0]s;

mux m1(.y(y),.clk62_5(clk62_5),.clk250(clk250),.s(s));

 
initial clk62_5 = 0;
always #8 clk62_5 = ~clk62_5;

initial clk250 = 0;
always #5 clk250 = ~clk250;

initial begin
s=2'b00;#10;

s=2'b10;#10;

$finish;
end

endmodule
