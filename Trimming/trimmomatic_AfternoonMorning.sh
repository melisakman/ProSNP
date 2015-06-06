#!/bin/bash -l
#SBATCH -D /home/makman/ProSNP/trimmomatic
#SBATCH -J Trim4
#SBATCH -o /home/makman/ProSNP/outs/trimmomatic_AfternoonMorning_stdout.txt
#SBATCH -e /home/makman/ProSNP/outs/trimmomatic_AfternoonMorning_stderr.txt
#SBATCH --mail-type=All
#SBATCH --mail-user=makman@ucdavis.edu
#SBATCH -p bigmemh
#SBATCH --ntasks=32
#SBATCH --array=0-1

module load java
java -jar ./trimmomatic-0.33.jar PE /home/makman/Rawseq/UCD/Afternoon_NoIndex_L002_R1_001.fastq.gz  /home/makman/Rawseq/UCD/Afternoon_NoIndex_L002_R3_001.fastq.gz /home/makman/ProSNP/trimmomatic/Afternoon_forward.fastq.gz  /home/makman/ProSNP/trimmomatic/Afternoon_forward_unmapped.fastq.gz /home/makman/ProSNP/trimmomatic/Afternoon_reverse.fastq.gz /home/makman/ProSNP/trimmomatic/Afternoon_reverse_unmapped.fastq.gz ILLUMINACLIP:adapters.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar ./trimmomatic-0.33.jar PE /home/makman/Rawseq/UCD/Morning_NoIndex_L001_R1_001.fastq.gz  /home/makman/Rawseq/UCD/Morning_NoIndex_L001_R3_001.fastq.gz /home/makman/ProSNP/trimmomatic/Morning_forward.fastq.gz  /home/makman/ProSNP/trimmomatic/Morning_forward_unmapped.fastq.gz /home/makman/ProSNP/trimmomatic/Morning_reverse.fastq.gz /home/makman/ProSNP/trimmomatic/Morning_reverse_unmapped.fastq.gz ILLUMINACLIP:adapters.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
