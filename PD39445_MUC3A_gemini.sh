#!/bin/bash
#SBATCH --job-name="PD39445_MUC3A"
#SBATCH --output="PD39445_MUC3A_%j_stdout.log"
#SBATCH --error="PD39445_MUC3A_%j_stderr.log"
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=24G
#SBATCH --nodes=1
#SBATCH --time=01:00:00
module add gemini
cd /ilifu/bio/projects/vp-virus/GEMINI/databases
gemini query --header --show-samples -q "select variant_id, chrom, start, end, gene, ref, alt, impact, impact_severity from variants where gene='MUC3A' and impact_severity='HIGH'" PD39445_bcbio_vardict.db
