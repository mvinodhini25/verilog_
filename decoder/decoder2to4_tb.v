module decoder2to4_tb;
reg a,b;
wire [3:0]y;

decoder2to4 decoder(.a(a),.b(b),.y(y));

initial begin 
a=1;b=1;#10;
a=1;b=0;#10;
$finish;
end

initial begin 
	$monitor("a=%0,b=%0b,y=%0b",a,b,y);
end

endmodule

