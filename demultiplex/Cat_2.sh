#!/bin/bash -l
#SBATCH -D /home/makman/ProSNP/trimmomatic/
#SBATCH -J Demul124
#SBATCH -o /home/makman/ProSNP/outs/cat2_stdout.txt
#SBATCH -e /home/makman/ProSNP/outs/cat2_stderr.txt
#SBATCH --mail-type=All
#SBATCH --mail-user=makman@ucdavis.edu
#SBATCH -p med
#SBATCH --ntasks=32
cat Afternoon_reverse.fastq Morning_reverse.fastq > Plate1_2_reverse.fastq