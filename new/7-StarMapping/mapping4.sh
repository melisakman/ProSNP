#!/bin/bash -l
#SBATCH -D /home/makman/STAR/bin/Linux_x86_64/
#SBATCH -J star4
#SBATCH -o /home/makman/ProSNP/outs/star_map4.out
#SBATCH -e /home/makman/ProSNP/outs/star_map4.err
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
# zcat /home/makman/Rawdata/combined/ProSNP12_ALC_12_R1_paired.fasta.gz | sed -s 's/ 1:N:0://' | gzip -c > /home/makman/Rawdata/combined/ProSNP12_ALC_12_R1_paired_noPairInfo.fasta.gz
# zcat /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired.fasta.gz | sed -s 's/ 3:N:0://' | gzip -c > /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired_noPairInfo.fasta.gz

# gunzip /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired_noPairInfo.fasta.gz
# /share/apps/fastx-0.0.14/bin/fastx_reverse_complement -i /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired_noPairInfo.fasta -z -o /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired_noPairInfo_RC.fasta.gz
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_ALC_12_R1_paired.fasta.gz /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired.fasta.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_ALC_12_D_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat --peOverlapNbasesMin 1
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_ALC_12_R1_paired.fasta.gz /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired.fasta.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_ALC_12_E_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat --peOverlapNbasesMin 15



