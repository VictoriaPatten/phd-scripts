RNAseq_VC_tumour.yaml
This configuration file was used for variant calling on each tumour and normal sample. The star aligner is specified along with vardict variant caller and the reference genome, hg38. Raw bam files were used as input. This configuration was set for each tumour and normal sample for every patient. This is an example file, and was ammended for each patient number and phenotype respectively. 

bulk_rnaseq.yaml
This configuration file was run combining all tumour and normal data in one single bcbioRNAseq run. The output from this pipeline was used to create an R object used in bcbioRNAseq for differential gene expression analysis and functional enrichment analysis. The star aligner was specified, and importantly, so were the 'interesting_groups', 'orgnaism' and 'strandedness' parameters. 

bcb_obj.R
This R script was run to creat an R object from the output data of the bcbioRNAseq pipeline, to be used in differential gene expression and functional enrichment analyses
