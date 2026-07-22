module demo_tb;
reg [4:0]a,b;

initial begin 
a=4'd12;
b=5'd21;
$finish;
end
initial begin 
	$monitor("a=%d,b=%d",a,b);
end
endmodule
