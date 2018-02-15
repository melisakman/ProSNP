#!/bin/bash -l
#SBATCH -D /home/makman/ProSNP/trimmomatic
#SBATCH -J Trim4
#SBATCH -o /home/makman/ProSNP/outs/trimmomatic_ProSNP_stdout.txt
#SBATCH -e /home/makman/ProSNP/outs/trimmomatic_ProSNP_stderr.txt
#SBATCH --mail-type=All
#SBATCH --mail-user=makman@ucdavis.edu
#SBATCH -p bigmemm
#SBATCH --ntasks=32
#SBATCH --array=1-8
R1 R2 R1_paired R1_unpaired R2_paired R2 unpaired ILLUMINACLIP:adapters.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
module load java
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
java -jar ./trimmomatic-0.33.jar PE 