# gzip ProSNP12_ALC_12_R1_paired.fastq.paired.fq
# gzip ProSNP12_ALC_12_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_ALC_12_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_ALC_12_B_ --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_ALC1045_R1_paired.fastq.paired.fq
# gzip ProSNP5_ALC1045_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ALC1045_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ALC1045_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_ALC_12_C --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_ALC_12_R1_paired.fastq.paired.fq
# gzip ProSNP12_ALC_12_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_ALC_12_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_ALC_12 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_ALC_34_R1_paired.fastq.paired.fq
# gzip ProSNP12_ALC_34_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_ALC_34_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_ALC_34_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_ALC_34 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_ALC_44_R1_paired.fastq.paired.fq
# gzip ProSNP12_ALC_44_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_ALC_44_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_ALC_44_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_ALC_44 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_ANY_19_R1_paired.fastq.paired.fq
# gzip ProSNP12_ANY_19_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_ANY_19_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_ANY_19_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_ANY_19 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_ANY_1_R1_paired.fastq.paired.fq
# gzip ProSNP12_ANY_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_ANY_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_ANY_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_ANY_1 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_ANY_30_R1_paired.fastq.paired.fq
# gzip ProSNP12_ANY_30_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_ANY_30_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_ANY_30_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_ANY_30 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_BAN_21_R1_paired.fastq.paired.fq
# gzip ProSNP12_BAN_21_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_BAN_21_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_BAN_21_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_BAN_21 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_BAN_35_R1_paired.fastq.paired.fq
# gzip ProSNP12_BAN_35_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_BAN_35_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_BAN_35_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_BAN_35 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_BAN_3_R1_paired.fastq.paired.fq
# gzip ProSNP12_BAN_3_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_BAN_3_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_BAN_3_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_BAN_3 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_BAV_20_R1_paired.fastq.paired.fq
# gzip ProSNP12_BAV_20_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_BAV_20_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_BAV_20_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_BAV_20 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_BAV_32_R1_paired.fastq.paired.fq
# gzip ProSNP12_BAV_32_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_BAV_32_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_BAV_32_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_BAV_32 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_BAV_44_R1_paired.fastq.paired.fq
# gzip ProSNP12_BAV_44_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_BAV_44_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_BAV_44_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_BAV_44 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_BRD_1_R1_paired.fastq.paired.fq
# gzip ProSNP12_BRD_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_BRD_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_BRD_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_BRD_1 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_BRD_22_R1_paired.fastq.paired.fq
# gzip ProSNP12_BRD_22_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_BRD_22_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_BRD_22_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_BRD_22 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_BRD_41_R1_paired.fastq.paired.fq
# gzip ProSNP12_BRD_41_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_BRD_41_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_BRD_41_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_BRD_41 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_CDB_26_R1_paired.fastq.paired.fq
# gzip ProSNP12_CDB_26_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_CDB_26_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_CDB_26_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_CDB_26 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_CDB_2_R1_paired.fastq.paired.fq
# gzip ProSNP12_CDB_2_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_CDB_2_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_CDB_2_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_CDB_2 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_CDB_40_R1_paired.fastq.paired.fq
# gzip ProSNP12_CDB_40_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_CDB_40_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_CDB_40_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_CDB_40 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_CER_1_R1_paired.fastq.paired.fq
# gzip ProSNP12_CER_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_CER_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_CER_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_CER_1 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_CER_22_R1_paired.fastq.paired.fq
# gzip ProSNP12_CER_22_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_CER_22_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_CER_22_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_CER_22 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_CER_42_R1_paired.fastq.paired.fq
# gzip ProSNP12_CER_42_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_CER_42_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_CER_42_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_CER_42 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_GAR_1_R1_paired.fastq.paired.fq
# gzip ProSNP12_GAR_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_GAR_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_GAR_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_GAR_1 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_GAR_20_R1_paired.fastq.paired.fq
# gzip ProSNP12_GAR_20_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_GAR_20_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_GAR_20_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_GAR_20 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_GAR_41_R1_paired.fastq.paired.fq
# gzip ProSNP12_GAR_41_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_GAR_41_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_GAR_41_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_GAR_41 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_KAR_1_R1_paired.fastq.paired.fq
# gzip ProSNP12_KAR_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_KAR_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_KAR_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_KAR_1 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_KAR_25_R1_paired.fastq.paired.fq
# gzip ProSNP12_KAR_25_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_KAR_25_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_KAR_25_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_KAR_25 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_KAR_42_R1_paired.fastq.paired.fq
# gzip ProSNP12_KAR_42_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_KAR_42_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_KAR_42_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_KAR_42 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_KLM_20_R1_paired.fastq.paired.fq
# gzip ProSNP12_KLM_20_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_KLM_20_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_KLM_20_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_KLM_20 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_KLM_45_R1_paired.fastq.paired.fq
# gzip ProSNP12_KLM_45_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_KLM_45_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_KLM_45_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_KLM_45 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_KLM_5_R1_paired.fastq.paired.fq
# gzip ProSNP12_KLM_5_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_KLM_5_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_KLM_5_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_KLM_5 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_KSW_20_R1_paired.fastq.paired.fq
# gzip ProSNP12_KSW_20_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_KSW_20_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_KSW_20_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_KSW_20 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_KSW_45_R1_paired.fastq.paired.fq
# gzip ProSNP12_KSW_45_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_KSW_45_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_KSW_45_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_KSW_45 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_KSW_4_R1_paired.fastq.paired.fq
# gzip ProSNP12_KSW_4_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_KSW_4_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_KSW_4_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_KSW_4 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_LOE_1_R1_paired.fastq.paired.fq
# gzip ProSNP12_LOE_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_LOE_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_LOE_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_LOE_1 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_LOE_23_R1_paired.fastq.paired.fq
# gzip ProSNP12_LOE_23_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_LOE_23_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_LOE_23_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_LOE_23 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_LOE_45_R1_paired.fastq.paired.fq
# gzip ProSNP12_LOE_45_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_LOE_45_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_LOE_45_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_LOE_45 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_MGU_17_R1_paired.fastq.paired.fq
# gzip ProSNP12_MGU_17_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_MGU_17_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_MGU_17_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_MGU_17 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_MGU_1_R1_paired.fastq.paired.fq
# gzip ProSNP12_MGU_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_MGU_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_MGU_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_MGU_1 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_MGU_57_R1_paired.fastq.paired.fq
# gzip ProSNP12_MGU_57_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_MGU_57_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_MGU_57_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_MGU_57 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_POT_1_R1_paired.fastq.paired.fq
# gzip ProSNP12_POT_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_POT_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_POT_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_POT_1 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_POT_26_R1_paired.fastq.paired.fq
# gzip ProSNP12_POT_26_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_POT_26_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_POT_26_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_POT_26 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_POT_44_R1_paired.fastq.paired.fq
# gzip ProSNP12_POT_44_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_POT_44_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_POT_44_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_POT_44 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_RIV_21_R1_paired.fastq.paired.fq
# gzip ProSNP12_RIV_21_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_RIV_21_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_RIV_21_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_RIV_21 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_RIV_2_R1_paired.fastq.paired.fq
# gzip ProSNP12_RIV_2_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_RIV_2_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_RIV_2_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_RIV_2 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_RIV_40_R1_paired.fastq.paired.fq
# gzip ProSNP12_RIV_40_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_RIV_40_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_RIV_40_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_RIV_40 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_RND_1_R1_paired.fastq.paired.fq
# gzip ProSNP12_RND_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_RND_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_RND_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_RND_1 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_RND_20_R1_paired.fastq.paired.fq
# gzip ProSNP12_RND_20_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_RND_20_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_RND_20_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_RND_20 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_RND_44_R1_paired.fastq.paired.fq
# gzip ProSNP12_RND_44_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_RND_44_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_RND_44_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_RND_44 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_SWA_1_R1_paired.fastq.paired.fq
# gzip ProSNP12_SWA_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_SWA_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_SWA_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_SWA_1 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_SWA_20_R1_paired.fastq.paired.fq
# gzip ProSNP12_SWA_20_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_SWA_20_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_SWA_20_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_SWA_20 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_SWA_45_R1_paired.fastq.paired.fq
# gzip ProSNP12_SWA_45_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_SWA_45_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_SWA_45_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_SWA_45 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_UNI_1_R1_paired.fastq.paired.fq
# gzip ProSNP12_UNI_1_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_UNI_1_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_UNI_1_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_UNI_1 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_UNI_24_R1_paired.fastq.paired.fq
# gzip ProSNP12_UNI_24_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_UNI_24_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_UNI_24_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_UNI_24 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_UNI_39_R1_paired.fastq.paired.fq
# gzip ProSNP12_UNI_39_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_UNI_39_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_UNI_39_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_UNI_39 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_VAN_15_R1_paired.fastq.paired.fq
# gzip ProSNP12_VAN_15_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_VAN_15_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_VAN_15_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_VAN_15 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_VAN_29_R1_paired.fastq.paired.fq
# gzip ProSNP12_VAN_29_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_VAN_29_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_VAN_29_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_VAN_29 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP12_VAN_2_R1_paired.fastq.paired.fq
# gzip ProSNP12_VAN_2_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP12_VAN_2_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP12_VAN_2_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP12_VAN_2 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_ALC_1109_R1_paired.fastq.paired.fq
# gzip ProSNP4_ALC_1109_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_ALC_1109_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_ALC_1109_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_ALC_1109 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_ALC_1132_R1_paired.fastq.paired.fq
# gzip ProSNP4_ALC_1132_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_ALC_1132_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_ALC_1132_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_ALC_1132 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_ALC_314_R1_paired.fastq.paired.fq
# gzip ProSNP4_ALC_314_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_ALC_314_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_ALC_314_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_ALC_314 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_ALC_573_R1_paired.fastq.paired.fq
# gzip ProSNP4_ALC_573_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_ALC_573_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_ALC_573_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_ALC_573 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_ANY_111_R1_paired.fastq.paired.fq
# gzip ProSNP4_ANY_111_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_ANY_111_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_ANY_111_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_ANY_111 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_ANY_1152_R1_paired.fastq.paired.fq
# gzip ProSNP4_ANY_1152_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_ANY_1152_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_ANY_1152_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_ANY_1152 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_ANY_300_R1_paired.fastq.paired.fq
# gzip ProSNP4_ANY_300_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_ANY_300_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_ANY_300_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_ANY_300 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_ANY_39_R1_paired.fastq.paired.fq
# gzip ProSNP4_ANY_39_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_ANY_39_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_ANY_39_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_ANY_39 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_ANY_507_R1_paired.fastq.paired.fq
# gzip ProSNP4_ANY_507_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_ANY_507_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_ANY_507_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_ANY_507 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_BAN_1060_R1_paired.fastq.paired.fq
# gzip ProSNP4_BAN_1060_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BAN_1060_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BAN_1060_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BAN_1060 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_BAN_133_R1_paired.fastq.paired.fq
# gzip ProSNP4_BAN_133_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BAN_133_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BAN_133_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BAN_133 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_BAN_200_R1_paired.fastq.paired.fq
# gzip ProSNP4_BAN_200_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BAN_200_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BAN_200_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BAN_200 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_BAN_385_R1_paired.fastq.paired.fq
# gzip ProSNP4_BAN_385_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BAN_385_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BAN_385_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BAN_385 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_BAV_1014_R1_paired.fastq.paired.fq
# gzip ProSNP4_BAV_1014_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BAV_1014_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BAV_1014_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BAV_1014 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_BAV_1022_R1_paired.fastq.paired.fq
# gzip ProSNP4_BAV_1022_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BAV_1022_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BAV_1022_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BAV_1022 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_BAV_22_R1_paired.fastq.paired.fq
# gzip ProSNP4_BAV_22_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BAV_22_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BAV_22_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BAV_22 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_BAV_337_R1_paired.fastq.paired.fq
# gzip ProSNP4_BAV_337_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BAV_337_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BAV_337_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BAV_337 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_BAV_448_R1_paired.fastq.paired.fq
# gzip ProSNP4_BAV_448_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BAV_448_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BAV_448_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BAV_448 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_BRD_1215_R1_paired.fastq.paired.fq
# gzip ProSNP4_BRD_1215_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BRD_1215_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BRD_1215_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BRD_1215 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_BRD_123_R1_paired.fastq.paired.fq
# gzip ProSNP4_BRD_123_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BRD_123_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BRD_123_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BRD_123 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_BRD_356_R1_paired.fastq.paired.fq
# gzip ProSNP4_BRD_356_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BRD_356_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BRD_356_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BRD_356 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_BRD_406_R1_paired.fastq.paired.fq
# gzip ProSNP4_BRD_406_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BRD_406_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BRD_406_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BRD_406 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_BRD_513_R1_paired.fastq.paired.fq
# gzip ProSNP4_BRD_513_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_BRD_513_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_BRD_513_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_BRD_513 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_CDB_1100_R1_paired.fastq.paired.fq
# gzip ProSNP4_CDB_1100_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_CDB_1100_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_CDB_1100_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_CDB_1100 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_CDB_252_R1_paired.fastq.paired.fq
# gzip ProSNP4_CDB_252_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_CDB_252_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_CDB_252_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_CDB_252 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_CDB_28_R1_paired.fastq.paired.fq
# gzip ProSNP4_CDB_28_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_CDB_28_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_CDB_28_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_CDB_28 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_CDB_440_R1_paired.fastq.paired.fq
# gzip ProSNP4_CDB_440_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_CDB_440_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_CDB_440_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_CDB_440 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_CDB_567_R1_paired.fastq.paired.fq
# gzip ProSNP4_CDB_567_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_CDB_567_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_CDB_567_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_CDB_567 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_CER_1023_R1_paired.fastq.paired.fq
# gzip ProSNP4_CER_1023_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_CER_1023_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_CER_1023_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_CER_1023 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_CER_291_R1_paired.fastq.paired.fq
# gzip ProSNP4_CER_291_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_CER_291_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_CER_291_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_CER_291 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_CER_39_R1_paired.fastq.paired.fq
# gzip ProSNP4_CER_39_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_CER_39_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_CER_39_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_CER_39 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_CER_445_R1_paired.fastq.paired.fq
# gzip ProSNP4_CER_445_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_CER_445_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_CER_445_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_CER_445 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_CER_50_R1_paired.fastq.paired.fq
# gzip ProSNP4_CER_50_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_CER_50_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_CER_50_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_CER_50 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_GAR_11_R1_paired.fastq.paired.fq
# gzip ProSNP4_GAR_11_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_GAR_11_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_GAR_11_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_GAR_11 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_GAR_259_R1_paired.fastq.paired.fq
# gzip ProSNP4_GAR_259_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_GAR_259_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_GAR_259_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_GAR_259 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_GAR_298_R1_paired.fastq.paired.fq
# gzip ProSNP4_GAR_298_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_GAR_298_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_GAR_298_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_GAR_298 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_GAR_309_R1_paired.fastq.paired.fq
# gzip ProSNP4_GAR_309_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_GAR_309_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_GAR_309_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_GAR_309 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_GAR_574_R1_paired.fastq.paired.fq
# gzip ProSNP4_GAR_574_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_GAR_574_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_GAR_574_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_GAR_574 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_KAR_1004_R1_paired.fastq.paired.fq
# gzip ProSNP4_KAR_1004_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KAR_1004_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KAR_1004_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KAR_1004 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_KAR_1159_R1_paired.fastq.paired.fq
# gzip ProSNP4_KAR_1159_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KAR_1159_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KAR_1159_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KAR_1159 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_KAR_288_R1_paired.fastq.paired.fq
# gzip ProSNP4_KAR_288_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KAR_288_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KAR_288_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KAR_288 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_KAR_57_R1_paired.fastq.paired.fq
# gzip ProSNP4_KAR_57_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KAR_57_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KAR_57_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KAR_57 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_KAR_596_R1_paired.fastq.paired.fq
# gzip ProSNP4_KAR_596_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KAR_596_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KAR_596_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KAR_596 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_KLM_1112_R1_paired.fastq.paired.fq
# gzip ProSNP4_KLM_1112_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KLM_1112_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KLM_1112_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KLM_1112 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_KLM_1209_R1_paired.fastq.paired.fq
# gzip ProSNP4_KLM_1209_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KLM_1209_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KLM_1209_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KLM_1209 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_KLM_519_R1_paired.fastq.paired.fq
# gzip ProSNP4_KLM_519_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KLM_519_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KLM_519_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KLM_519 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_KLM_6_R1_paired.fastq.paired.fq
# gzip ProSNP4_KLM_6_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KLM_6_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KLM_6_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KLM_6 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_KLM_9_R1_paired.fastq.paired.fq
# gzip ProSNP4_KLM_9_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KLM_9_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KLM_9_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KLM_9 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_KSW_1047_R1_paired.fastq.paired.fq
# gzip ProSNP4_KSW_1047_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KSW_1047_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KSW_1047_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KSW_1047 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_KSW_1064_R1_paired.fastq.paired.fq
# gzip ProSNP4_KSW_1064_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KSW_1064_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KSW_1064_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KSW_1064 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_KSW_106_R1_paired.fastq.paired.fq
# gzip ProSNP4_KSW_106_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KSW_106_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KSW_106_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KSW_106 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_KSW_1163_R1_paired.fastq.paired.fq
# gzip ProSNP4_KSW_1163_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KSW_1163_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KSW_1163_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KSW_1163 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_KSW_1206_R1_paired.fastq.paired.fq
# gzip ProSNP4_KSW_1206_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KSW_1206_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KSW_1206_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KSW_1206 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_KSW_132_R1_paired.fastq.paired.fq
# gzip ProSNP4_KSW_132_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KSW_132_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KSW_132_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KSW_132 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_KSW_18_R1_paired.fastq.paired.fq
# gzip ProSNP4_KSW_18_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_KSW_18_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_KSW_18_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_KSW_18 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_LOE_1033_R1_paired.fastq.paired.fq
# gzip ProSNP4_LOE_1033_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_LOE_1033_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_LOE_1033_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_LOE_1033 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_LOE_1141_R1_paired.fastq.paired.fq
# gzip ProSNP4_LOE_1141_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_LOE_1141_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_LOE_1141_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_LOE_1141 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_LOE_359_R1_paired.fastq.paired.fq
# gzip ProSNP4_LOE_359_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_LOE_359_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_LOE_359_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_LOE_359 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_LOE_404_R1_paired.fastq.paired.fq
# gzip ProSNP4_LOE_404_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_LOE_404_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_LOE_404_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_LOE_404 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_LOE_82_R1_paired.fastq.paired.fq
# gzip ProSNP4_LOE_82_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_LOE_82_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_LOE_82_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_LOE_82 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_MGU_135_R1_paired.fastq.paired.fq
# gzip ProSNP4_MGU_135_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_MGU_135_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_MGU_135_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_MGU_135 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_MGU_214_R1_paired.fastq.paired.fq
# gzip ProSNP4_MGU_214_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_MGU_214_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_MGU_214_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_MGU_214 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_MGU_295_R1_paired.fastq.paired.fq
# gzip ProSNP4_MGU_295_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_MGU_295_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_MGU_295_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_MGU_295 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_MGU_407_R1_paired.fastq.paired.fq
# gzip ProSNP4_MGU_407_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_MGU_407_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_MGU_407_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_MGU_407 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_POT_1005_R1_paired.fastq.paired.fq
# gzip ProSNP4_POT_1005_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_POT_1005_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_POT_1005_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_POT_1005 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_POT_1188_R1_paired.fastq.paired.fq
# gzip ProSNP4_POT_1188_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_POT_1188_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_POT_1188_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_POT_1188 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_POT_126_R1_paired.fastq.paired.fq
# gzip ProSNP4_POT_126_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_POT_126_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_POT_126_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_POT_126 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_POT_313_R1_paired.fastq.paired.fq
# gzip ProSNP4_POT_313_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_POT_313_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_POT_313_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_POT_313 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_POT_531_R1_paired.fastq.paired.fq
# gzip ProSNP4_POT_531_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_POT_531_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_POT_531_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_POT_531 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_RIV_108_R1_paired.fastq.paired.fq
# gzip ProSNP4_RIV_108_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RIV_108_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RIV_108_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RIV_108 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_RIV_1103_R1_paired.fastq.paired.fq
# gzip ProSNP4_RIV_1103_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RIV_1103_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RIV_1103_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RIV_1103 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_RIV_1205_R1_paired.fastq.paired.fq
# gzip ProSNP4_RIV_1205_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RIV_1205_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RIV_1205_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RIV_1205 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_RIV_15_R1_paired.fastq.paired.fq
# gzip ProSNP4_RIV_15_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RIV_15_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RIV_15_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RIV_15 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_RIV_193_R1_paired.fastq.paired.fq
# gzip ProSNP4_RIV_193_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RIV_193_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RIV_193_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RIV_193 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_RND_124_R1_paired.fastq.paired.fq
# gzip ProSNP4_RND_124_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RND_124_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RND_124_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RND_124 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_RND_147_R1_paired.fastq.paired.fq
# gzip ProSNP4_RND_147_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RND_147_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RND_147_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RND_147 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_RND_261_R1_paired.fastq.paired.fq
# gzip ProSNP4_RND_261_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RND_261_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RND_261_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RND_261 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_RND_318_R1_paired.fastq.paired.fq
# gzip ProSNP4_RND_318_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RND_318_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RND_318_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RND_318 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_RND_420_R1_paired.fastq.paired.fq
# gzip ProSNP4_RND_420_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RND_420_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RND_420_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RND_420 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_RND_576_R1_paired.fastq.paired.fq
# gzip ProSNP4_RND_576_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_RND_576_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_RND_576_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_RND_576 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_SWA_112_R1_paired.fastq.paired.fq
# gzip ProSNP4_SWA_112_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_SWA_112_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_SWA_112_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_SWA_112 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_SWA_1183_R1_paired.fastq.paired.fq
# gzip ProSNP4_SWA_1183_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_SWA_1183_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_SWA_1183_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_SWA_1183 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_SWA_13_R1_paired.fastq.paired.fq
# gzip ProSNP4_SWA_13_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_SWA_13_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_SWA_13_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_SWA_13 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_SWA_352_R1_paired.fastq.paired.fq
# gzip ProSNP4_SWA_352_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_SWA_352_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_SWA_352_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_SWA_352 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_SWA_545_R1_paired.fastq.paired.fq
# gzip ProSNP4_SWA_545_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_SWA_545_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_SWA_545_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_SWA_545 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_UNI_1217_R1_paired.fastq.paired.fq
# gzip ProSNP4_UNI_1217_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_UNI_1217_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_UNI_1217_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_UNI_1217 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_UNI_306_R1_paired.fastq.paired.fq
# gzip ProSNP4_UNI_306_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_UNI_306_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_UNI_306_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_UNI_306 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_UNI_347_R1_paired.fastq.paired.fq
# gzip ProSNP4_UNI_347_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_UNI_347_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_UNI_347_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_UNI_347 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_UNI_383_R1_paired.fastq.paired.fq
# gzip ProSNP4_UNI_383_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_UNI_383_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_UNI_383_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_UNI_383 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_UNI_544_R1_paired.fastq.paired.fq
# gzip ProSNP4_UNI_544_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_UNI_544_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_UNI_544_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_UNI_544 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_UNI_55_R1_paired.fastq.paired.fq
# gzip ProSNP4_UNI_55_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_UNI_55_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_UNI_55_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_UNI_55 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_VAN_1158_R1_paired.fastq.paired.fq
# gzip ProSNP4_VAN_1158_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_VAN_1158_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_VAN_1158_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_VAN_1158 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_VAN_1211_R1_paired.fastq.paired.fq
# gzip ProSNP4_VAN_1211_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_VAN_1211_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_VAN_1211_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_VAN_1211 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_VAN_293_R1_paired.fastq.paired.fq
# gzip ProSNP4_VAN_293_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_VAN_293_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_VAN_293_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_VAN_293 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_VAN_361_R1_paired.fastq.paired.fq
# gzip ProSNP4_VAN_361_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_VAN_361_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_VAN_361_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_VAN_361 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP4_VAN_521_R1_paired.fastq.paired.fq
# gzip ProSNP4_VAN_521_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP4_VAN_521_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP4_VAN_521_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP4_VAN_521 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_ALC1045_R1_paired.fastq.paired.fq
# gzip ProSNP5_ALC1045_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ALC1045_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ALC1045_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_ALC1045 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_ALC230_R1_paired.fastq.paired.fq
# gzip ProSNP5_ALC230_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ALC230_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ALC230_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_ALC230 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_ALC250_R1_paired.fastq.paired.fq
# gzip ProSNP5_ALC250_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ALC250_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ALC250_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_ALC250 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_ALC502_R1_paired.fastq.paired.fq
# gzip ProSNP5_ALC502_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ALC502_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ALC502_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_ALC502 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_ALC62_R1_paired.fastq.paired.fq
# gzip ProSNP5_ALC62_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ALC62_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ALC62_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_ALC62 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_ANY1126_R1_paired.fastq.paired.fq
# gzip ProSNP5_ANY1126_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ANY1126_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ANY1126_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_ANY1126 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_ANY116_R1_paired.fastq.paired.fq
# gzip ProSNP5_ANY116_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ANY116_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ANY116_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_ANY116 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_ANY117_R1_paired.fastq.paired.fq
# gzip ProSNP5_ANY117_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ANY117_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ANY117_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_ANY117 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_ANY303_R1_paired.fastq.paired.fq
# gzip ProSNP5_ANY303_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ANY303_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ANY303_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_ANY303 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_ANY322_R1_paired.fastq.paired.fq
# gzip ProSNP5_ANY322_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_ANY322_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_ANY322_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_ANY322 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_BAN1138_R1_paired.fastq.paired.fq
# gzip ProSNP5_BAN1138_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BAN1138_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BAN1138_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BAN1138 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_BAN207_R1_paired.fastq.paired.fq
# gzip ProSNP5_BAN207_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BAN207_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BAN207_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BAN207 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_BAN229_R1_paired.fastq.paired.fq
# gzip ProSNP5_BAN229_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BAN229_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BAN229_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BAN229 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_BAN506_R1_paired.fastq.paired.fq
# gzip ProSNP5_BAN506_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BAN506_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BAN506_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BAN506 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_BAN92_R1_paired.fastq.paired.fq
# gzip ProSNP5_BAN92_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BAN92_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BAN92_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BAN92 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_BAV1191_R1_paired.fastq.paired.fq
gzip ProSNP5_BAV1191_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BAV1191_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BAV1191_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BAV1191 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_BAV422_R1_paired.fastq.paired.fq
gzip ProSNP5_BAV422_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BAV422_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BAV422_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BAV422 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_BAV527_R1_paired.fastq.paired.fq
gzip ProSNP5_BAV527_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BAV527_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BAV527_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BAV527 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_BAV75_R1_paired.fastq.paired.fq
gzip ProSNP5_BAV75_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BAV75_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BAV75_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BAV75 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_BAV7_R1_paired.fastq.paired.fq
gzip ProSNP5_BAV7_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BAV7_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BAV7_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BAV7 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_BRD369_R1_paired.fastq.paired.fq
gzip ProSNP5_BRD369_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BRD369_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BRD369_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BRD369 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_BRD381_R1_paired.fastq.paired.fq
gzip ProSNP5_BRD381_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BRD381_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BRD381_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BRD381 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_BRD483_R1_paired.fastq.paired.fq
gzip ProSNP5_BRD483_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BRD483_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BRD483_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BRD483 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_BRD484_R1_paired.fastq.paired.fq
gzip ProSNP5_BRD484_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BRD484_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BRD484_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BRD484 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_BRD51_R1_paired.fastq.paired.fq
gzip ProSNP5_BRD51_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_BRD51_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_BRD51_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_BRD51 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_CDB100_R1_paired.fastq.paired.fq
gzip ProSNP5_CDB100_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CDB100_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CDB100_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CDB100 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_CDB1134_R1_paired.fastq.paired.fq
gzip ProSNP5_CDB1134_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CDB1134_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CDB1134_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CDB1134 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_CDB376_R1_paired.fastq.paired.fq
gzip ProSNP5_CDB376_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CDB376_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CDB376_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CDB376 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_CDB512_R1_paired.fastq.paired.fq
gzip ProSNP5_CDB512_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CDB512_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CDB512_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CDB512 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_CDB564_R1_paired.fastq.paired.fq
gzip ProSNP5_CDB564_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CDB564_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CDB564_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CDB564 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_CER1117_R1_paired.fastq.paired.fq
gzip ProSNP5_CER2117_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CER1117_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CER2117_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CER1117 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_CER2_R1_paired.fastq.paired.fq
gzip ProSNP5_CER2_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CER2_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CER2_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CER2 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_CER382_R1_paired.fastq.paired.fq
gzip ProSNP5_CER382_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CER382_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CER382_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CER382 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_CER458_R1_paired.fastq.paired.fq
gzip ProSNP5_CER458_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CER458_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CER458_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CER458 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_CER78_R1_paired.fastq.paired.fq
gzip ProSNP5_CER78_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_CER78_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_CER78_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_CER78 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_GAR1019_R1_paired.fastq.paired.fq
gzip ProSNP5_GAR2019_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_GAR1019_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_GAR2019_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_GAR1019 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_GAR434_R1_paired.fastq.paired.fq
gzip ProSNP5_GAR434_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_GAR434_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_GAR434_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_GAR434 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_GAR439_R1_paired.fastq.paired.fq
gzip ProSNP5_GAR439_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_GAR439_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_GAR439_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_GAR439 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_GAR46_R1_paired.fastq.paired.fq
gzip ProSNP5_GAR46_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_GAR46_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_GAR46_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_GAR46 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_GAR547_R1_paired.fastq.paired.fq
gzip ProSNP5_GAR547_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_GAR547_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_GAR547_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_GAR547 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_KAR1044_R1_paired.fastq.paired.fq
gzip ProSNP5_KAR2044_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KAR1044_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KAR2044_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KAR1044 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_KAR1063_R1_paired.fastq.paired.fq
gzip ProSNP5_KAR2063_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KAR1063_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KAR2063_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KAR1063 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_KAR122_R1_paired.fastq.paired.fq
gzip ProSNP5_KAR222_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KAR122_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KAR222_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KAR122 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_KAR178_R1_paired.fastq.paired.fq
gzip ProSNP5_KAR278_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KAR178_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KAR278_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KAR178 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_KAR346_R1_paired.fastq.paired.fq
gzip ProSNP5_KAR346_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KAR346_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KAR346_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KAR346 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_KLM1025_R1_paired.fastq.paired.fq
gzip ProSNP5_KLM1025_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KLM1025_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KLM1025_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KLM1025 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_KLM1203_R1_paired.fastq.paired.fq
gzip ProSNP5_KLM1203_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KLM1203_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KLM1203_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KLM1203 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_KLM534_R1_paired.fastq.paired.fq
gzip ProSNP5_KLM534_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KLM534_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KLM534_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KLM534 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_KLM56_R1_paired.fastq.paired.fq
gzip ProSNP5_KLM56_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KLM56_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KLM56_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KLM56 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_KLM97_R1_paired.fastq.paired.fq
gzip ProSNP5_KLM97_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KLM97_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KLM97_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KLM97 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_KSW1145_R1_paired.fastq.paired.fq
gzip ProSNP5_KSW1145_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KSW1145_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KSW1145_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KSW1145 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_KSW1206_R1_paired.fastq.paired.fq
gzip ProSNP5_KSW1206_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KSW1206_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KSW1206_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KSW1206 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_KSW398_R1_paired.fastq.paired.fq
gzip ProSNP5_KSW398_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KSW398_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KSW398_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KSW398 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_KSW505_R1_paired.fastq.paired.fq
gzip ProSNP5_KSW505_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KSW505_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KSW505_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KSW505 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_KSW597_R1_paired.fastq.paired.fq
gzip ProSNP5_KSW597_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KSW597_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KSW597_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KSW597 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_KSW95_R1_paired.fastq.paired.fq
gzip ProSNP5_KSW95_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_KSW95_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_KSW95_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_KSW95 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_LOE1018_R1_paired.fastq.paired.fq
gzip ProSNP5_LOE1018_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_LOE1018_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_LOE1018_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_LOE1018 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_LOE125_R1_paired.fastq.paired.fq
gzip ProSNP5_LOE125_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_LOE125_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_LOE125_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_LOE125 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_LOE388_R1_paired.fastq.paired.fq
gzip ProSNP5_LOE388_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_LOE388_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_LOE388_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_LOE388 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_LOE585_R1_paired.fastq.paired.fq
gzip ProSNP5_LOE585_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_LOE585_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_LOE585_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_LOE585 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_LOE79_R1_paired.fastq.paired.fq
gzip ProSNP5_LOE79_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_LOE79_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_LOE79_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_LOE79 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_MGU1006_R1_paired.fastq.paired.fq
gzip ProSNP5_MGU1006_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_MGU1006_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_MGU1006_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_MGU1006 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_MGU1056_R1_paired.fastq.paired.fq
gzip ProSNP5_MGU1056_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_MGU1056_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_MGU1056_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_MGU1056 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_MGU16_R1_paired.fastq.paired.fq
gzip ProSNP5_MGU16_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_MGU16_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_MGU16_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_MGU16 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_MGU490_R1_paired.fastq.paired.fq
gzip ProSNP5_MGU490_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_MGU490_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_MGU490_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_MGU490 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_MGU498_R1_paired.fastq.paired.fq
gzip ProSNP5_MGU498_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_MGU498_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_MGU498_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_MGU498 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_POT1176_R1_paired.fastq.paired.fq
gzip ProSNP5_POT1176_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_POT1176_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_POT1176_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_POT1176 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_POT255_R1_paired.fastq.paired.fq
gzip ProSNP5_POT255_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_POT255_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_POT255_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_POT255 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_POT282_R1_paired.fastq.paired.fq
gzip ProSNP5_POT282_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_POT282_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_POT282_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_POT282 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_POT525_R1_paired.fastq.paired.fq
gzip ProSNP5_POT525_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_POT525_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_POT525_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_POT525 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_POT54_R1_paired.fastq.paired.fq
gzip ProSNP5_POT54_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_POT54_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_POT54_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_POT54 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_RIV151_R1_paired.fastq.paired.fq
gzip ProSNP5_RIV151_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_RIV151_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_RIV151_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_RIV151 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_RIV191_R1_paired.fastq.paired.fq
gzip ProSNP5_RIV191_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_RIV191_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_RIV191_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_RIV191 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_RIV195_R1_paired.fastq.paired.fq
gzip ProSNP5_RIV195_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_RIV195_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_RIV195_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_RIV195 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
gzip ProSNP5_RIV44_R1_paired.fastq.paired.fq
gzip ProSNP5_RIV44_R2_paired.fastq.paired.fq
./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_RIV44_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_RIV44_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_RIV44 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_RIV560_R1_paired.fastq.paired.fq
# gzip ProSNP5_RIV560_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_RIV560_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_RIV560_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_RIV560 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_RND1010_R1_paired.fastq.paired.fq
# gzip ProSNP5_RND1010_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_RND1010_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_RND1010_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_RND1010 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_RND1210_R1_paired.fastq.paired.fq
# gzip ProSNP5_RND1210_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_RND1210_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_RND1210_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_RND1210 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_RND139_R1_paired.fastq.paired.fq
# gzip ProSNP5_RND139_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_RND139_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_RND139_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_RND139 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_RND290_R1_paired.fastq.paired.fq
# gzip ProSNP5_RND290_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_RND290_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_RND290_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_RND290 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_RND579_R1_paired.fastq.paired.fq
# gzip ProSNP5_RND579_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_RND579_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_RND579_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_RND579 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_SWA107_R1_paired.fastq.paired.fq
# gzip ProSNP5_SWA107_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_SWA107_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_SWA107_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_SWA107 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_SWA157_R1_paired.fastq.paired.fq
# gzip ProSNP5_SWA157_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_SWA157_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_SWA157_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_SWA157 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_SWA189_R1_paired.fastq.paired.fq
# gzip ProSNP5_SWA189_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_SWA189_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_SWA189_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_SWA189 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_SWA577_R1_paired.fastq.paired.fq
# gzip ProSNP5_SWA577_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_SWA577_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_SWA577_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_SWA577 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_SWA80_R1_paired.fastq.paired.fq
# gzip ProSNP5_SWA80_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_SWA80_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_SWA80_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_SWA80 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_UNI1001_R1_paired.fastq.paired.fq
# gzip ProSNP5_UNI1001_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_UNI1001_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_UNI1001_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_UNI1001 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_UNI386_R1_paired.fastq.paired.fq
# gzip ProSNP5_UNI386_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_UNI386_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_UNI386_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_UNI386 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_UNI3_R1_paired.fastq.paired.fq
# gzip ProSNP5_UNI3_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_UNI3_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_UNI3_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_UNI3 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_UNI403_R1_paired.fastq.paired.fq
# gzip ProSNP5_UNI403_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_UNI403_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_UNI403_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_UNI403 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_VAN163_R1_paired.fastq.paired.fq
# gzip ProSNP5_VAN163_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_VAN163_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_VAN163_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_VAN163 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_VAN206_R1_paired.fastq.paired.fq
# gzip ProSNP5_VAN206_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_VAN206_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_VAN206_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_VAN206 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_VAN208_R1_paired.fastq.paired.fq
# gzip ProSNP5_VAN208_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_VAN208_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_VAN208_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_VAN208 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_VAN260_R1_paired.fastq.paired.fq
# gzip ProSNP5_VAN260_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_VAN260_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_VAN260_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_VAN260 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP5_VAN27_R1_paired.fastq.paired.fq
# gzip ProSNP5_VAN27_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP5_VAN27_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP5_VAN27_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP5_VAN27 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_ANY_1020_R1_paired.fastq.paired.fq
# gzip ProSNP6_ANY_1020_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_ANY_1020_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_ANY_1020_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_ANY_1020 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_ANY_1079_R1_paired.fastq.paired.fq
# gzip ProSNP6_ANY_1079_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_ANY_1079_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_ANY_1079_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_ANY_1079 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_ANY_1122_R1_paired.fastq.paired.fq
# gzip ProSNP6_ANY_1122_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_ANY_1122_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_ANY_1122_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_ANY_1122 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_ANY_12_R1_paired.fastq.paired.fq
# gzip ProSNP6_ANY_12_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_ANY_12_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_ANY_12_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_ANY_12 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_ANY_301_R1_paired.fastq.paired.fq
# gzip ProSNP6_ANY_301_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_ANY_301_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_ANY_301_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_ANY_301 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_ANY_518_R1_paired.fastq.paired.fq
# gzip ProSNP6_ANY_518_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_ANY_518_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_ANY_518_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_ANY_518 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_ANY_85_R1_paired.fastq.paired.fq
# gzip ProSNP6_ANY_85_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_ANY_85_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_ANY_85_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_ANY_85 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_BAV_1077_R1_paired.fastq.paired.fq
# gzip ProSNP6_BAV_1077_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BAV_1077_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BAV_1077_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BAV_1077 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_BAV_1214_R1_paired.fastq.paired.fq
# gzip ProSNP6_BAV_1214_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BAV_1214_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BAV_1214_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BAV_1214 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_BAV_339_R1_paired.fastq.paired.fq
# gzip ProSNP6_BAV_339_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BAV_339_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BAV_339_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BAV_339 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_BAV_462_R1_paired.fastq.paired.fq
# gzip ProSNP6_BAV_462_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BAV_462_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BAV_462_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BAV_462 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_BAV_556_R1_paired.fastq.paired.fq
# gzip ProSNP6_BAV_556_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BAV_556_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BAV_556_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BAV_556 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_BAV_63_R1_paired.fastq.paired.fq
# gzip ProSNP6_BAV_63_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BAV_63_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BAV_63_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BAV_63 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_BRD_1009_R1_paired.fastq.paired.fq
# gzip ProSNP6_BRD_1009_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BRD_1009_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BRD_1009_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BRD_1009 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_BRD_342_R1_paired.fastq.paired.fq
# gzip ProSNP6_BRD_342_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BRD_342_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BRD_342_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BRD_342 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_BRD_442_R1_paired.fastq.paired.fq
# gzip ProSNP6_BRD_442_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BRD_442_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BRD_442_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BRD_442 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_BRD_501_R1_paired.fastq.paired.fq
# gzip ProSNP6_BRD_501_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BRD_501_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BRD_501_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BRD_501 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_BRD_533_R1_paired.fastq.paired.fq
# gzip ProSNP6_BRD_533_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BRD_533_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BRD_533_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BRD_533 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_BRD_543_R1_paired.fastq.paired.fq
# gzip ProSNP6_BRD_543_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_BRD_543_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_BRD_543_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_BRD_543 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_CDB_228_R1_paired.fastq.paired.fq
# gzip ProSNP6_CDB_228_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_CDB_228_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_CDB_228_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_CDB_228 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_CDB_571_R1_paired.fastq.paired.fq
# gzip ProSNP6_CDB_571_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_CDB_571_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_CDB_571_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_CDB_571 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_CER_1038_R1_paired.fastq.paired.fq
# gzip ProSNP6_CER_1038_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_CER_1038_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_CER_1038_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_CER_1038 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_CER_1142_R1_paired.fastq.paired.fq
# gzip ProSNP6_CER_1142_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_CER_1142_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_CER_1142_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_CER_1142 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_CER_14_R1_paired.fastq.paired.fq
# gzip ProSNP6_CER_14_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_CER_14_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_CER_14_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_CER_14 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_CER_199_R1_paired.fastq.paired.fq
# gzip ProSNP6_CER_199_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_CER_199_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_CER_199_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_CER_199 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_CER_338_R1_paired.fastq.paired.fq
# gzip ProSNP6_CER_338_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_CER_338_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_CER_338_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_CER_338 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_CER_589_R1_paired.fastq.paired.fq
# gzip ProSNP6_CER_589_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_CER_589_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_CER_589_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_CER_589 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_GAR_1041_R1_paired.fastq.paired.fq
# gzip ProSNP6_GAR_1041_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_GAR_1041_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_GAR_1041_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_GAR_1041 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_GAR_1200_R1_paired.fastq.paired.fq
# gzip ProSNP6_GAR_1200_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_GAR_1200_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_GAR_1200_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_GAR_1200 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_GAR_174_R1_paired.fastq.paired.fq
# gzip ProSNP6_GAR_174_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_GAR_174_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_GAR_174_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_GAR_174 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_GAR_299_R1_paired.fastq.paired.fq
# gzip ProSNP6_GAR_299_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_GAR_299_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_GAR_299_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_GAR_299 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_GAR_437_R1_paired.fastq.paired.fq
# gzip ProSNP6_GAR_437_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_GAR_437_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_GAR_437_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_GAR_437 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_GAR_557_R1_paired.fastq.paired.fq
# gzip ProSNP6_GAR_557_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_GAR_557_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_GAR_557_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_GAR_557 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_GAR_90_R1_paired.fastq.paired.fq
# gzip ProSNP6_GAR_90_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_GAR_90_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_GAR_90_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_GAR_90 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_KAR_1187_R1_paired.fastq.paired.fq
# gzip ProSNP6_KAR_1187_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KAR_1187_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KAR_1187_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KAR_1187 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_KAR_184_R1_paired.fastq.paired.fq
# gzip ProSNP6_KAR_184_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KAR_184_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KAR_184_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KAR_184 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_KAR_486_R1_paired.fastq.paired.fq
# gzip ProSNP6_KAR_486_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KAR_486_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KAR_486_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KAR_486 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_KAR_49_R1_paired.fastq.paired.fq
# gzip ProSNP6_KAR_49_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KAR_49_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KAR_49_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KAR_49 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_KAR_68_R1_paired.fastq.paired.fq
# gzip ProSNP6_KAR_68_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KAR_68_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KAR_68_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KAR_68 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_KAR_84_R1_paired.fastq.paired.fq
# gzip ProSNP6_KAR_84_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KAR_84_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KAR_84_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KAR_84 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_KLM_1052_R1_paired.fastq.paired.fq
# gzip ProSNP6_KLM_1052_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KLM_1052_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KLM_1052_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KLM_1052 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_KLM_1129_R1_paired.fastq.paired.fq
# gzip ProSNP6_KLM_1129_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KLM_1129_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KLM_1129_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KLM_1129 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_KLM_155_R1_paired.fastq.paired.fq
# gzip ProSNP6_KLM_155_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KLM_155_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KLM_155_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KLM_155 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_KLM_343_R1_paired.fastq.paired.fq
# gzip ProSNP6_KLM_343_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KLM_343_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KLM_343_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KLM_343 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_KLM_475_R1_paired.fastq.paired.fq
# gzip ProSNP6_KLM_475_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KLM_475_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KLM_475_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KLM_475 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_KLM_566_R1_paired.fastq.paired.fq
# gzip ProSNP6_KLM_566_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KLM_566_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KLM_566_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KLM_566 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_KLM_582_R1_paired.fastq.paired.fq
# gzip ProSNP6_KLM_582_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KLM_582_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KLM_582_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KLM_582 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_KSW_1043_R1_paired.fastq.paired.fq
# gzip ProSNP6_KSW_1043_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KSW_1043_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KSW_1043_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KSW_1043 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_KSW_104_R1_paired.fastq.paired.fq
# gzip ProSNP6_KSW_104_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KSW_104_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KSW_104_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KSW_104 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_KSW_1076_R1_paired.fastq.paired.fq
# gzip ProSNP6_KSW_1076_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KSW_1076_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KSW_1076_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KSW_1076 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_KSW_10_R1_paired.fastq.paired.fq
# gzip ProSNP6_KSW_10_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KSW_10_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KSW_10_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KSW_10 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_KSW_1125_R1_paired.fastq.paired.fq
# gzip ProSNP6_KSW_1125_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KSW_1125_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KSW_1125_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KSW_1125 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_KSW_47_R1_paired.fastq.paired.fq
# gzip ProSNP6_KSW_47_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KSW_47_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KSW_47_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KSW_47 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_KSW_516_R1_paired.fastq.paired.fq
# gzip ProSNP6_KSW_516_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_KSW_516_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_KSW_516_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_KSW_516 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_LOE_1035_R1_paired.fastq.paired.fq
# gzip ProSNP6_LOE_1035_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_LOE_1035_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_LOE_1035_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_LOE_1035 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_LOE_1150_R1_paired.fastq.paired.fq
# gzip ProSNP6_LOE_1150_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_LOE_1150_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_LOE_1150_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_LOE_1150 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_LOE_211_R1_paired.fastq.paired.fq
# gzip ProSNP6_LOE_211_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_LOE_211_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_LOE_211_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_LOE_211 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_LOE_497_R1_paired.fastq.paired.fq
# gzip ProSNP6_LOE_497_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_LOE_497_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_LOE_497_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_LOE_497 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_LOE_548_R1_paired.fastq.paired.fq
# gzip ProSNP6_LOE_548_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_LOE_548_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_LOE_548_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_LOE_548 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_POT_1119_R1_paired.fastq.paired.fq
# gzip ProSNP6_POT_1119_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_POT_1119_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_POT_1119_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_POT_1119 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_POT_128_R1_paired.fastq.paired.fq
# gzip ProSNP6_POT_128_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_POT_128_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_POT_128_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_POT_128 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_POT_183_R1_paired.fastq.paired.fq
# gzip ProSNP6_POT_183_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_POT_183_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_POT_183_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_POT_183 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_POT_380_R1_paired.fastq.paired.fq
# gzip ProSNP6_POT_380_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_POT_380_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_POT_380_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_POT_380 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_POT_463_R1_paired.fastq.paired.fq
# gzip ProSNP6_POT_463_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_POT_463_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_POT_463_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_POT_463 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_POT_594_R1_paired.fastq.paired.fq
# gzip ProSNP6_POT_594_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_POT_594_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_POT_594_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_POT_594 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_RIV_1148_R1_paired.fastq.paired.fq
# gzip ProSNP6_RIV_1148_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RIV_1148_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RIV_1148_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RIV_1148 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_RIV_180_R1_paired.fastq.paired.fq
# gzip ProSNP6_RIV_180_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RIV_180_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RIV_180_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RIV_180 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_RIV_351_R1_paired.fastq.paired.fq
# gzip ProSNP6_RIV_351_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RIV_351_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RIV_351_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RIV_351 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_RIV_461_R1_paired.fastq.paired.fq
# gzip ProSNP6_RIV_461_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RIV_461_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RIV_461_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RIV_461 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_RIV_530_R1_paired.fastq.paired.fq
# gzip ProSNP6_RIV_530_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RIV_530_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RIV_530_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RIV_530 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_RIV_88_R1_paired.fastq.paired.fq
# gzip ProSNP6_RIV_88_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RIV_88_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RIV_88_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RIV_88 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_RND_1116_R1_paired.fastq.paired.fq
# gzip ProSNP6_RND_1116_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RND_1116_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RND_1116_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RND_1116 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_RND_1220_R1_paired.fastq.paired.fq
# gzip ProSNP6_RND_1220_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RND_1220_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RND_1220_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RND_1220 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_RND_164_R1_paired.fastq.paired.fq
# gzip ProSNP6_RND_164_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RND_164_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RND_164_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RND_164 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_RND_272_R1_paired.fastq.paired.fq
# gzip ProSNP6_RND_272_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RND_272_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RND_272_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RND_272 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_RND_523_R1_paired.fastq.paired.fq
# gzip ProSNP6_RND_523_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RND_523_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RND_523_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RND_523 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_RND_65_R1_paired.fastq.paired.fq
# gzip ProSNP6_RND_65_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_RND_65_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_RND_65_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_RND_65 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_SWA_140_R1_paired.fastq.paired.fq
# gzip ProSNP6_SWA_140_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_SWA_140_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_SWA_140_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_SWA_140 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_SWA_19_R1_paired.fastq.paired.fq
# gzip ProSNP6_SWA_19_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_SWA_19_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_SWA_19_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_SWA_19 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_SWA_304_R1_paired.fastq.paired.fq
# gzip ProSNP6_SWA_304_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_SWA_304_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_SWA_304_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_SWA_304 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_SWA_317_R1_paired.fastq.paired.fq
# gzip ProSNP6_SWA_317_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_SWA_317_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_SWA_317_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_SWA_317 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_SWA_341_R1_paired.fastq.paired.fq
# gzip ProSNP6_SWA_341_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_SWA_341_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_SWA_341_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_SWA_341 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_SWA_515_R1_paired.fastq.paired.fq
# gzip ProSNP6_SWA_515_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_SWA_515_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_SWA_515_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_SWA_515 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_SWA_96_R1_paired.fastq.paired.fq
# gzip ProSNP6_SWA_96_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_SWA_96_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_SWA_96_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_SWA_96 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_UNI_1087_R1_paired.fastq.paired.fq
# gzip ProSNP6_UNI_1087_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_UNI_1087_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_UNI_1087_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_UNI_1087 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_UNI_1175_R1_paired.fastq.paired.fq
# gzip ProSNP6_UNI_1175_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_UNI_1175_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_UNI_1175_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_UNI_1175 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_UNI_1204_R1_paired.fastq.paired.fq
# gzip ProSNP6_UNI_1204_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_UNI_1204_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_UNI_1204_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_UNI_1204 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_UNI_470_R1_paired.fastq.paired.fq
# gzip ProSNP6_UNI_470_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_UNI_470_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_UNI_470_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_UNI_470 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_UNI_479_R1_paired.fastq.paired.fq
# gzip ProSNP6_UNI_479_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_UNI_479_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_UNI_479_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_UNI_479 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_UNI_546_R1_paired.fastq.paired.fq
# gzip ProSNP6_UNI_546_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_UNI_546_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_UNI_546_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_UNI_546 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_VAN_1015_R1_paired.fastq.paired.fq
# gzip ProSNP6_VAN_1015_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_VAN_1015_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_VAN_1015_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_VAN_1015 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_VAN_1179_R1_paired.fastq.paired.fq
# gzip ProSNP6_VAN_1179_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_VAN_1179_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_VAN_1179_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_VAN_1179 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_VAN_269_R1_paired.fastq.paired.fq
# gzip ProSNP6_VAN_269_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_VAN_269_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_VAN_269_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_VAN_269 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_VAN_396_R1_paired.fastq.paired.fq
# gzip ProSNP6_VAN_396_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_VAN_396_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_VAN_396_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_VAN_396 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_VAN_443_R1_paired.fastq.paired.fq
# gzip ProSNP6_VAN_443_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_VAN_443_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_VAN_443_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_VAN_443 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat
# gzip ProSNP6_VAN_93_R1_paired.fastq.paired.fq
# gzip ProSNP6_VAN_93_R2_paired.fastq.paired.fq
# ./STAR --runThreadN 9 --genomeDir /home/makman/Protea_assembly/index/star --readFilesIn /home/makman/Rawdata/combined/ProSNP6_VAN_93_R1_paired.fastq.paired.fq.gz /home/makman/Rawdata/combined/ProSNP6_VAN_93_R2_paired.fastq.paired.fq.gz --outFileNamePrefix /home/makman/ProSNP/mapping/ProSNP6_VAN_93 --outSAMmapqUnique 60 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat