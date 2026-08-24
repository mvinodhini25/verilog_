module even(input a,b,parity,output error);
assign error = a^b^parity;
endmodule
