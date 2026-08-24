module mux4to1_tb;
wire m;
reg s1,s0,d0,d1,d2,d3;

mux4 k(.s1(s1),.s0(s0),.d0(d0),.d1(d1),.d2(d2),.d3(d3),.m(m));

initial begin
d0=1;d1=0;d2=0;d3=1;	
s1=1;s0=0;#10;
s1=1;s0=1;#10;
#40$finish;
end
initial begin 
	$monitor("s1=%0b,s0=%0b,d0=%0b,d1=%0b,d2=%0b,d3=%0b,m=%0b",s1,s0,d0,d1,d2,d3,m);
end

endmodule
