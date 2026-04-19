# Mini Genomic Region Processing Pipeline in R

## Overview
This project implements a simple bioinformatics pipeline in R using Bioconductor.

The pipeline:
- filters genomic regions by expression threshold
- filters sequences by motif occurrence
- adjusts sequences according to strand orientation
- returns aligned genomic, sequence, and expression outputs

## Tools used
- R
- GenomicRanges
- Biostrings

## Files
- `script/process_regions.R`: main pipeline function
- `data/example_data.R`: example GRanges, DNAStringSet, and expression data

## Example
```r
res <- process_regions(gr, dna, expr, expr_cutoff = 19, motif = "CC")
