# Priority Encoder

## 📌 Overview
A **Priority Encoder** is a combinational circuit that converts multiple binary inputs into a binary representation of the index of the most significant active input. This project provides two implementations of a 4-to-2 priority encoder in Verilog, each with its corresponding testbench.

## 🛠 Features
- **Two 4-to-2 Priority Encoder Implementations:**
  - `prio_enc1_4to2.v`: Basic implementation.
  - `prio_enc2_4to2.v`: Alternative implementation with different logic.
- **Testbenches for Each Implementation:**
  - `prio_enc1_4to2_tb.v`: Testbench for `prio_enc1_4to2.v`.
  - `prio_enc2_4to2_tb.v`: Testbench for `prio_enc2_4to2.v`.
- **Simulation Waveforms:**
  - `Waveform for TB 1.png`: Output waveform for `prio_enc1_4to2_tb.v`.
  - `Waveform for TB 2.png`: Output waveform for `prio_enc2_4to2_tb.v`.

## 📂 Repository Structure
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

## 🖥️ How to Run Simulations

### **🔹 Using ModelSim**
1. **Open ModelSim:**
   - Launch ModelSim on your system.
   - Open the project file `Priority Encoder.mpf`.

2. **Compile the Verilog Files:**
   - In the ModelSim interface, compile the desired Verilog files:
     - For `prio_enc1_4to2.v` and its testbench:
       ```
       vlog prio_enc1_4to2.v prio_enc1_4to2_tb.v
       ```
     - For `prio_enc2_4to2.v` and its testbench:
       ```
       vlog prio_enc2_4to2.v prio_enc2_4to2_tb.v
       ```

3. **Run the Simulation:**
   - For the first encoder:
     ```
     vsim prio_enc1_4to2_tb
     ```
   - For the second encoder:
     ```
     vsim prio_enc2_4to2_tb
     ```

4. **View the Waveforms:**
   - Add the relevant signals to the waveform viewer.
   - Run the simulation to observe the output.
   - Reference waveforms are provided in `Waveform for TB 1.png` and `Waveform for TB 2.png`.

## 📝 Verilog Code Explanation

### **prio_enc1_4to2.v**
- **Inputs:**
  - `i0, i1, i2, i3`: Four input signals.
- **Outputs:**
  - `y1, y0`: Two-bit binary representation of the highest-priority active input.
  - `valid`: Indicates if any input is active.

**Logic:**
- The encoder checks inputs from highest (`i3`) to lowest (`i0`) priority.
- Outputs the binary code corresponding to the highest active input.
- Sets `valid` high if any input is active.

### **prio_enc2_4to2.v**
- Similar functionality to `prio_enc1_4to2.v` but with different internal logic or optimization.

## 🚀 Future Enhancements
- Implement **8-to-3** and **16-to-4** priority encoders.
- Develop a parameterized priority encoder for scalable designs.
- Integrate the encoder with larger digital systems or FPGA implementations.

## 📜 License
This project is open-source under the **MIT License**.

---

Feel free to contribute by submitting issues or pull requests. 😊
