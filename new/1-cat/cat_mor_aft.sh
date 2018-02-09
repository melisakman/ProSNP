#!/bin/bash -l
#SBATCH -D /home/makman/Rawdata/
#SBATCH -J Demul124
#SBATCH -o /home/makman/ProSNP/outs/new/cat_mor_aft.out
#SBATCH -e /home/makman/ProSNP/outs/new/cat_mor_aft.err
#SBATCH --mail-type=All
#SBATCH --time=72:00:00
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH -p high

cat UCD/Afternoon_NoIndex_L002_R1_001.fastq.gz UCD/Morning_NoIndex_L001_R1_001.fastq.gz > UCD/plate12_R1.fastq.gz
cat UCD/Afternoon_NoIndex_L002_R3_001.fastq.gz UCD/Morning_NoIndex_L001_R3_001.fastq.gz > UCD/plate12_R3.fastq.gz