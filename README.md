# KINASE-MAPS

Analysis code for the comparative energetic and allosteric maps of five human kinases
(SRC, FGR, ZAK, JNK2, TSSK2). It reproduces every R figure panel and reported number
in the manuscript from the processed data in `data/`.

MAPK9 is shown as JNK2 in figures; the data identifier stays MAPK9.

## Data

1. Download `data.zip` from [here](https://zenodo.org/records/23261855) and unzip it in the repository root.
   This creates `data/` with the DiMSum fitness, MoCHI outputs, alignment, structures
   and pocket tables.
2. SRC fitness is from Beltran et al., *Sci. Adv.* (2026). Download `SRC_fitness.txt`
   and `aa_variants_SRC_all` from their Zenodo deposit
   ([10.5281/zenodo.10158641](https://doi.org/10.5281/zenodo.10158641)) into
   `data/fitness/SRC_beltranetal/` (`SRC_fitness.txt` inside `DiMSum_fitness_tables/`).

Raw sequencing reads: ENA `PRJEB122867`.

## Requirements

R ≥ 4.2 with:

```r
install.packages("BiocManager")
BiocManager::install(c("Biostrings", "bio3d"))
install.packages(c("data.table", "ggplot2", "ggpubr", "cowplot", "GGally", "ggh4x",
  "ggnewscale", "ggpattern", "ggpointdensity", "ggrepel", "ggridges", "gridExtra",
  "patchwork", "plot3D", "viridis", "scales", "readr", "plyr", "dplyr", "tidyr",
  "stringr", "knitr"))
```

## Run

```sh
cd scripts
Rscript run_all.R
```

Figures go to `results/<Figure>/<Panel>_<description>.pdf` and ChimeraX colouring
files to `results/00_chimera/`.

| Script | Output |
|---|---|
| `001.1_functions` | shared functions and paths |
| `001.2_datareading` | fitness, ΔΔG and predictions tables |
| `001.3_ddg_normalization` | cross-kinase ΔΔG normalisation |
| `01_fitness` | Fig 1G-H, S1A-G |
| `02_mochiquality` | Fig 1I-J, S2 |
| `03_stability` | Fig 2 (ChimeraX), S3, S4 |
| `04_activesite` | Fig 3A, S5B |
| `05_distance_decay` | Fig 4B, S6A-B |
| `06_allostery` | Fig 3E-H, 5C, S6C-H, S7 |
| `07_pockets` | Fig 7A-B, S8B-D, Supplementary Table 4 |
| `08_anisotropy` | Fig 4E |
| `09_domain_architecture` | Fig S1I |

Scripts must run in this order. Structure renders (Fig 2, 3, 4, 5, 6, 7, 8) are made
in ChimeraX from the `.defattr` and `.bild` files.

## License

MIT (see `LICENSE`).
