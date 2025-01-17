#!/bin/bash -l
#SBATCH -D /home/makman/Rawdata/combined/AM_PM/
#SBATCH -J cat
#SBATCH -o /home/makman/ProSNP/outs/cat_AMPM.out
#SBATCH -e /home/makman/ProSNP/outs/cat_AMPM.err
#SBATCH --mail-type=All
#SBATCH --mail-user=makman@ucdavis.edu
#SBATCH --array=1-192
#SBATCH --time=24:00:00
#SBATCH -p bigmemh


cat ProSNP5_ma3_ALC502_AM_R1.fastq ProSNP5_ma3_ALC502_PM_R1.fastq > ProSNP5_ALC502_R1.fastq
cat ProSNP5_ma3_ALC62_AM_R1.fastq ProSNP5_ma3_ALC62_PM_R1.fastq > ProSNP5_ALC62_R1.fastq
cat ProSNP5_ma3_ANY1126_AM_R1.fastq ProSNP5_ma3_ANY1126_PM_R1.fastq > ProSNP5_ANY1126_R1.fastq
cat ProSNP5_ma3_ANY117_AM_R1.fastq ProSNP5_ma3_ANY117_PM_R1.fastq > ProSNP5_ANY117_R1.fastq
cat ProSNP5_ma3_ANY303_AM_R1.fastq ProSNP5_ma3_ANY303_PM_R1.fastq > ProSNP5_ANY303_R1.fastq
cat ProSNP5_ma3_BAN1138_AM_R1.fastq ProSNP5_ma3_BAN1138_PM_R1.fastq > ProSNP5_BAN1138_R1.fastq
cat ProSNP5_ma3_BAN229_AM_R1.fastq ProSNP5_ma3_BAN229_PM_R1.fastq > ProSNP5_BAN229_R1.fastq
cat ProSNP5_ma3_BAV1191_AM_R1.fastq ProSNP5_ma3_BAV1191_PM_R1.fastq > ProSNP5_BAV1191_R1.fastq
cat ProSNP5_ma3_BAV527_AM_R1.fastq ProSNP5_ma3_BAV527_PM_R1.fastq > ProSNP5_BAV527_R1.fastq
cat ProSNP5_ma3_BAV75_AM_R1.fastq ProSNP5_ma3_BAV75_PM_R1.fastq > ProSNP5_BAV75_R1.fastq
cat ProSNP5_ma3_BRD369_AM_R1.fastq ProSNP5_ma3_BRD369_PM_R1.fastq > ProSNP5_BRD369_R1.fastq
cat ProSNP5_ma3_BRD483_AM_R1.fastq ProSNP5_ma3_BRD483_PM_R1.fastq > ProSNP5_BRD483_R1.fastq
cat ProSNP5_ma3_BRD484_AM_R1.fastq ProSNP5_ma3_BRD484_PM_R1.fastq > ProSNP5_BRD484_R1.fastq
cat ProSNP5_ma3_CDB100_AM_R1.fastq ProSNP5_ma3_CDB100_PM_R1.fastq > ProSNP5_CDB100_R1.fastq
cat ProSNP5_ma3_CDB1134_AM_R1.fastq ProSNP5_ma3_CDB1134_PM_R1.fastq > ProSNP5_CDB1134_R1.fastq
cat ProSNP5_ma3_CER1117_AM_R1.fastq ProSNP5_ma3_CER1117_PM_R1.fastq > ProSNP5_CER1117_R1.fastq
cat ProSNP5_ma3_CER2_AM_R1.fastq ProSNP5_ma3_CER2_PM_R1.fastq > ProSNP5_CER2_R1.fastq
cat ProSNP5_ma3_CER458_AM_R1.fastq ProSNP5_ma3_CER458_PM_R1.fastq > ProSNP5_CER458_R1.fastq
cat ProSNP5_ma3_GAR439_AM_R1.fastq ProSNP5_ma3_GAR439_PM_R1.fastq > ProSNP5_GAR439_R1.fastq
cat ProSNP5_ma3_GAR46_AM_R1.fastq ProSNP5_ma3_GAR46_PM_R1.fastq > ProSNP5_GAR46_R1.fastq
cat ProSNP5_ma3_KAR1044_AM_R1.fastq ProSNP5_ma3_KAR1044_PM_R1.fastq > ProSNP5_KAR1044_R1.fastq
cat ProSNP5_ma3_KAR122_AM_R1.fastq ProSNP5_ma3_KAR122_PM_R1.fastq > ProSNP5_KAR122_R1.fastq
cat ProSNP5_ma3_KAR346_AM_R1.fastq ProSNP5_ma3_KAR346_PM_R1.fastq > ProSNP5_KAR346_R1.fastq
cat ProSNP5_ma3_KLM1203_AM_R1.fastq ProSNP5_ma3_KLM1203_PM_R1.fastq > ProSNP5_KLM1203_R1.fastq
cat ProSNP5_ma3_KLM56_AM_R1.fastq ProSNP5_ma3_KLM56_PM_R1.fastq > ProSNP5_KLM56_R1.fastq
cat ProSNP5_ma3_KLM97_AM_R1.fastq ProSNP5_ma3_KLM97_PM_R1.fastq > ProSNP5_KLM97_R1.fastq
cat ProSNP5_ma3_KSW1145_AM_R1.fastq ProSNP5_ma3_KSW1145_PM_R1.fastq > ProSNP5_KSW1145_R1.fastq
cat ProSNP5_ma3_KSW505_AM_R1.fastq ProSNP5_ma3_KSW505_PM_R1.fastq > ProSNP5_KSW505_R1.fastq
cat ProSNP5_ma3_KSW597_AM_R1.fastq ProSNP5_ma3_KSW597_PM_R1.fastq > ProSNP5_KSW597_R1.fastq
cat ProSNP5_ma3_LOE1018_AM_R1.fastq ProSNP5_ma3_LOE1018_PM_R1.fastq > ProSNP5_LOE1018_R1.fastq
cat ProSNP5_ma3_LOE125_AM_R1.fastq ProSNP5_ma3_LOE125_PM_R1.fastq > ProSNP5_LOE125_R1.fastq
cat ProSNP5_ma3_LOE388_AM_R1.fastq ProSNP5_ma3_LOE388_PM_R1.fastq > ProSNP5_LOE388_R1.fastq
cat ProSNP5_ma3_MGU1006_AM_R1.fastq ProSNP5_ma3_MGU1006_PM_R1.fastq > ProSNP5_MGU1006_R1.fastq
cat ProSNP5_ma3_MGU1056_AM_R1.fastq ProSNP5_ma3_MGU1056_PM_R1.fastq > ProSNP5_MGU1056_R1.fastq
cat ProSNP5_ma3_POT282_AM_R1.fastq ProSNP5_ma3_POT282_PM_R1.fastq > ProSNP5_POT282_R1.fastq
cat ProSNP5_ma3_POT525_AM_R1.fastq ProSNP5_ma3_POT525_PM_R1.fastq > ProSNP5_POT525_R1.fastq
cat ProSNP5_ma3_RIV44_AM_R1.fastq ProSNP5_ma3_RIV44_PM_R1.fastq > ProSNP5_RIV44_R1.fastq
cat ProSNP5_ma3_RIV560_AM_R1.fastq ProSNP5_ma3_RIV560_PM_R1.fastq > ProSNP5_RIV560_R1.fastq
cat ProSNP5_ma3_RND139_AM_R1.fastq ProSNP5_ma3_RND139_PM_R1.fastq > ProSNP5_RND139_R1.fastq
cat ProSNP5_ma3_RND290_AM_R1.fastq ProSNP5_ma3_RND290_PM_R1.fastq > ProSNP5_RND290_R1.fastq
cat ProSNP5_ma3_RND579_AM_R1.fastq ProSNP5_ma3_RND579_PM_R1.fastq > ProSNP5_RND579_R1.fastq
cat ProSNP5_ma3_SWA107_AM_R1.fastq ProSNP5_ma3_SWA107_PM_R1.fastq > ProSNP5_SWA107_R1.fastq
cat ProSNP5_ma3_SWA189_AM_R1.fastq ProSNP5_ma3_SWA189_PM_R1.fastq > ProSNP5_SWA189_R1.fastq
cat ProSNP5_ma3_UNI1001_AM_R1.fastq ProSNP5_ma3_UNI1001_PM_R1.fastq > ProSNP5_UNI1001_R1.fastq
cat ProSNP5_ma3_UNI386_AM_R1.fastq ProSNP5_ma3_UNI386_PM_R1.fastq > ProSNP5_UNI386_R1.fastq
cat ProSNP5_ma3_VAN163_AM_R1.fastq ProSNP5_ma3_VAN163_PM_R1.fastq > ProSNP5_VAN163_R1.fastq
cat ProSNP5_ma3_VAN206_AM_R1.fastq ProSNP5_ma3_VAN206_PM_R1.fastq > ProSNP5_VAN206_R1.fastq
cat ProSNP5_ma3_VAN27_AM_R1.fastq ProSNP5_ma3_VAN27_PM_R1.fastq > ProSNP5_VAN27_R1.fastq
cat ProSNP5_ma4_ALC1045_AM_R1.fastq ProSNP5_ma4_ALC1045_PM_R1.fastq > ProSNP5_ALC1045_R1.fastq
cat ProSNP5_ma4_ALC230_AM_R1.fastq ProSNP5_ma4_ALC230_PM_R1.fastq > ProSNP5_ALC230_R1.fastq
cat ProSNP5_ma4_ALC250_AM_R1.fastq ProSNP5_ma4_ALC250_PM_R1.fastq > ProSNP5_ALC250_R1.fastq
cat ProSNP5_ma4_ANY116_AM_R1.fastq ProSNP5_ma4_ANY116_PM_R1.fastq > ProSNP5_ANY116_R1.fastq
cat ProSNP5_ma4_ANY322_AM_R1.fastq ProSNP5_ma4_ANY322_PM_R1.fastq > ProSNP5_ANY322_R1.fastq
cat ProSNP5_ma4_BAN207_AM_R1.fastq ProSNP5_ma4_BAN207_PM_R1.fastq > ProSNP5_BAN207_R1.fastq
cat ProSNP5_ma4_BAN506_AM_R1.fastq ProSNP5_ma4_BAN506_PM_R1.fastq > ProSNP5_BAN506_R1.fastq
cat ProSNP5_ma4_BAN92_AM_R1.fastq ProSNP5_ma4_BAN92_PM_R1.fastq > ProSNP5_BAN92_R1.fastq
cat ProSNP5_ma4_BAV422_AM_R1.fastq ProSNP5_ma4_BAV422_PM_R1.fastq > ProSNP5_BAV422_R1.fastq
cat ProSNP5_ma4_BAV7_AM_R1.fastq ProSNP5_ma4_BAV7_PM_R1.fastq > ProSNP5_BAV7_R1.fastq
cat ProSNP5_ma4_BRD381_AM_R1.fastq ProSNP5_ma4_BRD381_PM_R1.fastq > ProSNP5_BRD381_R1.fastq
cat ProSNP5_ma4_BRD51_AM_R1.fastq ProSNP5_ma4_BRD51_PM_R1.fastq > ProSNP5_BRD51_R1.fastq
cat ProSNP5_ma4_CDB376_AM_R1.fastq ProSNP5_ma4_CDB376_PM_R1.fastq > ProSNP5_CDB376_R1.fastq
cat ProSNP5_ma4_CDB512_AM_R1.fastq ProSNP5_ma4_CDB512_PM_R1.fastq > ProSNP5_CDB512_R1.fastq
cat ProSNP5_ma4_CDB564_AM_R1.fastq ProSNP5_ma4_CDB564_PM_R1.fastq > ProSNP5_CDB564_R1.fastq
cat ProSNP5_ma4_CER382_AM_R1.fastq ProSNP5_ma4_CER382_PM_R1.fastq > ProSNP5_CER382_R1.fastq
cat ProSNP5_ma4_CER78_AM_R1.fastq ProSNP5_ma4_CER78_PM_R1.fastq > ProSNP5_CER78_R1.fastq
cat ProSNP5_ma4_GAR1019_AM_R1.fastq ProSNP5_ma4_GAR1019_PM_R1.fastq > ProSNP5_GAR1019_R1.fastq
cat ProSNP5_ma4_GAR434_AM_R1.fastq ProSNP5_ma4_GAR434_PM_R1.fastq > ProSNP5_GAR434_R1.fastq
cat ProSNP5_ma4_GAR547_AM_R1.fastq ProSNP5_ma4_GAR547_PM_R1.fastq > ProSNP5_GAR547_R1.fastq
cat ProSNP5_ma4_KAR1063_AM_R1.fastq ProSNP5_ma4_KAR1063_PM_R1.fastq > ProSNP5_KAR1063_R1.fastq
cat ProSNP5_ma4_KAR178_AM_R1.fastq ProSNP5_ma4_KAR178_PM_R1.fastq > ProSNP5_KAR178_R1.fastq
cat ProSNP5_ma4_KLM1025_AM_R1.fastq ProSNP5_ma4_KLM1025_PM_R1.fastq > ProSNP5_KLM1025_R1.fastq
cat ProSNP5_ma4_KLM534_AM_R1.fastq ProSNP5_ma4_KLM534_PM_R1.fastq > ProSNP5_KLM534_R1.fastq
cat ProSNP5_ma4_KSW1206_AM_R1.fastq ProSNP5_ma4_KSW1206_PM_R1.fastq > ProSNP5_KSW1206_R1.fastq
cat ProSNP5_ma4_KSW398_AM_R1.fastq ProSNP5_ma4_KSW398_PM_R1.fastq > ProSNP5_KSW398_R1.fastq
cat ProSNP5_ma4_KSW95_AM_R1.fastq ProSNP5_ma4_KSW95_PM_R1.fastq > ProSNP5_KSW95_R1.fastq
cat ProSNP5_ma4_LOE585_AM_R1.fastq ProSNP5_ma4_LOE585_PM_R1.fastq > ProSNP5_LOE585_R1.fastq
cat ProSNP5_ma4_LOE79_AM_R1.fastq ProSNP5_ma4_LOE79_PM_R1.fastq > ProSNP5_LOE79_R1.fastq
cat ProSNP5_ma4_MGU16_AM_R1.fastq ProSNP5_ma4_MGU16_PM_R1.fastq > ProSNP5_MGU16_R1.fastq
cat ProSNP5_ma4_MGU490_AM_R1.fastq ProSNP5_ma4_MGU490_PM_R1.fastq > ProSNP5_MGU490_R1.fastq
cat ProSNP5_ma4_MGU498_AM_R1.fastq ProSNP5_ma4_MGU498_PM_R1.fastq > ProSNP5_MGU498_R1.fastq
cat ProSNP5_ma4_POT1176_AM_R1.fastq ProSNP5_ma4_POT1176_PM_R1.fastq > ProSNP5_POT1176_R1.fastq
cat ProSNP5_ma4_POT255_AM_R1.fastq ProSNP5_ma4_POT255_PM_R1.fastq > ProSNP5_POT255_R1.fastq
cat ProSNP5_ma4_POT54_AM_R1.fastq ProSNP5_ma4_POT54_PM_R1.fastq > ProSNP5_POT54_R1.fastq
cat ProSNP5_ma4_RIV151_AM_R1.fastq ProSNP5_ma4_RIV151_PM_R1.fastq > ProSNP5_RIV151_R1.fastq
cat ProSNP5_ma4_RIV191_AM_R1.fastq ProSNP5_ma4_RIV191_PM_R1.fastq > ProSNP5_RIV191_R1.fastq
cat ProSNP5_ma4_RIV195_AM_R1.fastq ProSNP5_ma4_RIV195_PM_R1.fastq > ProSNP5_RIV195_R1.fastq
cat ProSNP5_ma4_RND1010_AM_R1.fastq ProSNP5_ma4_RND1010_PM_R1.fastq > ProSNP5_RND1010_R1.fastq
cat ProSNP5_ma4_RND1210_AM_R1.fastq ProSNP5_ma4_RND1210_PM_R1.fastq > ProSNP5_RND1210_R1.fastq
cat ProSNP5_ma4_SWA157_AM_R1.fastq ProSNP5_ma4_SWA157_PM_R1.fastq > ProSNP5_SWA157_R1.fastq
cat ProSNP5_ma4_SWA577_AM_R1.fastq ProSNP5_ma4_SWA577_PM_R1.fastq > ProSNP5_SWA577_R1.fastq
cat ProSNP5_ma4_SWA80_AM_R1.fastq ProSNP5_ma4_SWA80_PM_R1.fastq > ProSNP5_SWA80_R1.fastq
cat ProSNP5_ma4_UNI1001_AM_R1.fastq ProSNP5_ma4_UNI1001_PM_R1.fastq > ProSNP5_UNI1001_R1.fastq
cat ProSNP5_ma4_UNI3_AM_R1.fastq ProSNP5_ma4_UNI3_PM_R1.fastq > ProSNP5_UNI3_R1.fastq
cat ProSNP5_ma4_UNI403_AM_R1.fastq ProSNP5_ma4_UNI403_PM_R1.fastq > ProSNP5_UNI403_R1.fastq
cat ProSNP5_ma4_VAN208_AM_R1.fastq ProSNP5_ma4_VAN208_PM_R1.fastq > ProSNP5_VAN208_R1.fastq
cat ProSNP5_ma4_VAN260_AM_R1.fastq ProSNP5_ma4_VAN260_PM_R1.fastq > ProSNP5_VAN260_R1.fastq
cat ProSNP5_ma3_ALC502_AM_R2.fastq ProSNP5_ma3_ALC502_PM_R2.fastq > ProSNP5_ALC502_R2.fastq
cat ProSNP5_ma3_ALC62_AM_R2.fastq ProSNP5_ma3_ALC62_PM_R2.fastq > ProSNP5_ALC62_R2.fastq
cat ProSNP5_ma3_ANY1126_AM_R2.fastq ProSNP5_ma3_ANY1126_PM_R2.fastq > ProSNP5_ANY1126_R2.fastq
cat ProSNP5_ma3_ANY117_AM_R2.fastq ProSNP5_ma3_ANY117_PM_R2.fastq > ProSNP5_ANY117_R2.fastq
cat ProSNP5_ma3_ANY303_AM_R2.fastq ProSNP5_ma3_ANY303_PM_R2.fastq > ProSNP5_ANY303_R2.fastq
cat ProSNP5_ma3_BAN1138_AM_R2.fastq ProSNP5_ma3_BAN1138_PM_R2.fastq > ProSNP5_BAN1138_R2.fastq
cat ProSNP5_ma3_BAN229_AM_R2.fastq ProSNP5_ma3_BAN229_PM_R2.fastq > ProSNP5_BAN229_R2.fastq
cat ProSNP5_ma3_BAV1191_AM_R2.fastq ProSNP5_ma3_BAV1191_PM_R2.fastq > ProSNP5_BAV1191_R2.fastq
cat ProSNP5_ma3_BAV527_AM_R2.fastq ProSNP5_ma3_BAV527_PM_R2.fastq > ProSNP5_BAV527_R2.fastq
cat ProSNP5_ma3_BAV75_AM_R2.fastq ProSNP5_ma3_BAV75_PM_R2.fastq > ProSNP5_BAV75_R2.fastq
cat ProSNP5_ma3_BRD369_AM_R2.fastq ProSNP5_ma3_BRD369_PM_R2.fastq > ProSNP5_BRD369_R2.fastq
cat ProSNP5_ma3_BRD483_AM_R2.fastq ProSNP5_ma3_BRD483_PM_R2.fastq > ProSNP5_BRD483_R2.fastq
cat ProSNP5_ma3_BRD484_AM_R2.fastq ProSNP5_ma3_BRD484_PM_R2.fastq > ProSNP5_BRD484_R2.fastq
cat ProSNP5_ma3_CDB100_AM_R2.fastq ProSNP5_ma3_CDB100_PM_R2.fastq > ProSNP5_CDB100_R2.fastq
cat ProSNP5_ma3_CDB1134_AM_R2.fastq ProSNP5_ma3_CDB1134_PM_R2.fastq > ProSNP5_CDB1134_R2.fastq
cat ProSNP5_ma3_CER1117_AM_R2.fastq ProSNP5_ma3_CER1117_PM_R2.fastq > ProSNP5_CER1117_R2.fastq
cat ProSNP5_ma3_CER2_AM_R2.fastq ProSNP5_ma3_CER2_PM_R2.fastq > ProSNP5_CER2_R2.fastq
cat ProSNP5_ma3_CER458_AM_R2.fastq ProSNP5_ma3_CER458_PM_R2.fastq > ProSNP5_CER458_R2.fastq
cat ProSNP5_ma3_GAR439_AM_R2.fastq ProSNP5_ma3_GAR439_PM_R2.fastq > ProSNP5_GAR439_R2.fastq
cat ProSNP5_ma3_GAR46_AM_R2.fastq ProSNP5_ma3_GAR46_PM_R2.fastq > ProSNP5_GAR46_R2.fastq
cat ProSNP5_ma3_KAR1044_AM_R2.fastq ProSNP5_ma3_KAR1044_PM_R2.fastq > ProSNP5_KAR1044_R2.fastq
cat ProSNP5_ma3_KAR122_AM_R2.fastq ProSNP5_ma3_KAR122_PM_R2.fastq > ProSNP5_KAR122_R2.fastq
cat ProSNP5_ma3_KAR346_AM_R2.fastq ProSNP5_ma3_KAR346_PM_R2.fastq > ProSNP5_KAR346_R2.fastq
cat ProSNP5_ma3_KLM1203_AM_R2.fastq ProSNP5_ma3_KLM1203_PM_R2.fastq > ProSNP5_KLM1203_R2.fastq
cat ProSNP5_ma3_KLM56_AM_R2.fastq ProSNP5_ma3_KLM56_PM_R2.fastq > ProSNP5_KLM56_R2.fastq
cat ProSNP5_ma3_KLM97_AM_R2.fastq ProSNP5_ma3_KLM97_PM_R2.fastq > ProSNP5_KLM97_R2.fastq
cat ProSNP5_ma3_KSW1145_AM_R2.fastq ProSNP5_ma3_KSW1145_PM_R2.fastq > ProSNP5_KSW1145_R2.fastq
cat ProSNP5_ma3_KSW505_AM_R2.fastq ProSNP5_ma3_KSW505_PM_R2.fastq > ProSNP5_KSW505_R2.fastq
cat ProSNP5_ma3_KSW597_AM_R2.fastq ProSNP5_ma3_KSW597_PM_R2.fastq > ProSNP5_KSW597_R2.fastq
cat ProSNP5_ma3_LOE1018_AM_R2.fastq ProSNP5_ma3_LOE1018_PM_R2.fastq > ProSNP5_LOE1018_R2.fastq
cat ProSNP5_ma3_LOE125_AM_R2.fastq ProSNP5_ma3_LOE125_PM_R2.fastq > ProSNP5_LOE125_R2.fastq
cat ProSNP5_ma3_LOE388_AM_R2.fastq ProSNP5_ma3_LOE388_PM_R2.fastq > ProSNP5_LOE388_R2.fastq
cat ProSNP5_ma3_MGU1006_AM_R2.fastq ProSNP5_ma3_MGU1006_PM_R2.fastq > ProSNP5_MGU1006_R2.fastq
cat ProSNP5_ma3_MGU1056_AM_R2.fastq ProSNP5_ma3_MGU1056_PM_R2.fastq > ProSNP5_MGU1056_R2.fastq
cat ProSNP5_ma3_POT282_AM_R2.fastq ProSNP5_ma3_POT282_PM_R2.fastq > ProSNP5_POT282_R2.fastq
cat ProSNP5_ma3_POT525_AM_R2.fastq ProSNP5_ma3_POT525_PM_R2.fastq > ProSNP5_POT525_R2.fastq
cat ProSNP5_ma3_RIV44_AM_R2.fastq ProSNP5_ma3_RIV44_PM_R2.fastq > ProSNP5_RIV44_R2.fastq
cat ProSNP5_ma3_RIV560_AM_R2.fastq ProSNP5_ma3_RIV560_PM_R2.fastq > ProSNP5_RIV560_R2.fastq
cat ProSNP5_ma3_RND139_AM_R2.fastq ProSNP5_ma3_RND139_PM_R2.fastq > ProSNP5_RND139_R2.fastq
cat ProSNP5_ma3_RND290_AM_R2.fastq ProSNP5_ma3_RND290_PM_R2.fastq > ProSNP5_RND290_R2.fastq
cat ProSNP5_ma3_RND579_AM_R2.fastq ProSNP5_ma3_RND579_PM_R2.fastq > ProSNP5_RND579_R2.fastq
cat ProSNP5_ma3_SWA107_AM_R2.fastq ProSNP5_ma3_SWA107_PM_R2.fastq > ProSNP5_SWA107_R2.fastq
cat ProSNP5_ma3_SWA189_AM_R2.fastq ProSNP5_ma3_SWA189_PM_R2.fastq > ProSNP5_SWA189_R2.fastq
cat ProSNP5_ma3_UNI1001_AM_R2.fastq ProSNP5_ma3_UNI1001_PM_R2.fastq > ProSNP5_UNI1001_R2.fastq
cat ProSNP5_ma3_UNI386_AM_R2.fastq ProSNP5_ma3_UNI386_PM_R2.fastq > ProSNP5_UNI386_R2.fastq
cat ProSNP5_ma3_VAN163_AM_R2.fastq ProSNP5_ma3_VAN163_PM_R2.fastq > ProSNP5_VAN163_R2.fastq
cat ProSNP5_ma3_VAN206_AM_R2.fastq ProSNP5_ma3_VAN206_PM_R2.fastq > ProSNP5_VAN206_R2.fastq
cat ProSNP5_ma3_VAN27_AM_R2.fastq ProSNP5_ma3_VAN27_PM_R2.fastq > ProSNP5_VAN27_R2.fastq
cat ProSNP5_ma4_ALC1045_AM_R2.fastq ProSNP5_ma4_ALC1045_PM_R2.fastq > ProSNP5_ALC1045_R2.fastq
cat ProSNP5_ma4_ALC230_AM_R2.fastq ProSNP5_ma4_ALC230_PM_R2.fastq > ProSNP5_ALC230_R2.fastq
cat ProSNP5_ma4_ALC250_AM_R2.fastq ProSNP5_ma4_ALC250_PM_R2.fastq > ProSNP5_ALC250_R2.fastq
cat ProSNP5_ma4_ANY116_AM_R2.fastq ProSNP5_ma4_ANY116_PM_R2.fastq > ProSNP5_ANY116_R2.fastq
cat ProSNP5_ma4_ANY322_AM_R2.fastq ProSNP5_ma4_ANY322_PM_R2.fastq > ProSNP5_ANY322_R2.fastq
cat ProSNP5_ma4_BAN207_AM_R2.fastq ProSNP5_ma4_BAN207_PM_R2.fastq > ProSNP5_BAN207_R2.fastq
cat ProSNP5_ma4_BAN506_AM_R2.fastq ProSNP5_ma4_BAN506_PM_R2.fastq > ProSNP5_BAN506_R2.fastq
cat ProSNP5_ma4_BAN92_AM_R2.fastq ProSNP5_ma4_BAN92_PM_R2.fastq > ProSNP5_BAN92_R2.fastq
cat ProSNP5_ma4_BAV422_AM_R2.fastq ProSNP5_ma4_BAV422_PM_R2.fastq > ProSNP5_BAV422_R2.fastq
cat ProSNP5_ma4_BAV7_AM_R2.fastq ProSNP5_ma4_BAV7_PM_R2.fastq > ProSNP5_BAV7_R2.fastq
cat ProSNP5_ma4_BRD381_AM_R2.fastq ProSNP5_ma4_BRD381_PM_R2.fastq > ProSNP5_BRD381_R2.fastq
cat ProSNP5_ma4_BRD51_AM_R2.fastq ProSNP5_ma4_BRD51_PM_R2.fastq > ProSNP5_BRD51_R2.fastq
cat ProSNP5_ma4_CDB376_AM_R2.fastq ProSNP5_ma4_CDB376_PM_R2.fastq > ProSNP5_CDB376_R2.fastq
cat ProSNP5_ma4_CDB512_AM_R2.fastq ProSNP5_ma4_CDB512_PM_R2.fastq > ProSNP5_CDB512_R2.fastq
cat ProSNP5_ma4_CDB564_AM_R2.fastq ProSNP5_ma4_CDB564_PM_R2.fastq > ProSNP5_CDB564_R2.fastq
cat ProSNP5_ma4_CER382_AM_R2.fastq ProSNP5_ma4_CER382_PM_R2.fastq > ProSNP5_CER382_R2.fastq
cat ProSNP5_ma4_CER78_AM_R2.fastq ProSNP5_ma4_CER78_PM_R2.fastq > ProSNP5_CER78_R2.fastq
cat ProSNP5_ma4_GAR1019_AM_R2.fastq ProSNP5_ma4_GAR1019_PM_R2.fastq > ProSNP5_GAR1019_R2.fastq
cat ProSNP5_ma4_GAR434_AM_R2.fastq ProSNP5_ma4_GAR434_PM_R2.fastq > ProSNP5_GAR434_R2.fastq
cat ProSNP5_ma4_GAR547_AM_R2.fastq ProSNP5_ma4_GAR547_PM_R2.fastq > ProSNP5_GAR547_R2.fastq
cat ProSNP5_ma4_KAR1063_AM_R2.fastq ProSNP5_ma4_KAR1063_PM_R2.fastq > ProSNP5_KAR1063_R2.fastq
cat ProSNP5_ma4_KAR178_AM_R2.fastq ProSNP5_ma4_KAR178_PM_R2.fastq > ProSNP5_KAR178_R2.fastq
cat ProSNP5_ma4_KLM1025_AM_R2.fastq ProSNP5_ma4_KLM1025_PM_R2.fastq > ProSNP5_KLM1025_R2.fastq
cat ProSNP5_ma4_KLM534_AM_R2.fastq ProSNP5_ma4_KLM534_PM_R2.fastq > ProSNP5_KLM534_R2.fastq
cat ProSNP5_ma4_KSW1206_AM_R2.fastq ProSNP5_ma4_KSW1206_PM_R2.fastq > ProSNP5_KSW1206_R2.fastq
cat ProSNP5_ma4_KSW398_AM_R2.fastq ProSNP5_ma4_KSW398_PM_R2.fastq > ProSNP5_KSW398_R2.fastq
cat ProSNP5_ma4_KSW95_AM_R2.fastq ProSNP5_ma4_KSW95_PM_R2.fastq > ProSNP5_KSW95_R2.fastq
cat ProSNP5_ma4_LOE585_AM_R2.fastq ProSNP5_ma4_LOE585_PM_R2.fastq > ProSNP5_LOE585_R2.fastq
cat ProSNP5_ma4_LOE79_AM_R2.fastq ProSNP5_ma4_LOE79_PM_R2.fastq > ProSNP5_LOE79_R2.fastq
cat ProSNP5_ma4_MGU16_AM_R2.fastq ProSNP5_ma4_MGU16_PM_R2.fastq > ProSNP5_MGU16_R2.fastq
cat ProSNP5_ma4_MGU490_AM_R2.fastq ProSNP5_ma4_MGU490_PM_R2.fastq > ProSNP5_MGU490_R2.fastq
cat ProSNP5_ma4_MGU498_AM_R2.fastq ProSNP5_ma4_MGU498_PM_R2.fastq > ProSNP5_MGU498_R2.fastq
cat ProSNP5_ma4_POT1176_AM_R2.fastq ProSNP5_ma4_POT1176_PM_R2.fastq > ProSNP5_POT1176_R2.fastq
cat ProSNP5_ma4_POT255_AM_R2.fastq ProSNP5_ma4_POT255_PM_R2.fastq > ProSNP5_POT255_R2.fastq
cat ProSNP5_ma4_POT54_AM_R2.fastq ProSNP5_ma4_POT54_PM_R2.fastq > ProSNP5_POT54_R2.fastq
cat ProSNP5_ma4_RIV151_AM_R2.fastq ProSNP5_ma4_RIV151_PM_R2.fastq > ProSNP5_RIV151_R2.fastq
cat ProSNP5_ma4_RIV191_AM_R2.fastq ProSNP5_ma4_RIV191_PM_R2.fastq > ProSNP5_RIV191_R2.fastq
cat ProSNP5_ma4_RIV195_AM_R2.fastq ProSNP5_ma4_RIV195_PM_R2.fastq > ProSNP5_RIV195_R2.fastq
cat ProSNP5_ma4_RND1010_AM_R2.fastq ProSNP5_ma4_RND1010_PM_R2.fastq > ProSNP5_RND1010_R2.fastq
cat ProSNP5_ma4_RND1210_AM_R2.fastq ProSNP5_ma4_RND1210_PM_R2.fastq > ProSNP5_RND1210_R2.fastq
cat ProSNP5_ma4_SWA157_AM_R2.fastq ProSNP5_ma4_SWA157_PM_R2.fastq > ProSNP5_SWA157_R2.fastq
cat ProSNP5_ma4_SWA577_AM_R2.fastq ProSNP5_ma4_SWA577_PM_R2.fastq > ProSNP5_SWA577_R2.fastq
cat ProSNP5_ma4_SWA80_AM_R2.fastq ProSNP5_ma4_SWA80_PM_R2.fastq > ProSNP5_SWA80_R2.fastq
cat ProSNP5_ma4_UNI1001_AM_R2.fastq ProSNP5_ma4_UNI1001_PM_R2.fastq > ProSNP5_UNI1001_R2.fastq
cat ProSNP5_ma4_UNI3_AM_R2.fastq ProSNP5_ma4_UNI3_PM_R2.fastq > ProSNP5_UNI3_R2.fastq
cat ProSNP5_ma4_UNI403_AM_R2.fastq ProSNP5_ma4_UNI403_PM_R2.fastq > ProSNP5_UNI403_R2.fastq
cat ProSNP5_ma4_VAN208_AM_R2.fastq ProSNP5_ma4_VAN208_PM_R2.fastq > ProSNP5_VAN208_R2.fastq
cat ProSNP5_ma4_VAN260_AM_R2.fastq ProSNP5_ma4_VAN260_PM_R2.fastq > ProSNP5_VAN260_R2.fastq