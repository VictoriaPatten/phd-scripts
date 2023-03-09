#!/bin/bash

#SBATCH --job-name="PD39448_PON"
#SBATCH --output="PD39448_PON_%j_stdout.log"
#SBATCH --error="PD39448_PON_%j_stderr.log"
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --nodes=1
#SBATCH --mem=232G
#SBATCH --time=7-0

shopt -s expand_aliases
module add gatk/4.3.0.0


export OMP_NUM_THREADS=8

cd /ilifu/bio/projects/vp-virus/bcbio/patients_WGS/revision2023/scripts/PoN

 gatk Mutect2 \
   -R ../../hg38/hg38.fa \
   -I ../../qsorted_indexed/PD39448b_sorted_qsort.bam \
   --max-mnp-distance 0 \
   -O PD39448b_qsort_PON.vcf.gz
