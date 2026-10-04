# Yosys AND-Gate Synthesis

## Objective

Use Yosys to read a Verilog RTL design, perform basic RTL processing and optimization, inspect statistics, generate a Graphviz representation, and write a synthesized Verilog file.

## RTL

The design implements:

```text
Y = A & B
```

## Files

- `and_gate.v` – RTL implementation of the AND gate.
- `yosys_commands.ys` – Yosys synthesis script.

## Run Yosys

From this directory:

```bash
yosys -s yosys_commands.ys
```

The script performs:

```text
read_verilog
    ↓
hierarchy
    ↓
proc
    ↓
opt
    ↓
stat
    ↓
show
    ↓
write_verilog
```

Yosys can generate a Graphviz `.dot` representation that can be viewed with a Graphviz-compatible viewer.

## Truth Table

| A | B | Y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

## Learning Outcome

This exercise demonstrates the basic idea of taking RTL code and passing it through a synthesis tool to inspect the resulting logic representation.
