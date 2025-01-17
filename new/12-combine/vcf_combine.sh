#!/bin/bash -l
#SBATCH -D /home/makman/ProSNP/mapping/
#SBATCH -J vcf_com
#SBATCH -o /home/makman/ProSNP/outs/vcf_combine.out
#SBATCH -e /home/makman/ProSNP/outs/vcf_combine.err
#SBATCH --mail-type=All
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH -p bigmemh
#SBATCH --mem=64GB
#SBATCH --time=400:00:00
module load vcftools/0.1.13
module load tabix/0.2.6

# bgzip -c ProSNP12_ALC_12.vcf > ProSNP12_ALC_12.vcf.gz
# bgzip -c ProSNP12_ALC_34.vcf > ProSNP12_ALC_34.vcf.gz
# bgzip -c ProSNP12_ALC_44.vcf > ProSNP12_ALC_44.vcf.gz
# bgzip -c ProSNP12_ANY_19.vcf > ProSNP12_ANY_19.vcf.gz
# bgzip -c ProSNP12_ANY_1.vcf > ProSNP12_ANY_1.vcf.gz
# bgzip -c ProSNP12_ANY_30.vcf > ProSNP12_ANY_30.vcf.gz
# bgzip -c ProSNP12_BAN_21.vcf > ProSNP12_BAN_21.vcf.gz
# bgzip -c ProSNP12_BAN_35.vcf > ProSNP12_BAN_35.vcf.gz
# bgzip -c ProSNP12_BAN_3.vcf > ProSNP12_BAN_3.vcf.gz
# bgzip -c ProSNP12_BAV_20.vcf > ProSNP12_BAV_20.vcf.gz
# bgzip -c ProSNP12_BAV_32.vcf > ProSNP12_BAV_32.vcf.gz
# bgzip -c ProSNP12_BAV_44.vcf > ProSNP12_BAV_44.vcf.gz
# bgzip -c ProSNP12_BRD_1.vcf > ProSNP12_BRD_1.vcf.gz
# bgzip -c ProSNP12_BRD_22.vcf > ProSNP12_BRD_22.vcf.gz
# bgzip -c ProSNP12_BRD_41.vcf > ProSNP12_BRD_41.vcf.gz
# bgzip -c ProSNP12_CDB_26.vcf > ProSNP12_CDB_26.vcf.gz
# bgzip -c ProSNP12_CDB_2.vcf > ProSNP12_CDB_2.vcf.gz
# bgzip -c ProSNP12_CDB_40.vcf > ProSNP12_CDB_40.vcf.gz
# bgzip -c ProSNP12_CER_1.vcf > ProSNP12_CER_1.vcf.gz
# bgzip -c ProSNP12_CER_22.vcf > ProSNP12_CER_22.vcf.gz
# bgzip -c ProSNP12_CER_42.vcf > ProSNP12_CER_42.vcf.gz
# bgzip -c ProSNP12_GAR_1.vcf > ProSNP12_GAR_1.vcf.gz
# bgzip -c ProSNP12_GAR_20.vcf > ProSNP12_GAR_20.vcf.gz
# bgzip -c ProSNP12_GAR_41.vcf > ProSNP12_GAR_41.vcf.gz
# bgzip -c ProSNP12_KAR_1.vcf > ProSNP12_KAR_1.vcf.gz
# bgzip -c ProSNP12_KAR_25.vcf > ProSNP12_KAR_25.vcf.gz
# bgzip -c ProSNP12_KAR_42.vcf > ProSNP12_KAR_42.vcf.gz
# bgzip -c ProSNP12_KLM_20.vcf > ProSNP12_KLM_20.vcf.gz
# bgzip -c ProSNP12_KLM_45.vcf > ProSNP12_KLM_45.vcf.gz
# bgzip -c ProSNP12_KLM_5.vcf > ProSNP12_KLM_5.vcf.gz
# bgzip -c ProSNP12_KSW_20.vcf > ProSNP12_KSW_20.vcf.gz
# bgzip -c ProSNP12_KSW_45.vcf > ProSNP12_KSW_45.vcf.gz
# bgzip -c ProSNP12_KSW_4.vcf > ProSNP12_KSW_4.vcf.gz
# bgzip -c ProSNP12_LOE_1.vcf > ProSNP12_LOE_1.vcf.gz
# bgzip -c ProSNP12_LOE_23.vcf > ProSNP12_LOE_23.vcf.gz
# bgzip -c ProSNP12_LOE_45.vcf > ProSNP12_LOE_45.vcf.gz
# bgzip -c ProSNP12_MGU_17.vcf > ProSNP12_MGU_17.vcf.gz
# bgzip -c ProSNP12_MGU_1.vcf > ProSNP12_MGU_1.vcf.gz
# bgzip -c ProSNP12_MGU_57.vcf > ProSNP12_MGU_57.vcf.gz
# bgzip -c ProSNP12_POT_1.vcf > ProSNP12_POT_1.vcf.gz
# bgzip -c ProSNP12_POT_26.vcf > ProSNP12_POT_26.vcf.gz
# bgzip -c ProSNP12_POT_44.vcf > ProSNP12_POT_44.vcf.gz
# bgzip -c ProSNP12_RIV_21.vcf > ProSNP12_RIV_21.vcf.gz
# bgzip -c ProSNP12_RIV_2.vcf > ProSNP12_RIV_2.vcf.gz
# bgzip -c ProSNP12_RIV_40.vcf > ProSNP12_RIV_40.vcf.gz
# bgzip -c ProSNP12_RND_1.vcf > ProSNP12_RND_1.vcf.gz
# bgzip -c ProSNP12_RND_20.vcf > ProSNP12_RND_20.vcf.gz
# bgzip -c ProSNP12_RND_44.vcf > ProSNP12_RND_44.vcf.gz
# bgzip -c ProSNP12_SWA_1.vcf > ProSNP12_SWA_1.vcf.gz
# bgzip -c ProSNP12_SWA_20.vcf > ProSNP12_SWA_20.vcf.gz
# bgzip -c ProSNP12_SWA_45.vcf > ProSNP12_SWA_45.vcf.gz
# bgzip -c ProSNP12_UNI_1.vcf > ProSNP12_UNI_1.vcf.gz
# bgzip -c ProSNP12_UNI_24.vcf > ProSNP12_UNI_24.vcf.gz
# bgzip -c ProSNP12_UNI_39.vcf > ProSNP12_UNI_39.vcf.gz
# bgzip -c ProSNP12_VAN_15.vcf > ProSNP12_VAN_15.vcf.gz
# bgzip -c ProSNP12_VAN_29.vcf > ProSNP12_VAN_29.vcf.gz
# bgzip -c ProSNP12_VAN_2.vcf > ProSNP12_VAN_2.vcf.gz
# bgzip -c ProSNP4_ALC_1109.vcf > ProSNP4_ALC_1109.vcf.gz
# bgzip -c ProSNP4_ALC_1132.vcf > ProSNP4_ALC_1132.vcf.gz
# bgzip -c ProSNP4_ALC_314.vcf > ProSNP4_ALC_314.vcf.gz
# bgzip -c ProSNP4_ALC_573.vcf > ProSNP4_ALC_573.vcf.gz
# bgzip -c ProSNP4_ANY_111.vcf > ProSNP4_ANY_111.vcf.gz
# bgzip -c ProSNP4_ANY_1152.vcf > ProSNP4_ANY_1152.vcf.gz
# bgzip -c ProSNP4_ANY_300.vcf > ProSNP4_ANY_300.vcf.gz
# bgzip -c ProSNP4_ANY_39.vcf > ProSNP4_ANY_39.vcf.gz
# bgzip -c ProSNP4_ANY_507.vcf > ProSNP4_ANY_507.vcf.gz
# bgzip -c ProSNP4_BAN_1060.vcf > ProSNP4_BAN_1060.vcf.gz
# bgzip -c ProSNP4_BAN_133.vcf > ProSNP4_BAN_133.vcf.gz
# bgzip -c ProSNP4_BAN_200.vcf > ProSNP4_BAN_200.vcf.gz
# bgzip -c ProSNP4_BAN_385.vcf > ProSNP4_BAN_385.vcf.gz
# bgzip -c ProSNP4_BAV_1014.vcf > ProSNP4_BAV_1014.vcf.gz
# bgzip -c ProSNP4_BAV_1022.vcf > ProSNP4_BAV_1022.vcf.gz
# bgzip -c ProSNP4_BAV_22.vcf > ProSNP4_BAV_22.vcf.gz
# bgzip -c ProSNP4_BAV_337.vcf > ProSNP4_BAV_337.vcf.gz
# bgzip -c ProSNP4_BAV_448.vcf > ProSNP4_BAV_448.vcf.gz
# bgzip -c ProSNP4_BRD_1215.vcf > ProSNP4_BRD_1215.vcf.gz
# bgzip -c ProSNP4_BRD_123.vcf > ProSNP4_BRD_123.vcf.gz
# bgzip -c ProSNP4_BRD_356.vcf > ProSNP4_BRD_356.vcf.gz
# bgzip -c ProSNP4_BRD_406.vcf > ProSNP4_BRD_406.vcf.gz
# bgzip -c ProSNP4_BRD_513.vcf > ProSNP4_BRD_513.vcf.gz
# bgzip -c ProSNP4_CDB_1100.vcf > ProSNP4_CDB_1100.vcf.gz
# bgzip -c ProSNP4_CDB_252.vcf > ProSNP4_CDB_252.vcf.gz
# bgzip -c ProSNP4_CDB_28.vcf > ProSNP4_CDB_28.vcf.gz
# bgzip -c ProSNP4_CDB_440.vcf > ProSNP4_CDB_440.vcf.gz
# bgzip -c ProSNP4_CDB_567.vcf > ProSNP4_CDB_567.vcf.gz
# bgzip -c ProSNP4_CER_1023.vcf > ProSNP4_CER_1023.vcf.gz
# bgzip -c ProSNP4_CER_291.vcf > ProSNP4_CER_291.vcf.gz
# bgzip -c ProSNP4_CER_39.vcf > ProSNP4_CER_39.vcf.gz
# bgzip -c ProSNP4_CER_445.vcf > ProSNP4_CER_445.vcf.gz
# bgzip -c ProSNP4_CER_50.vcf > ProSNP4_CER_50.vcf.gz
# bgzip -c ProSNP4_GAR_11.vcf > ProSNP4_GAR_11.vcf.gz
# bgzip -c ProSNP4_GAR_259.vcf > ProSNP4_GAR_259.vcf.gz
# bgzip -c ProSNP4_GAR_298.vcf > ProSNP4_GAR_298.vcf.gz
# bgzip -c ProSNP4_GAR_309.vcf > ProSNP4_GAR_309.vcf.gz
# bgzip -c ProSNP4_GAR_574.vcf > ProSNP4_GAR_574.vcf.gz
# bgzip -c ProSNP4_KAR_1004.vcf > ProSNP4_KAR_1004.vcf.gz
# bgzip -c ProSNP4_KAR_1159.vcf > ProSNP4_KAR_1159.vcf.gz
# bgzip -c ProSNP4_KAR_288.vcf > ProSNP4_KAR_288.vcf.gz
# bgzip -c ProSNP4_KAR_57.vcf > ProSNP4_KAR_57.vcf.gz
# bgzip -c ProSNP4_KAR_596.vcf > ProSNP4_KAR_596.vcf.gz
# bgzip -c ProSNP4_KLM_1112.vcf > ProSNP4_KLM_1112.vcf.gz
# bgzip -c ProSNP4_KLM_1209.vcf > ProSNP4_KLM_1209.vcf.gz
# bgzip -c ProSNP4_KLM_519.vcf > ProSNP4_KLM_519.vcf.gz
# bgzip -c ProSNP4_KLM_6.vcf > ProSNP4_KLM_6.vcf.gz
# bgzip -c ProSNP4_KLM_9.vcf > ProSNP4_KLM_9.vcf.gz
# bgzip -c ProSNP4_KSW_1047.vcf > ProSNP4_KSW_1047.vcf.gz
# bgzip -c ProSNP4_KSW_1064.vcf > ProSNP4_KSW_1064.vcf.gz
# bgzip -c ProSNP4_KSW_106.vcf > ProSNP4_KSW_106.vcf.gz
# bgzip -c ProSNP4_KSW_1163.vcf > ProSNP4_KSW_1163.vcf.gz
# bgzip -c ProSNP4_KSW_1206.vcf > ProSNP4_KSW_1206.vcf.gz
# bgzip -c ProSNP4_KSW_132.vcf > ProSNP4_KSW_132.vcf.gz
# bgzip -c ProSNP4_KSW_18.vcf > ProSNP4_KSW_18.vcf.gz
# bgzip -c ProSNP4_LOE_1033.vcf > ProSNP4_LOE_1033.vcf.gz
# bgzip -c ProSNP4_LOE_1141.vcf > ProSNP4_LOE_1141.vcf.gz
# bgzip -c ProSNP4_LOE_359.vcf > ProSNP4_LOE_359.vcf.gz
# bgzip -c ProSNP4_LOE_404.vcf > ProSNP4_LOE_404.vcf.gz
# bgzip -c ProSNP4_LOE_82.vcf > ProSNP4_LOE_82.vcf.gz
# bgzip -c ProSNP4_MGU_135.vcf > ProSNP4_MGU_135.vcf.gz
# bgzip -c ProSNP4_MGU_214.vcf > ProSNP4_MGU_214.vcf.gz
# bgzip -c ProSNP4_MGU_407.vcf > ProSNP4_MGU_407.vcf.gz
# bgzip -c ProSNP4_POT_1005.vcf > ProSNP4_POT_1005.vcf.gz
# bgzip -c ProSNP4_POT_1188.vcf > ProSNP4_POT_1188.vcf.gz
# bgzip -c ProSNP4_POT_126.vcf > ProSNP4_POT_126.vcf.gz
# bgzip -c ProSNP4_POT_313.vcf > ProSNP4_POT_313.vcf.gz
# bgzip -c ProSNP4_POT_531.vcf > ProSNP4_POT_531.vcf.gz
# bgzip -c ProSNP4_RIV_108.vcf > ProSNP4_RIV_108.vcf.gz
# bgzip -c ProSNP4_RIV_1103.vcf > ProSNP4_RIV_1103.vcf.gz
# bgzip -c ProSNP4_RIV_1205.vcf > ProSNP4_RIV_1205.vcf.gz
# bgzip -c ProSNP4_RIV_15.vcf > ProSNP4_RIV_15.vcf.gz
# bgzip -c ProSNP4_RIV_193.vcf > ProSNP4_RIV_193.vcf.gz
# bgzip -c ProSNP4_RND_124.vcf > ProSNP4_RND_124.vcf.gz
# bgzip -c ProSNP4_RND_147.vcf > ProSNP4_RND_147.vcf.gz
# bgzip -c ProSNP4_RND_261.vcf > ProSNP4_RND_261.vcf.gz
# bgzip -c ProSNP4_RND_318.vcf > ProSNP4_RND_318.vcf.gz
# bgzip -c ProSNP4_RND_420.vcf > ProSNP4_RND_420.vcf.gz
# bgzip -c ProSNP4_RND_576.vcf > ProSNP4_RND_576.vcf.gz
# bgzip -c ProSNP4_SWA_112.vcf > ProSNP4_SWA_112.vcf.gz
# bgzip -c ProSNP4_SWA_1183.vcf > ProSNP4_SWA_1183.vcf.gz
# bgzip -c ProSNP4_SWA_13.vcf > ProSNP4_SWA_13.vcf.gz
# bgzip -c ProSNP4_SWA_352.vcf > ProSNP4_SWA_352.vcf.gz
# bgzip -c ProSNP4_SWA_545.vcf > ProSNP4_SWA_545.vcf.gz
# bgzip -c ProSNP4_UNI_1217.vcf > ProSNP4_UNI_1217.vcf.gz
# bgzip -c ProSNP4_UNI_306.vcf > ProSNP4_UNI_306.vcf.gz
# bgzip -c ProSNP4_UNI_347.vcf > ProSNP4_UNI_347.vcf.gz
# bgzip -c ProSNP4_UNI_383.vcf > ProSNP4_UNI_383.vcf.gz
# bgzip -c ProSNP4_UNI_544.vcf > ProSNP4_UNI_544.vcf.gz
# bgzip -c ProSNP4_UNI_55.vcf > ProSNP4_UNI_55.vcf.gz
# bgzip -c ProSNP4_VAN_1158.vcf > ProSNP4_VAN_1158.vcf.gz
# bgzip -c ProSNP4_VAN_1211.vcf > ProSNP4_VAN_1211.vcf.gz
# bgzip -c ProSNP4_VAN_293.vcf > ProSNP4_VAN_293.vcf.gz
# bgzip -c ProSNP4_VAN_361.vcf > ProSNP4_VAN_361.vcf.gz
# bgzip -c ProSNP4_VAN_521.vcf > ProSNP4_VAN_521.vcf.gz
# bgzip -c ProSNP5_ALC1045.vcf > ProSNP5_ALC1045.vcf.gz
# bgzip -c ProSNP5_ALC230.vcf > ProSNP5_ALC230.vcf.gz
# bgzip -c ProSNP5_ALC250.vcf > ProSNP5_ALC250.vcf.gz
# bgzip -c ProSNP5_ALC502.vcf > ProSNP5_ALC502.vcf.gz
# bgzip -c ProSNP5_ALC62.vcf > ProSNP5_ALC62.vcf.gz
# bgzip -c ProSNP5_ANY1126.vcf > ProSNP5_ANY1126.vcf.gz
# bgzip -c ProSNP5_ANY116.vcf > ProSNP5_ANY116.vcf.gz
# bgzip -c ProSNP5_ANY117.vcf > ProSNP5_ANY117.vcf.gz
# bgzip -c ProSNP5_ANY303.vcf > ProSNP5_ANY303.vcf.gz
# bgzip -c ProSNP5_ANY322.vcf > ProSNP5_ANY322.vcf.gz
# bgzip -c ProSNP5_BAN1138.vcf > ProSNP5_BAN1138.vcf.gz
# bgzip -c ProSNP5_BAN207.vcf > ProSNP5_BAN207.vcf.gz
# bgzip -c ProSNP5_BAN229.vcf > ProSNP5_BAN229.vcf.gz
# bgzip -c ProSNP5_BAN506.vcf > ProSNP5_BAN506.vcf.gz
# bgzip -c ProSNP5_BAN92.vcf > ProSNP5_BAN92.vcf.gz
# bgzip -c ProSNP5_BAV1191.vcf > ProSNP5_BAV1191.vcf.gz
# bgzip -c ProSNP5_BAV422.vcf > ProSNP5_BAV422.vcf.gz
# bgzip -c ProSNP5_BAV527.vcf > ProSNP5_BAV527.vcf.gz
# bgzip -c ProSNP5_BAV75.vcf > ProSNP5_BAV75.vcf.gz
# bgzip -c ProSNP5_BAV7.vcf > ProSNP5_BAV7.vcf.gz
# bgzip -c ProSNP5_BRD369.vcf > ProSNP5_BRD369.vcf.gz
# bgzip -c ProSNP5_BRD381.vcf > ProSNP5_BRD381.vcf.gz
# bgzip -c ProSNP5_BRD483.vcf > ProSNP5_BRD483.vcf.gz
# bgzip -c ProSNP5_BRD484.vcf > ProSNP5_BRD484.vcf.gz
# bgzip -c ProSNP5_BRD51.vcf > ProSNP5_BRD51.vcf.gz
# bgzip -c ProSNP5_CDB100.vcf > ProSNP5_CDB100.vcf.gz
# bgzip -c ProSNP5_CDB1134.vcf > ProSNP5_CDB1134.vcf.gz
# bgzip -c ProSNP5_CDB376.vcf > ProSNP5_CDB376.vcf.gz
# bgzip -c ProSNP5_CDB512.vcf > ProSNP5_CDB512.vcf.gz
# bgzip -c ProSNP5_CDB564.vcf > ProSNP5_CDB564.vcf.gz
# bgzip -c ProSNP5_CER1117.vcf > ProSNP5_CER1117.vcf.gz
# bgzip -c ProSNP5_CER2.vcf > ProSNP5_CER2.vcf.gz
# bgzip -c ProSNP5_CER382.vcf > ProSNP5_CER382.vcf.gz
# bgzip -c ProSNP5_CER458.vcf > ProSNP5_CER458.vcf.gz
# bgzip -c ProSNP5_CER78.vcf > ProSNP5_CER78.vcf.gz
# bgzip -c ProSNP5_GAR1019.vcf > ProSNP5_GAR1019.vcf.gz
# bgzip -c ProSNP5_GAR434.vcf > ProSNP5_GAR434.vcf.gz
# bgzip -c ProSNP5_GAR439.vcf > ProSNP5_GAR439.vcf.gz
# bgzip -c ProSNP5_GAR46.vcf > ProSNP5_GAR46.vcf.gz
# bgzip -c ProSNP5_GAR547.vcf > ProSNP5_GAR547.vcf.gz
# bgzip -c ProSNP5_KAR1044.vcf > ProSNP5_KAR1044.vcf.gz
# bgzip -c ProSNP5_KAR1063.vcf > ProSNP5_KAR1063.vcf.gz
# bgzip -c ProSNP5_KAR122.vcf > ProSNP5_KAR122.vcf.gz
# bgzip -c ProSNP5_KAR178.vcf > ProSNP5_KAR178.vcf.gz
# bgzip -c ProSNP5_KAR346.vcf > ProSNP5_KAR346.vcf.gz
# bgzip -c ProSNP5_KLM1025.vcf > ProSNP5_KLM1025.vcf.gz
# bgzip -c ProSNP5_KLM1203.vcf > ProSNP5_KLM1203.vcf.gz
# bgzip -c ProSNP5_KLM534.vcf > ProSNP5_KLM534.vcf.gz
# bgzip -c ProSNP5_KLM56.vcf > ProSNP5_KLM56.vcf.gz
# bgzip -c ProSNP5_KLM97.vcf > ProSNP5_KLM97.vcf.gz
# bgzip -c ProSNP5_KSW1145.vcf > ProSNP5_KSW1145.vcf.gz
# bgzip -c ProSNP5_KSW1206.vcf > ProSNP5_KSW1206.vcf.gz
# bgzip -c ProSNP5_KSW398.vcf > ProSNP5_KSW398.vcf.gz
# bgzip -c ProSNP5_KSW505.vcf > ProSNP5_KSW505.vcf.gz
# bgzip -c ProSNP5_KSW597.vcf > ProSNP5_KSW597.vcf.gz
# bgzip -c ProSNP5_KSW95.vcf > ProSNP5_KSW95.vcf.gz
# bgzip -c ProSNP5_LOE1018.vcf > ProSNP5_LOE1018.vcf.gz
# bgzip -c ProSNP5_LOE125.vcf > ProSNP5_LOE125.vcf.gz
# bgzip -c ProSNP5_LOE388.vcf > ProSNP5_LOE388.vcf.gz
# bgzip -c ProSNP5_LOE585.vcf > ProSNP5_LOE585.vcf.gz
# bgzip -c ProSNP5_LOE79.vcf > ProSNP5_LOE79.vcf.gz
# bgzip -c ProSNP5_MGU1006.vcf > ProSNP5_MGU1006.vcf.gz
# bgzip -c ProSNP5_MGU1056.vcf > ProSNP5_MGU1056.vcf.gz
# bgzip -c ProSNP5_MGU16.vcf > ProSNP5_MGU16.vcf.gz
# bgzip -c ProSNP5_MGU490.vcf > ProSNP5_MGU490.vcf.gz
# bgzip -c ProSNP5_MGU498.vcf > ProSNP5_MGU498.vcf.gz
# bgzip -c ProSNP5_POT1176.vcf > ProSNP5_POT1176.vcf.gz
# bgzip -c ProSNP5_POT255.vcf > ProSNP5_POT255.vcf.gz
# bgzip -c ProSNP5_POT282.vcf > ProSNP5_POT282.vcf.gz
# bgzip -c ProSNP5_POT525.vcf > ProSNP5_POT525.vcf.gz
# bgzip -c ProSNP5_POT54.vcf > ProSNP5_POT54.vcf.gz
# bgzip -c ProSNP5_RIV151.vcf > ProSNP5_RIV151.vcf.gz
# bgzip -c ProSNP5_RIV191.vcf > ProSNP5_RIV191.vcf.gz
# bgzip -c ProSNP5_RIV195.vcf > ProSNP5_RIV195.vcf.gz
# bgzip -c ProSNP5_RIV44.vcf > ProSNP5_RIV44.vcf.gz
# bgzip -c ProSNP5_RIV560.vcf > ProSNP5_RIV560.vcf.gz
# bgzip -c ProSNP5_RND1010.vcf > ProSNP5_RND1010.vcf.gz
# bgzip -c ProSNP5_RND1210.vcf > ProSNP5_RND1210.vcf.gz
# bgzip -c ProSNP5_RND139.vcf > ProSNP5_RND139.vcf.gz
# bgzip -c ProSNP5_RND290.vcf > ProSNP5_RND290.vcf.gz
# bgzip -c ProSNP5_RND579.vcf > ProSNP5_RND579.vcf.gz
# bgzip -c ProSNP5_SWA107.vcf > ProSNP5_SWA107.vcf.gz
# bgzip -c ProSNP5_SWA157.vcf > ProSNP5_SWA157.vcf.gz
# bgzip -c ProSNP5_SWA189.vcf > ProSNP5_SWA189.vcf.gz
# bgzip -c ProSNP5_SWA577.vcf > ProSNP5_SWA577.vcf.gz
# bgzip -c ProSNP5_SWA80.vcf > ProSNP5_SWA80.vcf.gz
# bgzip -c ProSNP5_UNI386.vcf > ProSNP5_UNI386.vcf.gz
# bgzip -c ProSNP5_UNI3.vcf > ProSNP5_UNI3.vcf.gz
# bgzip -c ProSNP5_UNI403.vcf > ProSNP5_UNI403.vcf.gz
# bgzip -c ProSNP5_VAN163.vcf > ProSNP5_VAN163.vcf.gz
# bgzip -c ProSNP5_VAN206.vcf > ProSNP5_VAN206.vcf.gz
# bgzip -c ProSNP5_VAN208.vcf > ProSNP5_VAN208.vcf.gz
# bgzip -c ProSNP5_VAN260.vcf > ProSNP5_VAN260.vcf.gz
# bgzip -c ProSNP5_VAN27.vcf > ProSNP5_VAN27.vcf.gz
# bgzip -c ProSNP6_ANY_1020.vcf > ProSNP6_ANY_1020.vcf.gz
# bgzip -c ProSNP6_ANY_1079.vcf > ProSNP6_ANY_1079.vcf.gz
# bgzip -c ProSNP6_ANY_1122.vcf > ProSNP6_ANY_1122.vcf.gz
# bgzip -c ProSNP6_ANY_12.vcf > ProSNP6_ANY_12.vcf.gz
# bgzip -c ProSNP6_ANY_301.vcf > ProSNP6_ANY_301.vcf.gz
# bgzip -c ProSNP6_ANY_518.vcf > ProSNP6_ANY_518.vcf.gz
# bgzip -c ProSNP6_ANY_85.vcf > ProSNP6_ANY_85.vcf.gz
# bgzip -c ProSNP6_BAV_1077.vcf > ProSNP6_BAV_1077.vcf.gz
# bgzip -c ProSNP6_BAV_1214.vcf > ProSNP6_BAV_1214.vcf.gz
# bgzip -c ProSNP6_BAV_339.vcf > ProSNP6_BAV_339.vcf.gz
# bgzip -c ProSNP6_BAV_462.vcf > ProSNP6_BAV_462.vcf.gz
# bgzip -c ProSNP6_BAV_556.vcf > ProSNP6_BAV_556.vcf.gz
# bgzip -c ProSNP6_BAV_63.vcf > ProSNP6_BAV_63.vcf.gz
# bgzip -c ProSNP6_BRD_1009.vcf > ProSNP6_BRD_1009.vcf.gz
# bgzip -c ProSNP6_BRD_342.vcf > ProSNP6_BRD_342.vcf.gz
# bgzip -c ProSNP6_BRD_442.vcf > ProSNP6_BRD_442.vcf.gz
# bgzip -c ProSNP6_BRD_501.vcf > ProSNP6_BRD_501.vcf.gz
# bgzip -c ProSNP6_BRD_533.vcf > ProSNP6_BRD_533.vcf.gz
# bgzip -c ProSNP6_BRD_543.vcf > ProSNP6_BRD_543.vcf.gz
# bgzip -c ProSNP6_CDB_228.vcf > ProSNP6_CDB_228.vcf.gz
# bgzip -c ProSNP6_CDB_571.vcf > ProSNP6_CDB_571.vcf.gz
# bgzip -c ProSNP6_CER_1038.vcf > ProSNP6_CER_1038.vcf.gz
# bgzip -c ProSNP6_CER_1142.vcf > ProSNP6_CER_1142.vcf.gz
# bgzip -c ProSNP6_CER_14.vcf > ProSNP6_CER_14.vcf.gz
# bgzip -c ProSNP6_CER_199.vcf > ProSNP6_CER_199.vcf.gz
# bgzip -c ProSNP6_CER_338.vcf > ProSNP6_CER_338.vcf.gz
# bgzip -c ProSNP6_CER_589.vcf > ProSNP6_CER_589.vcf.gz
# bgzip -c ProSNP6_GAR_1041.vcf > ProSNP6_GAR_1041.vcf.gz
# bgzip -c ProSNP6_GAR_1200.vcf > ProSNP6_GAR_1200.vcf.gz
# bgzip -c ProSNP6_GAR_174.vcf > ProSNP6_GAR_174.vcf.gz
# bgzip -c ProSNP6_GAR_299.vcf > ProSNP6_GAR_299.vcf.gz
# bgzip -c ProSNP6_GAR_437.vcf > ProSNP6_GAR_437.vcf.gz
# bgzip -c ProSNP6_GAR_557.vcf > ProSNP6_GAR_557.vcf.gz
# bgzip -c ProSNP6_GAR_90.vcf > ProSNP6_GAR_90.vcf.gz
# bgzip -c ProSNP6_KAR_1187.vcf > ProSNP6_KAR_1187.vcf.gz
# bgzip -c ProSNP6_KAR_184.vcf > ProSNP6_KAR_184.vcf.gz
# bgzip -c ProSNP6_KAR_486.vcf > ProSNP6_KAR_486.vcf.gz
# bgzip -c ProSNP6_KAR_49.vcf > ProSNP6_KAR_49.vcf.gz
# bgzip -c ProSNP6_KAR_68.vcf > ProSNP6_KAR_68.vcf.gz
# bgzip -c ProSNP6_KAR_84.vcf > ProSNP6_KAR_84.vcf.gz
# bgzip -c ProSNP6_KLM_1052.vcf > ProSNP6_KLM_1052.vcf.gz
# bgzip -c ProSNP6_KLM_1129.vcf > ProSNP6_KLM_1129.vcf.gz
# bgzip -c ProSNP6_KLM_155.vcf > ProSNP6_KLM_155.vcf.gz
# bgzip -c ProSNP6_KLM_343.vcf > ProSNP6_KLM_343.vcf.gz
# bgzip -c ProSNP6_KLM_475.vcf > ProSNP6_KLM_475.vcf.gz
# bgzip -c ProSNP6_KLM_566.vcf > ProSNP6_KLM_566.vcf.gz
# bgzip -c ProSNP6_KLM_582.vcf > ProSNP6_KLM_582.vcf.gz
# bgzip -c ProSNP6_KSW_1043.vcf > ProSNP6_KSW_1043.vcf.gz
# bgzip -c ProSNP6_KSW_104.vcf > ProSNP6_KSW_104.vcf.gz
# bgzip -c ProSNP6_KSW_1076.vcf > ProSNP6_KSW_1076.vcf.gz
# bgzip -c ProSNP6_KSW_10.vcf > ProSNP6_KSW_10.vcf.gz
# bgzip -c ProSNP6_KSW_1125.vcf > ProSNP6_KSW_1125.vcf.gz
# bgzip -c ProSNP6_KSW_47.vcf > ProSNP6_KSW_47.vcf.gz
# bgzip -c ProSNP6_KSW_516.vcf > ProSNP6_KSW_516.vcf.gz
# bgzip -c ProSNP6_LOE_1035.vcf > ProSNP6_LOE_1035.vcf.gz
# bgzip -c ProSNP6_LOE_1150.vcf > ProSNP6_LOE_1150.vcf.gz
# bgzip -c ProSNP6_LOE_211.vcf > ProSNP6_LOE_211.vcf.gz
# bgzip -c ProSNP6_LOE_497.vcf > ProSNP6_LOE_497.vcf.gz
# bgzip -c ProSNP6_LOE_548.vcf > ProSNP6_LOE_548.vcf.gz
# bgzip -c ProSNP6_POT_1119.vcf > ProSNP6_POT_1119.vcf.gz
# bgzip -c ProSNP6_POT_128.vcf > ProSNP6_POT_128.vcf.gz
# bgzip -c ProSNP6_POT_183.vcf > ProSNP6_POT_183.vcf.gz
# bgzip -c ProSNP6_POT_380.vcf > ProSNP6_POT_380.vcf.gz
# bgzip -c ProSNP6_POT_463.vcf > ProSNP6_POT_463.vcf.gz
# bgzip -c ProSNP6_POT_594.vcf > ProSNP6_POT_594.vcf.gz
# bgzip -c ProSNP6_RIV_1148.vcf > ProSNP6_RIV_1148.vcf.gz
# bgzip -c ProSNP6_RIV_180.vcf > ProSNP6_RIV_180.vcf.gz
# bgzip -c ProSNP6_RIV_351.vcf > ProSNP6_RIV_351.vcf.gz
# bgzip -c ProSNP6_RIV_461.vcf > ProSNP6_RIV_461.vcf.gz
# bgzip -c ProSNP6_RIV_530.vcf > ProSNP6_RIV_530.vcf.gz
# bgzip -c ProSNP6_RIV_88.vcf > ProSNP6_RIV_88.vcf.gz
# bgzip -c ProSNP6_RND_1116.vcf > ProSNP6_RND_1116.vcf.gz
# bgzip -c ProSNP6_RND_1220.vcf > ProSNP6_RND_1220.vcf.gz
# bgzip -c ProSNP6_RND_164.vcf > ProSNP6_RND_164.vcf.gz
# bgzip -c ProSNP6_RND_272.vcf > ProSNP6_RND_272.vcf.gz
# bgzip -c ProSNP6_RND_523.vcf > ProSNP6_RND_523.vcf.gz
# bgzip -c ProSNP6_RND_65.vcf > ProSNP6_RND_65.vcf.gz
# bgzip -c ProSNP6_SWA_140.vcf > ProSNP6_SWA_140.vcf.gz
# bgzip -c ProSNP6_SWA_19.vcf > ProSNP6_SWA_19.vcf.gz
# bgzip -c ProSNP6_SWA_304.vcf > ProSNP6_SWA_304.vcf.gz
# bgzip -c ProSNP6_SWA_317.vcf > ProSNP6_SWA_317.vcf.gz
# bgzip -c ProSNP6_SWA_341.vcf > ProSNP6_SWA_341.vcf.gz
# bgzip -c ProSNP6_SWA_515.vcf > ProSNP6_SWA_515.vcf.gz
# bgzip -c ProSNP6_SWA_96.vcf > ProSNP6_SWA_96.vcf.gz
# bgzip -c ProSNP6_UNI_1087.vcf > ProSNP6_UNI_1087.vcf.gz
# bgzip -c ProSNP6_UNI_1175.vcf > ProSNP6_UNI_1175.vcf.gz
# bgzip -c ProSNP6_UNI_1204.vcf > ProSNP6_UNI_1204.vcf.gz
# bgzip -c ProSNP6_UNI_470.vcf > ProSNP6_UNI_470.vcf.gz
# bgzip -c ProSNP6_UNI_479.vcf > ProSNP6_UNI_479.vcf.gz
# bgzip -c ProSNP6_UNI_546.vcf > ProSNP6_UNI_546.vcf.gz
# bgzip -c ProSNP6_VAN_1015.vcf > ProSNP6_VAN_1015.vcf.gz
# bgzip -c ProSNP6_VAN_1179.vcf > ProSNP6_VAN_1179.vcf.gz
# bgzip -c ProSNP6_VAN_269.vcf > ProSNP6_VAN_269.vcf.gz
# bgzip -c ProSNP6_VAN_396.vcf > ProSNP6_VAN_396.vcf.gz


