# 📘 A Mirrored-Circuits Approach for Low-Latency and Low-Randomness Composable PINI Gadgets

**Authors:**  
Lixuan Wu, Yanhong Fan, Jiahui He, Guowei Liu, Chaoran Wang, and Meiqin Wang  

---

## 🧩 Overview

This repository provides the **supplementary materials** for our paper:  
**“A Mirrored-Circuits Approach for Low-Latency and Low-Randomness Composable PINI Gadgets.”**

It contains additional **design data, HDL implementations, and verification programs** that support the experimental and theoretical results presented in the paper.  
The materials include reconstructed circuit descriptions, masked gadget implementations, and automated generation scripts for evaluating PINI-compliant hardware under different randomness and latency constraints.

--

## 📁 Repository Structure

```
├── 1_SupplementaryMaterial.pdf
├── 2_S-boxes/
├── 3_ProgramsForAlgorithm1/
└── 4_ProgramsForAlgorithm2/
```


---

### 1️⃣ 1_SupplementaryMaterial.pdf
This file contains **reconstructed algebraic expressions** for several S-boxes mentioned in the paper, including:
- SKINNY S-box  
- PRESENT S-box  
- RECTANGLE S-box  
- PRINCE S-box  
- and other related examples.  

These reconstructed expressions are used to analyze and verify the masking and hardware properties discussed in the main paper.

---

### 2️⃣ 2_S-boxes/
This folder contains the **HDL implementations** (Verilog/VHDL) of various S-boxes referenced in the paper, including:
- SKINNY S-box  
- PRESENT S-box  
- RECTANGLE S-box  
- PRINCE S-box  
- and additional related S-boxes.  

These files correspond to the actual hardware modules generated and evaluated in our experiments.

---

### 3️⃣ 3_ProgramsForAlgorithm1/
This folder contains the **program code implementing Algorithm 1**, which automatically generates RTL code for S-boxes using the **ANF-based (Algebraic Normal Form)** technique described in the paper.  

- The scripts reconstruct the Boolean representations of target S-boxes.  
- Each program outputs synthesizable HDL modules based on the reconstructed ANF expressions.

---

### 4️⃣ 4_ProgramsForAlgorithm2/
This folder contains the **program code implementing Algorithm 2**, which generates RTL code for S-boxes using the **SMT-based (Satisfiability Modulo Theories)** approach presented in the paper.  

- The SMT solver is used to search valid hardware structures.  
- Each program outputs RTL implementations verified under the paper’s constraints.

---


## 📬 Contact

For any questions or collaboration requests, please contact:  

**Lixuan Wu**  
School of Cyber Science and Technology, Shandong University  
📧 lixuanwu@sdu.edu.cn  

---

© 2025. All rights reserved.
