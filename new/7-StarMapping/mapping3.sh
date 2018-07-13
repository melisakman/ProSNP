#!/bin/bash -l
#SBATCH -D /home/makman/STAR/bin/Linux_x86_64/
#SBATCH -J star3
#SBATCH -o /home/makman/ProSNP/outs/star_map3.out
#SBATCH -e /home/makman/ProSNP/outs/star_map3.err
#SBATCH --mail-type=All
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH -p bigmemm
#SBATCH --mem=72GB
#SBATCH --time=400:00:00

module load fastx/0.0.14
module load perlbrew/5.16.0
# gunzip /home/makman/Rawdata/combined/ProSNP12_ALC_12_R1_paired.fastq.paired.fq.gz
# gunzip /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired.fastq.paired.fq.gz
# # 
# /share/apps/fastx-0.0.14/bin/fastq_to_fasta -i /home/makman/Rawdata/combined/ProSNP12_ALC_12_R1_paired.fastq.paired -z -o /home/makman/Rawdata/combined/ProSNP12_ALC_12_R1_paired.fasta.gz
# /share/apps/fastx-0.0.14/bin/fastq_to_fasta -i /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired.fastq.paired -z -o /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired.fasta.gz
# 
# zcat /home/makman/Rawdata/combined/ProSNP12_ALC_12_R1_paired.fasta.gz | sed -s 's/ 1:N:0://' | gzip /home/makman/Rawdata/combined/-c > /home/makman/Rawdata/combined/ProSNP12_ALC_12_R1_paired_noPairInfo.fasta.gz
# zcat /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired.fasta.gz | sed -s 's/ 3:N:0://' | gzip /home/makman/Rawdata/combined/-c > /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired_noPairInfo.fasta.gz

# gunzip /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired_noPairInfo.fasta.gz
# /share/apps/fastx-0.0.14/bin/fastx_reverse_complement -i /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired_noPairInfo.fasta -z -o /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired_noPairInfo_RC.fasta.gz
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_ALC_12_R1_paired.fasta.gz /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired.fasta.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_ALC_12_D__ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat --peOverlapNbasesMin 1
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_ALC_12_R1_paired.fasta.gz /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired.fasta.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_ALC_12_E__ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat --peOverlapNbasesMin 15



