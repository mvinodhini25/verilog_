module half_adder_tb;
wire sum,carry;
reg a,b;

half_adder half(.a(a),.b(b),.sum(sum),.carry(carry));

initial begin 
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end

initial begin 
$monitor("Time=%0t,a=%0b,b=%0b,sum=%0b,carry=%0b",$time,a,b,sum,carry);
end
endmodule