# tabix -f -p vcf ProSNP12_ALC_12.vcf.gz
# tabix -f -p vcf ProSNP12_ALC_34.vcf.gz
# tabix -f -p vcf ProSNP12_ALC_44.vcf.gz
# tabix -f -p vcf ProSNP12_ANY_19.vcf.gz
# tabix -f -p vcf ProSNP12_ANY_1.vcf.gz
# tabix -f -p vcf ProSNP12_ANY_30.vcf.gz
# tabix -f -p vcf ProSNP12_BAN_21.vcf.gz
# tabix -f -p vcf ProSNP12_BAN_35.vcf.gz
# tabix -f -p vcf ProSNP12_BAN_3.vcf.gz
# tabix -f -p vcf ProSNP12_BAV_20.vcf.gz
# tabix -f -p vcf ProSNP12_BAV_32.vcf.gz
# tabix -f -p vcf ProSNP12_BAV_44.vcf.gz
# tabix -f -p vcf ProSNP12_BRD_1.vcf.gz
# tabix -f -p vcf ProSNP12_BRD_22.vcf.gz
# tabix -f -p vcf ProSNP12_BRD_41.vcf.gz
# tabix -f -p vcf ProSNP12_CDB_26.vcf.gz
# tabix -f -p vcf ProSNP12_CDB_2.vcf.gz
# tabix -f -p vcf ProSNP12_CDB_40.vcf.gz
# tabix -f -p vcf ProSNP12_CER_1.vcf.gz
# tabix -f -p vcf ProSNP12_CER_22.vcf.gz
# tabix -f -p vcf ProSNP12_CER_42.vcf.gz
# tabix -f -p vcf ProSNP12_GAR_1.vcf.gz
# tabix -f -p vcf ProSNP12_GAR_20.vcf.gz
# tabix -f -p vcf ProSNP12_GAR_41.vcf.gz
# tabix -f -p vcf ProSNP12_KAR_1.vcf.gz
# tabix -f -p vcf ProSNP12_KAR_25.vcf.gz
# tabix -f -p vcf ProSNP12_KAR_42.vcf.gz
# tabix -f -p vcf ProSNP12_KLM_20.vcf.gz
# tabix -f -p vcf ProSNP12_KLM_45.vcf.gz
# tabix -f -p vcf ProSNP12_KLM_5.vcf.gz
# tabix -f -p vcf ProSNP12_KSW_20.vcf.gz
# tabix -f -p vcf ProSNP12_KSW_45.vcf.gz
# tabix -f -p vcf ProSNP12_KSW_4.vcf.gz
# tabix -f -p vcf ProSNP12_LOE_1.vcf.gz
# tabix -f -p vcf ProSNP12_LOE_23.vcf.gz
# tabix -f -p vcf ProSNP12_LOE_45.vcf.gz
# tabix -f -p vcf ProSNP12_MGU_17.vcf.gz
# tabix -f -p vcf ProSNP12_MGU_1.vcf.gz
# tabix -f -p vcf ProSNP12_MGU_57.vcf.gz
# tabix -f -p vcf ProSNP12_POT_1.vcf.gz
# tabix -f -p vcf ProSNP12_POT_26.vcf.gz
# tabix -f -p vcf ProSNP12_POT_44.vcf.gz
# tabix -f -p vcf ProSNP12_RIV_21.vcf.gz
# tabix -f -p vcf ProSNP12_RIV_2.vcf.gz
# tabix -f -p vcf ProSNP12_RIV_40.vcf.gz
# tabix -f -p vcf ProSNP12_RND_1.vcf.gz
# tabix -f -p vcf ProSNP12_RND_20.vcf.gz
# tabix -f -p vcf ProSNP12_RND_44.vcf.gz
# tabix -f -p vcf ProSNP12_SWA_1.vcf.gz
# tabix -f -p vcf ProSNP12_SWA_20.vcf.gz
# tabix -f -p vcf ProSNP12_SWA_45.vcf.gz
# tabix -f -p vcf ProSNP12_UNI_1.vcf.gz
# tabix -f -p vcf ProSNP12_UNI_24.vcf.gz
# tabix -f -p vcf ProSNP12_UNI_39.vcf.gz
# tabix -f -p vcf ProSNP12_VAN_15.vcf.gz
# tabix -f -p vcf ProSNP12_VAN_29.vcf.gz
# tabix -f -p vcf ProSNP12_VAN_2.vcf.gz
# tabix -f -p vcf ProSNP4_ALC_1109.vcf.gz
# tabix -f -p vcf ProSNP4_ALC_1132.vcf.gz
# tabix -f -p vcf ProSNP4_ALC_314.vcf.gz
# tabix -f -p vcf ProSNP4_ALC_573.vcf.gz
# tabix -f -p vcf ProSNP4_ANY_111.vcf.gz
# tabix -f -p vcf ProSNP4_ANY_1152.vcf.gz
# tabix -f -p vcf ProSNP4_ANY_300.vcf.gz
# tabix -f -p vcf ProSNP4_ANY_39.vcf.gz
# tabix -f -p vcf ProSNP4_ANY_507.vcf.gz
# tabix -f -p vcf ProSNP4_BAN_1060.vcf.gz
# tabix -f -p vcf ProSNP4_BAN_133.vcf.gz
# tabix -f -p vcf ProSNP4_BAN_200.vcf.gz
# tabix -f -p vcf ProSNP4_BAN_385.vcf.gz
# tabix -f -p vcf ProSNP4_BAV_1014.vcf.gz
# tabix -f -p vcf ProSNP4_BAV_1022.vcf.gz
# tabix -f -p vcf ProSNP4_BAV_22.vcf.gz
# tabix -f -p vcf ProSNP4_BAV_337.vcf.gz
# tabix -f -p vcf ProSNP4_BAV_448.vcf.gz
# tabix -f -p vcf ProSNP4_BRD_1215.vcf.gz
# tabix -f -p vcf ProSNP4_BRD_123.vcf.gz
# tabix -f -p vcf ProSNP4_BRD_356.vcf.gz
# tabix -f -p vcf ProSNP4_BRD_406.vcf.gz
# tabix -f -p vcf ProSNP4_BRD_513.vcf.gz
# tabix -f -p vcf ProSNP4_CDB_1100.vcf.gz
# tabix -f -p vcf ProSNP4_CDB_252.vcf.gz
# tabix -f -p vcf ProSNP4_CDB_28.vcf.gz
# tabix -f -p vcf ProSNP4_CDB_440.vcf.gz
# tabix -f -p vcf ProSNP4_CDB_567.vcf.gz
# tabix -f -p vcf ProSNP4_CER_1023.vcf.gz
# tabix -f -p vcf ProSNP4_CER_291.vcf.gz
# tabix -f -p vcf ProSNP4_CER_39.vcf.gz
# tabix -f -p vcf ProSNP4_CER_445.vcf.gz
# tabix -f -p vcf ProSNP4_CER_50.vcf.gz
# tabix -f -p vcf ProSNP4_GAR_11.vcf.gz
# tabix -f -p vcf ProSNP4_GAR_259.vcf.gz
# tabix -f -p vcf ProSNP4_GAR_298.vcf.gz
# tabix -f -p vcf ProSNP4_GAR_309.vcf.gz
# tabix -f -p vcf ProSNP4_GAR_574.vcf.gz
# tabix -f -p vcf ProSNP4_KAR_1004.vcf.gz
# tabix -f -p vcf ProSNP4_KAR_1159.vcf.gz
# tabix -f -p vcf ProSNP4_KAR_288.vcf.gz
# tabix -f -p vcf ProSNP4_KAR_57.vcf.gz
# tabix -f -p vcf ProSNP4_KAR_596.vcf.gz
# tabix -f -p vcf ProSNP4_KLM_1112.vcf.gz
# tabix -f -p vcf ProSNP4_KLM_1209.vcf.gz
# tabix -f -p vcf ProSNP4_KLM_519.vcf.gz
# tabix -f -p vcf ProSNP4_KLM_6.vcf.gz
# tabix -f -p vcf ProSNP4_KLM_9.vcf.gz
# tabix -f -p vcf ProSNP4_KSW_1047.vcf.gz
# tabix -f -p vcf ProSNP4_KSW_1064.vcf.gz
# tabix -f -p vcf ProSNP4_KSW_106.vcf.gz
# tabix -f -p vcf ProSNP4_KSW_1163.vcf.gz
# tabix -f -p vcf ProSNP4_KSW_1206.vcf.gz
# tabix -f -p vcf ProSNP4_KSW_132.vcf.gz
# tabix -f -p vcf ProSNP4_KSW_18.vcf.gz
# tabix -f -p vcf ProSNP4_LOE_1033.vcf.gz
# tabix -f -p vcf ProSNP4_LOE_1141.vcf.gz
# tabix -f -p vcf ProSNP4_LOE_359.vcf.gz
# tabix -f -p vcf ProSNP4_LOE_404.vcf.gz
# tabix -f -p vcf ProSNP4_LOE_82.vcf.gz
# tabix -f -p vcf ProSNP4_MGU_135.vcf.gz
# tabix -f -p vcf ProSNP4_MGU_214.vcf.gz
# tabix -f -p vcf ProSNP4_MGU_407.vcf.gz
# tabix -f -p vcf ProSNP4_POT_1005.vcf.gz
# tabix -f -p vcf ProSNP4_POT_1188.vcf.gz
# tabix -f -p vcf ProSNP4_POT_126.vcf.gz
# tabix -f -p vcf ProSNP4_POT_313.vcf.gz
# tabix -f -p vcf ProSNP4_POT_531.vcf.gz
# tabix -f -p vcf ProSNP4_RIV_108.vcf.gz
# tabix -f -p vcf ProSNP4_RIV_1103.vcf.gz
# tabix -f -p vcf ProSNP4_RIV_1205.vcf.gz
# tabix -f -p vcf ProSNP4_RIV_15.vcf.gz
# tabix -f -p vcf ProSNP4_RIV_193.vcf.gz
# tabix -f -p vcf ProSNP4_RND_124.vcf.gz
# tabix -f -p vcf ProSNP4_RND_147.vcf.gz
# tabix -f -p vcf ProSNP4_RND_261.vcf.gz
# tabix -f -p vcf ProSNP4_RND_318.vcf.gz
# tabix -f -p vcf ProSNP4_RND_420.vcf.gz
# tabix -f -p vcf ProSNP4_RND_576.vcf.gz
# tabix -f -p vcf ProSNP4_SWA_112.vcf.gz
# tabix -f -p vcf ProSNP4_SWA_1183.vcf.gz
# tabix -f -p vcf ProSNP4_SWA_13.vcf.gz
# tabix -f -p vcf ProSNP4_SWA_352.vcf.gz
# tabix -f -p vcf ProSNP4_SWA_545.vcf.gz
# tabix -f -p vcf ProSNP4_UNI_1217.vcf.gz
# tabix -f -p vcf ProSNP4_UNI_306.vcf.gz
# tabix -f -p vcf ProSNP4_UNI_347.vcf.gz
# tabix -f -p vcf ProSNP4_UNI_383.vcf.gz
# tabix -f -p vcf ProSNP4_UNI_544.vcf.gz
# tabix -f -p vcf ProSNP4_UNI_55.vcf.gz
# tabix -f -p vcf ProSNP4_VAN_1158.vcf.gz
# tabix -f -p vcf ProSNP4_VAN_1211.vcf.gz
# tabix -f -p vcf ProSNP4_VAN_293.vcf.gz
# tabix -f -p vcf ProSNP4_VAN_361.vcf.gz
# tabix -f -p vcf ProSNP4_VAN_521.vcf.gz
# tabix -f -p vcf ProSNP5_ALC1045.vcf.gz
# tabix -f -p vcf ProSNP5_ALC230.vcf.gz
# tabix -f -p vcf ProSNP5_ALC250.vcf.gz
# tabix -f -p vcf ProSNP5_ALC502.vcf.gz
# tabix -f -p vcf ProSNP5_ALC62.vcf.gz
# tabix -f -p vcf ProSNP5_ANY1126.vcf.gz
# tabix -f -p vcf ProSNP5_ANY116.vcf.gz
# tabix -f -p vcf ProSNP5_ANY117.vcf.gz
# tabix -f -p vcf ProSNP5_ANY303.vcf.gz
# tabix -f -p vcf ProSNP5_ANY322.vcf.gz
# tabix -f -p vcf ProSNP5_BAN1138.vcf.gz
# tabix -f -p vcf ProSNP5_BAN207.vcf.gz
# tabix -f -p vcf ProSNP5_BAN229.vcf.gz
# tabix -f -p vcf ProSNP5_BAN506.vcf.gz
# tabix -f -p vcf ProSNP5_BAN92.vcf.gz
# tabix -f -p vcf ProSNP5_BAV1191.vcf.gz
# tabix -f -p vcf ProSNP5_BAV422.vcf.gz
# tabix -f -p vcf ProSNP5_BAV527.vcf.gz
# tabix -f -p vcf ProSNP5_BAV75.vcf.gz
# tabix -f -p vcf ProSNP5_BAV7.vcf.gz
# tabix -f -p vcf ProSNP5_BRD369.vcf.gz
# tabix -f -p vcf ProSNP5_BRD381.vcf.gz
# tabix -f -p vcf ProSNP5_BRD483.vcf.gz
# tabix -f -p vcf ProSNP5_BRD484.vcf.gz
# tabix -f -p vcf ProSNP5_BRD51.vcf.gz
# tabix -f -p vcf ProSNP5_CDB100.vcf.gz
# tabix -f -p vcf ProSNP5_CDB1134.vcf.gz
# tabix -f -p vcf ProSNP5_CDB376.vcf.gz
# tabix -f -p vcf ProSNP5_CDB512.vcf.gz
# tabix -f -p vcf ProSNP5_CDB564.vcf.gz
# tabix -f -p vcf ProSNP5_CER1117.vcf.gz
# tabix -f -p vcf ProSNP5_CER2.vcf.gz
# tabix -f -p vcf ProSNP5_CER382.vcf.gz
# tabix -f -p vcf ProSNP5_CER458.vcf.gz
# tabix -f -p vcf ProSNP5_CER78.vcf.gz
# tabix -f -p vcf ProSNP5_GAR1019.vcf.gz
# tabix -f -p vcf ProSNP5_GAR434.vcf.gz
# tabix -f -p vcf ProSNP5_GAR439.vcf.gz
# tabix -f -p vcf ProSNP5_GAR46.vcf.gz
# tabix -f -p vcf ProSNP5_GAR547.vcf.gz
# tabix -f -p vcf ProSNP5_KAR1044.vcf.gz
# tabix -f -p vcf ProSNP5_KAR1063.vcf.gz
# tabix -f -p vcf ProSNP5_KAR122.vcf.gz
# tabix -f -p vcf ProSNP5_KAR178.vcf.gz
# tabix -f -p vcf ProSNP5_KAR346.vcf.gz
# tabix -f -p vcf ProSNP5_KLM1025.vcf.gz
# tabix -f -p vcf ProSNP5_KLM1203.vcf.gz
# tabix -f -p vcf ProSNP5_KLM534.vcf.gz
# tabix -f -p vcf ProSNP5_KLM56.vcf.gz
# tabix -f -p vcf ProSNP5_KLM97.vcf.gz
# tabix -f -p vcf ProSNP5_KSW1145.vcf.gz
# tabix -f -p vcf ProSNP5_KSW1206.vcf.gz
# tabix -f -p vcf ProSNP5_KSW398.vcf.gz
# tabix -f -p vcf ProSNP5_KSW505.vcf.gz
# tabix -f -p vcf ProSNP5_KSW597.vcf.gz
# tabix -f -p vcf ProSNP5_KSW95.vcf.gz
# tabix -f -p vcf ProSNP5_LOE1018.vcf.gz
# tabix -f -p vcf ProSNP5_LOE125.vcf.gz
# tabix -f -p vcf ProSNP5_LOE388.vcf.gz
# tabix -f -p vcf ProSNP5_LOE585.vcf.gz
# tabix -f -p vcf ProSNP5_LOE79.vcf.gz
# tabix -f -p vcf ProSNP5_MGU1006.vcf.gz
# tabix -f -p vcf ProSNP5_MGU1056.vcf.gz
# tabix -f -p vcf ProSNP5_MGU16.vcf.gz
# tabix -f -p vcf ProSNP5_MGU490.vcf.gz
# tabix -f -p vcf ProSNP5_MGU498.vcf.gz
# tabix -f -p vcf ProSNP5_POT1176.vcf.gz
# tabix -f -p vcf ProSNP5_POT255.vcf.gz
# tabix -f -p vcf ProSNP5_POT282.vcf.gz
# tabix -f -p vcf ProSNP5_POT525.vcf.gz
# tabix -f -p vcf ProSNP5_POT54.vcf.gz
# tabix -f -p vcf ProSNP5_RIV151.vcf.gz
# tabix -f -p vcf ProSNP5_RIV191.vcf.gz
# tabix -f -p vcf ProSNP5_RIV195.vcf.gz
# tabix -f -p vcf ProSNP5_RIV44.vcf.gz
# tabix -f -p vcf ProSNP5_RIV560.vcf.gz
# tabix -f -p vcf ProSNP5_RND1010.vcf.gz
# tabix -f -p vcf ProSNP5_RND1210.vcf.gz
# tabix -f -p vcf ProSNP5_RND139.vcf.gz
# tabix -f -p vcf ProSNP5_RND290.vcf.gz
# tabix -f -p vcf ProSNP5_RND579.vcf.gz
# tabix -f -p vcf ProSNP5_SWA107.vcf.gz
# tabix -f -p vcf ProSNP5_SWA157.vcf.gz
# tabix -f -p vcf ProSNP5_SWA189.vcf.gz
# tabix -f -p vcf ProSNP5_SWA577.vcf.gz
# tabix -f -p vcf ProSNP5_SWA80.vcf.gz
# tabix -f -p vcf ProSNP5_UNI386.vcf.gz
# tabix -f -p vcf ProSNP5_UNI3.vcf.gz
# tabix -f -p vcf ProSNP5_UNI403.vcf.gz
# tabix -f -p vcf ProSNP5_VAN163.vcf.gz
# tabix -f -p vcf ProSNP5_VAN206.vcf.gz
# tabix -f -p vcf ProSNP5_VAN208.vcf.gz
# tabix -f -p vcf ProSNP5_VAN260.vcf.gz
# tabix -f -p vcf ProSNP5_VAN27.vcf.gz
# tabix -f -p vcf ProSNP6_ANY_1020.vcf.gz
# tabix -f -p vcf ProSNP6_ANY_1079.vcf.gz
# tabix -f -p vcf ProSNP6_ANY_1122.vcf.gz
# tabix -f -p vcf ProSNP6_ANY_12.vcf.gz
# tabix -f -p vcf ProSNP6_ANY_301.vcf.gz
# tabix -f -p vcf ProSNP6_ANY_518.vcf.gz
# tabix -f -p vcf ProSNP6_ANY_85.vcf.gz
# tabix -f -p vcf ProSNP6_BAV_1077.vcf.gz
# tabix -f -p vcf ProSNP6_BAV_1214.vcf.gz
# tabix -f -p vcf ProSNP6_BAV_339.vcf.gz
# tabix -f -p vcf ProSNP6_BAV_462.vcf.gz
# tabix -f -p vcf ProSNP6_BAV_556.vcf.gz
# tabix -f -p vcf ProSNP6_BAV_63.vcf.gz
# tabix -f -p vcf ProSNP6_BRD_1009.vcf.gz
# tabix -f -p vcf ProSNP6_BRD_342.vcf.gz
# tabix -f -p vcf ProSNP6_BRD_442.vcf.gz
# tabix -f -p vcf ProSNP6_BRD_501.vcf.gz
# tabix -f -p vcf ProSNP6_BRD_533.vcf.gz
# tabix -f -p vcf ProSNP6_BRD_543.vcf.gz
# tabix -f -p vcf ProSNP6_CDB_228.vcf.gz
# tabix -f -p vcf ProSNP6_CDB_571.vcf.gz
# tabix -f -p vcf ProSNP6_CER_1038.vcf.gz
# tabix -f -p vcf ProSNP6_CER_1142.vcf.gz
# tabix -f -p vcf ProSNP6_CER_14.vcf.gz
# tabix -f -p vcf ProSNP6_CER_199.vcf.gz
# tabix -f -p vcf ProSNP6_CER_338.vcf.gz
# tabix -f -p vcf ProSNP6_CER_589.vcf.gz
# tabix -f -p vcf ProSNP6_GAR_1041.vcf.gz
# tabix -f -p vcf ProSNP6_GAR_1200.vcf.gz
# tabix -f -p vcf ProSNP6_GAR_174.vcf.gz
# tabix -f -p vcf ProSNP6_GAR_299.vcf.gz
# tabix -f -p vcf ProSNP6_GAR_437.vcf.gz
# tabix -f -p vcf ProSNP6_GAR_557.vcf.gz
# tabix -f -p vcf ProSNP6_GAR_90.vcf.gz
# tabix -f -p vcf ProSNP6_KAR_1187.vcf.gz
# tabix -f -p vcf ProSNP6_KAR_184.vcf.gz
# tabix -f -p vcf ProSNP6_KAR_486.vcf.gz
# tabix -f -p vcf ProSNP6_KAR_49.vcf.gz
# tabix -f -p vcf ProSNP6_KAR_68.vcf.gz
# tabix -f -p vcf ProSNP6_KAR_84.vcf.gz
# tabix -f -p vcf ProSNP6_KLM_1052.vcf.gz
# tabix -f -p vcf ProSNP6_KLM_1129.vcf.gz
# tabix -f -p vcf ProSNP6_KLM_155.vcf.gz
# tabix -f -p vcf ProSNP6_KLM_343.vcf.gz
# tabix -f -p vcf ProSNP6_KLM_475.vcf.gz
# tabix -f -p vcf ProSNP6_KLM_566.vcf.gz
# tabix -f -p vcf ProSNP6_KLM_582.vcf.gz
# tabix -f -p vcf ProSNP6_KSW_1043.vcf.gz
# tabix -f -p vcf ProSNP6_KSW_104.vcf.gz
# tabix -f -p vcf ProSNP6_KSW_1076.vcf.gz
# tabix -f -p vcf ProSNP6_KSW_10.vcf.gz
# tabix -f -p vcf ProSNP6_KSW_1125.vcf.gz
# tabix -f -p vcf ProSNP6_KSW_47.vcf.gz
# tabix -f -p vcf ProSNP6_KSW_516.vcf.gz
# tabix -f -p vcf ProSNP6_LOE_1035.vcf.gz
# tabix -f -p vcf ProSNP6_LOE_1150.vcf.gz
# tabix -f -p vcf ProSNP6_LOE_211.vcf.gz
# tabix -f -p vcf ProSNP6_LOE_497.vcf.gz
# tabix -f -p vcf ProSNP6_LOE_548.vcf.gz
# tabix -f -p vcf ProSNP6_POT_1119.vcf.gz
# tabix -f -p vcf ProSNP6_POT_128.vcf.gz
# tabix -f -p vcf ProSNP6_POT_183.vcf.gz
# tabix -f -p vcf ProSNP6_POT_380.vcf.gz
# tabix -f -p vcf ProSNP6_POT_463.vcf.gz
# tabix -f -p vcf ProSNP6_POT_594.vcf.gz
# tabix -f -p vcf ProSNP6_RIV_1148.vcf.gz
# tabix -f -p vcf ProSNP6_RIV_180.vcf.gz
# tabix -f -p vcf ProSNP6_RIV_351.vcf.gz
# tabix -f -p vcf ProSNP6_RIV_461.vcf.gz
# tabix -f -p vcf ProSNP6_RIV_530.vcf.gz
# tabix -f -p vcf ProSNP6_RIV_88.vcf.gz
# tabix -f -p vcf ProSNP6_RND_1116.vcf.gz
# tabix -f -p vcf ProSNP6_RND_1220.vcf.gz
# tabix -f -p vcf ProSNP6_RND_164.vcf.gz
# tabix -f -p vcf ProSNP6_RND_272.vcf.gz
# tabix -f -p vcf ProSNP6_RND_523.vcf.gz
# tabix -f -p vcf ProSNP6_RND_65.vcf.gz
# tabix -f -p vcf ProSNP6_SWA_140.vcf.gz
# tabix -f -p vcf ProSNP6_SWA_19.vcf.gz
# tabix -f -p vcf ProSNP6_SWA_304.vcf.gz
# tabix -f -p vcf ProSNP6_SWA_317.vcf.gz
# tabix -f -p vcf ProSNP6_SWA_341.vcf.gz
# tabix -f -p vcf ProSNP6_SWA_515.vcf.gz
# tabix -f -p vcf ProSNP6_SWA_96.vcf.gz
# tabix -f -p vcf ProSNP6_UNI_1087.vcf.gz
# tabix -f -p vcf ProSNP6_UNI_1175.vcf.gz
# tabix -f -p vcf ProSNP6_UNI_1204.vcf.gz
# tabix -f -p vcf ProSNP6_UNI_470.vcf.gz
# tabix -f -p vcf ProSNP6_UNI_479.vcf.gz
# tabix -f -p vcf ProSNP6_UNI_546.vcf.gz
# tabix -f -p vcf ProSNP6_VAN_1015.vcf.gz
# tabix -f -p vcf ProSNP6_VAN_1179.vcf.gz
# tabix -f -p vcf ProSNP6_VAN_269.vcf.gz
# tabix -f -p vcf ProSNP6_VAN_396.vcf.gz



