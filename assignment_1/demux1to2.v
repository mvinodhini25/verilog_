module demux(input s,d,output d0,d1);
assign d0=~s|d;
assign d1=s|d;
endmodule

