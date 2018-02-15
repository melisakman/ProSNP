#!/bin/bash -l
#SBATCH -D /home/makman/Rawdata/combined/
#SBATCH -J gzip
#SBATCH -o /home/makman/ProSNP/outs/gzip.out
#SBATCH -e /home/makman/ProSNP/outs/gzip.err
#SBATCH --mail-type=All
#SBATCH --mail-user=makman@ucdavis.edu
#SBATCH --time=240:00:00
#SBATCH -p bigmemm


gzip *.fastq