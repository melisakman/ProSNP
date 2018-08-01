#!/bin/bash -l
#SBATCH -D /home/makman/
#SBATCH -J rm
#SBATCH -o /home/makman/ProSNP/outs/remove_temp.out
#SBATCH -e /home/makman/ProSNP/outs/remove_temp.err
#SBATCH --mail-type=All
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH -p bigmemh
#SBATCH --mem=8GB
#SBATCH --time=400:00:00

rm -fr temp2

