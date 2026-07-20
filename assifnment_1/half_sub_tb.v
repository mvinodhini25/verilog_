module half_tb;
wire d,b0;
reg a,b;

half h(.a(a),.b(b),.d(d),.b0(b0));

initial begin 
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end

initial begin 
$monitor("Time=%0t,a=%0b,b=%0b,d=%0b,bout=%0b",$time,a,b,d,b0);
end 

endmodule 
