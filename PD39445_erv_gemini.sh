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
                                                                   from variants where gene in ('TPM1','TMEM117','LINC00559','CHIAP1','ANO2','TMED2-DT','WDHD1','NVL','ZNF528','CCDC185','DUX4L2','SUSD2','MINCR','ZNF16','SCGB1D1','CHIAP2','ZNF419','CNIH4','DPPA5P1','CAPN8','DUX4','GGT5','ZNF696','SCGB2A1') and call_rate >= 0.95" PD39445_bcbio_vardict.db
