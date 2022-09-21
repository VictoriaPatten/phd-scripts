#All scripts shown are example scripts and were ammended for each patient number respectively.

`bcbio_config.yaml`
This is an example configuration script of how tumour-normal pairs were run through the bcbio pipeline to obtain database files of somatic variants. 

`sanger_gemini_search.sh`
This is the gemini query used to search for variants in the list of mutated genes previously identified at the Wellcome Sanger Institute

`erv_gemini_search.sh`
This is the gemini query used to search for varinats in the list of genes proximally located to HERV-K insertions identified through the ERVcaller pipeline.

`HIGH_impact_gemini_search.sh`
This gemini query was run for each chromosome in ever patient to identify all HIGH impact severity variants

`MUC3A_snpSiftFilter.sh`
This snpSift Filter script was used to confirm the gemini variants detected
