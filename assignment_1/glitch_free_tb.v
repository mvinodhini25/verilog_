module glitch_free_tb;
wire y;
reg clk62_5;
reg clk250;
reg [1:0]s;

mux m1(.y(y),.clk62_5(clk62_5),.clk250(clk250),.s(s));

 
initial begin
       	clk62_5 = 0;
forever #12 clk62_5 = ~clk62_5;
end

initial begin
	clk250 = 0;
forever #6clk250 = ~clk250;
end

initial begin
s=2'b00;#10;

s=2'b10;#10;

$finish;
end
initial begin 
	$monitor("time=%0t,clk62_5=%0b,clk250=%0b,s=%0b,y=%0d",$time,clk62_5,clk250,s,y); 
end
endmodule
