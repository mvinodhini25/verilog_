module tb;
//WRITE
reg wr_clk,wr_rst,wr_en;
reg [7:0]data_in;
wire full;
//READ
reg rd_clk,rd_rst,rd_en;
wire empty;
wire [7:0] data_out;

fifo f1(.wr_clk(wr_clk),.wr_rst(wr_rst),.wr_en(wr_en),.data_in(data_in),.full(full),.rd_clk(rd_clk),.rd_rst(rd_rst),.rd_en(rd_en),.empty(empty),.data_out(data_out));

initial begin
    wr_clk = 0;
    forever #5 wr_clk = ~wr_clk;
end

initial begin
    rd_clk = 0;
    forever #5 rd_clk = ~rd_clk;
end
initial begin
    wr_rst  = 1'b1;
    rd_rst  = 1'b1;
    wr_en   = 1'b0;
    rd_en   = 1'b0;
    data_in = 8'd0;

    #20;
    wr_rst = 1'b0;
    rd_rst = 1'b0;

    // Write 6
    @(negedge wr_clk);
    wr_en   = 1'b1;
    data_in = 8'd6;

    // Write 10
    @(negedge wr_clk);
    data_in = 8'd10;

    // Write 16
    @(negedge wr_clk);
    data_in = 8'd16;

    // Write 20
    @(negedge wr_clk);
    data_in = 8'd20;

    // Stop writing
    @(negedge wr_clk);
    wr_en = 1'b0;

    // Wait until data is available
    wait (empty == 1'b0);

    // Read all four FIFO entries
    repeat(4) begin
    @(negedge rd_clk);
        rd_en = 1'b1;

        @(posedge rd_clk);
        #1;

        @(negedge rd_clk);
        rd_en = 1'b0;
end
    // Wait for the empty flag to update
    repeat (4) @(posedge wr_clk);
    #1;

    $finish;
end

initial begin
$monitor("time=%0t,wr_clk=%0b,wr_rst=%0b,wr_en=%0b,data_in=%0d,full=%0b,rd_clk=%0b,rd_rst=%0b,rd_en=%0b,empty=%0b,data_out=%0d",$time,wr_clk,wr_rst,wr_en,data_in,full,rd_clk,rd_rst,rd_en,empty,data_out);
end

endmodule
