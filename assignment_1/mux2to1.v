module mux(input s,a,b,output y);
wire w1,w2,w3;
not(w1,s);
and(w2,w1,a);
and(w3,s,b);
or(y,w2,w3);
endmodule

