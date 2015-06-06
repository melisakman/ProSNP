#!/bin/bash -l
#SBATCH -D /home/makman/ProSNP/trimmomatic
#SBATCH -J Trim4
#SBATCH -o /home/makman/ProSNP/outs/trimmomatic_Plate4_stdout.txt
#SBATCH -e /home/makman/ProSNP/outs/trimmomatic_Plate4_stderr.txt
#SBATCH --mail-type=All
#SBATCH --mail-user=makman@ucdavis.edu
#SBATCH -p bigmemh
#SBATCH --ntasks=32
#SBATCH --array=0-1

module load java
java -jar ./trimmomatic-0.33.jar PE /home/makman/Rawdata/UCB/plate4_ALMA3/Plate4_UCBdata_allforward.fastq.gz  /home/makman/Rawdata/UCB/plate4_ALMA3/Plate4_UCBdata_allreverse.fastq.gz /home/makman/ProSNP/trimmomatic/  /home/makman/ProSNP/trimmomatic/ /home/makman/ProSNP/trimmomatic/ /home/makman/ProSNP/trimmomatic/ ILLUMINACLIP:adapters.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
