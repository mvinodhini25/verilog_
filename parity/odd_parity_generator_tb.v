module odd_tb;
wire parity;
reg a,b;

odd tb(.a(a),.b(b),.parity(parity));

initial begin 
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end

initial begin 
$monitor("Time=%0t,a=%0b,b=%0b,parity=%0b",$time,a,b,parity);
end
endmodule