vcf-merge ProSNP12_ALC_12.vcf.gz \
ProSNP12_ALC_34.vcf.gz \
ProSNP12_ALC_44.vcf.gz \
ProSNP12_ANY_19.vcf.gz \
ProSNP12_ANY_1.vcf.gz \
ProSNP12_ANY_30.vcf.gz \
ProSNP12_BAN_21.vcf.gz \
ProSNP12_BAN_35.vcf.gz \
ProSNP12_BAN_3.vcf.gz \
ProSNP12_BAV_20.vcf.gz \
ProSNP12_BAV_32.vcf.gz \
ProSNP12_BAV_44.vcf.gz \
ProSNP12_BRD_1.vcf.gz \
ProSNP12_BRD_22.vcf.gz \
ProSNP12_BRD_41.vcf.gz \
ProSNP12_CDB_26.vcf.gz \
ProSNP12_CDB_2.vcf.gz \
ProSNP12_CDB_40.vcf.gz \
ProSNP12_CER_1.vcf.gz \
ProSNP12_CER_22.vcf.gz \
ProSNP12_CER_42.vcf.gz \
ProSNP12_GAR_1.vcf.gz \
ProSNP12_GAR_20.vcf.gz \
ProSNP12_GAR_41.vcf.gz \
ProSNP12_KAR_1.vcf.gz \
ProSNP12_KAR_25.vcf.gz \
ProSNP12_KAR_42.vcf.gz \
ProSNP12_KLM_20.vcf.gz \
ProSNP12_KLM_45.vcf.gz \
ProSNP12_KLM_5.vcf.gz \
ProSNP12_KSW_20.vcf.gz \
ProSNP12_KSW_45.vcf.gz \
ProSNP12_KSW_4.vcf.gz \
ProSNP12_LOE_1.vcf.gz \
ProSNP12_LOE_23.vcf.gz \
ProSNP12_LOE_45.vcf.gz \
ProSNP12_MGU_17.vcf.gz \
ProSNP12_MGU_1.vcf.gz \
ProSNP12_MGU_57.vcf.gz \
ProSNP12_POT_1.vcf.gz \
ProSNP12_POT_26.vcf.gz \
ProSNP12_POT_44.vcf.gz \
ProSNP12_RIV_21.vcf.gz \
ProSNP12_RIV_2.vcf.gz \
ProSNP12_RIV_40.vcf.gz \
ProSNP12_RND_1.vcf.gz \
ProSNP12_RND_20.vcf.gz \
ProSNP12_RND_44.vcf.gz \
ProSNP12_SWA_1.vcf.gz \
ProSNP12_SWA_20.vcf.gz \
ProSNP12_SWA_45.vcf.gz \
ProSNP12_UNI_1.vcf.gz \
ProSNP12_UNI_24.vcf.gz \
ProSNP12_UNI_39.vcf.gz \
ProSNP12_VAN_15.vcf.gz \
ProSNP12_VAN_29.vcf.gz \
ProSNP12_VAN_2.vcf.gz \
ProSNP4_ALC_1109.vcf.gz \
ProSNP4_ALC_1132.vcf.gz \
ProSNP4_ALC_314.vcf.gz \
ProSNP4_ALC_573.vcf.gz \
ProSNP4_ANY_111.vcf.gz \
ProSNP4_ANY_1152.vcf.gz \
ProSNP4_ANY_300.vcf.gz \
ProSNP4_ANY_39.vcf.gz \
ProSNP4_ANY_507.vcf.gz \
ProSNP4_BAN_1060.vcf.gz \
ProSNP4_BAN_133.vcf.gz \
ProSNP4_BAN_200.vcf.gz \
ProSNP4_BAN_385.vcf.gz \
ProSNP4_BAV_1014.vcf.gz \
ProSNP4_BAV_1022.vcf.gz \
ProSNP4_BAV_22.vcf.gz \
ProSNP4_BAV_337.vcf.gz \
ProSNP4_BAV_448.vcf.gz \
ProSNP4_BRD_1215.vcf.gz \
ProSNP4_BRD_123.vcf.gz \
ProSNP4_BRD_356.vcf.gz \
ProSNP4_BRD_406.vcf.gz \
ProSNP4_BRD_513.vcf.gz \
ProSNP4_CDB_1100.vcf.gz \
ProSNP4_CDB_252.vcf.gz \
ProSNP4_CDB_28.vcf.gz \
ProSNP4_CDB_440.vcf.gz \
ProSNP4_CDB_567.vcf.gz \
ProSNP4_CER_1023.vcf.gz \
ProSNP4_CER_291.vcf.gz \
ProSNP4_CER_39.vcf.gz \
ProSNP4_CER_445.vcf.gz \
ProSNP4_CER_50.vcf.gz \
ProSNP4_GAR_11.vcf.gz \
ProSNP4_GAR_259.vcf.gz \
ProSNP4_GAR_298.vcf.gz \
ProSNP4_GAR_309.vcf.gz \
ProSNP4_GAR_574.vcf.gz \
ProSNP4_KAR_1004.vcf.gz \
ProSNP4_KAR_1159.vcf.gz \
ProSNP4_KAR_288.vcf.gz \
ProSNP4_KAR_57.vcf.gz \
ProSNP4_KAR_596.vcf.gz \
ProSNP4_KLM_1112.vcf.gz \
ProSNP4_KLM_1209.vcf.gz \
ProSNP4_KLM_519.vcf.gz \
ProSNP4_KLM_6.vcf.gz \
ProSNP4_KLM_9.vcf.gz \
ProSNP4_KSW_1047.vcf.gz \
ProSNP4_KSW_1064.vcf.gz \
ProSNP4_KSW_106.vcf.gz \
ProSNP4_KSW_1163.vcf.gz \
ProSNP4_KSW_1206.vcf.gz \
ProSNP4_KSW_132.vcf.gz \
ProSNP4_KSW_18.vcf.gz \
ProSNP4_LOE_1033.vcf.gz \
ProSNP4_LOE_1141.vcf.gz \
ProSNP4_LOE_359.vcf.gz \
ProSNP4_LOE_404.vcf.gz \
ProSNP4_LOE_82.vcf.gz \
ProSNP4_MGU_135.vcf.gz \
ProSNP4_MGU_214.vcf.gz \
ProSNP4_MGU_407.vcf.gz \
ProSNP4_POT_1005.vcf.gz \
ProSNP4_POT_1188.vcf.gz \
ProSNP4_POT_126.vcf.gz \
ProSNP4_POT_313.vcf.gz \
ProSNP4_POT_531.vcf.gz \
ProSNP4_RIV_108.vcf.gz \
ProSNP4_RIV_1103.vcf.gz \
ProSNP4_RIV_1205.vcf.gz \
ProSNP4_RIV_15.vcf.gz \
ProSNP4_RIV_193.vcf.gz \
ProSNP4_RND_124.vcf.gz \
ProSNP4_RND_147.vcf.gz \
ProSNP4_RND_261.vcf.gz \
ProSNP4_RND_318.vcf.gz \
ProSNP4_RND_420.vcf.gz \
ProSNP4_RND_576.vcf.gz \
ProSNP4_SWA_112.vcf.gz \
ProSNP4_SWA_1183.vcf.gz \
ProSNP4_SWA_13.vcf.gz \
ProSNP4_SWA_352.vcf.gz \
ProSNP4_SWA_545.vcf.gz \
ProSNP4_UNI_1217.vcf.gz \
ProSNP4_UNI_306.vcf.gz \
ProSNP4_UNI_347.vcf.gz \
ProSNP4_UNI_383.vcf.gz \
ProSNP4_UNI_544.vcf.gz \
ProSNP4_UNI_55.vcf.gz \
ProSNP4_VAN_1158.vcf.gz \
ProSNP4_VAN_1211.vcf.gz \
ProSNP4_VAN_293.vcf.gz \
ProSNP4_VAN_361.vcf.gz \
ProSNP4_VAN_521.vcf.gz \
ProSNP5_ALC1045.vcf.gz \
ProSNP5_ALC230.vcf.gz \
ProSNP5_ALC250.vcf.gz \
ProSNP5_ALC502.vcf.gz \
ProSNP5_ALC62.vcf.gz \
ProSNP5_ANY1126.vcf.gz \
ProSNP5_ANY116.vcf.gz \
ProSNP5_ANY117.vcf.gz \
ProSNP5_ANY303.vcf.gz \
ProSNP5_ANY322.vcf.gz \
ProSNP5_BAN1138.vcf.gz \
ProSNP5_BAN207.vcf.gz \
ProSNP5_BAN229.vcf.gz \
ProSNP5_BAN506.vcf.gz \
ProSNP5_BAN92.vcf.gz \
ProSNP5_BAV1191.vcf.gz \
ProSNP5_BAV422.vcf.gz \
ProSNP5_BAV527.vcf.gz \
ProSNP5_BAV75.vcf.gz \
ProSNP5_BAV7.vcf.gz \
ProSNP5_BRD369.vcf.gz \
ProSNP5_BRD381.vcf.gz \
ProSNP5_BRD483.vcf.gz \
ProSNP5_BRD484.vcf.gz \
ProSNP5_BRD51.vcf.gz \
ProSNP5_CDB100.vcf.gz \
ProSNP5_CDB1134.vcf.gz \
ProSNP5_CDB376.vcf.gz \
ProSNP5_CDB512.vcf.gz \
ProSNP5_CDB564.vcf.gz \
ProSNP5_CER1117.vcf.gz \
ProSNP5_CER2.vcf.gz \
ProSNP5_CER382.vcf.gz \
ProSNP5_CER458.vcf.gz \
ProSNP5_CER78.vcf.gz \
ProSNP5_GAR1019.vcf.gz \
ProSNP5_GAR434.vcf.gz \
ProSNP5_GAR439.vcf.gz \
ProSNP5_GAR46.vcf.gz \
ProSNP5_GAR547.vcf.gz \
ProSNP5_KAR1044.vcf.gz \
ProSNP5_KAR1063.vcf.gz \
ProSNP5_KAR122.vcf.gz \
ProSNP5_KAR178.vcf.gz \
ProSNP5_KAR346.vcf.gz \
ProSNP5_KLM1025.vcf.gz \
ProSNP5_KLM1203.vcf.gz \
ProSNP5_KLM534.vcf.gz \
ProSNP5_KLM56.vcf.gz \
ProSNP5_KLM97.vcf.gz \
ProSNP5_KSW1145.vcf.gz \
ProSNP5_KSW1206.vcf.gz \
ProSNP5_KSW398.vcf.gz \
ProSNP5_KSW505.vcf.gz \
ProSNP5_KSW597.vcf.gz \
ProSNP5_KSW95.vcf.gz \
ProSNP5_LOE1018.vcf.gz \
ProSNP5_LOE125.vcf.gz \
ProSNP5_LOE388.vcf.gz \
ProSNP5_LOE585.vcf.gz \
ProSNP5_LOE79.vcf.gz \
ProSNP5_MGU1006.vcf.gz \
ProSNP5_MGU1056.vcf.gz \
ProSNP5_MGU16.vcf.gz \
ProSNP5_MGU490.vcf.gz \
ProSNP5_MGU498.vcf.gz \
ProSNP5_POT1176.vcf.gz \
ProSNP5_POT255.vcf.gz \
ProSNP5_POT282.vcf.gz \
ProSNP5_POT525.vcf.gz \
ProSNP5_POT54.vcf.gz \
ProSNP5_RIV151.vcf.gz \
ProSNP5_RIV191.vcf.gz \
ProSNP5_RIV195.vcf.gz \
ProSNP5_RIV44.vcf.gz \
ProSNP5_RIV560.vcf.gz \
ProSNP5_RND1010.vcf.gz \
ProSNP5_RND1210.vcf.gz \
ProSNP5_RND139.vcf.gz \
ProSNP5_RND290.vcf.gz \
ProSNP5_RND579.vcf.gz \
ProSNP5_SWA107.vcf.gz \
ProSNP5_SWA157.vcf.gz \
ProSNP5_SWA189.vcf.gz \
ProSNP5_SWA577.vcf.gz \
ProSNP5_SWA80.vcf.gz \
ProSNP5_UNI386.vcf.gz \
ProSNP5_UNI3.vcf.gz \
ProSNP5_UNI403.vcf.gz \
ProSNP5_VAN163.vcf.gz \
ProSNP5_VAN206.vcf.gz \
ProSNP5_VAN208.vcf.gz \
ProSNP5_VAN260.vcf.gz \
ProSNP5_VAN27.vcf.gz \
ProSNP6_ANY_1020.vcf.gz \
ProSNP6_ANY_1079.vcf.gz \
ProSNP6_ANY_1122.vcf.gz \
ProSNP6_ANY_12.vcf.gz \
ProSNP6_ANY_301.vcf.gz \
ProSNP6_ANY_518.vcf.gz \
ProSNP6_ANY_85.vcf.gz \
ProSNP6_BAV_1077.vcf.gz \
ProSNP6_BAV_1214.vcf.gz \
ProSNP6_BAV_339.vcf.gz \
ProSNP6_BAV_462.vcf.gz \
ProSNP6_BAV_556.vcf.gz \
ProSNP6_BAV_63.vcf.gz \
ProSNP6_BRD_1009.vcf.gz \
ProSNP6_BRD_342.vcf.gz \
ProSNP6_BRD_442.vcf.gz \
ProSNP6_BRD_501.vcf.gz \
ProSNP6_BRD_533.vcf.gz \
ProSNP6_BRD_543.vcf.gz \
ProSNP6_CDB_228.vcf.gz \
ProSNP6_CDB_571.vcf.gz \
ProSNP6_CER_1038.vcf.gz \
ProSNP6_CER_1142.vcf.gz \
ProSNP6_CER_14.vcf.gz \
ProSNP6_CER_199.vcf.gz \
ProSNP6_CER_338.vcf.gz \
ProSNP6_CER_589.vcf.gz \
ProSNP6_GAR_1041.vcf.gz \
ProSNP6_GAR_1200.vcf.gz \
ProSNP6_GAR_174.vcf.gz \
ProSNP6_GAR_299.vcf.gz \
ProSNP6_GAR_437.vcf.gz \
ProSNP6_GAR_557.vcf.gz \
ProSNP6_GAR_90.vcf.gz \
ProSNP6_KAR_1187.vcf.gz \
ProSNP6_KAR_184.vcf.gz \
ProSNP6_KAR_486.vcf.gz \
ProSNP6_KAR_49.vcf.gz \
ProSNP6_KAR_68.vcf.gz \
ProSNP6_KAR_84.vcf.gz \
ProSNP6_KLM_1052.vcf.gz \
ProSNP6_KLM_1129.vcf.gz \
ProSNP6_KLM_155.vcf.gz \
ProSNP6_KLM_343.vcf.gz \
ProSNP6_KLM_475.vcf.gz \
ProSNP6_KLM_566.vcf.gz \
ProSNP6_KLM_582.vcf.gz \
ProSNP6_KSW_1043.vcf.gz \
ProSNP6_KSW_104.vcf.gz \
ProSNP6_KSW_1076.vcf.gz \
ProSNP6_KSW_10.vcf.gz \
ProSNP6_KSW_1125.vcf.gz \
ProSNP6_KSW_47.vcf.gz \
ProSNP6_KSW_516.vcf.gz \
ProSNP6_LOE_1035.vcf.gz \
ProSNP6_LOE_1150.vcf.gz \
ProSNP6_LOE_211.vcf.gz \
ProSNP6_LOE_497.vcf.gz \
ProSNP6_LOE_548.vcf.gz \
ProSNP6_POT_1119.vcf.gz \
ProSNP6_POT_128.vcf.gz \
ProSNP6_POT_183.vcf.gz \
ProSNP6_POT_380.vcf.gz \
ProSNP6_POT_463.vcf.gz \
ProSNP6_POT_594.vcf.gz \
ProSNP6_RIV_1148.vcf.gz \
ProSNP6_RIV_180.vcf.gz \
ProSNP6_RIV_351.vcf.gz \
ProSNP6_RIV_461.vcf.gz \
ProSNP6_RIV_530.vcf.gz \
ProSNP6_RIV_88.vcf.gz \
ProSNP6_RND_1116.vcf.gz \
ProSNP6_RND_1220.vcf.gz \
ProSNP6_RND_164.vcf.gz \
ProSNP6_RND_272.vcf.gz \
ProSNP6_RND_523.vcf.gz \
ProSNP6_RND_65.vcf.gz \
ProSNP6_SWA_140.vcf.gz \
ProSNP6_SWA_19.vcf.gz \
ProSNP6_SWA_304.vcf.gz \
ProSNP6_SWA_317.vcf.gz \
ProSNP6_SWA_341.vcf.gz \
ProSNP6_SWA_515.vcf.gz \
ProSNP6_SWA_96.vcf.gz \
ProSNP6_UNI_1087.vcf.gz \
ProSNP6_UNI_1175.vcf.gz \
ProSNP6_UNI_1204.vcf.gz \
ProSNP6_UNI_470.vcf.gz \
ProSNP6_UNI_479.vcf.gz \
ProSNP6_UNI_546.vcf.gz \
ProSNP6_VAN_1015.vcf.gz \
ProSNP6_VAN_1179.vcf.gz \
ProSNP6_VAN_269.vcf.gz \
ProSNP6_VAN_396.vcf.gz > all_combined.vcf


