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

module load java
java -jar ./trimmomatic-0.33.jar PE /home/makman/Rawdata/UCD/Afternoon_NoIndex_L002_R1_001.fastq.gz /home/makman/Rawdata/UCD/Afternoon_NoIndex_L002_R3_001.fastq.gz /home/makman/ProSNP/trimmomatic/Afternoon_forward.fastq.gz /home/makman/ProSNP/trimmomatic/Afternoon_forward_unpaired.fastq.gz /home/makman/ProSNP/trimmomatic/Afternoon_reverse.fastq.gz /home/makman/ProSNP/trimmomatic/Afternoon_reverse_unpaired.fastq.gz ILLUMINACLIP:adapters.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar ./trimmomatic-0.33.jar PE /home/makman/Rawdata/UCD/Morning_NoIndex_L001_R1_001.fastq.gz /home/makman/Rawdata/UCD/Morning_NoIndex_L001_R3_001.fastq.gz /home/makman/ProSNP/trimmomatic/Morning_forward.fastq.gz /home/makman/ProSNP/trimmomatic/Morning_forward_unpaired.fastq.gz /home/makman/ProSNP/trimmomatic/Morning_reverse.fastq.gz /home/makman/ProSNP/trimmomatic/Morning_reverse_unpaired.fastq.gz ILLUMINACLIP:adapters.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar ./trimmomatic-0.33.jar PE /home/makman/Rawdata/UCB/plate4_ALMA3/Plate4_UCBdata_allforward.fastq.gz  /home/makman/Rawdata/UCB/plate4_ALMA3/Plate4_UCBdata_allreverse.fastq.gz /home/makman/ProSNP/trimmomatic/Plate4_forward.fastq.gz  /home/makman/ProSNP/trimmomatic/Plate4_forward_unpaired.fastq.gz /home/makman/ProSNP/trimmomatic/Plate4_reverse.fastq.gz /home/makman/ProSNP/trimmomatic/Plate4_reverse_unpaired.fastq.gz ILLUMINACLIP:adapters.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar ./trimmomatic-0.33.jar PE /home/makman/Rawdata/NYU/2_NoIndex_L008_R1_001.fastq.gz  /home/makman/Rawdata/NYU/2_NoIndex_L008_R2_001.fastq.gz /home/makman/ProSNP/trimmomatic/NYU2_forward.fastq.gz  /home/makman/ProSNP/trimmomatic/NYU2_forward_unpaired.fastq.gz /home/makman/ProSNP/trimmomatic/NYU2_reverse.fastq.gz /home/makman/ProSNP/trimmomatic/NYU2_reverse_unpaired.fastq.gz ILLUMINACLIP:adapters.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar ./trimmomatic-0.33.jar PE /home/makman/Rawdata/NYU/ma_2_NoIndex_L002_R1_001.fastq.gz  /home/makman/Rawdata/NYU/ma_2_NoIndex_L002_R2_001.fastq.gz /home/makman/ProSNP/trimmomatic/NYU_ma2_forward.fastq.gz  /home/makman/ProSNP/trimmomatic/NYU_ma2_forward_unpaired.fastq.gz /home/makman/ProSNP/trimmomatic/NYU_ma2_reverse.fastq.gz /home/makman/ProSNP/trimmomatic/NYU_ma2_reverse_unpaired.fastq.gz ILLUMINACLIP:adapters.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar ./trimmomatic-0.33.jar PE /home/makman/Rawdata/NYU/ma_3_NoIndex_L002_R1_001.fastq.gz  /home/makman/Rawdata/NYU/ma_3_NoIndex_L002_R2_001.fastq.gz /home/makman/ProSNP/trimmomatic/NYU_ma3_forward.fastq.gz  /home/makman/ProSNP/trimmomatic/NYU_ma3_forward_unpaired.fastq.gz /home/makman/ProSNP/trimmomatic/NYU_ma3_reverse.fastq.gz /home/makman/ProSNP/trimmomatic/NYU_ma3_reverse_unpaired.fastq.gz ILLUMINACLIP:adapters.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar ./trimmomatic-0.33.jar PE /home/makman/Rawdata/NYU/ma_4_NoIndex_L002_R1_001.fastq.gz  /home/makman/Rawdata/NYU/ma_4_NoIndex_L002_R2_001.fastq.gz /home/makman/ProSNP/trimmomatic/NYU_ma4_forward.fastq.gz  /home/makman/ProSNP/trimmomatic/NYU_ma4_forward_unpaired.fastq.gz /home/makman/ProSNP/trimmomatic/NYU_ma4_reverse.fastq.gz /home/makman/ProSNP/trimmomatic/NYU_ma4_reverse_unpaired.fastq.gz ILLUMINACLIP:adapters.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar ./trimmomatic-0.33.jar PE /home/makman/Rawdata/NYU/ma_5_NoIndex_L002_R1_001.fastq.gz  /home/makman/Rawdata/NYU/ma_5_NoIndex_L002_R2_001.fastq.gz /home/makman/ProSNP/trimmomatic/NYU_ma5_forward.fastq.gz  /home/makman/ProSNP/trimmomatic/NYU_ma5_forward_unpaired.fastq.gz /home/makman/ProSNP/trimmomatic/NYU_ma5_reverse.fastq.gz /home/makman/ProSNP/trimmomatic/NYU_ma5_reverse_unpaired.fastq.gz ILLUMINACLIP:adapters.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36