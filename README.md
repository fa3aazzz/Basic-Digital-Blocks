# Basic-Digital-Blocks
Basic digital blocks in Verilog with waveform testbenches.

## Repository Structure

- `rtl/` — Combinational and sequential Verilog design modules
- `tb/` — Waveform testbenches for verifying each block

## Modules Included

### Combinational Logic
- **Basic & Arithmetic:** `logicgates`, `half_adder`, `half_subtractor`, `full_adder_bh`, `full_adder_4bit_st`, `full_subtractor`, `barrel_shifter`, `c17_benchmark`
- **Routing & Encoders/Decoders:** `mux_8x1`, `demux_1x8`, `encoder_8x3`, `decoder3to8`

### Sequential Logic
- **Flip-Flops, Registers & Counters:** `dff`, `shift_reg`, `twin_reg`, `uni_reg`, `counter`, `frequency_div`
- **Memory & FSMs:** `memory`, `seq_001`
