## In order to run gdbsource on the R script, run this script:

## If running under 64 bit Windows, first run this tomake sure 
## the directories are in the corect order:

fixwinpath <- function() {
  PATH <- Sys.getenv("PATH")
  PATH <- paste0(R.home(), "/bin/x64;", PATH)
  PATH <- paste0("c:/Rtools/mingw_64/bin;", PATH)
  Sys.setenv(PATH=PATH)
}

fixwinpath()

## Then load TMB and run the script:

library(TMB)
gdbsource('./R/harps_and_hoods_population_model3.R', interactive=T)

