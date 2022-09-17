#!/bin/bash

#SBATCH --job-name="PD39457_SnpSiftFilter"
#SBATCH --output="PD39457_snpSift_%j_stdout.log"
#SBATCH --error="PD39457_snpSift_%j_stderr.log"
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=24G
#SBATCH --nodes=1
#SBATCH --time=01:00:00

cd /ilifu/bio/projects/vp-virus/SnpSiftFilter/snpEff

java -jar SnpSift.jar extractFields ../snpSiftFilter_PD39457/PD39457-tumor-vardict.vcf CHROM POS REF ALT "(ANN[*].GENE = 'MUC3A') & (ANN[*].IMPACT = 'HIGH') & (ANN[*].EFFECT)" | head







java -jar SnpSift.jar filter "( CHROM = 'chr7' ) && ( ANN[*].GENE = 'MUC3A' ) && ( ANN[*].IMPACT = 'HIGH' )" ../snpSiftFilter_PD39457/PD39457-tumor-vardict.vcf | java -jar SnpSift.jar extractFields - CHROM POS REF ALT STATUS "ANN[*].EFFECT"
