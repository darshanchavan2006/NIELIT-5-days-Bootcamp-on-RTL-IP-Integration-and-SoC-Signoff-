// Simple 2-input AND gate
// Used for basic Yosys RTL synthesis and visualization.

module and_gate (
    input  wire A,
    input  wire B,
    output wire Y
);

    assign Y = A & B;

endmodule
