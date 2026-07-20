module demux_tb;
wire d0,d1;
reg s,d;

demux de(.d0(d0),.d1(d1),.s(s),.d(d));

initial begin 
d=0;s=0;#10;
d=0;s=1;#10;
d=1;s=0;#10;
d=1;s=1;#10;
$finish;
end

initial begin
$monitor("Time=%0t,d=%0b,s=%0b,d1=%0b,d0=%0b",$time,d,s,d0,d1);
end
endmodule

