#!/bin/bash -l
#SBATCH -D /home/makman/Rawdata/combined
#SBATCH -J star
#SBATCH -o /home/makman/ProSNP/outs/pair-up.out
#SBATCH -e /home/makman/ProSNP/outs/pair-up.err
#SBATCH --mail-type=All
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH -p bigmemm
#SBATCH --mem=72GB
#SBATCH --time=400:00:00

module load fastx/0.0.14
module load perlbrew/5.16.0
# gunzip *_paired.fastq.gz
# /home/makman/fastq-pair/build/fastq_pair -t 5088974 /home/makman/Rawdata/combined/ProSNP12_ALC_12_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_ALC_12_R2_paired.fastq
# gzip ProSNP12_ALC_12_R1_paired.fastq
# gzip ProSNP12_ALC_12_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4562790 /home/makman/Rawdata/combined/ProSNP12_ALC_34_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_ALC_34_R2_paired.fastq
# gzip ProSNP12_ALC_34_R1_paired.fastq
# gzip ProSNP12_ALC_34_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4602661 /home/makman/Rawdata/combined/ProSNP12_ALC_44_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_ALC_44_R2_paired.fastq
# gzip ProSNP12_ALC_44_R1_paired.fastq
# gzip ProSNP12_ALC_44_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3478936 /home/makman/Rawdata/combined/ProSNP12_ANY_19_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_ANY_19_R2_paired.fastq
# gzip ProSNP12_ANY_19_R1_paired.fastq
# gzip ProSNP12_ANY_19_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5230992 /home/makman/Rawdata/combined/ProSNP12_ANY_1_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_ANY_1_R2_paired.fastq
# gzip ProSNP12_ANY_1_R1_paired.fastq
# gzip ProSNP12_ANY_1_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4390919 /home/makman/Rawdata/combined/ProSNP12_ANY_30_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_ANY_30_R2_paired.fastq
# gzip ProSNP12_ANY_30_R1_paired.fastq
# gzip ProSNP12_ANY_30_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4985822 /home/makman/Rawdata/combined/ProSNP12_BAN_21_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_BAN_21_R2_paired.fastq
# gzip ProSNP12_BAN_21_R1_paired.fastq
# gzip ProSNP12_BAN_21_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5092064 /home/makman/Rawdata/combined/ProSNP12_BAN_35_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_BAN_35_R2_paired.fastq
# gzip ProSNP12_BAN_35_R1_paired.fastq
# gzip ProSNP12_BAN_35_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3344696 /home/makman/Rawdata/combined/ProSNP12_BAN_3_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_BAN_3_R2_paired.fastq
# gzip ProSNP12_BAN_3_R1_paired.fastq
# gzip ProSNP12_BAN_3_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6534710 /home/makman/Rawdata/combined/ProSNP12_BAV_20_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_BAV_20_R2_paired.fastq
# gzip ProSNP12_BAV_20_R1_paired.fastq
# gzip ProSNP12_BAV_20_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4708825 /home/makman/Rawdata/combined/ProSNP12_BAV_32_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_BAV_32_R2_paired.fastq
# gzip ProSNP12_BAV_32_R1_paired.fastq
# gzip ProSNP12_BAV_32_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4281178 /home/makman/Rawdata/combined/ProSNP12_BAV_44_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_BAV_44_R2_paired.fastq
# gzip ProSNP12_BAV_44_R1_paired.fastq
# gzip ProSNP12_BAV_44_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4970354 /home/makman/Rawdata/combined/ProSNP12_BRD_1_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_BRD_1_R2_paired.fastq
# gzip ProSNP12_BRD_1_R1_paired.fastq
# gzip ProSNP12_BRD_1_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4660549 /home/makman/Rawdata/combined/ProSNP12_BRD_22_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_BRD_22_R2_paired.fastq
# gzip ProSNP12_BRD_22_R1_paired.fastq
# gzip ProSNP12_BRD_22_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5399488 /home/makman/Rawdata/combined/ProSNP12_BRD_41_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_BRD_41_R2_paired.fastq
# gzip ProSNP12_BRD_41_R1_paired.fastq
# gzip ProSNP12_BRD_41_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5806151 /home/makman/Rawdata/combined/ProSNP12_CDB_26_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_CDB_26_R2_paired.fastq
# gzip ProSNP12_CDB_26_R1_paired.fastq
# gzip ProSNP12_CDB_26_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5862937 /home/makman/Rawdata/combined/ProSNP12_CDB_2_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_CDB_2_R2_paired.fastq
# gzip ProSNP12_CDB_2_R1_paired.fastq
# gzip ProSNP12_CDB_2_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5567197 /home/makman/Rawdata/combined/ProSNP12_CDB_40_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_CDB_40_R2_paired.fastq
# gzip ProSNP12_CDB_40_R1_paired.fastq
# gzip ProSNP12_CDB_40_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 1153194 /home/makman/Rawdata/combined/ProSNP12_CER_1_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_CER_1_R2_paired.fastq
# gzip ProSNP12_CER_1_R1_paired.fastq
# gzip ProSNP12_CER_1_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5587768 /home/makman/Rawdata/combined/ProSNP12_CER_22_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_CER_22_R2_paired.fastq
# gzip ProSNP12_CER_22_R1_paired.fastq
# gzip ProSNP12_CER_22_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3583430 /home/makman/Rawdata/combined/ProSNP12_CER_42_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_CER_42_R2_paired.fastq
# gzip ProSNP12_CER_42_R1_paired.fastq
# gzip ProSNP12_CER_42_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4919538 /home/makman/Rawdata/combined/ProSNP12_GAR_1_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_GAR_1_R2_paired.fastq
# gzip ProSNP12_GAR_1_R1_paired.fastq
# gzip ProSNP12_GAR_1_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4566464 /home/makman/Rawdata/combined/ProSNP12_GAR_20_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_GAR_20_R2_paired.fastq
# gzip ProSNP12_GAR_20_R1_paired.fastq
# gzip ProSNP12_GAR_20_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 755172 /home/makman/Rawdata/combined/ProSNP12_GAR_41_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_GAR_41_R2_paired.fastq
# gzip ProSNP12_GAR_41_R1_paired.fastq
# gzip ProSNP12_GAR_41_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3410021 /home/makman/Rawdata/combined/ProSNP12_KAR_1_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_KAR_1_R2_paired.fastq
# gzip ProSNP12_KAR_1_R1_paired.fastq
# gzip ProSNP12_KAR_1_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5768791 /home/makman/Rawdata/combined/ProSNP12_KAR_25_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_KAR_25_R2_paired.fastq
# gzip ProSNP12_KAR_25_R1_paired.fastq
# gzip ProSNP12_KAR_25_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5586397 /home/makman/Rawdata/combined/ProSNP12_KAR_42_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_KAR_42_R2_paired.fastq
# gzip ProSNP12_KAR_42_R1_paired.fastq
# gzip ProSNP12_KAR_42_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3083737 /home/makman/Rawdata/combined/ProSNP12_KLM_20_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_KLM_20_R2_paired.fastq
# gzip ProSNP12_KLM_20_R1_paired.fastq
# gzip ProSNP12_KLM_20_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4430527 /home/makman/Rawdata/combined/ProSNP12_KLM_45_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_KLM_45_R2_paired.fastq
# gzip ProSNP12_KLM_45_R1_paired.fastq
# gzip ProSNP12_KLM_45_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5347128 /home/makman/Rawdata/combined/ProSNP12_KLM_5_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_KLM_5_R2_paired.fastq
# gzip ProSNP12_KLM_5_R1_paired.fastq
# gzip ProSNP12_KLM_5_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4840362 /home/makman/Rawdata/combined/ProSNP12_KSW_20_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_KSW_20_R2_paired.fastq
# gzip ProSNP12_KSW_20_R1_paired.fastq
# gzip ProSNP12_KSW_20_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5265722 /home/makman/Rawdata/combined/ProSNP12_KSW_45_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_KSW_45_R2_paired.fastq
# gzip ProSNP12_KSW_45_R1_paired.fastq
# gzip ProSNP12_KSW_45_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4933658 /home/makman/Rawdata/combined/ProSNP12_KSW_4_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_KSW_4_R2_paired.fastq
# gzip ProSNP12_KSW_4_R1_paired.fastq
# gzip ProSNP12_KSW_4_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5000081 /home/makman/Rawdata/combined/ProSNP12_LOE_1_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_LOE_1_R2_paired.fastq
# gzip ProSNP12_LOE_1_R1_paired.fastq
# gzip ProSNP12_LOE_1_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5157751 /home/makman/Rawdata/combined/ProSNP12_LOE_23_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_LOE_23_R2_paired.fastq
# gzip ProSNP12_LOE_23_R1_paired.fastq
# gzip ProSNP12_LOE_23_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5209515 /home/makman/Rawdata/combined/ProSNP12_LOE_45_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_LOE_45_R2_paired.fastq
# gzip ProSNP12_LOE_45_R1_paired.fastq
# gzip ProSNP12_LOE_45_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5114716 /home/makman/Rawdata/combined/ProSNP12_MGU_17_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_MGU_17_R2_paired.fastq
# gzip ProSNP12_MGU_17_R1_paired.fastq
# gzip ProSNP12_MGU_17_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5241606 /home/makman/Rawdata/combined/ProSNP12_MGU_1_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_MGU_1_R2_paired.fastq
# gzip ProSNP12_MGU_1_R1_paired.fastq
# gzip ProSNP12_MGU_1_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4471887 /home/makman/Rawdata/combined/ProSNP12_MGU_57_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_MGU_57_R2_paired.fastq
# gzip ProSNP12_MGU_57_R1_paired.fastq
# gzip ProSNP12_MGU_57_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 435485 /home/makman/Rawdata/combined/ProSNP12_POT_1_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_POT_1_R2_paired.fastq
# gzip ProSNP12_POT_1_R1_paired.fastq
# gzip ProSNP12_POT_1_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4447465 /home/makman/Rawdata/combined/ProSNP12_POT_26_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_POT_26_R2_paired.fastq
# gzip ProSNP12_POT_26_R1_paired.fastq
# gzip ProSNP12_POT_26_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5412805 /home/makman/Rawdata/combined/ProSNP12_POT_44_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_POT_44_R2_paired.fastq
# gzip ProSNP12_POT_44_R1_paired.fastq
# gzip ProSNP12_POT_44_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6224890 /home/makman/Rawdata/combined/ProSNP12_RIV_21_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_RIV_21_R2_paired.fastq
# gzip ProSNP12_RIV_21_R1_paired.fastq
# gzip ProSNP12_RIV_21_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5298040 /home/makman/Rawdata/combined/ProSNP12_RIV_2_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_RIV_2_R2_paired.fastq
# gzip ProSNP12_RIV_2_R1_paired.fastq
# gzip ProSNP12_RIV_2_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5149934 /home/makman/Rawdata/combined/ProSNP12_RIV_40_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_RIV_40_R2_paired.fastq
# gzip ProSNP12_RIV_40_R1_paired.fastq
# gzip ProSNP12_RIV_40_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5143849 /home/makman/Rawdata/combined/ProSNP12_RND_1_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_RND_1_R2_paired.fastq
# gzip ProSNP12_RND_1_R1_paired.fastq
# gzip ProSNP12_RND_1_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 2606649 /home/makman/Rawdata/combined/ProSNP12_RND_20_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_RND_20_R2_paired.fastq
# gzip ProSNP12_RND_20_R1_paired.fastq
# gzip ProSNP12_RND_20_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 1942016 /home/makman/Rawdata/combined/ProSNP12_RND_44_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_RND_44_R2_paired.fastq
# gzip ProSNP12_RND_44_R1_paired.fastq
# gzip ProSNP12_RND_44_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5392285 /home/makman/Rawdata/combined/ProSNP12_SWA_1_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_SWA_1_R2_paired.fastq
# gzip ProSNP12_SWA_1_R1_paired.fastq
# gzip ProSNP12_SWA_1_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4703655 /home/makman/Rawdata/combined/ProSNP12_SWA_20_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_SWA_20_R2_paired.fastq
# gzip ProSNP12_SWA_20_R1_paired.fastq
# gzip ProSNP12_SWA_20_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3384567 /home/makman/Rawdata/combined/ProSNP12_SWA_45_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_SWA_45_R2_paired.fastq
# gzip ProSNP12_SWA_45_R1_paired.fastq
# gzip ProSNP12_SWA_45_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5341700 /home/makman/Rawdata/combined/ProSNP12_UNI_1_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_UNI_1_R2_paired.fastq
# gzip ProSNP12_UNI_1_R1_paired.fastq
# gzip ProSNP12_UNI_1_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5505075 /home/makman/Rawdata/combined/ProSNP12_UNI_24_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_UNI_24_R2_paired.fastq
# gzip ProSNP12_UNI_24_R1_paired.fastq
# gzip ProSNP12_UNI_24_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4689218 /home/makman/Rawdata/combined/ProSNP12_UNI_39_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_UNI_39_R2_paired.fastq
# gzip ProSNP12_UNI_39_R1_paired.fastq
# gzip ProSNP12_UNI_39_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3669032 /home/makman/Rawdata/combined/ProSNP12_VAN_15_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_VAN_15_R2_paired.fastq
# gzip ProSNP12_VAN_15_R1_paired.fastq
# gzip ProSNP12_VAN_15_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4986271 /home/makman/Rawdata/combined/ProSNP12_VAN_29_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_VAN_29_R2_paired.fastq
# gzip ProSNP12_VAN_29_R1_paired.fastq
# gzip ProSNP12_VAN_29_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3623830 /home/makman/Rawdata/combined/ProSNP12_VAN_2_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP12_VAN_2_R2_paired.fastq
# gzip ProSNP12_VAN_2_R1_paired.fastq
# gzip ProSNP12_VAN_2_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4378003 /home/makman/Rawdata/combined/ProSNP4_ALC_1109_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_ALC_1109_R2_paired.fastq
# gzip ProSNP4_ALC_1109_R1_paired.fastq
# gzip ProSNP4_ALC_1109_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5087386 /home/makman/Rawdata/combined/ProSNP4_ALC_1132_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_ALC_1132_R2_paired.fastq
# gzip ProSNP4_ALC_1132_R1_paired.fastq
# gzip ProSNP4_ALC_1132_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4241820 /home/makman/Rawdata/combined/ProSNP4_ALC_314_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_ALC_314_R2_paired.fastq
# gzip ProSNP4_ALC_314_R1_paired.fastq
# gzip ProSNP4_ALC_314_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3839993 /home/makman/Rawdata/combined/ProSNP4_ALC_573_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_ALC_573_R2_paired.fastq
# gzip ProSNP4_ALC_573_R1_paired.fastq
# gzip ProSNP4_ALC_573_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4029315 /home/makman/Rawdata/combined/ProSNP4_ANY_111_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_ANY_111_R2_paired.fastq
# gzip ProSNP4_ANY_111_R1_paired.fastq
# gzip ProSNP4_ANY_111_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5013552 /home/makman/Rawdata/combined/ProSNP4_ANY_1152_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_ANY_1152_R2_paired.fastq
# gzip ProSNP4_ANY_1152_R1_paired.fastq
# gzip ProSNP4_ANY_1152_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3507934 /home/makman/Rawdata/combined/ProSNP4_ANY_300_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_ANY_300_R2_paired.fastq
# gzip ProSNP4_ANY_300_R1_paired.fastq
# gzip ProSNP4_ANY_300_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3204052 /home/makman/Rawdata/combined/ProSNP4_ANY_39_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_ANY_39_R2_paired.fastq
# gzip ProSNP4_ANY_39_R1_paired.fastq
# gzip ProSNP4_ANY_39_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3505390 /home/makman/Rawdata/combined/ProSNP4_ANY_507_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_ANY_507_R2_paired.fastq
# gzip ProSNP4_ANY_507_R1_paired.fastq
# gzip ProSNP4_ANY_507_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4492076 /home/makman/Rawdata/combined/ProSNP4_BAN_1060_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_BAN_1060_R2_paired.fastq
# gzip ProSNP4_BAN_1060_R1_paired.fastq
# gzip ProSNP4_BAN_1060_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3340629 /home/makman/Rawdata/combined/ProSNP4_BAN_133_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_BAN_133_R2_paired.fastq
# gzip ProSNP4_BAN_133_R1_paired.fastq
# gzip ProSNP4_BAN_133_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4055548 /home/makman/Rawdata/combined/ProSNP4_BAN_200_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_BAN_200_R2_paired.fastq
# gzip ProSNP4_BAN_200_R1_paired.fastq
# gzip ProSNP4_BAN_200_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3235583 /home/makman/Rawdata/combined/ProSNP4_BAN_385_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_BAN_385_R2_paired.fastq
# gzip ProSNP4_BAN_385_R1_paired.fastq
# gzip ProSNP4_BAN_385_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5103519 /home/makman/Rawdata/combined/ProSNP4_BAV_1014_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_BAV_1014_R2_paired.fastq
# gzip ProSNP4_BAV_1014_R1_paired.fastq
# gzip ProSNP4_BAV_1014_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4455238 /home/makman/Rawdata/combined/ProSNP4_BAV_1022_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_BAV_1022_R2_paired.fastq
# gzip ProSNP4_BAV_1022_R1_paired.fastq
# gzip ProSNP4_BAV_1022_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 2910436 /home/makman/Rawdata/combined/ProSNP4_BAV_22_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_BAV_22_R2_paired.fastq
# gzip ProSNP4_BAV_22_R1_paired.fastq
# gzip ProSNP4_BAV_22_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3977257 /home/makman/Rawdata/combined/ProSNP4_BAV_337_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_BAV_337_R2_paired.fastq
# gzip ProSNP4_BAV_337_R1_paired.fastq
# gzip ProSNP4_BAV_337_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4168374 /home/makman/Rawdata/combined/ProSNP4_BAV_448_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_BAV_448_R2_paired.fastq
# gzip ProSNP4_BAV_448_R1_paired.fastq
# gzip ProSNP4_BAV_448_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3943190 /home/makman/Rawdata/combined/ProSNP4_BRD_1215_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_BRD_1215_R2_paired.fastq
# gzip ProSNP4_BRD_1215_R1_paired.fastq
# gzip ProSNP4_BRD_1215_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 16824962 /home/makman/Rawdata/combined/ProSNP4_BRD_123_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_BRD_123_R2_paired.fastq
# gzip ProSNP4_BRD_123_R1_paired.fastq
# gzip ProSNP4_BRD_123_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 2796480 /home/makman/Rawdata/combined/ProSNP4_BRD_356_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_BRD_356_R2_paired.fastq
# gzip ProSNP4_BRD_356_R1_paired.fastq
# gzip ProSNP4_BRD_356_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3337657 /home/makman/Rawdata/combined/ProSNP4_BRD_406_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_BRD_406_R2_paired.fastq
# gzip ProSNP4_BRD_406_R1_paired.fastq
# gzip ProSNP4_BRD_406_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3347456 /home/makman/Rawdata/combined/ProSNP4_BRD_513_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_BRD_513_R2_paired.fastq
# gzip ProSNP4_BRD_513_R1_paired.fastq
# gzip ProSNP4_BRD_513_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3330810 /home/makman/Rawdata/combined/ProSNP4_CDB_1100_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_CDB_1100_R2_paired.fastq
# gzip ProSNP4_CDB_1100_R1_paired.fastq
# gzip ProSNP4_CDB_1100_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3635582 /home/makman/Rawdata/combined/ProSNP4_CDB_252_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_CDB_252_R2_paired.fastq
# gzip ProSNP4_CDB_252_R1_paired.fastq
# gzip ProSNP4_CDB_252_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3467873 /home/makman/Rawdata/combined/ProSNP4_CDB_28_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_CDB_28_R2_paired.fastq
# gzip ProSNP4_CDB_28_R1_paired.fastq
# gzip ProSNP4_CDB_28_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4908457 /home/makman/Rawdata/combined/ProSNP4_CDB_440_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_CDB_440_R2_paired.fastq
# gzip ProSNP4_CDB_440_R1_paired.fastq
# gzip ProSNP4_CDB_440_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 2751448 /home/makman/Rawdata/combined/ProSNP4_CDB_567_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_CDB_567_R2_paired.fastq
# gzip ProSNP4_CDB_567_R1_paired.fastq
# gzip ProSNP4_CDB_567_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3511688 /home/makman/Rawdata/combined/ProSNP4_CER_1023_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_CER_1023_R2_paired.fastq
# gzip ProSNP4_CER_1023_R1_paired.fastq
# gzip ProSNP4_CER_1023_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3470290 /home/makman/Rawdata/combined/ProSNP4_CER_291_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_CER_291_R2_paired.fastq
# gzip ProSNP4_CER_291_R1_paired.fastq
# gzip ProSNP4_CER_291_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3949875 /home/makman/Rawdata/combined/ProSNP4_CER_39_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_CER_39_R2_paired.fastq
# gzip ProSNP4_CER_39_R1_paired.fastq
# gzip ProSNP4_CER_39_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4148279 /home/makman/Rawdata/combined/ProSNP4_CER_445_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_CER_445_R2_paired.fastq
# gzip ProSNP4_CER_445_R1_paired.fastq
# gzip ProSNP4_CER_445_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4489473 /home/makman/Rawdata/combined/ProSNP4_CER_50_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_CER_50_R2_paired.fastq
# gzip ProSNP4_CER_50_R1_paired.fastq
# gzip ProSNP4_CER_50_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4148244 /home/makman/Rawdata/combined/ProSNP4_GAR_11_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_GAR_11_R2_paired.fastq
# gzip ProSNP4_GAR_11_R1_paired.fastq
# gzip ProSNP4_GAR_11_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4094926 /home/makman/Rawdata/combined/ProSNP4_GAR_259_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_GAR_259_R2_paired.fastq
# gzip ProSNP4_GAR_259_R1_paired.fastq
# gzip ProSNP4_GAR_259_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4248819 /home/makman/Rawdata/combined/ProSNP4_GAR_298_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_GAR_298_R2_paired.fastq
# gzip ProSNP4_GAR_298_R1_paired.fastq
# gzip ProSNP4_GAR_298_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6150365 /home/makman/Rawdata/combined/ProSNP4_GAR_309_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_GAR_309_R2_paired.fastq
# gzip ProSNP4_GAR_309_R1_paired.fastq
# gzip ProSNP4_GAR_309_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5938288 /home/makman/Rawdata/combined/ProSNP4_GAR_574_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_GAR_574_R2_paired.fastq
# gzip ProSNP4_GAR_574_R1_paired.fastq
# gzip ProSNP4_GAR_574_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4137492 /home/makman/Rawdata/combined/ProSNP4_KAR_1004_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_KAR_1004_R2_paired.fastq
# gzip ProSNP4_KAR_1004_R1_paired.fastq
# gzip ProSNP4_KAR_1004_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 2990792 /home/makman/Rawdata/combined/ProSNP4_KAR_1159_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_KAR_1159_R2_paired.fastq
# gzip ProSNP4_KAR_1159_R1_paired.fastq
# gzip ProSNP4_KAR_1159_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5464695 /home/makman/Rawdata/combined/ProSNP4_KAR_288_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_KAR_288_R2_paired.fastq
# gzip ProSNP4_KAR_288_R1_paired.fastq
# gzip ProSNP4_KAR_288_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3052780 /home/makman/Rawdata/combined/ProSNP4_KAR_57_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_KAR_57_R2_paired.fastq
# gzip ProSNP4_KAR_57_R1_paired.fastq
# gzip ProSNP4_KAR_57_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4390811 /home/makman/Rawdata/combined/ProSNP4_KAR_596_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_KAR_596_R2_paired.fastq
# gzip ProSNP4_KAR_596_R1_paired.fastq
# gzip ProSNP4_KAR_596_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3347903 /home/makman/Rawdata/combined/ProSNP4_KLM_1112_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_KLM_1112_R2_paired.fastq
# gzip ProSNP4_KLM_1112_R1_paired.fastq
# gzip ProSNP4_KLM_1112_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3696232 /home/makman/Rawdata/combined/ProSNP4_KLM_1209_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_KLM_1209_R2_paired.fastq
# gzip ProSNP4_KLM_1209_R1_paired.fastq
# gzip ProSNP4_KLM_1209_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3673736 /home/makman/Rawdata/combined/ProSNP4_KLM_519_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_KLM_519_R2_paired.fastq
# gzip ProSNP4_KLM_519_R1_paired.fastq
# gzip ProSNP4_KLM_519_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3274752 /home/makman/Rawdata/combined/ProSNP4_KLM_6_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_KLM_6_R2_paired.fastq
# gzip ProSNP4_KLM_6_R1_paired.fastq
# gzip ProSNP4_KLM_6_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3234874 /home/makman/Rawdata/combined/ProSNP4_KLM_9_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_KLM_9_R2_paired.fastq
# gzip ProSNP4_KLM_9_R1_paired.fastq
# gzip ProSNP4_KLM_9_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3688290 /home/makman/Rawdata/combined/ProSNP4_KSW_1047_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_KSW_1047_R2_paired.fastq
# gzip ProSNP4_KSW_1047_R1_paired.fastq
# gzip ProSNP4_KSW_1047_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3781308 /home/makman/Rawdata/combined/ProSNP4_KSW_1064_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_KSW_1064_R2_paired.fastq
# gzip ProSNP4_KSW_1064_R1_paired.fastq
# gzip ProSNP4_KSW_1064_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4485908 /home/makman/Rawdata/combined/ProSNP4_KSW_106_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_KSW_106_R2_paired.fastq
# gzip ProSNP4_KSW_106_R1_paired.fastq
# gzip ProSNP4_KSW_106_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4214103 /home/makman/Rawdata/combined/ProSNP4_KSW_1163_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_KSW_1163_R2_paired.fastq
# gzip ProSNP4_KSW_1163_R1_paired.fastq
# gzip ProSNP4_KSW_1163_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4680949 /home/makman/Rawdata/combined/ProSNP4_KSW_1206_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_KSW_1206_R2_paired.fastq
# gzip ProSNP4_KSW_1206_R1_paired.fastq
# gzip ProSNP4_KSW_1206_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4436069 /home/makman/Rawdata/combined/ProSNP4_KSW_132_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_KSW_132_R2_paired.fastq
# gzip ProSNP4_KSW_132_R1_paired.fastq
# gzip ProSNP4_KSW_132_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 2950555 /home/makman/Rawdata/combined/ProSNP4_KSW_18_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_KSW_18_R2_paired.fastq
# gzip ProSNP4_KSW_18_R1_paired.fastq
# gzip ProSNP4_KSW_18_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3442177 /home/makman/Rawdata/combined/ProSNP4_LOE_1033_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_LOE_1033_R2_paired.fastq
# gzip ProSNP4_LOE_1033_R1_paired.fastq
# gzip ProSNP4_LOE_1033_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4596732 /home/makman/Rawdata/combined/ProSNP4_LOE_1141_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_LOE_1141_R2_paired.fastq
# gzip ProSNP4_LOE_1141_R1_paired.fastq
# gzip ProSNP4_LOE_1141_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 7457117 /home/makman/Rawdata/combined/ProSNP4_LOE_359_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_LOE_359_R2_paired.fastq
# gzip ProSNP4_LOE_359_R1_paired.fastq
# gzip ProSNP4_LOE_359_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3672833 /home/makman/Rawdata/combined/ProSNP4_LOE_404_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_LOE_404_R2_paired.fastq
# gzip ProSNP4_LOE_404_R1_paired.fastq
# gzip ProSNP4_LOE_404_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3912559 /home/makman/Rawdata/combined/ProSNP4_LOE_82_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_LOE_82_R2_paired.fastq
# gzip ProSNP4_LOE_82_R1_paired.fastq
# gzip ProSNP4_LOE_82_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3921825 /home/makman/Rawdata/combined/ProSNP4_MGU_135_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_MGU_135_R2_paired.fastq
# gzip ProSNP4_MGU_135_R1_paired.fastq
# gzip ProSNP4_MGU_135_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 2104996 /home/makman/Rawdata/combined/ProSNP4_MGU_214_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_MGU_214_R2_paired.fastq
# gzip ProSNP4_MGU_214_R1_paired.fastq
# gzip ProSNP4_MGU_214_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3640021 /home/makman/Rawdata/combined/ProSNP4_MGU_295_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_MGU_295_R2_paired.fastq
# gzip ProSNP4_MGU_295_R1_paired.fastq
# gzip ProSNP4_MGU_295_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3968069 /home/makman/Rawdata/combined/ProSNP4_MGU_407_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_MGU_407_R2_paired.fastq
# gzip ProSNP4_MGU_407_R1_paired.fastq
# gzip ProSNP4_MGU_407_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 19940 /home/makman/Rawdata/combined/ProSNP4_POT_1005_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_POT_1005_R2_paired.fastq
# gzip ProSNP4_POT_1005_R1_paired.fastq
# gzip ProSNP4_POT_1005_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 2751962 /home/makman/Rawdata/combined/ProSNP4_POT_1188_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_POT_1188_R2_paired.fastq
# gzip ProSNP4_POT_1188_R1_paired.fastq
# gzip ProSNP4_POT_1188_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3849875 /home/makman/Rawdata/combined/ProSNP4_POT_126_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_POT_126_R2_paired.fastq
# gzip ProSNP4_POT_126_R1_paired.fastq
# gzip ProSNP4_POT_126_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3621883 /home/makman/Rawdata/combined/ProSNP4_POT_313_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_POT_313_R2_paired.fastq
# gzip ProSNP4_POT_313_R1_paired.fastq
# gzip ProSNP4_POT_313_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3749219 /home/makman/Rawdata/combined/ProSNP4_POT_531_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_POT_531_R2_paired.fastq
# gzip ProSNP4_POT_531_R1_paired.fastq
# gzip ProSNP4_POT_531_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4469737 /home/makman/Rawdata/combined/ProSNP4_RIV_108_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_RIV_108_R2_paired.fastq
# gzip ProSNP4_RIV_108_R1_paired.fastq
# gzip ProSNP4_RIV_108_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 2421870 /home/makman/Rawdata/combined/ProSNP4_RIV_1103_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_RIV_1103_R2_paired.fastq
# gzip ProSNP4_RIV_1103_R1_paired.fastq
# gzip ProSNP4_RIV_1103_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3874958 /home/makman/Rawdata/combined/ProSNP4_RIV_1205_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_RIV_1205_R2_paired.fastq
# gzip ProSNP4_RIV_1205_R1_paired.fastq
# gzip ProSNP4_RIV_1205_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5002673 /home/makman/Rawdata/combined/ProSNP4_RIV_15_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_RIV_15_R2_paired.fastq
# gzip ProSNP4_RIV_15_R1_paired.fastq
# gzip ProSNP4_RIV_15_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3015391 /home/makman/Rawdata/combined/ProSNP4_RIV_193_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_RIV_193_R2_paired.fastq
# gzip ProSNP4_RIV_193_R1_paired.fastq
# gzip ProSNP4_RIV_193_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3114663 /home/makman/Rawdata/combined/ProSNP4_RND_124_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_RND_124_R2_paired.fastq
# gzip ProSNP4_RND_124_R1_paired.fastq
# gzip ProSNP4_RND_124_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4085498 /home/makman/Rawdata/combined/ProSNP4_RND_147_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_RND_147_R2_paired.fastq
# gzip ProSNP4_RND_147_R1_paired.fastq
# gzip ProSNP4_RND_147_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3257291 /home/makman/Rawdata/combined/ProSNP4_RND_261_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_RND_261_R2_paired.fastq
# gzip ProSNP4_RND_261_R1_paired.fastq
# gzip ProSNP4_RND_261_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 2924882 /home/makman/Rawdata/combined/ProSNP4_RND_318_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_RND_318_R2_paired.fastq
# gzip ProSNP4_RND_318_R1_paired.fastq
# gzip ProSNP4_RND_318_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 2467828 /home/makman/Rawdata/combined/ProSNP4_RND_420_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_RND_420_R2_paired.fastq
# gzip ProSNP4_RND_420_R1_paired.fastq
# gzip ProSNP4_RND_420_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 1386333 /home/makman/Rawdata/combined/ProSNP4_RND_576_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_RND_576_R2_paired.fastq
# gzip ProSNP4_RND_576_R1_paired.fastq
# gzip ProSNP4_RND_576_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3524873 /home/makman/Rawdata/combined/ProSNP4_SWA_112_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_SWA_112_R2_paired.fastq
# gzip ProSNP4_SWA_112_R1_paired.fastq
# gzip ProSNP4_SWA_112_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3322574 /home/makman/Rawdata/combined/ProSNP4_SWA_1183_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_SWA_1183_R2_paired.fastq
# gzip ProSNP4_SWA_1183_R1_paired.fastq
# gzip ProSNP4_SWA_1183_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4407791 /home/makman/Rawdata/combined/ProSNP4_SWA_13_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_SWA_13_R2_paired.fastq
# gzip ProSNP4_SWA_13_R1_paired.fastq
# gzip ProSNP4_SWA_13_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3518012 /home/makman/Rawdata/combined/ProSNP4_SWA_352_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_SWA_352_R2_paired.fastq
# gzip ProSNP4_SWA_352_R1_paired.fastq
# gzip ProSNP4_SWA_352_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3216473 /home/makman/Rawdata/combined/ProSNP4_SWA_545_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_SWA_545_R2_paired.fastq
# gzip ProSNP4_SWA_545_R1_paired.fastq
# gzip ProSNP4_SWA_545_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3551017 /home/makman/Rawdata/combined/ProSNP4_UNI_1217_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_UNI_1217_R2_paired.fastq
# gzip ProSNP4_UNI_1217_R1_paired.fastq
# gzip ProSNP4_UNI_1217_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4015329 /home/makman/Rawdata/combined/ProSNP4_UNI_306_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_UNI_306_R2_paired.fastq
# gzip ProSNP4_UNI_306_R1_paired.fastq
# gzip ProSNP4_UNI_306_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3855113 /home/makman/Rawdata/combined/ProSNP4_UNI_347_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_UNI_347_R2_paired.fastq
# gzip ProSNP4_UNI_347_R1_paired.fastq
# gzip ProSNP4_UNI_347_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4579202 /home/makman/Rawdata/combined/ProSNP4_UNI_383_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_UNI_383_R2_paired.fastq
# gzip ProSNP4_UNI_383_R1_paired.fastq
# gzip ProSNP4_UNI_383_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3155497 /home/makman/Rawdata/combined/ProSNP4_UNI_544_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_UNI_544_R2_paired.fastq
# gzip ProSNP4_UNI_544_R1_paired.fastq
# gzip ProSNP4_UNI_544_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3717772 /home/makman/Rawdata/combined/ProSNP4_UNI_55_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_UNI_55_R2_paired.fastq
# gzip ProSNP4_UNI_55_R1_paired.fastq
# gzip ProSNP4_UNI_55_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4583775 /home/makman/Rawdata/combined/ProSNP4_VAN_1158_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_VAN_1158_R2_paired.fastq
# gzip ProSNP4_VAN_1158_R1_paired.fastq
# gzip ProSNP4_VAN_1158_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4158110 /home/makman/Rawdata/combined/ProSNP4_VAN_1211_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_VAN_1211_R2_paired.fastq
# gzip ProSNP4_VAN_1211_R1_paired.fastq
# gzip ProSNP4_VAN_1211_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5355663 /home/makman/Rawdata/combined/ProSNP4_VAN_293_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_VAN_293_R2_paired.fastq
# gzip ProSNP4_VAN_293_R1_paired.fastq
# gzip ProSNP4_VAN_293_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3246600 /home/makman/Rawdata/combined/ProSNP4_VAN_361_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_VAN_361_R2_paired.fastq
# gzip ProSNP4_VAN_361_R1_paired.fastq
# gzip ProSNP4_VAN_361_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3364724 /home/makman/Rawdata/combined/ProSNP4_VAN_521_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP4_VAN_521_R2_paired.fastq
# gzip ProSNP4_VAN_521_R1_paired.fastq
# gzip ProSNP4_VAN_521_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4836077 /home/makman/Rawdata/combined/ProSNP5_ALC1045_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_ALC1045_R2_paired.fastq
# gzip ProSNP5_ALC1045_R1_paired.fastq
# gzip ProSNP5_ALC1045_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 2941952 /home/makman/Rawdata/combined/ProSNP5_ALC230_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_ALC230_R2_paired.fastq
# gzip ProSNP5_ALC230_R1_paired.fastq
# gzip ProSNP5_ALC230_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5731979 /home/makman/Rawdata/combined/ProSNP5_ALC250_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_ALC250_R2_paired.fastq
# gzip ProSNP5_ALC250_R1_paired.fastq
# gzip ProSNP5_ALC250_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5896124 /home/makman/Rawdata/combined/ProSNP5_ALC502_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_ALC502_R2_paired.fastq
# gzip ProSNP5_ALC502_R1_paired.fastq
# gzip ProSNP5_ALC502_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4881351 /home/makman/Rawdata/combined/ProSNP5_ALC62_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_ALC62_R2_paired.fastq
# gzip ProSNP5_ALC62_R1_paired.fastq
# gzip ProSNP5_ALC62_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6567254 /home/makman/Rawdata/combined/ProSNP5_ANY1126_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_ANY1126_R2_paired.fastq
# gzip ProSNP5_ANY1126_R1_paired.fastq
# gzip ProSNP5_ANY1126_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4743658 /home/makman/Rawdata/combined/ProSNP5_ANY116_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_ANY116_R2_paired.fastq
# gzip ProSNP5_ANY116_R1_paired.fastq
# gzip ProSNP5_ANY116_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4668656 /home/makman/Rawdata/combined/ProSNP5_ANY117_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_ANY117_R2_paired.fastq
# gzip ProSNP5_ANY117_R1_paired.fastq
# gzip ProSNP5_ANY117_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4973857 /home/makman/Rawdata/combined/ProSNP5_ANY303_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_ANY303_R2_paired.fastq
# gzip ProSNP5_ANY303_R1_paired.fastq
# gzip ProSNP5_ANY303_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6204341 /home/makman/Rawdata/combined/ProSNP5_ANY322_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_ANY322_R2_paired.fastq
# gzip ProSNP5_ANY322_R1_paired.fastq
# gzip ProSNP5_ANY322_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4648407 /home/makman/Rawdata/combined/ProSNP5_BAN1138_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_BAN1138_R2_paired.fastq
# gzip ProSNP5_BAN1138_R1_paired.fastq
# gzip ProSNP5_BAN1138_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4964727 /home/makman/Rawdata/combined/ProSNP5_BAN207_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_BAN207_R2_paired.fastq
# gzip ProSNP5_BAN207_R1_paired.fastq
# gzip ProSNP5_BAN207_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3477162 /home/makman/Rawdata/combined/ProSNP5_BAN229_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_BAN229_R2_paired.fastq
# gzip ProSNP5_BAN229_R1_paired.fastq
# gzip ProSNP5_BAN229_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 1179546 /home/makman/Rawdata/combined/ProSNP5_BAN506_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_BAN506_R2_paired.fastq
# gzip ProSNP5_BAN506_R1_paired.fastq
# gzip ProSNP5_BAN506_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 2354322 /home/makman/Rawdata/combined/ProSNP5_BAN92_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_BAN92_R2_paired.fastq
# gzip ProSNP5_BAN92_R1_paired.fastq
# gzip ProSNP5_BAN92_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4282030 /home/makman/Rawdata/combined/ProSNP5_BAV1191_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_BAV1191_R2_paired.fastq
# gzip ProSNP5_BAV1191_R1_paired.fastq
# gzip ProSNP5_BAV1191_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4668058 /home/makman/Rawdata/combined/ProSNP5_BAV422_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_BAV422_R2_paired.fastq
# gzip ProSNP5_BAV422_R1_paired.fastq
# gzip ProSNP5_BAV422_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6919699 /home/makman/Rawdata/combined/ProSNP5_BAV527_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_BAV527_R2_paired.fastq
# gzip ProSNP5_BAV527_R1_paired.fastq
# gzip ProSNP5_BAV527_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3239371 /home/makman/Rawdata/combined/ProSNP5_BAV75_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_BAV75_R2_paired.fastq
# gzip ProSNP5_BAV75_R1_paired.fastq
# gzip ProSNP5_BAV75_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5632359 /home/makman/Rawdata/combined/ProSNP5_BAV7_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_BAV7_R2_paired.fastq
# gzip ProSNP5_BAV7_R1_paired.fastq
# gzip ProSNP5_BAV7_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5005080 /home/makman/Rawdata/combined/ProSNP5_BRD369_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_BRD369_R2_paired.fastq
# gzip ProSNP5_BRD369_R1_paired.fastq
# gzip ProSNP5_BRD369_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5753742 /home/makman/Rawdata/combined/ProSNP5_BRD381_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_BRD381_R2_paired.fastq
# gzip ProSNP5_BRD381_R1_paired.fastq
# gzip ProSNP5_BRD381_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5853306 /home/makman/Rawdata/combined/ProSNP5_BRD483_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_BRD483_R2_paired.fastq
# gzip ProSNP5_BRD483_R1_paired.fastq
# gzip ProSNP5_BRD483_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4693216 /home/makman/Rawdata/combined/ProSNP5_BRD484_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_BRD484_R2_paired.fastq
# gzip ProSNP5_BRD484_R1_paired.fastq
# gzip ProSNP5_BRD484_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 1876565 /home/makman/Rawdata/combined/ProSNP5_BRD51_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_BRD51_R2_paired.fastq
# gzip ProSNP5_BRD51_R1_paired.fastq
# gzip ProSNP5_BRD51_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3644581 /home/makman/Rawdata/combined/ProSNP5_CDB100_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_CDB100_R2_paired.fastq
# gzip ProSNP5_CDB100_R1_paired.fastq
# gzip ProSNP5_CDB100_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4337285 /home/makman/Rawdata/combined/ProSNP5_CDB1134_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_CDB1134_R2_paired.fastq
# gzip ProSNP5_CDB1134_R1_paired.fastq
# gzip ProSNP5_CDB1134_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4908005 /home/makman/Rawdata/combined/ProSNP5_CDB376_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_CDB376_R2_paired.fastq
# gzip ProSNP5_CDB376_R1_paired.fastq
# gzip ProSNP5_CDB376_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6117369 /home/makman/Rawdata/combined/ProSNP5_CDB512_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_CDB512_R2_paired.fastq
# gzip ProSNP5_CDB512_R1_paired.fastq
# gzip ProSNP5_CDB512_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5167048 /home/makman/Rawdata/combined/ProSNP5_CDB564_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_CDB564_R2_paired.fastq
# gzip ProSNP5_CDB564_R1_paired.fastq
# gzip ProSNP5_CDB564_R2_paired.fastq
/home/makman/fastq-pair/build/fastq_pair -t 4778384 /home/makman/Rawdata/combined/ProSNP5_CER1117_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_CER1117_R2_paired.fastq
gzip ProSNP5_CER1117_R1_paired.fastq
gzip ProSNP5_CER1117_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6071895 /home/makman/Rawdata/combined/ProSNP5_CER2_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_CER2_R2_paired.fastq
# gzip ProSNP5_CER2_R1_paired.fastq
# gzip ProSNP5_CER2_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5021767 /home/makman/Rawdata/combined/ProSNP5_CER382_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_CER382_R2_paired.fastq
# gzip ProSNP5_CER382_R1_paired.fastq
# gzip ProSNP5_CER382_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4465018 /home/makman/Rawdata/combined/ProSNP5_CER458_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_CER458_R2_paired.fastq
# gzip ProSNP5_CER458_R1_paired.fastq
# gzip ProSNP5_CER458_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5589598 /home/makman/Rawdata/combined/ProSNP5_CER78_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_CER78_R2_paired.fastq
# gzip ProSNP5_CER78_R1_paired.fastq
# gzip ProSNP5_CER78_R2_paired.fastq
/home/makman/fastq-pair/build/fastq_pair -t 5298310 /home/makman/Rawdata/combined/ProSNP5_GAR1019_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_GAR1019_R2_paired.fastq
gzip ProSNP5_GAR1019_R1_paired.fastq
gzip ProSNP5_GAR1019_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4454611 /home/makman/Rawdata/combined/ProSNP5_GAR434_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_GAR434_R2_paired.fastq
# gzip ProSNP5_GAR434_R1_paired.fastq
# gzip ProSNP5_GAR434_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3700674 /home/makman/Rawdata/combined/ProSNP5_GAR439_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_GAR439_R2_paired.fastq
# gzip ProSNP5_GAR439_R1_paired.fastq
# gzip ProSNP5_GAR439_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 2129834 /home/makman/Rawdata/combined/ProSNP5_GAR46_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_GAR46_R2_paired.fastq
# gzip ProSNP5_GAR46_R1_paired.fastq
# gzip ProSNP5_GAR46_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4911582 /home/makman/Rawdata/combined/ProSNP5_GAR547_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_GAR547_R2_paired.fastq
# gzip ProSNP5_GAR547_R1_paired.fastq
# gzip ProSNP5_GAR547_R2_paired.fastq
/home/makman/fastq-pair/build/fastq_pair -t 9382139 /home/makman/Rawdata/combined/ProSNP5_KAR1044_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_KAR1044_R2_paired.fastq
gzip ProSNP5_KAR1044_R1_paired.fastq
gzip ProSNP5_KAR1044_R2_paired.fastq
/home/makman/fastq-pair/build/fastq_pair -t 5476875 /home/makman/Rawdata/combined/ProSNP5_KAR1063_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_KAR1063_R2_paired.fastq
gzip ProSNP5_KAR1063_R1_paired.fastq
gzip ProSNP5_KAR1063_R2_paired.fastq
/home/makman/fastq-pair/build/fastq_pair -t 4803496 /home/makman/Rawdata/combined/ProSNP5_KAR122_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_KAR122_R2_paired.fastq
gzip ProSNP5_KAR122_R1_paired.fastq
gzip ProSNP5_KAR122_R2_paired.fastq
/home/makman/fastq-pair/build/fastq_pair -t 5893526 /home/makman/Rawdata/combined/ProSNP5_KAR178_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_KAR178_R2_paired.fastq
gzip ProSNP5_KAR178_R1_paired.fastq
gzip ProSNP5_KAR178_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5652422 /home/makman/Rawdata/combined/ProSNP5_KAR346_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_KAR346_R2_paired.fastq
# gzip ProSNP5_KAR346_R1_paired.fastq
# gzip ProSNP5_KAR346_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3358237 /home/makman/Rawdata/combined/ProSNP5_KLM1025_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_KLM1025_R2_paired.fastq
# gzip ProSNP5_KLM1025_R1_paired.fastq
# gzip ProSNP5_KLM1025_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4072187 /home/makman/Rawdata/combined/ProSNP5_KLM1203_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_KLM1203_R2_paired.fastq
# gzip ProSNP5_KLM1203_R1_paired.fastq
# gzip ProSNP5_KLM1203_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6856641 /home/makman/Rawdata/combined/ProSNP5_KLM534_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_KLM534_R2_paired.fastq
# gzip ProSNP5_KLM534_R1_paired.fastq
# gzip ProSNP5_KLM534_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3049588 /home/makman/Rawdata/combined/ProSNP5_KLM56_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_KLM56_R2_paired.fastq
# gzip ProSNP5_KLM56_R1_paired.fastq
# gzip ProSNP5_KLM56_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 1621169 /home/makman/Rawdata/combined/ProSNP5_KLM97_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_KLM97_R2_paired.fastq
# gzip ProSNP5_KLM97_R1_paired.fastq
# gzip ProSNP5_KLM97_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4702423 /home/makman/Rawdata/combined/ProSNP5_KSW1145_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_KSW1145_R2_paired.fastq
# gzip ProSNP5_KSW1145_R1_paired.fastq
# gzip ProSNP5_KSW1145_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4245203 /home/makman/Rawdata/combined/ProSNP5_KSW1206_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_KSW1206_R2_paired.fastq
# gzip ProSNP5_KSW1206_R1_paired.fastq
# gzip ProSNP5_KSW1206_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4372999 /home/makman/Rawdata/combined/ProSNP5_KSW398_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_KSW398_R2_paired.fastq
# gzip ProSNP5_KSW398_R1_paired.fastq
# gzip ProSNP5_KSW398_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4134352 /home/makman/Rawdata/combined/ProSNP5_KSW505_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_KSW505_R2_paired.fastq
# gzip ProSNP5_KSW505_R1_paired.fastq
# gzip ProSNP5_KSW505_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3285144 /home/makman/Rawdata/combined/ProSNP5_KSW597_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_KSW597_R2_paired.fastq
# gzip ProSNP5_KSW597_R1_paired.fastq
# gzip ProSNP5_KSW597_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6123844 /home/makman/Rawdata/combined/ProSNP5_KSW95_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_KSW95_R2_paired.fastq
# gzip ProSNP5_KSW95_R1_paired.fastq
# gzip ProSNP5_KSW95_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5237870 /home/makman/Rawdata/combined/ProSNP5_LOE1018_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_LOE1018_R2_paired.fastq
# gzip ProSNP5_LOE1018_R1_paired.fastq
# gzip ProSNP5_LOE1018_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3713559 /home/makman/Rawdata/combined/ProSNP5_LOE125_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_LOE125_R2_paired.fastq
# gzip ProSNP5_LOE125_R1_paired.fastq
# gzip ProSNP5_LOE125_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5011401 /home/makman/Rawdata/combined/ProSNP5_LOE388_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_LOE388_R2_paired.fastq
# gzip ProSNP5_LOE388_R1_paired.fastq
# gzip ProSNP5_LOE388_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4633557 /home/makman/Rawdata/combined/ProSNP5_LOE585_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_LOE585_R2_paired.fastq
# gzip ProSNP5_LOE585_R1_paired.fastq
# gzip ProSNP5_LOE585_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5133566 /home/makman/Rawdata/combined/ProSNP5_LOE79_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_LOE79_R2_paired.fastq
# gzip ProSNP5_LOE79_R1_paired.fastq
# gzip ProSNP5_LOE79_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 7066451 /home/makman/Rawdata/combined/ProSNP5_MGU1006_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_MGU1006_R2_paired.fastq
# gzip ProSNP5_MGU1006_R1_paired.fastq
# gzip ProSNP5_MGU1006_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3226855 /home/makman/Rawdata/combined/ProSNP5_MGU1056_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_MGU1056_R2_paired.fastq
# gzip ProSNP5_MGU1056_R1_paired.fastq
# gzip ProSNP5_MGU1056_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5339055 /home/makman/Rawdata/combined/ProSNP5_MGU16_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_MGU16_R2_paired.fastq
# gzip ProSNP5_MGU16_R1_paired.fastq
# gzip ProSNP5_MGU16_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5160281 /home/makman/Rawdata/combined/ProSNP5_MGU490_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_MGU490_R2_paired.fastq
# gzip ProSNP5_MGU490_R1_paired.fastq
# gzip ProSNP5_MGU490_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5742328 /home/makman/Rawdata/combined/ProSNP5_MGU498_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_MGU498_R2_paired.fastq
# gzip ProSNP5_MGU498_R1_paired.fastq
# gzip ProSNP5_MGU498_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5083410 /home/makman/Rawdata/combined/ProSNP5_POT1176_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_POT1176_R2_paired.fastq
# gzip ProSNP5_POT1176_R1_paired.fastq
# gzip ProSNP5_POT1176_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5422133 /home/makman/Rawdata/combined/ProSNP5_POT255_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_POT255_R2_paired.fastq
# gzip ProSNP5_POT255_R1_paired.fastq
# gzip ProSNP5_POT255_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 2621132 /home/makman/Rawdata/combined/ProSNP5_POT282_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_POT282_R2_paired.fastq
# gzip ProSNP5_POT282_R1_paired.fastq
# gzip ProSNP5_POT282_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3367546 /home/makman/Rawdata/combined/ProSNP5_POT525_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_POT525_R2_paired.fastq
# gzip ProSNP5_POT525_R1_paired.fastq
# gzip ProSNP5_POT525_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5357878 /home/makman/Rawdata/combined/ProSNP5_POT54_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_POT54_R2_paired.fastq
# gzip ProSNP5_POT54_R1_paired.fastq
# gzip ProSNP5_POT54_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4380521 /home/makman/Rawdata/combined/ProSNP5_RIV151_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_RIV151_R2_paired.fastq
# gzip ProSNP5_RIV151_R1_paired.fastq
# gzip ProSNP5_RIV151_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6147165 /home/makman/Rawdata/combined/ProSNP5_RIV191_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_RIV191_R2_paired.fastq
# gzip ProSNP5_RIV191_R1_paired.fastq
# gzip ProSNP5_RIV191_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5495293 /home/makman/Rawdata/combined/ProSNP5_RIV195_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_RIV195_R2_paired.fastq
# gzip ProSNP5_RIV195_R1_paired.fastq
# gzip ProSNP5_RIV195_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4162488 /home/makman/Rawdata/combined/ProSNP5_RIV44_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_RIV44_R2_paired.fastq
# gzip ProSNP5_RIV44_R1_paired.fastq
# gzip ProSNP5_RIV44_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4696446 /home/makman/Rawdata/combined/ProSNP5_RIV560_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_RIV560_R2_paired.fastq
# gzip ProSNP5_RIV560_R1_paired.fastq
# gzip ProSNP5_RIV560_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5884755 /home/makman/Rawdata/combined/ProSNP5_RND1010_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_RND1010_R2_paired.fastq
# gzip ProSNP5_RND1010_R1_paired.fastq
# gzip ProSNP5_RND1010_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3368103 /home/makman/Rawdata/combined/ProSNP5_RND1210_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_RND1210_R2_paired.fastq
# gzip ProSNP5_RND1210_R1_paired.fastq
# gzip ProSNP5_RND1210_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 2257580 /home/makman/Rawdata/combined/ProSNP5_RND139_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_RND139_R2_paired.fastq
# gzip ProSNP5_RND139_R1_paired.fastq
# gzip ProSNP5_RND139_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4101893 /home/makman/Rawdata/combined/ProSNP5_RND290_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_RND290_R2_paired.fastq
# gzip ProSNP5_RND290_R1_paired.fastq
# gzip ProSNP5_RND290_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3200198 /home/makman/Rawdata/combined/ProSNP5_RND579_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_RND579_R2_paired.fastq
# gzip ProSNP5_RND579_R1_paired.fastq
# gzip ProSNP5_RND579_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4554922 /home/makman/Rawdata/combined/ProSNP5_SWA107_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_SWA107_R2_paired.fastq
# gzip ProSNP5_SWA107_R1_paired.fastq
# gzip ProSNP5_SWA107_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5281533 /home/makman/Rawdata/combined/ProSNP5_SWA157_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_SWA157_R2_paired.fastq
# gzip ProSNP5_SWA157_R1_paired.fastq
# gzip ProSNP5_SWA157_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5935610 /home/makman/Rawdata/combined/ProSNP5_SWA189_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_SWA189_R2_paired.fastq
# gzip ProSNP5_SWA189_R1_paired.fastq
# gzip ProSNP5_SWA189_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6197057 /home/makman/Rawdata/combined/ProSNP5_SWA577_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_SWA577_R2_paired.fastq
# gzip ProSNP5_SWA577_R1_paired.fastq
# gzip ProSNP5_SWA577_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4818426 /home/makman/Rawdata/combined/ProSNP5_SWA80_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_SWA80_R2_paired.fastq
# gzip ProSNP5_SWA80_R1_paired.fastq
# gzip ProSNP5_SWA80_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5083559 /home/makman/Rawdata/combined/ProSNP5_UNI1001_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_UNI1001_R2_paired.fastq
# gzip ProSNP5_UNI1001_R1_paired.fastq
# gzip ProSNP5_UNI1001_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4155421 /home/makman/Rawdata/combined/ProSNP5_UNI386_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_UNI386_R2_paired.fastq
# gzip ProSNP5_UNI386_R1_paired.fastq
# gzip ProSNP5_UNI386_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6117823 /home/makman/Rawdata/combined/ProSNP5_UNI3_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_UNI3_R2_paired.fastq
# gzip ProSNP5_UNI3_R1_paired.fastq
# gzip ProSNP5_UNI3_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6034091 /home/makman/Rawdata/combined/ProSNP5_UNI403_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_UNI403_R2_paired.fastq
# gzip ProSNP5_UNI403_R1_paired.fastq
# gzip ProSNP5_UNI403_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3130258 /home/makman/Rawdata/combined/ProSNP5_VAN163_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_VAN163_R2_paired.fastq
# gzip ProSNP5_VAN163_R1_paired.fastq
# gzip ProSNP5_VAN163_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4998230 /home/makman/Rawdata/combined/ProSNP5_VAN206_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_VAN206_R2_paired.fastq
# gzip ProSNP5_VAN206_R1_paired.fastq
# gzip ProSNP5_VAN206_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5721542 /home/makman/Rawdata/combined/ProSNP5_VAN208_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_VAN208_R2_paired.fastq
# gzip ProSNP5_VAN208_R1_paired.fastq
# gzip ProSNP5_VAN208_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5269385 /home/makman/Rawdata/combined/ProSNP5_VAN260_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_VAN260_R2_paired.fastq
# gzip ProSNP5_VAN260_R1_paired.fastq
# gzip ProSNP5_VAN260_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4359933 /home/makman/Rawdata/combined/ProSNP5_VAN27_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP5_VAN27_R2_paired.fastq
# gzip ProSNP5_VAN27_R1_paired.fastq
# gzip ProSNP5_VAN27_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5348016 /home/makman/Rawdata/combined/ProSNP6_ANY_1020_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_ANY_1020_R2_paired.fastq
# gzip ProSNP6_ANY_1020_R1_paired.fastq
# gzip ProSNP6_ANY_1020_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5194804 /home/makman/Rawdata/combined/ProSNP6_ANY_1079_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_ANY_1079_R2_paired.fastq
# gzip ProSNP6_ANY_1079_R1_paired.fastq
# gzip ProSNP6_ANY_1079_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5316732 /home/makman/Rawdata/combined/ProSNP6_ANY_1122_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_ANY_1122_R2_paired.fastq
# gzip ProSNP6_ANY_1122_R1_paired.fastq
# gzip ProSNP6_ANY_1122_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 7641404 /home/makman/Rawdata/combined/ProSNP6_ANY_12_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_ANY_12_R2_paired.fastq
# gzip ProSNP6_ANY_12_R1_paired.fastq
# gzip ProSNP6_ANY_12_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4642802 /home/makman/Rawdata/combined/ProSNP6_ANY_301_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_ANY_301_R2_paired.fastq
# gzip ProSNP6_ANY_301_R1_paired.fastq
# gzip ProSNP6_ANY_301_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5083483 /home/makman/Rawdata/combined/ProSNP6_ANY_518_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_ANY_518_R2_paired.fastq
# gzip ProSNP6_ANY_518_R1_paired.fastq
# gzip ProSNP6_ANY_518_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 2490565 /home/makman/Rawdata/combined/ProSNP6_ANY_85_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_ANY_85_R2_paired.fastq
# gzip ProSNP6_ANY_85_R1_paired.fastq
# gzip ProSNP6_ANY_85_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5754734 /home/makman/Rawdata/combined/ProSNP6_BAV_1077_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_BAV_1077_R2_paired.fastq
# gzip ProSNP6_BAV_1077_R1_paired.fastq
# gzip ProSNP6_BAV_1077_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6064760 /home/makman/Rawdata/combined/ProSNP6_BAV_1214_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_BAV_1214_R2_paired.fastq
# gzip ProSNP6_BAV_1214_R1_paired.fastq
# gzip ProSNP6_BAV_1214_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5052300 /home/makman/Rawdata/combined/ProSNP6_BAV_339_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_BAV_339_R2_paired.fastq
# gzip ProSNP6_BAV_339_R1_paired.fastq
# gzip ProSNP6_BAV_339_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5649654 /home/makman/Rawdata/combined/ProSNP6_BAV_462_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_BAV_462_R2_paired.fastq
# gzip ProSNP6_BAV_462_R1_paired.fastq
# gzip ProSNP6_BAV_462_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3745084 /home/makman/Rawdata/combined/ProSNP6_BAV_556_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_BAV_556_R2_paired.fastq
# gzip ProSNP6_BAV_556_R1_paired.fastq
# gzip ProSNP6_BAV_556_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4770590 /home/makman/Rawdata/combined/ProSNP6_BAV_63_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_BAV_63_R2_paired.fastq
# gzip ProSNP6_BAV_63_R1_paired.fastq
# gzip ProSNP6_BAV_63_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4907623 /home/makman/Rawdata/combined/ProSNP6_BRD_1009_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_BRD_1009_R2_paired.fastq
# gzip ProSNP6_BRD_1009_R1_paired.fastq
# gzip ProSNP6_BRD_1009_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4274766 /home/makman/Rawdata/combined/ProSNP6_BRD_342_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_BRD_342_R2_paired.fastq
# gzip ProSNP6_BRD_342_R1_paired.fastq
# gzip ProSNP6_BRD_342_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4835310 /home/makman/Rawdata/combined/ProSNP6_BRD_442_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_BRD_442_R2_paired.fastq
# gzip ProSNP6_BRD_442_R1_paired.fastq
# gzip ProSNP6_BRD_442_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4569206 /home/makman/Rawdata/combined/ProSNP6_BRD_501_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_BRD_501_R2_paired.fastq
# gzip ProSNP6_BRD_501_R1_paired.fastq
# gzip ProSNP6_BRD_501_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 7883327 /home/makman/Rawdata/combined/ProSNP6_BRD_533_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_BRD_533_R2_paired.fastq
# gzip ProSNP6_BRD_533_R1_paired.fastq
# gzip ProSNP6_BRD_533_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6134938 /home/makman/Rawdata/combined/ProSNP6_BRD_543_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_BRD_543_R2_paired.fastq
# gzip ProSNP6_BRD_543_R1_paired.fastq
# gzip ProSNP6_BRD_543_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4998975 /home/makman/Rawdata/combined/ProSNP6_CDB_228_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_CDB_228_R2_paired.fastq
# gzip ProSNP6_CDB_228_R1_paired.fastq
# gzip ProSNP6_CDB_228_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5060257 /home/makman/Rawdata/combined/ProSNP6_CDB_571_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_CDB_571_R2_paired.fastq
# gzip ProSNP6_CDB_571_R1_paired.fastq
# gzip ProSNP6_CDB_571_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 1871207 /home/makman/Rawdata/combined/ProSNP6_CER_1038_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_CER_1038_R2_paired.fastq
# gzip ProSNP6_CER_1038_R1_paired.fastq
# gzip ProSNP6_CER_1038_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6655987 /home/makman/Rawdata/combined/ProSNP6_CER_1142_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_CER_1142_R2_paired.fastq
# gzip ProSNP6_CER_1142_R1_paired.fastq
# gzip ProSNP6_CER_1142_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5220987 /home/makman/Rawdata/combined/ProSNP6_CER_14_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_CER_14_R2_paired.fastq
# gzip ProSNP6_CER_14_R1_paired.fastq
# gzip ProSNP6_CER_14_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6103639 /home/makman/Rawdata/combined/ProSNP6_CER_199_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_CER_199_R2_paired.fastq
# gzip ProSNP6_CER_199_R1_paired.fastq
# gzip ProSNP6_CER_199_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6371142 /home/makman/Rawdata/combined/ProSNP6_CER_338_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_CER_338_R2_paired.fastq
# gzip ProSNP6_CER_338_R1_paired.fastq
# gzip ProSNP6_CER_338_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4924438 /home/makman/Rawdata/combined/ProSNP6_CER_589_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_CER_589_R2_paired.fastq
# gzip ProSNP6_CER_589_R1_paired.fastq
# gzip ProSNP6_CER_589_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5047506 /home/makman/Rawdata/combined/ProSNP6_GAR_1041_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_GAR_1041_R2_paired.fastq
# gzip ProSNP6_GAR_1041_R1_paired.fastq
# gzip ProSNP6_GAR_1041_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 488561 /home/makman/Rawdata/combined/ProSNP6_GAR_1200_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_GAR_1200_R2_paired.fastq
# gzip ProSNP6_GAR_1200_R1_paired.fastq
# gzip ProSNP6_GAR_1200_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6698957 /home/makman/Rawdata/combined/ProSNP6_GAR_174_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_GAR_174_R2_paired.fastq
# gzip ProSNP6_GAR_174_R1_paired.fastq
# gzip ProSNP6_GAR_174_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5860967 /home/makman/Rawdata/combined/ProSNP6_GAR_299_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_GAR_299_R2_paired.fastq
# gzip ProSNP6_GAR_299_R1_paired.fastq
# gzip ProSNP6_GAR_299_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5111248 /home/makman/Rawdata/combined/ProSNP6_GAR_437_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_GAR_437_R2_paired.fastq
# gzip ProSNP6_GAR_437_R1_paired.fastq
# gzip ProSNP6_GAR_437_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4685807 /home/makman/Rawdata/combined/ProSNP6_GAR_557_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_GAR_557_R2_paired.fastq
# gzip ProSNP6_GAR_557_R1_paired.fastq
# gzip ProSNP6_GAR_557_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5453104 /home/makman/Rawdata/combined/ProSNP6_GAR_90_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_GAR_90_R2_paired.fastq
# gzip ProSNP6_GAR_90_R1_paired.fastq
# gzip ProSNP6_GAR_90_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5417464 /home/makman/Rawdata/combined/ProSNP6_KAR_1187_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_KAR_1187_R2_paired.fastq
# gzip ProSNP6_KAR_1187_R1_paired.fastq
# gzip ProSNP6_KAR_1187_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6733817 /home/makman/Rawdata/combined/ProSNP6_KAR_184_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_KAR_184_R2_paired.fastq
# gzip ProSNP6_KAR_184_R1_paired.fastq
# gzip ProSNP6_KAR_184_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5739797 /home/makman/Rawdata/combined/ProSNP6_KAR_486_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_KAR_486_R2_paired.fastq
# gzip ProSNP6_KAR_486_R1_paired.fastq
# gzip ProSNP6_KAR_486_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4493917 /home/makman/Rawdata/combined/ProSNP6_KAR_49_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_KAR_49_R2_paired.fastq
# gzip ProSNP6_KAR_49_R1_paired.fastq
# gzip ProSNP6_KAR_49_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5521406 /home/makman/Rawdata/combined/ProSNP6_KAR_68_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_KAR_68_R2_paired.fastq
# gzip ProSNP6_KAR_68_R1_paired.fastq
# gzip ProSNP6_KAR_68_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6674626 /home/makman/Rawdata/combined/ProSNP6_KAR_84_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_KAR_84_R2_paired.fastq
# gzip ProSNP6_KAR_84_R1_paired.fastq
# gzip ProSNP6_KAR_84_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4207511 /home/makman/Rawdata/combined/ProSNP6_KLM_1052_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_KLM_1052_R2_paired.fastq
# gzip ProSNP6_KLM_1052_R1_paired.fastq
# gzip ProSNP6_KLM_1052_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5476029 /home/makman/Rawdata/combined/ProSNP6_KLM_1129_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_KLM_1129_R2_paired.fastq
# gzip ProSNP6_KLM_1129_R1_paired.fastq
# gzip ProSNP6_KLM_1129_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5044047 /home/makman/Rawdata/combined/ProSNP6_KLM_155_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_KLM_155_R2_paired.fastq
# gzip ProSNP6_KLM_155_R1_paired.fastq
# gzip ProSNP6_KLM_155_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3707614 /home/makman/Rawdata/combined/ProSNP6_KLM_343_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_KLM_343_R2_paired.fastq
# gzip ProSNP6_KLM_343_R1_paired.fastq
# gzip ProSNP6_KLM_343_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4231278 /home/makman/Rawdata/combined/ProSNP6_KLM_475_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_KLM_475_R2_paired.fastq
# gzip ProSNP6_KLM_475_R1_paired.fastq
# gzip ProSNP6_KLM_475_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5210454 /home/makman/Rawdata/combined/ProSNP6_KLM_566_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_KLM_566_R2_paired.fastq
# gzip ProSNP6_KLM_566_R1_paired.fastq
# gzip ProSNP6_KLM_566_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5014975 /home/makman/Rawdata/combined/ProSNP6_KLM_582_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_KLM_582_R2_paired.fastq
# gzip ProSNP6_KLM_582_R1_paired.fastq
# gzip ProSNP6_KLM_582_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5213648 /home/makman/Rawdata/combined/ProSNP6_KSW_1043_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_KSW_1043_R2_paired.fastq
# gzip ProSNP6_KSW_1043_R1_paired.fastq
# gzip ProSNP6_KSW_1043_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5195712 /home/makman/Rawdata/combined/ProSNP6_KSW_104_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_KSW_104_R2_paired.fastq
# gzip ProSNP6_KSW_104_R1_paired.fastq
# gzip ProSNP6_KSW_104_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5436685 /home/makman/Rawdata/combined/ProSNP6_KSW_1076_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_KSW_1076_R2_paired.fastq
# gzip ProSNP6_KSW_1076_R1_paired.fastq
# gzip ProSNP6_KSW_1076_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6002479 /home/makman/Rawdata/combined/ProSNP6_KSW_10_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_KSW_10_R2_paired.fastq
# gzip ProSNP6_KSW_10_R1_paired.fastq
# gzip ProSNP6_KSW_10_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5308363 /home/makman/Rawdata/combined/ProSNP6_KSW_1125_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_KSW_1125_R2_paired.fastq
# gzip ProSNP6_KSW_1125_R1_paired.fastq
# gzip ProSNP6_KSW_1125_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4058067 /home/makman/Rawdata/combined/ProSNP6_KSW_47_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_KSW_47_R2_paired.fastq
# gzip ProSNP6_KSW_47_R1_paired.fastq
# gzip ProSNP6_KSW_47_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4396110 /home/makman/Rawdata/combined/ProSNP6_KSW_516_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_KSW_516_R2_paired.fastq
# gzip ProSNP6_KSW_516_R1_paired.fastq
# gzip ProSNP6_KSW_516_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 2630915 /home/makman/Rawdata/combined/ProSNP6_LOE_1035_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_LOE_1035_R2_paired.fastq
# gzip ProSNP6_LOE_1035_R1_paired.fastq
# gzip ProSNP6_LOE_1035_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5105951 /home/makman/Rawdata/combined/ProSNP6_LOE_1150_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_LOE_1150_R2_paired.fastq
# gzip ProSNP6_LOE_1150_R1_paired.fastq
# gzip ProSNP6_LOE_1150_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5115152 /home/makman/Rawdata/combined/ProSNP6_LOE_211_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_LOE_211_R2_paired.fastq
# gzip ProSNP6_LOE_211_R1_paired.fastq
# gzip ProSNP6_LOE_211_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4777275 /home/makman/Rawdata/combined/ProSNP6_LOE_497_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_LOE_497_R2_paired.fastq
# gzip ProSNP6_LOE_497_R1_paired.fastq
# gzip ProSNP6_LOE_497_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5517303 /home/makman/Rawdata/combined/ProSNP6_LOE_548_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_LOE_548_R2_paired.fastq
# gzip ProSNP6_LOE_548_R1_paired.fastq
# gzip ProSNP6_LOE_548_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5097965 /home/makman/Rawdata/combined/ProSNP6_POT_1119_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_POT_1119_R2_paired.fastq
# gzip ProSNP6_POT_1119_R1_paired.fastq
# gzip ProSNP6_POT_1119_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5509679 /home/makman/Rawdata/combined/ProSNP6_POT_128_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_POT_128_R2_paired.fastq
# gzip ProSNP6_POT_128_R1_paired.fastq
# gzip ProSNP6_POT_128_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3505829 /home/makman/Rawdata/combined/ProSNP6_POT_183_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_POT_183_R2_paired.fastq
# gzip ProSNP6_POT_183_R1_paired.fastq
# gzip ProSNP6_POT_183_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5295777 /home/makman/Rawdata/combined/ProSNP6_POT_380_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_POT_380_R2_paired.fastq
# gzip ProSNP6_POT_380_R1_paired.fastq
# gzip ProSNP6_POT_380_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6190176 /home/makman/Rawdata/combined/ProSNP6_POT_463_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_POT_463_R2_paired.fastq
# gzip ProSNP6_POT_463_R1_paired.fastq
# gzip ProSNP6_POT_463_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4283170 /home/makman/Rawdata/combined/ProSNP6_POT_594_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_POT_594_R2_paired.fastq
# gzip ProSNP6_POT_594_R1_paired.fastq
# gzip ProSNP6_POT_594_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3783472 /home/makman/Rawdata/combined/ProSNP6_RIV_1148_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_RIV_1148_R2_paired.fastq
# gzip ProSNP6_RIV_1148_R1_paired.fastq
# gzip ProSNP6_RIV_1148_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6536996 /home/makman/Rawdata/combined/ProSNP6_RIV_180_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_RIV_180_R2_paired.fastq
# gzip ProSNP6_RIV_180_R1_paired.fastq
# gzip ProSNP6_RIV_180_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6507401 /home/makman/Rawdata/combined/ProSNP6_RIV_351_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_RIV_351_R2_paired.fastq
# gzip ProSNP6_RIV_351_R1_paired.fastq
# gzip ProSNP6_RIV_351_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6855786 /home/makman/Rawdata/combined/ProSNP6_RIV_461_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_RIV_461_R2_paired.fastq
# gzip ProSNP6_RIV_461_R1_paired.fastq
# gzip ProSNP6_RIV_461_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 7615581 /home/makman/Rawdata/combined/ProSNP6_RIV_530_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_RIV_530_R2_paired.fastq
# gzip ProSNP6_RIV_530_R1_paired.fastq
# gzip ProSNP6_RIV_530_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5243047 /home/makman/Rawdata/combined/ProSNP6_RIV_88_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_RIV_88_R2_paired.fastq
# gzip ProSNP6_RIV_88_R1_paired.fastq
# gzip ProSNP6_RIV_88_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5170348 /home/makman/Rawdata/combined/ProSNP6_RND_1116_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_RND_1116_R2_paired.fastq
# gzip ProSNP6_RND_1116_R1_paired.fastq
# gzip ProSNP6_RND_1116_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 1638210 /home/makman/Rawdata/combined/ProSNP6_RND_1220_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_RND_1220_R2_paired.fastq
# gzip ProSNP6_RND_1220_R1_paired.fastq
# gzip ProSNP6_RND_1220_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 1932487 /home/makman/Rawdata/combined/ProSNP6_RND_164_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_RND_164_R2_paired.fastq
# gzip ProSNP6_RND_164_R1_paired.fastq
# gzip ProSNP6_RND_164_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5435299 /home/makman/Rawdata/combined/ProSNP6_RND_272_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_RND_272_R2_paired.fastq
# gzip ProSNP6_RND_272_R1_paired.fastq
# gzip ProSNP6_RND_272_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4077074 /home/makman/Rawdata/combined/ProSNP6_RND_523_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_RND_523_R2_paired.fastq
# gzip ProSNP6_RND_523_R1_paired.fastq
# gzip ProSNP6_RND_523_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 1690621 /home/makman/Rawdata/combined/ProSNP6_RND_65_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_RND_65_R2_paired.fastq
# gzip ProSNP6_RND_65_R1_paired.fastq
# gzip ProSNP6_RND_65_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3864155 /home/makman/Rawdata/combined/ProSNP6_SWA_140_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_SWA_140_R2_paired.fastq
# gzip ProSNP6_SWA_140_R1_paired.fastq
# gzip ProSNP6_SWA_140_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5828225 /home/makman/Rawdata/combined/ProSNP6_SWA_19_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_SWA_19_R2_paired.fastq
# gzip ProSNP6_SWA_19_R1_paired.fastq
# gzip ProSNP6_SWA_19_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6142150 /home/makman/Rawdata/combined/ProSNP6_SWA_304_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_SWA_304_R2_paired.fastq
# gzip ProSNP6_SWA_304_R1_paired.fastq
# gzip ProSNP6_SWA_304_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6987694 /home/makman/Rawdata/combined/ProSNP6_SWA_317_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_SWA_317_R2_paired.fastq
# gzip ProSNP6_SWA_317_R1_paired.fastq
# gzip ProSNP6_SWA_317_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 7104902 /home/makman/Rawdata/combined/ProSNP6_SWA_341_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_SWA_341_R2_paired.fastq
# gzip ProSNP6_SWA_341_R1_paired.fastq
# gzip ProSNP6_SWA_341_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5190376 /home/makman/Rawdata/combined/ProSNP6_SWA_515_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_SWA_515_R2_paired.fastq
# gzip ProSNP6_SWA_515_R1_paired.fastq
# gzip ProSNP6_SWA_515_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5212052 /home/makman/Rawdata/combined/ProSNP6_SWA_96_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_SWA_96_R2_paired.fastq
# gzip ProSNP6_SWA_96_R1_paired.fastq
# gzip ProSNP6_SWA_96_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3709097 /home/makman/Rawdata/combined/ProSNP6_UNI_1087_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_UNI_1087_R2_paired.fastq
# gzip ProSNP6_UNI_1087_R1_paired.fastq
# gzip ProSNP6_UNI_1087_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 6234643 /home/makman/Rawdata/combined/ProSNP6_UNI_1175_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_UNI_1175_R2_paired.fastq
# gzip ProSNP6_UNI_1175_R1_paired.fastq
# gzip ProSNP6_UNI_1175_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3986393 /home/makman/Rawdata/combined/ProSNP6_UNI_1204_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_UNI_1204_R2_paired.fastq
# gzip ProSNP6_UNI_1204_R1_paired.fastq
# gzip ProSNP6_UNI_1204_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5508492 /home/makman/Rawdata/combined/ProSNP6_UNI_470_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_UNI_470_R2_paired.fastq
# gzip ProSNP6_UNI_470_R1_paired.fastq
# gzip ProSNP6_UNI_470_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4543219 /home/makman/Rawdata/combined/ProSNP6_UNI_479_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_UNI_479_R2_paired.fastq
# gzip ProSNP6_UNI_479_R1_paired.fastq
# gzip ProSNP6_UNI_479_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5654686 /home/makman/Rawdata/combined/ProSNP6_UNI_546_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_UNI_546_R2_paired.fastq
# gzip ProSNP6_UNI_546_R1_paired.fastq
# gzip ProSNP6_UNI_546_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4918748 /home/makman/Rawdata/combined/ProSNP6_VAN_1015_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_VAN_1015_R2_paired.fastq
# gzip ProSNP6_VAN_1015_R1_paired.fastq
# gzip ProSNP6_VAN_1015_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 5596154 /home/makman/Rawdata/combined/ProSNP6_VAN_1179_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_VAN_1179_R2_paired.fastq
# gzip ProSNP6_VAN_1179_R1_paired.fastq
# gzip ProSNP6_VAN_1179_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 3970169 /home/makman/Rawdata/combined/ProSNP6_VAN_269_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_VAN_269_R2_paired.fastq
# gzip ProSNP6_VAN_269_R1_paired.fastq
# gzip ProSNP6_VAN_269_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 7512202 /home/makman/Rawdata/combined/ProSNP6_VAN_396_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_VAN_396_R2_paired.fastq
# gzip ProSNP6_VAN_396_R1_paired.fastq
# gzip ProSNP6_VAN_396_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 7254346 /home/makman/Rawdata/combined/ProSNP6_VAN_443_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_VAN_443_R2_paired.fastq
# gzip ProSNP6_VAN_443_R1_paired.fastq
# gzip ProSNP6_VAN_443_R2_paired.fastq
# /home/makman/fastq-pair/build/fastq_pair -t 4885899 /home/makman/Rawdata/combined/ProSNP6_VAN_93_R1_paired.fastq /home/makman/Rawdata/combined/ProSNP6_VAN_93_R2_paired.fastq
# gzip ProSNP6_VAN_93_R1_paired.fastq
# gzip ProSNP6_VAN_93_R2_paired.fastq
