process_regions <- function(gr, dna, expr, expr_cutoff, motif) {

  gr_expr   <- gr[expr >= expr_cutoff]
  dna_expr  <- dna[expr >= expr_cutoff]
  expr_expr <- expr[expr >= expr_cutoff]

  keep <- vcountPattern(motif, dna_expr) > 0

  gr_motif   <- gr_expr[keep]
  dna_motif  <- dna_expr[keep]
  expr_motif <- expr_expr[keep]

  bio_seq <- dna_motif
  bio_seq[strand(gr_motif) == "-"] <-
    reverseComplement(dna_motif[strand(gr_motif) == "-"])

  list(
    gr = gr_motif,
    dna = dna_motif,
    bio_seq = bio_seq,
    expr = expr_motif
  )
}
