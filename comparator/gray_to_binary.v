module binary(input g3,g2,g1,g0,output b3,b2,b1,b0);
assign b3=g3;
assign b2=g2^b3;
assign b1=g1^b2;
assign b0=g0^b1;
endmodule
