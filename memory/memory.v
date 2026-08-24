module memory( input [3:0]addr,input [7:0]data_in,input wr,input re,input clk,output reg [7:0]data_out);
reg [7:0]mem[15:0];

always@(posedge clk) begin
if(wr)
mem[addr] <= data_in;
else
mem[addr] <= 1'd0;
end

always@(*) begin
if(re)
data_out <= mem[addr];
else
data_out <= 1'd0;
end

endmodule

