#!/bin/bash

#SBATCH --job-name="pon_vcf"
#SBATCH --output="pon_vcf_%j_stdout.log"
#SBATCH --error="pon_vcf_%j_stderr.log"
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --nodes=1
#SBATCH --mem=100G
#SBATCH --time=7-0

shopt -s expand_aliases
module add gatk/4.3.0.0


export OMP_NUM_THREADS=8

cd /ilifu/bio/projects/vp-virus/bcbio/patients_WGS/revision2023/scripts/PoN

gatk CreateSomaticPanelOfNormals -R ../../hg38/hg38.fa -V gendb://pon_db -O pon_all_qsorted.vcf.gz
