# 4-bit Up Counter

## Objective

Design and simulate a 4-bit synchronous up counter using Verilog.

## Operation

- `reset = 1` → counter is cleared to `0000`
- `reset = 0` → counter increments at every positive edge of `clk`
- After `1111`, the 4-bit counter wraps around to `0000`

## Files

- `up_counter_4bit.v` – RTL design
- `up_counter_4bit_tb.v` – simulation testbench

## Verilator Command

```bash
verilator --binary -j 0 --Wall up_counter_4bit.v up_counter_4bit_tb.v \
  --top up_counter_tb --timing --CFLAGS "-std=c++20"
```

Run:

```bash
./obj_dir/Vup_counter_tb
```

View waveform:

```bash
gtkwave up_counter_4bit.vcd
```

## Expected Waveform

The `count[3:0]` signal should progress approximately as:

```text
0000 → 0001 → 0010 → 0011 → ... → 1110 → 1111 → 0000
```
