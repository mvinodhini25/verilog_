module com_tb;
wire gt,eq,ls;
reg [3:0]a,b;

comparator com(.a(a),.b(b),.gt(gt),.eq(eq),.ls(ls));

initial begin
	a=4'd11;b=4'd13;#10;
a=4'd8;b=4'd8;#10;
	a=4'd15;b=4'd13;#10;
$finish;
end

initial begin 
	$monitor("a=%0d,b=%0d,gt=%0d,eq=%0d,ls=%0d",a,b,gt,eq,ls);
end 
endmodule
