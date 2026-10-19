# ⚛️ QDK Learning

> 🧠 My personal path through quantum computing with **Q#** and the **Microsoft Quantum Development Kit (QDK)**.

Hands-on exercises, runnable examples and a full quantum chemistry course — from a single qubit all the way to estimating molecular energies with phase estimation. 🚀

---

## 📂 Repository layout

| Folder | What's inside |
| --- | --- |
| 🏋️ [`exercises/`](exercises) | Katas to solve yourself: one `.qs` file per task, grouped by topic |
| 💡 [`examples/`](examples) | Ready-to-run Q# demos with `@EntryPoint()` operations |
| 🧪 [`courses/`](courses) | Guided, notebook-based courses (Python + QDK) |

---

## 🗺️ Learning roadmap

### 🌱 Foundations
- ➗ `complex_arithmetic` — complex numbers for quantum
- 📐 `linear_algebra` — vectors, matrices and operators
- 👋 `getting_started` — your first Q# program
- 🔵 `qubit` — what a qubit really is
- 🎲 `random_numbers` — quantum randomness

### 🎛️ Gates & states
- 🔄 `single_qubit_gates`
- 🔗 `multi_qubit_systems`
- 🧩 `multi_qubit_gates`
- 🎨 `preparing_states`

### 📏 Measurement
- 👁️ `single_qubit_measurements`
- 🔭 `multi_qubit_measurements`
- 🕵️ `distinguishing_states`
- 🔍 `distinguishing_unitaries`

### 🔮 Oracles & algorithms
- 🪄 `oracles` · 🏷️ `marking_oracles`
- ⚖️ `deutsch_algo` · 🧮 `deutsch_jozsa`
- 🔎 `grovers_search`
- 🌊 `qft` — Quantum Fourier Transform
- 📡 `phase_estimation`

### 📨 Communication protocols
- 🔐 `key_distribution` — BB84 quantum key distribution
- 🛸 `teleportation`
- 📦 `superdense_coding`

### 🧰 Problem solving & error correction
- ✅ `solving_sat`
- 🖍️ `solving_graph_coloring`
- 🛡️ `qec_shor` — Shor's error correction code

---

## 🧪 Course: Ground-State Molecular Energies with QPE

📍 [`courses/chemistry-qpe`](courses/chemistry-qpe)

Estimate a molecule's ground-state energy using quantum phase estimation with the **QDK/Chemistry** library.

| # | Unit |
| --- | --- |
| 0️⃣ | Tutorial Overview |
| 1️⃣ | Energy and Accuracy |
| 2️⃣ | Describing the Molecule |
| 3️⃣ | Choosing the Active Space |
| 4️⃣ | Mapping the Problem to Qubits |
| 5️⃣ | Preparing the Trial State |
| 6️⃣ | Iterative Quantum Phase Estimation |

---

## ⚙️ Getting started

### 🧑‍💻 Q# exercises & examples

1. Install [VS Code](https://code.visualstudio.com/) 🖥️
2. Add the [Azure Quantum Development Kit](https://marketplace.visualstudio.com/items?itemName=quantum.qsharp-lang-vscode) extension 🧩
3. Open any `.qs` file and hit **Run** above the `@EntryPoint()` operation ▶️

### 🐍 Chemistry course

```bash
cd courses/chemistry-qpe
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python _check_env.py
```

Then open the notebooks unit by unit, starting at `00-overview` 📓

---

## 🙏 Credits

Content based on the official [Microsoft Quantum Katas](https://quantum.microsoft.com/en-us/tools/quantum-katas) and the [QDK](https://github.com/microsoft/qdk). 💙

---

<p align="center">Made with ⚛️, ☕ and a lot of superposition 🌀</p>
