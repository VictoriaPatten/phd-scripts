#!/bin/bash

#SBATCH --job-name="PD39445_chr1"
#SBATCH --output="PD39445_chr1_%j_stdout.log"
#SBATCH --error="PD39445_chr1_%j_stderr.log"
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=24G
#SBATCH --nodes=1
#SBATCH --time=01:00:00

module add gemini

cd /ilifu/bio/projects/vp-virus/GEMINI/databases

gemini query --header --show-samples -q "select variant_id,gene, impact_severity,impact,is_lof,start,end from variants where chrom='chr1' and impact_severity='HIGH'" PD39445_bcbio_vardict.db



