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

java -Djava.io.tmpdir=/home/makman/temp/ -Xmx60G -jar /share/apps/GATK-3.6/GenomeAnalysisTK.jar \
-T HaplotypeCaller \
-R /home/makman/Protea_assembly/graph_prepens2_73_1kb.fa \
-I ProSNP12_ALC_1045_markDups_RG.bam \
-stand_call_conf 20.0 -dontUseSoftClippedBases \
-O ProSNP12_ALC_1045.vcf
