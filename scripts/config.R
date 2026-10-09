# config.R: single source of paths for the KINASE-MAPS pipeline.
# All scripts are run from the scripts/ directory , so every path
# here is relative to scripts/.

base_dir <- normalizePath(".")

# --- input data ---
data_path        <- "../data/"                 # base
data_fitness     <- "../data/fitness/"         # per-kinase DiMSum fitness_*.txt
data_alignment   <- "../data/alignment/"       # KinCore alignment fasta
data_pockets     <- "../data/pockets/"         # pocket residue map + metrics
data_struct      <- "../data/structural/"      # PDBs, features, distances, FTmap
data_mochi       <- "../data/mochi/"           # MoCHI outputs: weights (ddG source) + predicted phenotypes

# --- outputs ---
results_path     <- "../results/"              # figure panels (subfolders Fig1, FigS1, ...)
results_newdata  <- "../results/01_newdata/"   # regenerated .Rdata / .csv intermediates

# create output dirs if missing 
for (d in c(results_path, results_newdata, paste0(results_path, "00_chimera/")))
  dir.create(d, showWarnings = FALSE, recursive = TRUE)

format_img <- ".pdf"
