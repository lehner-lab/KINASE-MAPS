# KINASE-MAPS

Analysis code for reproducing the manuscript _Conservation and divergence in the allosteric architectures of five human protein kinases_ (https://www.biorxiv.org/content/10.64898/2026.08.04.742685v1.article-metrics).

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

## License

MIT (see `LICENSE`).
