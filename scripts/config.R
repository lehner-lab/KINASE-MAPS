# config.R: single source of paths for the KINASE-MAPS pipeline.
# All scripts are run from the scripts/ directory (see run_all.R), so every path
# here is relative to scripts/. Sourced at the top of each numbered script.

# scripts/ directory (used by downstream scripts' knitr root.dir). Computed at
# build time; rebuilt whenever 001.1 is re-run, so it stays machine-portable.
base_dir <- normalizePath(".")

# --- input data (shipped in data/; see README.md) ---
data_path        <- "../data/"                 # base
data_fitness     <- "../data/fitness/"         # per-kinase DiMSum fitness_*.txt
data_alignment   <- "../data/alignment/"       # KinCore alignment fasta
data_pockets     <- "../data/pockets/"         # pocket residue map + metrics
data_struct      <- "../data/structural/"      # PDBs, features, distances, FTmap
data_mochi       <- "../data/mochi/"           # MoCHI outputs: weights (ddG source) + predicted phenotypes

# --- outputs / regenerated intermediates ---
results_path     <- "../results/"              # figure panels (subfolders Fig1, FigS1, ...)
results_newdata  <- "../results/01_newdata/"   # regenerated .Rdata / .csv intermediates

# create output dirs if missing (harmless if they already exist).
# 00_chimera holds ChimeraX .defattr colouring files that several scripts write
# via hardcoded paths without their own dir.create.
for (d in c(results_path, results_newdata, paste0(results_path, "00_chimera/")))
  dir.create(d, showWarnings = FALSE, recursive = TRUE)

format_img <- ".pdf"
