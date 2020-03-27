#!/usr/bin/env Rscript

library(rmarkdown)
library(tools)

# Get command line arguments
args = commandArgs(trailingOnly=TRUE)

# Read inputs
snp_mat <- read.table(file_path_as_absolute(args[1]), header = T, sep = "\t", row.names = 1)
nwk <- file_path_as_absolute(args[2])
report <- file_path_as_absolute(args[3])

# Render the report
render(report, output_file='monroe_report.pdf')
