#!/bin/bash -l
#SBATCH -D /home/makman/STAR/bin/Linux_x86_64/
#SBATCH -J star7
#SBATCH -o /home/makman/ProSNP/outs/star_map7.out
#SBATCH -e /home/makman/ProSNP/outs/star_map7.err
#SBATCH --mail-type=All
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH -p bigmemm
#SBATCH --mem=72GB
#SBATCH --time=400:00:00

module load fastx/0.0.14
module load perlbrew/5.16.0
gzip /home/makman/Rawdata/combined/ProSNP5_CER1117_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_CER1117_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CER1117_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CER1117_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CER1117_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat

gzip /home/makman/Rawdata/combined/ProSNP5_GAR1019_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_GAR1019_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_GAR1019_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_GAR1019_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_GAR1019_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat

gzip /home/makman/Rawdata/combined/ProSNP5_KAR1044_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_KAR1044_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KAR1044_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KAR1044_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KAR1044_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat

gzip /home/makman/Rawdata/combined/ProSNP5_KAR1063_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_KAR1063_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KAR1063_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KAR1063_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KAR1063_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat

gzip /home/makman/Rawdata/combined/ProSNP5_KAR122_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_KAR122_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KAR122_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KAR122_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KAR122_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat

gzip /home/makman/Rawdata/combined/ProSNP5_KAR178_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_KAR178_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KAR178_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KAR178_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KAR178_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
