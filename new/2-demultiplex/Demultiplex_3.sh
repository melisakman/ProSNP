#!/bin/bash -l
#SBATCH -D /home/makman/Rawdata/combined
#SBATCH -J Demul3
#SBATCH -o /home/makman/ProSNP/outs/demultiplex3.out
#SBATCH -e /home/makman/ProSNP/outs/demultiplex3.err
#SBATCH --mail-type=All
#SBATCH --time=72:00:00
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH -p bigmemm
module load perl
# zcat plate12_R1.fastq.gz | /home/makman/ProSNP/fastx_barcode_splitter.pl --bcfile /home/makman/ProSNP/demultiplex/barcodes_plate12.txt --bol --prefix ProSNP12_ --suffix _R1.fastq --mismatches 1
# zcat plate12_R2.fastq.gz | /home/makman/ProSNP/fastx_barcode_splitter.pl --bcfile /home/makman/ProSNP/demultiplex/barcodes_plate12.txt --bol --prefix ProSNP12_ --suffix _R2.fastq --mismatches 1
# zcat plate4_R1.fastq.gz | /home/makman/ProSNP/fastx_barcode_splitter.pl --bcfile /home/makman/ProSNP/demultiplex/barcodes_plate4.txt --bol --prefix ProSNP4_ --suffix _R1.fastq --mismatches 1 | gzip
# zcat plate4_R2.fastq.gz | /home/makman/ProSNP/fastx_barcode_splitter.pl --bcfile /home/makman/ProSNP/demultiplex/barcodes_plate4.txt --bol --prefix ProSNP4_ --suffix _R2.fastq --mismatches 1 | gzip
zcat plate6_R1.fastq.gz | /home/makman/ProSNP/fastx_barcode_splitter.pl --bcfile /home/makman/ProSNP/demultiplex/barcodes_plate6.txt --bol --prefix ProSNP6_ --suffix _R1.fastq --mismatches 1 | gzip
zcat plate6_R2.fastq.gz | /home/makman/ProSNP/fastx_barcode_splitter.pl --bcfile /home/makman/ProSNP/demultiplex/barcodes_plate6.txt --bol --prefix ProSNP6_ --suffix _R2.fastq --mismatches 1 | gzip
# zcat ../NYU/ma_3_NoIndex_L003_R1_001.fastq.gz | /home/makman/ProSNP/fastx_barcode_splitter.pl --bcfile /home/makman/ProSNP/demultiplex/barcodes_plate5_ma3.txt --bol --prefix ProSNP5_ --suffix _R1.fastq --mismatches 1 | gzip
# zcat ../NYU/ma_3_NoIndex_L003_R2_001.fastq.gz | /home/makman/ProSNP/fastx_barcode_splitter.pl --bcfile /home/makman/ProSNP/demultiplex/barcodes_plate5_ma3.txt --bol --prefix ProSNP5_ --suffix _R2.fastq --mismatches 1 | gzip
# zcat ../NYU/ma_4_NoIndex_L004_R1_001.fastq.gz | /home/makman/ProSNP/fastx_barcode_splitter.pl --bcfile /home/makman/ProSNP/demultiplex/barcodes_plate5_ma4.txt --bol --prefix ProSNP5_ --suffix _R1.fastq --mismatches 1 | gzip
# zcat ../NYU/ma_4_NoIndex_L004_R2_001.fastq.gz | /home/makman/ProSNP/fastx_barcode_splitter.pl --bcfile /home/makman/ProSNP/demultiplex/barcodes_plate5_ma4.txt --bol --prefix ProSNP5_ --suffix _R2.fastq --mismatches 1 | gzip
