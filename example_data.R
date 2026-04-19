library(GenomicRanges)
library(Biostrings)

gr <- GRanges(
  seqnames = c("chr1","chr1","chr2","chr2","chr3"),
  ranges = IRanges(start = c(3,10,20,35,50), width = 5),
  strand = c("+","-","-","+","-")
)

dna <- DNAStringSet(c("ATGCA", "CCGTT", "GGCCA", "TTTAA", "AACCG"))

expr <- c(12, 22, 19, 8, 30)
