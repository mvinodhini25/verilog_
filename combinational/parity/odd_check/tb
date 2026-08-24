module odd_tb;
wire error;
reg a,b,parity;

odd tb(.a(a),.b(b),.parity(parity),.error(error));

initial begin 
a=0;b=0;parity=1;#10;
a=0;b=1;parity=1;#10;
a=1;b=0;parity=0;#10;
a=1;b=1;parity=1;#10;
$finish;
end

initial begin 
$monitor("Time=%0t,a=%0b,b=%0b,parity=%0b,error=%0b",$time,a,b,parity,error);
end
endmodule
