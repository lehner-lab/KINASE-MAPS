# Run the full pipeline: Rscript run_all.R (from scripts/)

args <- commandArgs(FALSE)
setwd(dirname(normalizePath(sub("--file=", "", grep("--file=", args, value = TRUE)[1]))))

scripts <- c("001.1_functions", "001.2_datareading", "001.3_ddg_normalization",
             "01_fitness", "02_mochiquality", "03_stability", "04_activesite",
             "05_distance_decay", "06_allostery", "07_pockets", "08_anisotropy",
             "09_domain_architecture")

for (s in scripts) {
  message("== ", s)
  cmd <- sprintf("f <- tempfile(fileext = '.R'); knitr::purl('%s.Rmd', f, quiet = TRUE); source(f)", s)
  if (system2("Rscript", c("-e", shQuote(cmd))) != 0) stop(s, " failed")
}
