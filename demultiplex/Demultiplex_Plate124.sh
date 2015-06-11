#!/bin/bash -l
#SBATCH -D /home/makman/ProSNP/demultiplex/
#SBATCH -J Demul124
#SBATCH -o /home/makman/ProSNP/outs/demultiplex_57Plate4_stdout.txt
#SBATCH -e /home/makman/ProSNP/outs/demultiplex_57Plate4_stderr.txt
#SBATCH --mail-type=All
#SBATCH --mail-user=makman@ucdavis.edu
#SBATCH -p med
#SBATCH --ntasks=64
#SBATCH --array=0-5
module load FASTX-Toolkit
module load perl
cat /home/makman/ProSNP/trimmomatic/Plate1_2_forward.fastq | /home/makman/ProExp/fastx_barcode_splitter.pl --bcfile barcodes_Plate12.txt --bol --suffix .fastq.gz --mismatches 1
cat /home/makman/ProSNP/trimmomatic/Plate1_2_reverse.fastq | /home/makman/ProExp/fastx_barcode_splitter.pl --bcfile barcodes_Plate12.txt --bol --suffix .fastq.gz --mismatches 1
cat /home/makman/ProSNP/trimmomatic/Plate4_forward.fastq | /home/makman/ProExp/fastx_barcode_splitter.pl --bcfile barcodes_Plate4.txt --bol --suffix .fastq.gz --mismatches 1
cat /home/makman/ProSNP/trimmomatic/Plate4_reverse.fastq | /home/makman/ProExp/fastx_barcode_splitter.pl --bcfile barcodes_Plate4.txt --bol --suffix .fastq.gz --mismatches 1
