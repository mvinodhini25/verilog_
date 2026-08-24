module fullsub_tb;
wire d,bout;
reg a,b,c;

fullsub full(.a(a),.b(b),.c(c),.d(d),.bout(bout));

initial begin
a=0;b=0;c=0;#10;
a=0;b=0;c=1;#10;
a=0;b=1;c=0;#10;
a=0;b=1;c=1;#10;
a=1;b=0;c=0;#10;
a=1;b=0;c=1;#10;
a=1;b=1;c=0;#10;
a=1;b=1;c=1;#10;
$finish;
end

initial begin 
$monitor("Time=%0t,a=%0b,b=%0b,c=%0b,d=%0b,bout=%0b",$time,a,b,c,d,bout);
end
endmodule

