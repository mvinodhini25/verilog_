module decoder_tb;
wire a,b,c,d;
reg x,y;

decoder de(.a(a),.b(b),.c(c),.d(d),.x(x),.y(y));

initial begin
x=0;y=0;#10;
x=0;y=1;#10;
x=1;y=0;#10;
x=1;y=1;#10;
$finish;
end

initial begin
$monitor("x=%0b,y=%0b,a=%0b,b=%0b,c=%0b,d=%0b",x,y,a,b,c,d);
end
endmodule

