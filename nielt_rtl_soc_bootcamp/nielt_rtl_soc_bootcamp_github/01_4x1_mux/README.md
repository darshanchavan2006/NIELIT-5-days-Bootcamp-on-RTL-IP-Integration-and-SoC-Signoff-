# 4x1 Multiplexer

## Objective

Implement and verify a 4-to-1 multiplexer using two RTL coding styles.

## Files

- `mux4x1_dataflow.v` – dataflow implementation using a continuous assignment.
- `mux4x1_dataflow_tb.v` – testbench for the dataflow design.
- `mux4x1_behavioral.v` – behavioral implementation using `always` and `case`.
- `mux4x1_behavioral_tb.v` – testbench for the behavioral design.

## Expected Test

Input:

```text
IN = 1010
```

Expected outputs:

```text
SEL  OUT
00    0
01    1
10    0
11    1
```

## Verilator

Example for the dataflow design:

```bash
verilator --binary -j 0 --Wall mux4x1_dataflow.v mux4x1_dataflow_tb.v \
  --top mux4x1_dataflow_tb --timing --CFLAGS "-std=c++20"

./obj_dir/Vmux4x1_dataflow_tb
gtkwave mux4x1_dataflow.vcd
```

For behavioral:

```bash
verilator --binary -j 0 --Wall mux4x1_behavioral.v mux4x1_behavioral_tb.v \
  --top mux4x1_behavioral_tb --timing --CFLAGS "-std=c++20"

./obj_dir/Vmux4x1_behavioral_tb
gtkwave mux4x1_behavioral.vcd
```
