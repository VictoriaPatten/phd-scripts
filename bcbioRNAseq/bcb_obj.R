setwd("/ilifu/bio/projects/vp-virus/bcbio/RNASeq_analysis/Bulk_RNAseq")

library(DESeq2)
library(bcbioRNASeq)


bcb <- bcbioRNASeq(
    uploadDir = file.path("no_outliers", "final"),
    organism = "Homo sapiens",
    interestingGroups = "phenotype",
    ensemblRelease = 95L
)

saveRDS(bcb, file="no_outliers/script/bcb.RDS")

print('Done')

