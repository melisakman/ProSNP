#!/bin/bash -l
#SBATCH -D /home/makman/ProSNP
#SBATCH -J FastQC
#SBATCH -o /home/makman/ProSNP/outs/FastQC_raw_stdout.txt
#SBATCH -e /home/makman/ProSNP/outs/FastQC_raw_stderr.txt
#SBATCH --mail-type=All
#SBATCH --mail-user=makman@ucdavis.edu
#SBATCH -p hi
#SBATCH --ntasks=16
#SBATCH --array=0-1
module load fastqc
fastqc /home/makman/Rawdata/NYU/ma_2_NoIndex_L002_R1_001.fastq.gz
fastqc /home/makman/Rawdata/NYU/ma_2_NoIndex_L002_R2_001.fastq.gz