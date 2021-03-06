#!/usr/bin/env Rscript

suppressPackageStartupMessages(library("argparse"))
    
parser = ArgumentParser()
parser$add_argument("--infercnv_obj", help="infercnv_obj file", required=TRUE, nargs=1)
args = parser$parse_args()

library(infercnv)
library(ggplot2)
library(futile.logger)

infercnv_obj_file = args$infercnv_obj

infercnv_obj = readRDS(infercnv_obj_file)

pdf('ladeda.pdf')