# gzip /home/makman/Rawdata/combined/ProSNP12_ALC_12_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_ALC_12_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_ALC_12_B__ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_ALC1045_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_ALC1045_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ALC1045_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ALC1045_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_ALC_12_C_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_ALC_12_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_ALC_12_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_ALC_12_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_ALC_34_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_ALC_34_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_ALC_34_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_ALC_34_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_ALC_34_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_ALC_44_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_ALC_44_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_ALC_44_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_ALC_44_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_ALC_44_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_ANY_19_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_ANY_19_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_ANY_19_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_ANY_19_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_ANY_19_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_ANY_1_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_ANY_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_ANY_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_ANY_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_ANY_1_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_ANY_30_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_ANY_30_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_ANY_30_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_ANY_30_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_ANY_30_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_BAN_21_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_BAN_21_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_BAN_21_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_BAN_21_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_BAN_21_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_BAN_35_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_BAN_35_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_BAN_35_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_BAN_35_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_BAN_35_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_BAN_3_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_BAN_3_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_BAN_3_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_BAN_3_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_BAN_3_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_BAV_20_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_BAV_20_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_BAV_20_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_BAV_20_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_BAV_20_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_BAV_32_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_BAV_32_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_BAV_32_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_BAV_32_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_BAV_32_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_BAV_44_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_BAV_44_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_BAV_44_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_BAV_44_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_BAV_44_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_BRD_1_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_BRD_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_BRD_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_BRD_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_BRD_1_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_BRD_22_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_BRD_22_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_BRD_22_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_BRD_22_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_BRD_22_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_BRD_41_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_BRD_41_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_BRD_41_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_BRD_41_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_BRD_41_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_CDB_26_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_CDB_26_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_CDB_26_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_CDB_26_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_CDB_26_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_CDB_2_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_CDB_2_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_CDB_2_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_CDB_2_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_CDB_2_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_CDB_40_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_CDB_40_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_CDB_40_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_CDB_40_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_CDB_40_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_CER_1_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_CER_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_CER_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_CER_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_CER_1_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_CER_22_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_CER_22_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_CER_22_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_CER_22_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_CER_22_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_CER_42_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_CER_42_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_CER_42_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_CER_42_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_CER_42_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_GAR_1_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_GAR_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_GAR_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_GAR_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_GAR_1_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_GAR_20_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_GAR_20_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_GAR_20_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_GAR_20_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_GAR_20_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_GAR_41_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_GAR_41_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_GAR_41_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_GAR_41_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_GAR_41_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_KAR_1_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_KAR_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_KAR_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_KAR_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_KAR_1_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_KAR_25_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_KAR_25_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_KAR_25_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_KAR_25_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_KAR_25_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_KAR_42_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_KAR_42_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_KAR_42_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_KAR_42_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_KAR_42_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_KLM_20_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_KLM_20_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_KLM_20_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_KLM_20_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_KLM_20_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_KLM_45_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_KLM_45_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_KLM_45_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_KLM_45_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_KLM_45_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_KLM_5_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_KLM_5_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_KLM_5_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_KLM_5_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_KLM_5_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_KSW_20_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_KSW_20_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_KSW_20_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_KSW_20_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_KSW_20_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_KSW_45_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_KSW_45_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_KSW_45_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_KSW_45_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_KSW_45_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_KSW_4_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_KSW_4_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_KSW_4_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_KSW_4_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_KSW_4_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_LOE_1_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_LOE_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_LOE_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_LOE_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_LOE_1_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_LOE_23_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_LOE_23_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_LOE_23_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_LOE_23_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_LOE_23_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_LOE_45_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_LOE_45_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_LOE_45_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_LOE_45_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_LOE_45_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_MGU_17_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_MGU_17_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_MGU_17_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_MGU_17_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_MGU_17_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_MGU_1_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_MGU_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_MGU_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_MGU_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_MGU_1_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_MGU_57_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_MGU_57_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_MGU_57_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_MGU_57_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_MGU_57_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_POT_1_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_POT_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_POT_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_POT_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_POT_1_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_POT_26_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_POT_26_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_POT_26_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_POT_26_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_POT_26_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_POT_44_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_POT_44_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_POT_44_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_POT_44_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_POT_44_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_RIV_21_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_RIV_21_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_RIV_21_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_RIV_21_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_RIV_21_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_RIV_2_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_RIV_2_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_RIV_2_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_RIV_2_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_RIV_2_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_RIV_40_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_RIV_40_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_RIV_40_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_RIV_40_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_RIV_40_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_RND_1_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_RND_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_RND_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_RND_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_RND_1_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_RND_20_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_RND_20_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_RND_20_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_RND_20_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_RND_20_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_RND_44_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_RND_44_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_RND_44_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_RND_44_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_RND_44_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_SWA_1_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_SWA_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_SWA_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_SWA_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_SWA_1_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_SWA_20_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_SWA_20_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_SWA_20_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_SWA_20_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_SWA_20_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_SWA_45_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_SWA_45_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_SWA_45_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_SWA_45_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_SWA_45_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_UNI_1_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_UNI_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_UNI_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_UNI_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_UNI_1_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_UNI_24_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_UNI_24_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_UNI_24_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_UNI_24_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_UNI_24_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_UNI_39_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_UNI_39_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_UNI_39_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_UNI_39_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_UNI_39_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_VAN_15_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_VAN_15_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_VAN_15_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_VAN_15_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_VAN_15_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_VAN_29_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_VAN_29_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_VAN_29_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_VAN_29_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_VAN_29_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP12_VAN_2_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP12_VAN_2_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_VAN_2_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_VAN_2_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_VAN_2_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_ALC_1109_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_ALC_1109_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_ALC_1109_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_ALC_1109_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_ALC_1109_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_ALC_1132_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_ALC_1132_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_ALC_1132_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_ALC_1132_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_ALC_1132_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_ALC_314_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_ALC_314_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_ALC_314_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_ALC_314_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_ALC_314_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_ALC_573_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_ALC_573_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_ALC_573_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_ALC_573_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_ALC_573_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_ANY_111_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_ANY_111_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_ANY_111_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_ANY_111_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_ANY_111_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_ANY_1152_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_ANY_1152_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_ANY_1152_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_ANY_1152_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_ANY_1152_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_ANY_300_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_ANY_300_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_ANY_300_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_ANY_300_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_ANY_300_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_ANY_39_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_ANY_39_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_ANY_39_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_ANY_39_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_ANY_39_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_ANY_507_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_ANY_507_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_ANY_507_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_ANY_507_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_ANY_507_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_BAN_1060_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_BAN_1060_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BAN_1060_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BAN_1060_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BAN_1060_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_BAN_133_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_BAN_133_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BAN_133_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BAN_133_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BAN_133_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_BAN_200_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_BAN_200_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BAN_200_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BAN_200_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BAN_200_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_BAN_385_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_BAN_385_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BAN_385_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BAN_385_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BAN_385_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_BAV_1014_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_BAV_1014_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BAV_1014_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BAV_1014_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BAV_1014_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_BAV_1022_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_BAV_1022_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BAV_1022_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BAV_1022_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BAV_1022_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_BAV_22_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_BAV_22_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BAV_22_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BAV_22_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BAV_22_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_BAV_337_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_BAV_337_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BAV_337_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BAV_337_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BAV_337_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_BAV_448_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_BAV_448_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BAV_448_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BAV_448_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BAV_448_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_BRD_1215_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_BRD_1215_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BRD_1215_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BRD_1215_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BRD_1215_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_BRD_123_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_BRD_123_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BRD_123_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BRD_123_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BRD_123_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_BRD_356_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_BRD_356_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BRD_356_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BRD_356_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BRD_356_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_BRD_406_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_BRD_406_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BRD_406_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BRD_406_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BRD_406_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_BRD_513_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_BRD_513_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BRD_513_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BRD_513_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BRD_513_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_CDB_1100_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_CDB_1100_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_CDB_1100_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_CDB_1100_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_CDB_1100_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_CDB_252_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_CDB_252_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_CDB_252_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_CDB_252_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_CDB_252_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_CDB_28_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_CDB_28_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_CDB_28_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_CDB_28_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_CDB_28_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_CDB_440_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_CDB_440_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_CDB_440_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_CDB_440_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_CDB_440_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_CDB_567_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_CDB_567_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_CDB_567_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_CDB_567_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_CDB_567_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_CER_1023_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_CER_1023_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_CER_1023_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_CER_1023_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_CER_1023_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_CER_291_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_CER_291_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_CER_291_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_CER_291_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_CER_291_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_CER_39_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_CER_39_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_CER_39_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_CER_39_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_CER_39_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_CER_445_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_CER_445_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_CER_445_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_CER_445_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_CER_445_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_CER_50_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_CER_50_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_CER_50_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_CER_50_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_CER_50_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_GAR_11_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_GAR_11_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_GAR_11_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_GAR_11_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_GAR_11_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_GAR_259_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_GAR_259_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_GAR_259_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_GAR_259_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_GAR_259_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_GAR_298_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_GAR_298_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_GAR_298_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_GAR_298_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_GAR_298_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_GAR_309_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_GAR_309_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_GAR_309_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_GAR_309_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_GAR_309_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_GAR_574_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_GAR_574_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_GAR_574_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_GAR_574_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_GAR_574_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_KAR_1004_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_KAR_1004_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KAR_1004_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KAR_1004_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KAR_1004_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_KAR_1159_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_KAR_1159_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KAR_1159_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KAR_1159_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KAR_1159_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_KAR_288_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_KAR_288_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KAR_288_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KAR_288_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KAR_288_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_KAR_57_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_KAR_57_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KAR_57_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KAR_57_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KAR_57_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_KAR_596_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_KAR_596_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KAR_596_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KAR_596_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KAR_596_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_KLM_1112_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_KLM_1112_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KLM_1112_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KLM_1112_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KLM_1112_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_KLM_1209_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_KLM_1209_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KLM_1209_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KLM_1209_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KLM_1209_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_KLM_519_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_KLM_519_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KLM_519_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KLM_519_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KLM_519_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_KLM_6_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_KLM_6_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KLM_6_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KLM_6_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KLM_6_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_KLM_9_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_KLM_9_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KLM_9_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KLM_9_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KLM_9_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_KSW_1047_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_KSW_1047_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KSW_1047_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KSW_1047_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KSW_1047_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_KSW_1064_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_KSW_1064_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KSW_1064_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KSW_1064_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KSW_1064_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP4_KSW_106_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP4_KSW_106_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KSW_106_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KSW_106_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KSW_106_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_KSW_1163_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_KSW_1163_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KSW_1163_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KSW_1163_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KSW_1163_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_KSW_1206_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_KSW_1206_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KSW_1206_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KSW_1206_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KSW_1206_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_KSW_132_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_KSW_132_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KSW_132_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KSW_132_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KSW_132_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_KSW_18_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_KSW_18_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KSW_18_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KSW_18_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KSW_18_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_LOE_1033_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_LOE_1033_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_LOE_1033_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_LOE_1033_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_LOE_1033_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_LOE_1141_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_LOE_1141_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_LOE_1141_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_LOE_1141_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_LOE_1141_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_LOE_359_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_LOE_359_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_LOE_359_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_LOE_359_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_LOE_359_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_LOE_404_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_LOE_404_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_LOE_404_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_LOE_404_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_LOE_404_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_LOE_82_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_LOE_82_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_LOE_82_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_LOE_82_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_LOE_82_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_MGU_135_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_MGU_135_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_MGU_135_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_MGU_135_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_MGU_135_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_MGU_214_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_MGU_214_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_MGU_214_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_MGU_214_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_MGU_214_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_MGU_295_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_MGU_295_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_MGU_295_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_MGU_295_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_MGU_295_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_MGU_407_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_MGU_407_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_MGU_407_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_MGU_407_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_MGU_407_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_POT_1005_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_POT_1005_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_POT_1005_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_POT_1005_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_POT_1005_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_POT_1188_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_POT_1188_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_POT_1188_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_POT_1188_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_POT_1188_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_POT_126_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_POT_126_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_POT_126_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_POT_126_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_POT_126_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_POT_313_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_POT_313_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_POT_313_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_POT_313_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_POT_313_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_POT_531_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_POT_531_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_POT_531_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_POT_531_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_POT_531_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_RIV_108_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_RIV_108_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RIV_108_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RIV_108_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RIV_108_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_RIV_1103_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_RIV_1103_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RIV_1103_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RIV_1103_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RIV_1103_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_RIV_1205_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_RIV_1205_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RIV_1205_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RIV_1205_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RIV_1205_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_RIV_15_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_RIV_15_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RIV_15_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RIV_15_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RIV_15_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_RIV_193_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_RIV_193_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RIV_193_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RIV_193_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RIV_193_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_RND_124_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_RND_124_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RND_124_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RND_124_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RND_124_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_RND_147_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_RND_147_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RND_147_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RND_147_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RND_147_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_RND_261_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_RND_261_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RND_261_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RND_261_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RND_261_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_RND_318_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_RND_318_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RND_318_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RND_318_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RND_318_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_RND_420_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_RND_420_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RND_420_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RND_420_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RND_420_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_RND_576_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_RND_576_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RND_576_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RND_576_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RND_576_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_SWA_112_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_SWA_112_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_SWA_112_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_SWA_112_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_SWA_112_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_SWA_1183_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_SWA_1183_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_SWA_1183_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_SWA_1183_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_SWA_1183_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_SWA_13_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_SWA_13_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_SWA_13_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_SWA_13_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_SWA_13_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_SWA_352_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_SWA_352_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_SWA_352_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_SWA_352_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_SWA_352_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_SWA_545_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_SWA_545_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_SWA_545_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_SWA_545_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_SWA_545_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_UNI_1217_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_UNI_1217_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_UNI_1217_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_UNI_1217_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_UNI_1217_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_UNI_306_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_UNI_306_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_UNI_306_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_UNI_306_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_UNI_306_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_UNI_347_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_UNI_347_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_UNI_347_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_UNI_347_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_UNI_347_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_UNI_383_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_UNI_383_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_UNI_383_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_UNI_383_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_UNI_383_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_UNI_544_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_UNI_544_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_UNI_544_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_UNI_544_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_UNI_544_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_UNI_55_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_UNI_55_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_UNI_55_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_UNI_55_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_UNI_55_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_VAN_1158_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_VAN_1158_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_VAN_1158_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_VAN_1158_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_VAN_1158_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_VAN_1211_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_VAN_1211_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_VAN_1211_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_VAN_1211_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_VAN_1211_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_VAN_293_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_VAN_293_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_VAN_293_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_VAN_293_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_VAN_293_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_VAN_361_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_VAN_361_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_VAN_361_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_VAN_361_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_VAN_361_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP4_VAN_521_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP4_VAN_521_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_VAN_521_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_VAN_521_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_VAN_521_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP5_ALC1045_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_ALC1045_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ALC1045_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ALC1045_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_ALC1045_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP5_ALC230_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_ALC230_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ALC230_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ALC230_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_ALC230_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP5_ALC250_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_ALC250_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ALC250_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ALC250_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_ALC250_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP5_ALC502_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_ALC502_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ALC502_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ALC502_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_ALC502_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP5_ALC62_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_ALC62_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ALC62_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ALC62_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_ALC62_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP5_ANY1126_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_ANY1126_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ANY1126_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ANY1126_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_ANY1126_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP5_ANY116_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_ANY116_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ANY116_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ANY116_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_ANY116_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP5_ANY117_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_ANY117_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ANY117_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ANY117_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_ANY117_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP5_ANY303_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_ANY303_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ANY303_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ANY303_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_ANY303_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP5_ANY322_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_ANY322_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ANY322_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ANY322_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_ANY322_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP5_BAN1138_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_BAN1138_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BAN1138_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BAN1138_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BAN1138_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP5_BAN207_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_BAN207_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BAN207_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BAN207_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BAN207_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP5_BAN229_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_BAN229_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BAN229_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BAN229_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BAN229_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP5_BAN506_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_BAN506_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BAN506_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BAN506_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BAN506_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip /home/makman/Rawdata/combined/ProSNP5_BAN92_R1_paired.fastq.paired.fq
gzip /home/makman/Rawdata/combined/ProSNP5_BAN92_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BAN92_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BAN92_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BAN92_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_BAV1191_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_BAV1191_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BAV1191_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BAV1191_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BAV1191_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_BAV422_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_BAV422_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BAV422_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BAV422_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BAV422_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_BAV527_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_BAV527_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BAV527_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BAV527_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BAV527_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_BAV75_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_BAV75_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BAV75_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BAV75_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BAV75_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_BAV7_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_BAV7_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BAV7_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BAV7_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BAV7_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_BRD369_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_BRD369_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BRD369_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BRD369_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BRD369_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_BRD381_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_BRD381_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BRD381_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BRD381_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BRD381_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_BRD483_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_BRD483_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BRD483_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BRD483_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BRD483_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_BRD484_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_BRD484_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BRD484_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BRD484_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BRD484_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_BRD51_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_BRD51_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BRD51_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BRD51_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BRD51_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_CDB100_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_CDB100_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CDB100_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CDB100_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CDB100_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_CDB1134_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_CDB1134_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CDB1134_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CDB1134_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CDB1134_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_CDB376_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_CDB376_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CDB376_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CDB376_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CDB376_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_CDB512_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_CDB512_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CDB512_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CDB512_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CDB512_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_CDB564_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_CDB564_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CDB564_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CDB564_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CDB564_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_CER1117_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_CER2117_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CER1117_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CER2117_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CER1117_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_CER2_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_CER2_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CER2_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CER2_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CER2_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_CER382_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_CER382_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CER382_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CER382_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CER382_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_CER458_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_CER458_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CER458_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CER458_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CER458_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_CER78_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_CER78_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CER78_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CER78_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CER78_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_GAR1019_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_GAR2019_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_GAR1019_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_GAR2019_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_GAR1019_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_GAR434_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_GAR434_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_GAR434_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_GAR434_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_GAR434_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_GAR439_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_GAR439_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_GAR439_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_GAR439_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_GAR439_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_GAR46_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_GAR46_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_GAR46_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_GAR46_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_GAR46_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_GAR547_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_GAR547_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_GAR547_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_GAR547_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_GAR547_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_KAR1044_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_KAR2044_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KAR1044_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KAR2044_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KAR1044_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_KAR1063_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_KAR2063_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KAR1063_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KAR2063_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KAR1063_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_KAR122_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_KAR222_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KAR122_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KAR222_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KAR122_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_KAR178_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_KAR278_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KAR178_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KAR278_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KAR178_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_KAR346_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_KAR346_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KAR346_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KAR346_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KAR346_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_KLM1025_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_KLM1025_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KLM1025_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KLM1025_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KLM1025_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_KLM1203_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_KLM1203_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KLM1203_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KLM1203_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KLM1203_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_KLM534_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_KLM534_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KLM534_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KLM534_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KLM534_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_KLM56_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_KLM56_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KLM56_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KLM56_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KLM56_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_KLM97_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_KLM97_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KLM97_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KLM97_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KLM97_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_KSW1145_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_KSW1145_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KSW1145_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KSW1145_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KSW1145_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_KSW1206_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_KSW1206_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KSW1206_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KSW1206_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KSW1206_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_KSW398_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_KSW398_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KSW398_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KSW398_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KSW398_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_KSW505_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_KSW505_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KSW505_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KSW505_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KSW505_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_KSW597_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_KSW597_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KSW597_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KSW597_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KSW597_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_KSW95_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_KSW95_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KSW95_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KSW95_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KSW95_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_LOE1018_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_LOE1018_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_LOE1018_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_LOE1018_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_LOE1018_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_LOE125_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_LOE125_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_LOE125_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_LOE125_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_LOE125_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_LOE388_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_LOE388_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_LOE388_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_LOE388_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_LOE388_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_LOE585_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_LOE585_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_LOE585_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_LOE585_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_LOE585_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_LOE79_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_LOE79_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_LOE79_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_LOE79_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_LOE79_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_MGU1006_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_MGU1006_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_MGU1006_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_MGU1006_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_MGU1006_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_MGU1056_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_MGU1056_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_MGU1056_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_MGU1056_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_MGU1056_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_MGU16_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_MGU16_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_MGU16_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_MGU16_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_MGU16_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_MGU490_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_MGU490_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_MGU490_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_MGU490_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_MGU490_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_MGU498_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_MGU498_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_MGU498_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_MGU498_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_MGU498_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_POT1176_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_POT1176_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_POT1176_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_POT1176_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_POT1176_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_POT255_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_POT255_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_POT255_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_POT255_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_POT255_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_POT282_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_POT282_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_POT282_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_POT282_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_POT282_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_POT525_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_POT525_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_POT525_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_POT525_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_POT525_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_POT54_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_POT54_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_POT54_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_POT54_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_POT54_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_RIV151_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_RIV151_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_RIV151_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_RIV151_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_RIV151_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_RIV191_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_RIV191_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_RIV191_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_RIV191_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_RIV191_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_RIV195_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_RIV195_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_RIV195_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_RIV195_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_RIV195_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_RIV44_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_RIV44_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_RIV44_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_RIV44_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_RIV44_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_RIV560_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_RIV560_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_RIV560_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_RIV560_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_RIV560_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_RND1010_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_RND1010_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_RND1010_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_RND1010_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_RND1010_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_RND1210_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_RND1210_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_RND1210_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_RND1210_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_RND1210_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_RND139_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_RND139_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_RND139_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_RND139_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_RND139_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_RND290_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_RND290_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_RND290_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_RND290_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_RND290_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_RND579_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_RND579_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_RND579_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_RND579_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_RND579_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_SWA107_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_SWA107_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_SWA107_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_SWA107_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_SWA107_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_SWA157_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_SWA157_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_SWA157_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_SWA157_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_SWA157_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_SWA189_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_SWA189_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_SWA189_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_SWA189_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_SWA189_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_SWA577_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_SWA577_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_SWA577_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_SWA577_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_SWA577_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_SWA80_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_SWA80_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_SWA80_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_SWA80_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_SWA80_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_UNI1001_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_UNI1001_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_UNI1001_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_UNI1001_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_UNI1001_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_UNI386_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_UNI386_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_UNI386_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_UNI386_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_UNI386_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_UNI3_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_UNI3_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_UNI3_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_UNI3_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_UNI3_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_UNI403_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_UNI403_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_UNI403_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_UNI403_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_UNI403_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_VAN163_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_VAN163_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_VAN163_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_VAN163_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_VAN163_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_VAN206_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_VAN206_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_VAN206_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_VAN206_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_VAN206_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_VAN208_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_VAN208_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_VAN208_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_VAN208_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_VAN208_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_VAN260_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_VAN260_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_VAN260_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_VAN260_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_VAN260_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP5_VAN27_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP5_VAN27_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_VAN27_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_VAN27_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_VAN27_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_ANY_1020_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_ANY_1020_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_ANY_1020_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_ANY_1020_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_ANY_1020_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_ANY_1079_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_ANY_1079_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_ANY_1079_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_ANY_1079_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_ANY_1079_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_ANY_1122_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_ANY_1122_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_ANY_1122_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_ANY_1122_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_ANY_1122_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_ANY_12_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_ANY_12_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_ANY_12_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_ANY_12_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_ANY_12_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_ANY_301_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_ANY_301_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_ANY_301_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_ANY_301_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_ANY_301_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_ANY_518_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_ANY_518_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_ANY_518_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_ANY_518_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_ANY_518_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_ANY_85_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_ANY_85_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_ANY_85_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_ANY_85_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_ANY_85_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_BAV_1077_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_BAV_1077_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BAV_1077_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BAV_1077_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BAV_1077_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_BAV_1214_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_BAV_1214_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BAV_1214_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BAV_1214_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BAV_1214_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_BAV_339_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_BAV_339_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BAV_339_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BAV_339_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BAV_339_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_BAV_462_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_BAV_462_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BAV_462_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BAV_462_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BAV_462_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_BAV_556_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_BAV_556_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BAV_556_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BAV_556_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BAV_556_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_BAV_63_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_BAV_63_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BAV_63_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BAV_63_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BAV_63_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_BRD_1009_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_BRD_1009_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BRD_1009_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BRD_1009_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BRD_1009_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_BRD_342_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_BRD_342_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BRD_342_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BRD_342_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BRD_342_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_BRD_442_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_BRD_442_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BRD_442_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BRD_442_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BRD_442_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_BRD_501_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_BRD_501_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BRD_501_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BRD_501_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BRD_501_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_BRD_533_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_BRD_533_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BRD_533_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BRD_533_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BRD_533_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_BRD_543_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_BRD_543_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BRD_543_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BRD_543_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BRD_543_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_CDB_228_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_CDB_228_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_CDB_228_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_CDB_228_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_CDB_228_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_CDB_571_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_CDB_571_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_CDB_571_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_CDB_571_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_CDB_571_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_CER_1038_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_CER_1038_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_CER_1038_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_CER_1038_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_CER_1038_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_CER_1142_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_CER_1142_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_CER_1142_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_CER_1142_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_CER_1142_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_CER_14_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_CER_14_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_CER_14_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_CER_14_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_CER_14_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_CER_199_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_CER_199_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_CER_199_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_CER_199_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_CER_199_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_CER_338_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_CER_338_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_CER_338_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_CER_338_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_CER_338_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_CER_589_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_CER_589_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_CER_589_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_CER_589_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_CER_589_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_GAR_1041_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_GAR_1041_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_GAR_1041_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_GAR_1041_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_GAR_1041_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_GAR_1200_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_GAR_1200_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_GAR_1200_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_GAR_1200_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_GAR_1200_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_GAR_174_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_GAR_174_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_GAR_174_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_GAR_174_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_GAR_174_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_GAR_299_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_GAR_299_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_GAR_299_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_GAR_299_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_GAR_299_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_GAR_437_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_GAR_437_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_GAR_437_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_GAR_437_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_GAR_437_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_GAR_557_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_GAR_557_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_GAR_557_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_GAR_557_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_GAR_557_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_GAR_90_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_GAR_90_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_GAR_90_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_GAR_90_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_GAR_90_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_KAR_1187_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_KAR_1187_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KAR_1187_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KAR_1187_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KAR_1187_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_KAR_184_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_KAR_184_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KAR_184_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KAR_184_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KAR_184_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_KAR_486_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_KAR_486_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KAR_486_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KAR_486_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KAR_486_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_KAR_49_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_KAR_49_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KAR_49_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KAR_49_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KAR_49_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_KAR_68_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_KAR_68_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KAR_68_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KAR_68_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KAR_68_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_KAR_84_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_KAR_84_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KAR_84_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KAR_84_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KAR_84_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_KLM_1052_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_KLM_1052_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KLM_1052_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KLM_1052_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KLM_1052_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_KLM_1129_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_KLM_1129_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KLM_1129_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KLM_1129_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KLM_1129_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_KLM_155_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_KLM_155_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KLM_155_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KLM_155_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KLM_155_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_KLM_343_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_KLM_343_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KLM_343_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KLM_343_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KLM_343_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_KLM_475_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_KLM_475_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KLM_475_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KLM_475_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KLM_475_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_KLM_566_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_KLM_566_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KLM_566_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KLM_566_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KLM_566_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_KLM_582_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_KLM_582_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KLM_582_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KLM_582_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KLM_582_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_KSW_1043_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_KSW_1043_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KSW_1043_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KSW_1043_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KSW_1043_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_KSW_104_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_KSW_104_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KSW_104_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KSW_104_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KSW_104_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_KSW_1076_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_KSW_1076_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KSW_1076_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KSW_1076_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KSW_1076_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_KSW_10_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_KSW_10_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KSW_10_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KSW_10_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KSW_10_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_KSW_1125_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_KSW_1125_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KSW_1125_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KSW_1125_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KSW_1125_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_KSW_47_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_KSW_47_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KSW_47_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KSW_47_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KSW_47_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_KSW_516_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_KSW_516_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KSW_516_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KSW_516_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KSW_516_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_LOE_1035_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_LOE_1035_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_LOE_1035_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_LOE_1035_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_LOE_1035_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_LOE_1150_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_LOE_1150_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_LOE_1150_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_LOE_1150_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_LOE_1150_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_LOE_211_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_LOE_211_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_LOE_211_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_LOE_211_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_LOE_211_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_LOE_497_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_LOE_497_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_LOE_497_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_LOE_497_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_LOE_497_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_LOE_548_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_LOE_548_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_LOE_548_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_LOE_548_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_LOE_548_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_POT_1119_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_POT_1119_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_POT_1119_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_POT_1119_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_POT_1119_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_POT_128_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_POT_128_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_POT_128_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_POT_128_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_POT_128_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_POT_183_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_POT_183_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_POT_183_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_POT_183_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_POT_183_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_POT_380_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_POT_380_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_POT_380_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_POT_380_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_POT_380_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_POT_463_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_POT_463_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_POT_463_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_POT_463_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_POT_463_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_POT_594_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_POT_594_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_POT_594_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_POT_594_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_POT_594_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_RIV_1148_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_RIV_1148_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RIV_1148_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RIV_1148_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RIV_1148_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_RIV_180_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_RIV_180_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RIV_180_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RIV_180_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RIV_180_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_RIV_351_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_RIV_351_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RIV_351_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RIV_351_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RIV_351_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_RIV_461_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_RIV_461_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RIV_461_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RIV_461_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RIV_461_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_RIV_530_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_RIV_530_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RIV_530_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RIV_530_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RIV_530_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_RIV_88_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_RIV_88_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RIV_88_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RIV_88_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RIV_88_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_RND_1116_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_RND_1116_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RND_1116_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RND_1116_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RND_1116_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_RND_1220_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_RND_1220_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RND_1220_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RND_1220_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RND_1220_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_RND_164_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_RND_164_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RND_164_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RND_164_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RND_164_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_RND_272_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_RND_272_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RND_272_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RND_272_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RND_272_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_RND_523_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_RND_523_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RND_523_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RND_523_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RND_523_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_RND_65_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_RND_65_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RND_65_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RND_65_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RND_65_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_SWA_140_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_SWA_140_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_SWA_140_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_SWA_140_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_SWA_140_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_SWA_19_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_SWA_19_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_SWA_19_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_SWA_19_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_SWA_19_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_SWA_304_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_SWA_304_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_SWA_304_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_SWA_304_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_SWA_304_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_SWA_317_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_SWA_317_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_SWA_317_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_SWA_317_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_SWA_317_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_SWA_341_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_SWA_341_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_SWA_341_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_SWA_341_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_SWA_341_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_SWA_515_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_SWA_515_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_SWA_515_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_SWA_515_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_SWA_515_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_SWA_96_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_SWA_96_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_SWA_96_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_SWA_96_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_SWA_96_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_UNI_1087_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_UNI_1087_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_UNI_1087_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_UNI_1087_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_UNI_1087_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_UNI_1175_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_UNI_1175_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_UNI_1175_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_UNI_1175_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_UNI_1175_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_UNI_1204_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_UNI_1204_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_UNI_1204_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_UNI_1204_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_UNI_1204_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_UNI_470_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_UNI_470_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_UNI_470_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_UNI_470_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_UNI_470_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_UNI_479_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_UNI_479_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_UNI_479_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_UNI_479_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_UNI_479_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_UNI_546_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_UNI_546_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_UNI_546_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_UNI_546_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_UNI_546_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_VAN_1015_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_VAN_1015_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_VAN_1015_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_VAN_1015_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_VAN_1015_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_VAN_1179_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_VAN_1179_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_VAN_1179_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_VAN_1179_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_VAN_1179_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_VAN_269_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_VAN_269_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_VAN_269_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_VAN_269_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_VAN_269_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_VAN_396_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_VAN_396_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_VAN_396_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_VAN_396_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_VAN_396_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_VAN_443_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_VAN_443_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_VAN_443_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_VAN_443_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_VAN_443_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip /home/makman/Rawdata/combined/ProSNP6_VAN_93_R1_paired.fastq.paired.fq
# gzip /home/makman/Rawdata/combined/ProSNP6_VAN_93_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_VAN_93_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_VAN_93_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_VAN_93_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat