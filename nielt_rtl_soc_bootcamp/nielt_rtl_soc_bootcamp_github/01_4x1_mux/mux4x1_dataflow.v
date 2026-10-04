// 4x1 Multiplexer - Dataflow Modeling
// Select:
// 00 -> i0
// 01 -> i1
// 10 -> i2
// 11 -> i3

module mux4x1_dataflow (
    input  wire [3:0] in,
    input  wire [1:0] sel,
    output wire       out
);

    assign out = (sel == 2'b00) ? in[0] :
                 (sel == 2'b01) ? in[1] :
                 (sel == 2'b10) ? in[2] :
                                   in[3];

endmodule
