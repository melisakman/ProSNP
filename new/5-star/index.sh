#!/bin/bash -l
#SBATCH -D /home/makman/STAR/bin/Linux_x86_64/
#SBATCH -J star
#SBATCH -o /home/makman/ProSNP/outs/star_index.out
#SBATCH -e /home/makman/ProSNP/outs/star_index.err
#SBATCH --mail-type=All
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH -p bigmemm
#SBATCH --mem=160000
#SBATCH --time=400:00:00
#SBATCH --cpus-per-task=28


./STAR --runThreadN 28 --runMode genomeGenerate --genomeDir /home/makman/Protea_assembly/index/star --genomeFastaFiles /home/makman/Protea_assembly/graph_prepens2_73_1kb.fa --sjdbGTFfile /home/makman/Protea_assembly/prepens75_85.gff3 --sjdbOverhang 100

