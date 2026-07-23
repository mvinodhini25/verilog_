module min_tb;
wire [1:0]y;
reg [1:0]a,b,c;

min tb(.a(a),.b(b),.c(c),.y(y));

initial begin 
a=01;b=10;c=11;
end

initial begin
$monitor("a=%0b,b=%0b,c=%0b,y=%0b",a,b,c,y);
end

endmodule
