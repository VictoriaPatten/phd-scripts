#!/bin/bash

#SBATCH --job-name="PD39445_gemini"
#SBATCH --output="PD39445_gemini_%j_stdout.log"
#SBATCH --error="PD39445_gemini_%j_stderr.log"
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=24G
#SBATCH --nodes=1
#SBATCH --time=01:00:00

module add gemini

cd /ilifu/bio/projects/vp-virus/GEMINI/databases

gemini query --header --show-samples -q "select variant_id, chrom, start, end, gene, ref, alt, impact_so, impact_severity \
                                         from variants where gene in ('TERT','AJUBA','BRCA1','BRCA2','CCND1','CDKN2A','CREBBP','CUL3','EGRF','EP300','ERBB4','FAT1','FAT2','FAT4','FBXW7','KDM6A','KMT2C','KMT2D','LRP1B','NFE2L2','NOTCH1','NOTCH2','NOTCH3','PIK3CA','PREX2','PTCH1','RB1','TGFBR2','TP53') and call_rate >= 0.95" PD39445_bcbio_vardict.db
