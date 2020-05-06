#!/usr/bin/env Rscript

library(rmarkdown)
library(tools)

# Get command line arguments
args = commandArgs(trailingOnly=TRUE)
args_len <- length(args);

# Read inputs
snp_mat <- read.table(file_path_as_absolute(args[1]), header = T)
nwk <- file_path_as_absolute(args[2])
report <- file_path_as_absolute(args[3])

# Check length of arguments
if (args_len == 4) {
    ar_df <- read.table(file_path_as_absolute(args[4]), header = T, stringsAsFactors = F)
}

# Render the report
render(report, output_file='report.pdf')
