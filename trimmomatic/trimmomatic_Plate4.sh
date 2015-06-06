#!/bin/bash -l
#SBATCH -D /home/makman/ProSNP/trimmomatic
#SBATCH -J Trim4
#SBATCH -o /home/makman/ProSNP/outs/trimmomatic_Plate4_stdout.txt
#SBATCH -e /home/makman/ProSNP/outs/trimmomatic_Plate4_stderr.txt
#SBATCH --mail-type=All
#SBATCH --mail-user=makman@ucdavis.edu
#SBATCH -p med
#SBATCH --ntasks=32

module load java
java -jar ./trimmomatic-0.33.jar PE /home/makman/Rawdata/UCB/plate4_ALMA3/Plate4_UCBdata_allforward.fastq.gz  /home/makman/Rawdata/UCB/plate4_ALMA3/Plate4_UCBdata_allreverse.fastq.gz /home/makman/ProSNP/trimmomatic/Plate4_forward.fastq.gz  /home/makman/ProSNP/trimmomatic/Plate4_forward_unmapped.fastq.gz /home/makman/ProSNP/trimmomatic/Plate4_reverse.fastq.gz /home/makman/ProSNP/trimmomatic/Plate4_reverse_unmapped.fastq.gz ILLUMINACLIP:adapters.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
