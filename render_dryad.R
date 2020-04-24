#!/usr/bin/env Rscript

library(rmarkdown)
library(tools)

# Get command line arguments
args = commandArgs(trailingOnly=TRUE)

# Read inputs
snp_mat <- read.table(file_path_as_absolute(args[1]), header = T)
nwk <- file_path_as_absolute(args[2])
ar_df <- read.table(file_path_as_absolute(args[3]), header = T, stringsAsFactors = F)
report <- file_path_as_absolute(args[4])

# Render the report
render(report, output_file='report.pdf')
