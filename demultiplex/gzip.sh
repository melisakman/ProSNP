#!/bin/bash -l
#SBATCH -D /home/makman/ProSNP/trimmomatic/
#SBATCH -J gzip
#SBATCH -o /home/makman/ProSNP/outs/gzip_stdout.txt
#SBATCH -e /home/makman/ProSNP/outs/gzip_stderr.txt
#SBATCH --mail-type=All
#SBATCH --mail-user=makman@ucdavis.edu
#SBATCH -p med
#SBATCH --ntasks=8
#SBATCH --array=0-5
gunzip Plate4_forward.fastq.gz
gunzip Plate4_reverse.fastq.gz
gzip Afternoon_forward.fastq
gzip Afternoon_reverse.fastq
gzip Morning_forward.fastq
gzip Morning_reverse.fastq
