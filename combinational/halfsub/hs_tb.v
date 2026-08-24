module halfsubtract_tb;
reg a,b;
wire d,bout;

halfsubtract half(.a(a),.b(b),.d(d),.bout(bout));

initial begin 
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end

initial begin 
$monitor("Time=%0t,a=%0b,b=%0b,d=%0b,bout=%0b",$time,a,b,d,bout);
end 

endmodule 
