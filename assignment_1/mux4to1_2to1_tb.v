module mux_tb;
wire y;
reg a,b,c,d,s1,s0;

mux4 mux(.a(a),.b(b),.c(c),.d(d),.s1(s1),.s0(s0),.y(y));

initial begin
a=1;b=0;c=0;d=1;	
s1=0;s0=0;#10;
s1=0;s0=1;#10;
s1=1;s0=0;#10;
s1=1;s0=1;#10;
$finish;
end
initial begin 
	$monitor("s1=%0b,s0=%0b,a=%0b,b=%0b,c=%0b,d=%0b,y=%0b",s1,s0,a,b,c,d,y);
end
endmodule
