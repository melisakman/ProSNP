#!/bin/bash -l
#SBATCH -D /home/makman/ProSNP/mapping/
#SBATCH -J VC1
#SBATCH -o /home/makman/ProSNP/outs/variantCalling1.out
#SBATCH -e /home/makman/ProSNP/outs/variantCalling1.err
#SBATCH --mail-type=All
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH -p bigmemm
#SBATCH --mem=72GB
#SBATCH --time=400:00:00

module load java
module load R
module load maven/3.2.3
module load GATK/3.6

java -Djava.io.tmpdir=/home/makman/temp/ -Xmx64G -jar /share/apps/picard-tools-2.7.1/picard.jar CreateSequenceDictionary R=/home/makman/Protea_assembly/graph_prepens2_73_1kb.fa O=/home/makman/Protea_assembly/graph_prepens2_73_1kb.dict
java -Djava.io.tmpdir=/home/makman/temp/ -Xmx60G -jar /share/apps/GATK-3.6/GenomeAnalysisTK.jar \
-T HaplotypeCaller \
-R /home/makman/Protea_assembly/graph_prepens2_73_1kb.fa \
-I ProSNP12_ALC_1045_markDups_RG.bam \
--filter_reads_with_N_cigar \
-stand_call_conf 20.0 -dontUseSoftClippedBases \
-o ProSNP12_ALC_1045.vcf
