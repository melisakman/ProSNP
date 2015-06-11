#!/bin/bash -l
#SBATCH -D /home/makman/ProSNP/trimmomatic/
#SBATCH -J Demul124
#SBATCH -o /home/makman/ProSNP/outs/cat_stdout.txt
#SBATCH -e /home/makman/ProSNP/outs/cat_stderr.txt
#SBATCH --mail-type=All
#SBATCH --mail-user=makman@ucdavis.edu
#SBATCH -p med
#SBATCH --ntasks=32
#SBATCH --array=0-1
cat Afternoon_forward.fastq Morning_forward.fastq > Plate1_2_forward.fastq
cat Afternoon_reverse.fastq Morning_reverse.fastq > Plate1_2_reverse.fastq