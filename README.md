# DiffExtract
Extract vacancy diffusion coefficients under solute trapping from atomistic KMC simulations

---

# 🧩 Overview

**DiffExtract** provides input decks and automation scripts for **atomistic kinetic Monte Carlo (KMC)** simulations to evaluate the **vacancy diffusion coefficient** under the influence of **solute trapping**. 

The simulations quantify how solute concentration and temperature affect vacancy mobility in dilute alloys.

The simulations are performed using the open-source [**SPPARKS**](https://spparks.github.io/) code (Sandia Parallel PARticle Kinetic Simulator).

---

## ⚙️ Repository Contents

- **`in.diffCE`**  
  Main SPPARKS input script for kinetic Monte Carlo simulations.

- **`paramsCEFre`**  
  Interaction parameter file for the cluster expansion Hamiltonian.

- **`iterator.sh`**  
  Example Bash script for automating KMC runs.

- **`Diffusivity-Va-highthrougput-vsCount_continue.ipynb`**  
  Python script for extracting vacancy diffusion coefficient from KMC simulation results and for visualization.

*(Note: the SPPARKS executable `spk_openmpi` is **not included**. Users must download and compile SPPARKS themselves.)*

---

## 🧠 Requirements

- **SPPARKS** (with MPI support)  
  Download and build from: [https://spparks.github.io/](https://spparks.github.io/)

- **MPI runtime** (e.g. `openmpi` or `mpich`)

- (Optional) **Python 3.x**  
  For post-processing and analysis scripts (if provided in `/analysis`).

---

## 🚀 Usage

1. **Compile SPPARKS**  
   Follow the instructions from the [SPPARKS documentation](https://spparks.github.io/doc/Manual.html) to build `spk_openmpi`.

2. **Run a single KMC simulation for vacancy diffusion**  
   ```bash
   mpirun -np 4 ./spk_openmpi -in in.diffCE

3. **Automating multiple KMC simulation**  
   ```bash
   bash iterator.sh

3. **Extract diffusion coefficients**
   
   After the simulations finish, open and run the Jupyter notebook:
   ```bash
   Diffusivity-Va-highthrougput-vsCount_continue.ipynb
   ```
   This notebook analyzes the KMC trajectory files, computes the mean square displacement (MSD), and extracts the corresponding vacancy diffusion coefficients.

---

## 📚 Citation
If you use this repository, please cite the following paper:

**Wang, X**., Li, C., Xu, Y., & Li, Y. (2025).
Revisiting the vacancy diffusion behavior under the influence of solute trapping in dilute alloys.
**Acta Materialia**, 288, 120788.
https://doi.org/10.1016/j.actamat.2025.120788
```bibtex
@article{WANG2025120788,
title = {Revisiting the vacancy diffusion behavior under the influence of solute trapping in dilute alloys},
journal = {Acta Materialia},
volume = {288},
pages = {120788},
year = {2025},
issn = {1359-6454},
doi = {https://doi.org/10.1016/j.actamat.2025.120788},
url = {https://www.sciencedirect.com/science/article/pii/S1359645425000801},
author = {Xuezhou Wang and Chunan Li and Yijiang Xu and Yanjun Li},
keywords = {Vacancies, Diffusion, Kinetics, Aluminium alloys, KMC simulations},
abstract = {Vacancies play crucial roles in various phase transformation processes in metallic solids, but their diffusion behaviors in the presence of solute elements are less known. In this work, the impacts of substitutional solute atoms on vacancy diffusion in dilute alloys are quantitatively studied. Using Al-Sn alloy system as an illustrative case, the detailed vacancy diffusion behavior under the influence of Sn atoms is revealed by atomistic kinetic Monte Carlo simulations. Accordingly, a physics-based analytic model is derived to quantify the influences of substitutional solute atoms on the vacancy diffusivity in dilute alloys. In the model, the diffusion of vacancy is rigorously treated as a combination of free diffusion within host atoms and co-diffusion together with solute atoms. Based on the vibrational frequency, migration enthalpy and binding energy of solute-vacancy pair obtained from first-principles calculations, the time fraction for a vacancy trapping by solute atoms and the corresponding correlation factor of diffusion are derived. The predicted vacancy diffusivity in the show-case Al-Sn alloys at different temperatures shows a good agreement with the diffusivity data extracted from KMC simulations within the five-frequency model framework. By using the analytical model, the retarding effects of different impurity elements on vacancy diffusion in Al alloys are screened and discussed, which will help to further exploit the influences of different solute atoms on vacancies in solid-state phase transformations in the alloys.}
}
```

✅ This repository accompanies the publication in *Acta Materialia* and provides all essential scripts and input files for reproducing the atomistic KMC results and post-processing analyses.
