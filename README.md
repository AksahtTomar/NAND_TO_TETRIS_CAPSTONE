# Nand to Tetris Part I - Capstone Project
**Project Name:** Make the Computer Draw a Box  
**Course:** ETCCNT301 — School of Engineering & Technology, K.R. Mangalam University  
**Student Roll No. Ending (K):** 5  

---

## 1. Project Overview & Deliverables
This repository contains the complete, final implementation for the Nand to Tetris Part I Capstone Project with custom variable **K = 5**.

### Final Clean File Structure
```text
nand2tetris capstone/
├── Memory.hdl         # Part A: Complete Hack Memory chip (RAM16K + Screen + Keyboard)
├── CPU.hdl            # Part A: Complete Hack CPU (ALU + A/D Registers + PC + Control logic)
├── Computer.hdl       # Part A: Complete Hack Computer architecture
├── assembler.py       # Part B: Two-pass Python Assembler with Duplicate Label Warning (K mod 3 = 2)
├── Box.asm            # Part C: Responsive 32x20 box Hack assembly program (Row 5 to 24)
├── Box.hack           # Part C: 16-bit binary machine code assembled from Box.asm
├── README.md          # Project summary & run instructions
└── REPORT.md          # 3-4 page comprehensive project report formatted for submission
```

---

## 2. Parameter Specifications ($K = 5$)

| Parameter | Formula / Requirement | Calculated Value |
| :--- | :--- | :--- |
| **K** | Custom roll number suffix | **5** |
| **K mod 3 Extra Feature** | $5 \bmod 3 = 2$ | **Print warning if same label is written twice; keep first definition** |
| **Box Starting Row** | Row $K$ | **Row 5** |
| **Box Height** | Fixed specification | **20 rows** (Rows 5 to 24) |
| **Box Width** | $16 \times ((K \bmod 4) + 1)$ | **32 pixels** ($16 \times 2 = 32$ px) |
| **Screen Words per Row** | $32 / 16$ | **2 words** |
| **Total Words Modified** | $20 \times 2$ | **40 words** |
| **Starting Memory Address** | $\text{SCREEN} + (32 \times 5)$ | **16544** (`0x40A0`) |
| **Ending Memory Address** | $16544 + (32 \times 19) + 1$ | **17153** |
| **Keyboard Address** | `KBD` | **24576** (`0x6000`) |

---

## 3. How to Run the Tools

### A. Run Hardware Simulator Tests
1. Launch `HardwareSimulator.bat` in your `nand2tetris/tools` folder.
2. Load and run the official test scripts from `nand2tetris/projects/5`:
   - `Memory.tst` $\rightarrow$ tests RAM16K, Screen, and Keyboard address decoding.
   - `CPU.tst` $\rightarrow$ tests ALU, register updates, jump conditions.
   - `ComputerAdd.tst`, `ComputerMax.tst`, `ComputerRect.tst` $\rightarrow$ tests end-to-end computer execution.

### B. Run the Python Assembler
To assemble `Box.asm` into `Box.hack`:
```bash
python assembler.py Box.asm
```
Output:
```text
Assembling 'Box.asm'...
Assembly completed successfully.
Output written to 'Box.hack' (56 instructions).
```

### C. Run the Box Program in CPU Emulator
1. Launch `CPUEmulator.bat` in your `nand2tetris/tools` folder.
2. Click **File $\rightarrow$ Load Program** and open `Box.hack`.
3. Set **Animate** to **Fast** or **No display**.
4. Click **Run**.
5. Click on the **Keyboard** icon in the emulator and press/hold any key $\rightarrow$ A black 32x20 box appears at row 5.
6. Release the key $\rightarrow$ The box immediately disappears.
