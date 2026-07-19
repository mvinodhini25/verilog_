module mux(input s,a,b,output reg y);
integer i;

always@(*) begin 
for(i=0;i<1;i=i+1)
if(s==0)
y=b;
else
y=a;
end

endmodule

module mux4(input s1,s0,d0,d1,d2,d3,output m);
wire w1,w2;
mux m1(.s(s0),.a(d1),.b(d0),.y(w1));
mux m2(.s(s0),.a(d3),.b(d2),.y(w2));
mux m3(.s(s1),.a(w1),.b(w2),.y(m));
endmodule
