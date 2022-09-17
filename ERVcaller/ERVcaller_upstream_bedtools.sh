#!/bin/bash

#SBATCH --output="sanger_upstream_bedtools_%j.stdout.log"
#SBATCH --error="sanger_upstream_bedtools_%j.stderr.log"
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=50G
#SBATCH --time=00:05:00
#SBATCH --chdir=/ilifu/bio/projects/vp-virus/ERVcaller/bedtools/input


singularity exec /ilifu/software/containers/vp-virus-bcbio.simg bedtools closest -a data_bedfile_sortuniq2.bed -b ./genes_bedfile/gff_bedfile_sorted.bed -D a -id > upstream_results2.bed

