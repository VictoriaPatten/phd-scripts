#!/bin/bash

#SBATCH --job-name="PONS"
#SBATCH --output="PONS_%j_stdout.log"
#SBATCH --error="PONS_%j_stderr.log"
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --nodes=1
#SBATCH --mem=232G
#SBATCH --time=7-0

shopt -s expand_aliases
module add gatk/4.3.0.0


export OMP_NUM_THREADS=8

cd /ilifu/bio/projects/vp-virus/bcbio/patients_WGS/revision2023/scripts/PoN

 gatk GenomicsDBImport -R ../../hg38/hg38.fa -L chr7 \
   --genomicsdb-workspace-path pon_db \
   -V PD39445b_qsort_PON.vcf.gz \
   -V PD39446b_qsort_PON.vcf.gz \
   -V PD39447b_qsort_PON.vcf.gz \
   -V PD39448b_qsort_PON.vcf.gz \
   -V PD39449b_qsort_PON.vcf.gz \
   -V PD39450b_qsort_PON.vcf.gz \
   -V PD39451b_qsort_PON.vcf.gz \
   -V PD39452b_qsort_PON.vcf.gz \
   -V PD39453b_qsort_PON.vcf.gz \
   -V PD39454b_qsort_PON.vcf.gz \
   -V PD39455b_qsort_PON.vcf.gz \
   -V PD39456b_qsort_PON.vcf.gz \
   -V PD39457b_qsort_PON.vcf.gz \
   -V PD39458b_qsort_PON.vcf.gz \
   -V PD39459b_qsort_PON.vcf.gz \
   -V PD39460b_qsort_PON.vcf.gz \
   -V PD44691b_qsort_PON.vcf.gz \
   -V PD44692b_qsort_PON.vcf.gz \
   -V PD44693b_qsort_PON.vcf.gz \
   -V PD44694b_qsort_PON.vcf.gz \
   -V PD44695b_qsort_PON.vcf.gz \
   -V PD44696b_qsort_PON.vcf.gz \
   -V PD44697b_qsort_PON.vcf.gz \
   -V PD44698b_qsort_PON.vcf.gz \
   -V PD44699b_qsort_PON.vcf.gz \
   -V PD44700b_qsort_PON.vcf.gz \
   -V PD44701b_qsort_PON.vcf.gz \
   -V PD44702b_qsort_PON.vcf.gz \
   -V PD44703b_qsort_PON.vcf.gz \
   -V PD44704b_qsort_PON.vcf.gz \
   -V PD50649b_qsort_PON.vcf.gz \
   -V PD50650b_qsort_PON.vcf.gz \
   -V PD50651b_qsort_PON.vcf.gz \
   -V PD50653b_qsort_PON.vcf.gz \
   -V PD51372b_qsort_PON.vcf.gz
