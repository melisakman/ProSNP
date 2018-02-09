#!/bin/bash -l
#SBATCH -D /home/makman/Rawdata/
#SBATCH -J cat4-5-6
#SBATCH -o /home/makman/ProSNP/outs/new/cat_plate456.out
#SBATCH -e /home/makman/ProSNP/outs/new/cat_plate456.err
#SBATCH --mail-type=All
#SBATCH --time=72:00:00
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH -p bigmemm

cat NYU/ma_2_NoIndex_L002_R1_001.fastq.gz UCB/plate4_ALMA3/Plate4_UCBdata_allforward.fastq.gz > combined/plate4_R1.fastq.gz
cat NYU/ma_2_NoIndex_L002_R2_001.fastq.gz UCB/plate4_ALMA3/Plate4_UCBdata_allreverse.fastq.gz > combined/plate4_R2.fastq.gz
cat NYU/ma_3_NoIndex_L003_R1_001.fastq.gz NYU/ma_4_NoIndex_L004_R1_001.fastq.gz > combined/plate5_R1.fastq.gz
cat NYU/ma_3_NoIndex_L003_R2_001.fastq.gz NYU/ma_4_NoIndex_L004_R2_001.fastq.gz > combined/plate5_R2.fastq.gz
cat NYU/ma_5_NoIndex_L005_R1_001.fastq.gz NYU/2_NoIndex_L008_R1_001.fastq.gz > combined/plate6_R1.fastq.gz
cat NYU/ma_5_NoIndex_L005_R2_001.fastq.gz NYU/2_NoIndex_L008_R2_001.fastq.gz > combined/plate6_R2.fastq.gz