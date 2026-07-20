module odd(input a,b,output parity);
assign parity = ~(a^b);
endmodule
