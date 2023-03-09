# phd-scripts

Presented here are example scripts used for all bioinformatics analyses conducted in my PhD. Scripts were ammended for each patient number respectively, and where applicable, run for tumour and normal samples for each patient.

Bioinformatics analyses were carried out on Whole Genome Sequence (WGS) data and RNA-sequenced (RNA-seq) data from oesophageal squamous cell carcinoma (OSCC) patients in South Africa. Tumour and matched normal pairs were sequnced and used for the analyses. 

`ERVcaller` was used for the detection and analysis of HERV's in WGS data.
`bcbio-nextgen` was used for variant calling and the identification of somatic mutations in the WGS data.
`Panel of Normals` was used for variant calling with Mutect2 and a panel of normals as background, to eliminate false positives of somatic mutations in WGS data.
`bcbioRNAseq` is an R package that was used together with `bcbio-nextgen` to perform quality control, differential gene expression analysis and functional enrichment analysis on RNA-seq data. 

Also presented are the KEGG pathway images as identified in the functional enrichment analysis using the bcbioRNAseq R package and Markdown templates.
