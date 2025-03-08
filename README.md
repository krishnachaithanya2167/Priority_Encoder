# Priority Encoder

## Overview
This project implements a **4-to-2 Priority Encoder** using Verilog. The priority encoder takes a 4-bit input and encodes it into a 2-bit output based on the highest-priority active input. Two different implementations are provided, along with corresponding testbenches and simulation results.

## Features
- Implements a 4-to-2 priority encoder in two different ways
- Testbenches provided for both implementations
- Waveform results included for verification

## Repository Structure

```
📦 Priority_Encoder
 ┣ 📂 src
 ┃ ┣ 📜 prio_enc1_4to2.v         # First implementation of the 4-to-2 priority encoder
 ┃ ┣ 📜 prio_enc2_4to2.v         # Second implementation of the 4-to-2 priority encoder
 ┣ 📂 testbench
 ┃ ┣ 📜 prio_enc1_4to2_tb.v      # Testbench for the first implementation
 ┃ ┣ 📜 prio_enc2_4to2_tb.v      # Testbench for the second implementation
 ┣ 📂 simulation
 ┃ ┣ 📜 Waveform_TB1.png         # Simulation waveform for the first testbench
 ┃ ┣ 📜 Waveform_TB2.png         # Simulation waveform for the second testbench
 ┣ 📜 README.md                  # Project documentation (this file)
 ┣ 📜 .gitignore                  # Git ignore file for unnecessary files
```

## How It Works
A **Priority Encoder** assigns a binary code to the highest-priority active input. In a 4-to-2 priority encoder:
- If input `D3` is high, output is `11`
- Else if `D2` is high, output is `10`
- Else if `D1` is high, output is `01`
- Else if `D0` is high, output is `00`

## How to Run the Simulation
1. Ensure you have **ModelSim** or any Verilog simulator installed.
2. Open ModelSim and navigate to the project folder.
3. Compile the Verilog files (`prio_enc1_4to2.v` and `prio_enc2_4to2.v`).
4. Run the testbench files (`prio_enc1_4to2_tb.v` and `prio_enc2_4to2_tb.v`).
5. View the simulation waveforms to verify the functionality.

## Simulation Results
The simulation outputs are stored in the `simulation/` folder as waveform images:
- **Waveform_TB1.png** → First implementation test results
- **Waveform_TB2.png** → Second implementation test results

## Future Improvements
- Extend the design to an 8-to-3 priority encoder.
- Implement the encoder using behavioral Verilog.
- Add support for enable and valid signal outputs.

## License
This project is open-source. Feel free to use and modify it.

---
