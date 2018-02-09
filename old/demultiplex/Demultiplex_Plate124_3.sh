#!/bin/bash -l
#SBATCH -D /home/makman/ProSNP/demultiplex/
#SBATCH -J Demul124
#SBATCH -o /home/makman/ProSNP/outs/demultiplex_Plate124_3_stdout.txt
#SBATCH -e /home/makman/ProSNP/outs/demultiplex_Plate124_3_stderr.txt
#SBATCH --mail-type=All
#SBATCH --time=72:00:00
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH -p serial
module load FASTX-Toolkit
module load perl
cat /home/makman/ProSNP/trimmomatic/Plate4_forward.fastq | /home/makman/ProSNP/fastx_barcode_splitter.pl --bcfile barcodes_Plate4.txt --bol --prefix ProSNP3_ --suffix .fastq --mismatches 1
