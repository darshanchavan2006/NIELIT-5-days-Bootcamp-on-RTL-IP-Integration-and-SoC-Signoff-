`timescale 1ns/1ps

module up_counter_tb;

    reg       clk;
    reg       reset;
    wire [3:0] count;

    up_counter_4bit dut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // 10 ns clock period
    always #5 clk = ~clk;

    initial begin
        $dumpfile("up_counter_4bit.vcd");
        $dumpvars(0, up_counter_tb);

        clk   = 1'b0;
        reset = 1'b1;

        #10;
        reset = 1'b0;

        #200;
        $finish;
    end

    always @(posedge clk) begin
        #1;
        $display("Time=%0t | Reset=%b | count=%b", $time, reset, count);
    end

endmodule
