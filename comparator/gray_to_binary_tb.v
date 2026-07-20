module b_to_g_tb;
reg g3,g2,g1,g0;
wire b3,b2,b1,b0;

binary b(.g3(g3),.g2(g2),.g1(g1),.g0(g0),.b3(b3),.b2(b2),.b1(b1),.b0(b0));

initial begin 
g3=0;g2=1;g1=1;g0=0;#10;
g3=0;g2=1;g1=0;g0=1;#10; 
g3=0;g2=1;g1=0;g0=0;#10;
g3=1;g2=1;g1=1;g0=0;#10;
$finish;
end
initial begin 
$monitor("time=%0t,b3=%0b,b2=%0b,b1=%0b,b0=%0b,g3=%0b,g2=%0b,g1=%0b,g0=%0b",$time,b3,b2,b1,b0,g3,g2,g1,g0);
end

endmodule
