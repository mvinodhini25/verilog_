module mux2(input s,a,b,output y);
wire w1,w2,w3;
not(w1,s);
and(w2,w1,a);
and(w3,s,b);
or(y,w2,w3);
endmodule

module mux4(input s1,s0,a,b,c,d,output y);
wire d0,d1;
mux2 m1(.s(s0),.a(a),.b(b),.y(d0));
mux2 m2(.s(s0),.a(c),.b(d),.y(d1));
mux2 m3(.s(s1),.a(d0),.b(d1),.y(y));
endmodule
