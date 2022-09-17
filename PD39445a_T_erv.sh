#!/bin/bash

#SBATCH --job-name="PD39445a_T_erv"
#SBATCH --output="PD39445a_T_erv_%j.stdout.log"
#SBATCH --error="PD39445a_T_erv_%j.stderr.log"
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem=200G
#SBATCH --time=3-0
#SBATCH --chdir=/ilifu/bio/projects/vp-virus/sorted_bam_files

singularity exec -W /scratch/users/victoria /ilifu/software/containers/vp-virus-ervcaller.simg perl /opt/ERVcaller_v1.4/ERVcaller_v1.4.pl -i PD39445a_T_sorted -f .bam -H ../ERVcaller/hg38/hg38.fa -T /opt/ERVcaller_v1.4/Database/TE_consensus.fa -S 20 -t 16 -I ./sanger_bam_files/ -BWA_MEM
