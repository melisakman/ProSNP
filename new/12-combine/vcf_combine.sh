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

tabix -f -p vcf ProSNP12_ALC_12.vcf
tabix -f -p vcf ProSNP12_ALC_34.vcf
tabix -f -p vcf ProSNP12_ALC_44.vcf
tabix -f -p vcf ProSNP12_ANY_19.vcf
tabix -f -p vcf ProSNP12_ANY_1.vcf
tabix -f -p vcf ProSNP12_ANY_30.vcf
tabix -f -p vcf ProSNP12_BAN_21.vcf
tabix -f -p vcf ProSNP12_BAN_35.vcf
tabix -f -p vcf ProSNP12_BAN_3.vcf
tabix -f -p vcf ProSNP12_BAV_20.vcf
tabix -f -p vcf ProSNP12_BAV_32.vcf
tabix -f -p vcf ProSNP12_BAV_44.vcf
tabix -f -p vcf ProSNP12_BRD_1.vcf
tabix -f -p vcf ProSNP12_BRD_22.vcf
tabix -f -p vcf ProSNP12_BRD_41.vcf
tabix -f -p vcf ProSNP12_CDB_26.vcf
tabix -f -p vcf ProSNP12_CDB_2.vcf
tabix -f -p vcf ProSNP12_CDB_40.vcf
tabix -f -p vcf ProSNP12_CER_1.vcf
tabix -f -p vcf ProSNP12_CER_22.vcf
tabix -f -p vcf ProSNP12_CER_42.vcf
tabix -f -p vcf ProSNP12_GAR_1.vcf
tabix -f -p vcf ProSNP12_GAR_20.vcf
tabix -f -p vcf ProSNP12_GAR_41.vcf
tabix -f -p vcf ProSNP12_KAR_1.vcf
tabix -f -p vcf ProSNP12_KAR_25.vcf
tabix -f -p vcf ProSNP12_KAR_42.vcf
tabix -f -p vcf ProSNP12_KLM_20.vcf
tabix -f -p vcf ProSNP12_KLM_45.vcf
tabix -f -p vcf ProSNP12_KLM_5.vcf
tabix -f -p vcf ProSNP12_KSW_20.vcf
tabix -f -p vcf ProSNP12_KSW_45.vcf
tabix -f -p vcf ProSNP12_KSW_4.vcf
tabix -f -p vcf ProSNP12_LOE_1.vcf
tabix -f -p vcf ProSNP12_LOE_23.vcf
tabix -f -p vcf ProSNP12_LOE_45.vcf
tabix -f -p vcf ProSNP12_MGU_17.vcf
tabix -f -p vcf ProSNP12_MGU_1.vcf
tabix -f -p vcf ProSNP12_MGU_57.vcf
tabix -f -p vcf ProSNP12_POT_1.vcf
tabix -f -p vcf ProSNP12_POT_26.vcf
tabix -f -p vcf ProSNP12_POT_44.vcf
tabix -f -p vcf ProSNP12_RIV_21.vcf
tabix -f -p vcf ProSNP12_RIV_2.vcf
tabix -f -p vcf ProSNP12_RIV_40.vcf
tabix -f -p vcf ProSNP12_RND_1.vcf
tabix -f -p vcf ProSNP12_RND_20.vcf
tabix -f -p vcf ProSNP12_RND_44.vcf
tabix -f -p vcf ProSNP12_SWA_1.vcf
tabix -f -p vcf ProSNP12_SWA_20.vcf
tabix -f -p vcf ProSNP12_SWA_45.vcf
tabix -f -p vcf ProSNP12_UNI_1.vcf
tabix -f -p vcf ProSNP12_UNI_24.vcf
tabix -f -p vcf ProSNP12_UNI_39.vcf
tabix -f -p vcf ProSNP12_VAN_15.vcf
tabix -f -p vcf ProSNP12_VAN_29.vcf
tabix -f -p vcf ProSNP12_VAN_2.vcf
tabix -f -p vcf ProSNP4_ALC_1109.vcf
tabix -f -p vcf ProSNP4_ALC_1132.vcf
tabix -f -p vcf ProSNP4_ALC_314.vcf
tabix -f -p vcf ProSNP4_ALC_573.vcf
tabix -f -p vcf ProSNP4_ANY_111.vcf
tabix -f -p vcf ProSNP4_ANY_1152.vcf
tabix -f -p vcf ProSNP4_ANY_300.vcf
tabix -f -p vcf ProSNP4_ANY_39.vcf
tabix -f -p vcf ProSNP4_ANY_507.vcf
tabix -f -p vcf ProSNP4_BAN_1060.vcf
tabix -f -p vcf ProSNP4_BAN_133.vcf
tabix -f -p vcf ProSNP4_BAN_200.vcf
tabix -f -p vcf ProSNP4_BAN_385.vcf
tabix -f -p vcf ProSNP4_BAV_1014.vcf
tabix -f -p vcf ProSNP4_BAV_1022.vcf
tabix -f -p vcf ProSNP4_BAV_22.vcf
tabix -f -p vcf ProSNP4_BAV_337.vcf
tabix -f -p vcf ProSNP4_BAV_448.vcf
tabix -f -p vcf ProSNP4_BRD_1215.vcf
tabix -f -p vcf ProSNP4_BRD_123.vcf
tabix -f -p vcf ProSNP4_BRD_356.vcf
tabix -f -p vcf ProSNP4_BRD_406.vcf
tabix -f -p vcf ProSNP4_BRD_513.vcf
tabix -f -p vcf ProSNP4_CDB_1100.vcf
tabix -f -p vcf ProSNP4_CDB_252.vcf
tabix -f -p vcf ProSNP4_CDB_28.vcf
tabix -f -p vcf ProSNP4_CDB_440.vcf
tabix -f -p vcf ProSNP4_CDB_567.vcf
tabix -f -p vcf ProSNP4_CER_1023.vcf
tabix -f -p vcf ProSNP4_CER_291.vcf
tabix -f -p vcf ProSNP4_CER_39.vcf
tabix -f -p vcf ProSNP4_CER_445.vcf
tabix -f -p vcf ProSNP4_CER_50.vcf
tabix -f -p vcf ProSNP4_GAR_11.vcf
tabix -f -p vcf ProSNP4_GAR_259.vcf
tabix -f -p vcf ProSNP4_GAR_298.vcf
tabix -f -p vcf ProSNP4_GAR_309.vcf
tabix -f -p vcf ProSNP4_GAR_574.vcf
tabix -f -p vcf ProSNP4_KAR_1004.vcf
tabix -f -p vcf ProSNP4_KAR_1159.vcf
tabix -f -p vcf ProSNP4_KAR_288.vcf
tabix -f -p vcf ProSNP4_KAR_57.vcf
tabix -f -p vcf ProSNP4_KAR_596.vcf
tabix -f -p vcf ProSNP4_KLM_1112.vcf
tabix -f -p vcf ProSNP4_KLM_1209.vcf
tabix -f -p vcf ProSNP4_KLM_519.vcf
tabix -f -p vcf ProSNP4_KLM_6.vcf
tabix -f -p vcf ProSNP4_KLM_9.vcf
tabix -f -p vcf ProSNP4_KSW_1047.vcf
tabix -f -p vcf ProSNP4_KSW_1064.vcf
tabix -f -p vcf ProSNP4_KSW_106.vcf
tabix -f -p vcf ProSNP4_KSW_1163.vcf
tabix -f -p vcf ProSNP4_KSW_1206.vcf
tabix -f -p vcf ProSNP4_KSW_132.vcf
tabix -f -p vcf ProSNP4_KSW_18.vcf
tabix -f -p vcf ProSNP4_LOE_1033.vcf
tabix -f -p vcf ProSNP4_LOE_1141.vcf
tabix -f -p vcf ProSNP4_LOE_359.vcf
tabix -f -p vcf ProSNP4_LOE_404.vcf
tabix -f -p vcf ProSNP4_LOE_82.vcf
tabix -f -p vcf ProSNP4_MGU_135.vcf
tabix -f -p vcf ProSNP4_MGU_214.vcf
tabix -f -p vcf ProSNP4_MGU_407.vcf
tabix -f -p vcf ProSNP4_POT_1005.vcf
tabix -f -p vcf ProSNP4_POT_1188.vcf
tabix -f -p vcf ProSNP4_POT_126.vcf
tabix -f -p vcf ProSNP4_POT_313.vcf
tabix -f -p vcf ProSNP4_POT_531.vcf
tabix -f -p vcf ProSNP4_RIV_108.vcf
tabix -f -p vcf ProSNP4_RIV_1103.vcf
tabix -f -p vcf ProSNP4_RIV_1205.vcf
tabix -f -p vcf ProSNP4_RIV_15.vcf
tabix -f -p vcf ProSNP4_RIV_193.vcf
tabix -f -p vcf ProSNP4_RND_124.vcf
tabix -f -p vcf ProSNP4_RND_147.vcf
tabix -f -p vcf ProSNP4_RND_261.vcf
tabix -f -p vcf ProSNP4_RND_318.vcf
tabix -f -p vcf ProSNP4_RND_420.vcf
tabix -f -p vcf ProSNP4_RND_576.vcf
tabix -f -p vcf ProSNP4_SWA_112.vcf
tabix -f -p vcf ProSNP4_SWA_1183.vcf
tabix -f -p vcf ProSNP4_SWA_13.vcf
tabix -f -p vcf ProSNP4_SWA_352.vcf
tabix -f -p vcf ProSNP4_SWA_545.vcf
tabix -f -p vcf ProSNP4_UNI_1217.vcf
tabix -f -p vcf ProSNP4_UNI_306.vcf
tabix -f -p vcf ProSNP4_UNI_347.vcf
tabix -f -p vcf ProSNP4_UNI_383.vcf
tabix -f -p vcf ProSNP4_UNI_544.vcf
tabix -f -p vcf ProSNP4_UNI_55.vcf
tabix -f -p vcf ProSNP4_VAN_1158.vcf
tabix -f -p vcf ProSNP4_VAN_1211.vcf
tabix -f -p vcf ProSNP4_VAN_293.vcf
tabix -f -p vcf ProSNP4_VAN_361.vcf
tabix -f -p vcf ProSNP4_VAN_521.vcf
tabix -f -p vcf ProSNP5_ALC1045.vcf
tabix -f -p vcf ProSNP5_ALC230.vcf
tabix -f -p vcf ProSNP5_ALC250.vcf
tabix -f -p vcf ProSNP5_ALC502.vcf
tabix -f -p vcf ProSNP5_ALC62.vcf
tabix -f -p vcf ProSNP5_ANY1126.vcf
tabix -f -p vcf ProSNP5_ANY116.vcf
tabix -f -p vcf ProSNP5_ANY117.vcf
tabix -f -p vcf ProSNP5_ANY303.vcf
tabix -f -p vcf ProSNP5_ANY322.vcf
tabix -f -p vcf ProSNP5_BAN1138.vcf
tabix -f -p vcf ProSNP5_BAN207.vcf
tabix -f -p vcf ProSNP5_BAN229.vcf
tabix -f -p vcf ProSNP5_BAN506.vcf
tabix -f -p vcf ProSNP5_BAN92.vcf
tabix -f -p vcf ProSNP5_BAV1191.vcf
tabix -f -p vcf ProSNP5_BAV422.vcf
tabix -f -p vcf ProSNP5_BAV527.vcf
tabix -f -p vcf ProSNP5_BAV75.vcf
tabix -f -p vcf ProSNP5_BAV7.vcf
tabix -f -p vcf ProSNP5_BRD369.vcf
tabix -f -p vcf ProSNP5_BRD381.vcf
tabix -f -p vcf ProSNP5_BRD483.vcf
tabix -f -p vcf ProSNP5_BRD484.vcf
tabix -f -p vcf ProSNP5_BRD51.vcf
tabix -f -p vcf ProSNP5_CDB100.vcf
tabix -f -p vcf ProSNP5_CDB1134.vcf
tabix -f -p vcf ProSNP5_CDB376.vcf
tabix -f -p vcf ProSNP5_CDB512.vcf
tabix -f -p vcf ProSNP5_CDB564.vcf
tabix -f -p vcf ProSNP5_CER1117.vcf
tabix -f -p vcf ProSNP5_CER2.vcf
tabix -f -p vcf ProSNP5_CER382.vcf
tabix -f -p vcf ProSNP5_CER458.vcf
tabix -f -p vcf ProSNP5_CER78.vcf
tabix -f -p vcf ProSNP5_GAR1019.vcf
tabix -f -p vcf ProSNP5_GAR434.vcf
tabix -f -p vcf ProSNP5_GAR439.vcf
tabix -f -p vcf ProSNP5_GAR46.vcf
tabix -f -p vcf ProSNP5_GAR547.vcf
tabix -f -p vcf ProSNP5_KAR1044.vcf
tabix -f -p vcf ProSNP5_KAR1063.vcf
tabix -f -p vcf ProSNP5_KAR122.vcf
tabix -f -p vcf ProSNP5_KAR178.vcf
tabix -f -p vcf ProSNP5_KAR346.vcf
tabix -f -p vcf ProSNP5_KLM1025.vcf
tabix -f -p vcf ProSNP5_KLM1203.vcf
tabix -f -p vcf ProSNP5_KLM534.vcf
tabix -f -p vcf ProSNP5_KLM56.vcf
tabix -f -p vcf ProSNP5_KLM97.vcf
tabix -f -p vcf ProSNP5_KSW1145.vcf
tabix -f -p vcf ProSNP5_KSW1206.vcf
tabix -f -p vcf ProSNP5_KSW398.vcf
tabix -f -p vcf ProSNP5_KSW505.vcf
tabix -f -p vcf ProSNP5_KSW597.vcf
tabix -f -p vcf ProSNP5_KSW95.vcf
tabix -f -p vcf ProSNP5_LOE1018.vcf
tabix -f -p vcf ProSNP5_LOE125.vcf
tabix -f -p vcf ProSNP5_LOE388.vcf
tabix -f -p vcf ProSNP5_LOE585.vcf
tabix -f -p vcf ProSNP5_LOE79.vcf
tabix -f -p vcf ProSNP5_MGU1006.vcf
tabix -f -p vcf ProSNP5_MGU1056.vcf
tabix -f -p vcf ProSNP5_MGU16.vcf
tabix -f -p vcf ProSNP5_MGU490.vcf
tabix -f -p vcf ProSNP5_MGU498.vcf
tabix -f -p vcf ProSNP5_POT1176.vcf
tabix -f -p vcf ProSNP5_POT255.vcf
tabix -f -p vcf ProSNP5_POT282.vcf
tabix -f -p vcf ProSNP5_POT525.vcf
tabix -f -p vcf ProSNP5_POT54.vcf
tabix -f -p vcf ProSNP5_RIV151.vcf
tabix -f -p vcf ProSNP5_RIV191.vcf
tabix -f -p vcf ProSNP5_RIV195.vcf
tabix -f -p vcf ProSNP5_RIV44.vcf
tabix -f -p vcf ProSNP5_RIV560.vcf
tabix -f -p vcf ProSNP5_RND1010.vcf
tabix -f -p vcf ProSNP5_RND1210.vcf
tabix -f -p vcf ProSNP5_RND139.vcf
tabix -f -p vcf ProSNP5_RND290.vcf
tabix -f -p vcf ProSNP5_RND579.vcf
tabix -f -p vcf ProSNP5_SWA107.vcf
tabix -f -p vcf ProSNP5_SWA157.vcf
tabix -f -p vcf ProSNP5_SWA189.vcf
tabix -f -p vcf ProSNP5_SWA577.vcf
tabix -f -p vcf ProSNP5_SWA80.vcf
tabix -f -p vcf ProSNP5_UNI386.vcf
tabix -f -p vcf ProSNP5_UNI3.vcf
tabix -f -p vcf ProSNP5_UNI403.vcf
tabix -f -p vcf ProSNP5_VAN163.vcf
tabix -f -p vcf ProSNP5_VAN206.vcf
tabix -f -p vcf ProSNP5_VAN208.vcf
tabix -f -p vcf ProSNP5_VAN260.vcf
tabix -f -p vcf ProSNP5_VAN27.vcf
tabix -f -p vcf ProSNP6_ANY_1020.vcf
tabix -f -p vcf ProSNP6_ANY_1079.vcf
tabix -f -p vcf ProSNP6_ANY_1122.vcf
tabix -f -p vcf ProSNP6_ANY_12.vcf
tabix -f -p vcf ProSNP6_ANY_301.vcf
tabix -f -p vcf ProSNP6_ANY_518.vcf
tabix -f -p vcf ProSNP6_ANY_85.vcf
tabix -f -p vcf ProSNP6_BAV_1077.vcf
tabix -f -p vcf ProSNP6_BAV_1214.vcf
tabix -f -p vcf ProSNP6_BAV_339.vcf
tabix -f -p vcf ProSNP6_BAV_462.vcf
tabix -f -p vcf ProSNP6_BAV_556.vcf
tabix -f -p vcf ProSNP6_BAV_63.vcf
tabix -f -p vcf ProSNP6_BRD_1009.vcf
tabix -f -p vcf ProSNP6_BRD_342.vcf
tabix -f -p vcf ProSNP6_BRD_442.vcf
tabix -f -p vcf ProSNP6_BRD_501.vcf
tabix -f -p vcf ProSNP6_BRD_533.vcf
tabix -f -p vcf ProSNP6_BRD_543.vcf
tabix -f -p vcf ProSNP6_CDB_228.vcf
tabix -f -p vcf ProSNP6_CDB_571.vcf
tabix -f -p vcf ProSNP6_CER_1038.vcf
tabix -f -p vcf ProSNP6_CER_1142.vcf
tabix -f -p vcf ProSNP6_CER_14.vcf
tabix -f -p vcf ProSNP6_CER_199.vcf
tabix -f -p vcf ProSNP6_CER_338.vcf
tabix -f -p vcf ProSNP6_CER_589.vcf
tabix -f -p vcf ProSNP6_GAR_1041.vcf
tabix -f -p vcf ProSNP6_GAR_1200.vcf
tabix -f -p vcf ProSNP6_GAR_174.vcf
tabix -f -p vcf ProSNP6_GAR_299.vcf
tabix -f -p vcf ProSNP6_GAR_437.vcf
tabix -f -p vcf ProSNP6_GAR_557.vcf
tabix -f -p vcf ProSNP6_GAR_90.vcf
tabix -f -p vcf ProSNP6_KAR_1187.vcf
tabix -f -p vcf ProSNP6_KAR_184.vcf
tabix -f -p vcf ProSNP6_KAR_486.vcf
tabix -f -p vcf ProSNP6_KAR_49.vcf
tabix -f -p vcf ProSNP6_KAR_68.vcf
tabix -f -p vcf ProSNP6_KAR_84.vcf
tabix -f -p vcf ProSNP6_KLM_1052.vcf
tabix -f -p vcf ProSNP6_KLM_1129.vcf
tabix -f -p vcf ProSNP6_KLM_155.vcf
tabix -f -p vcf ProSNP6_KLM_343.vcf
tabix -f -p vcf ProSNP6_KLM_475.vcf
tabix -f -p vcf ProSNP6_KLM_566.vcf
tabix -f -p vcf ProSNP6_KLM_582.vcf
tabix -f -p vcf ProSNP6_KSW_1043.vcf
tabix -f -p vcf ProSNP6_KSW_104.vcf
tabix -f -p vcf ProSNP6_KSW_1076.vcf
tabix -f -p vcf ProSNP6_KSW_10.vcf
tabix -f -p vcf ProSNP6_KSW_1125.vcf
tabix -f -p vcf ProSNP6_KSW_47.vcf
tabix -f -p vcf ProSNP6_KSW_516.vcf
tabix -f -p vcf ProSNP6_LOE_1035.vcf
tabix -f -p vcf ProSNP6_LOE_1150.vcf
tabix -f -p vcf ProSNP6_LOE_211.vcf
tabix -f -p vcf ProSNP6_LOE_497.vcf
tabix -f -p vcf ProSNP6_LOE_548.vcf
tabix -f -p vcf ProSNP6_POT_1119.vcf
tabix -f -p vcf ProSNP6_POT_128.vcf
tabix -f -p vcf ProSNP6_POT_183.vcf
tabix -f -p vcf ProSNP6_POT_380.vcf
tabix -f -p vcf ProSNP6_POT_463.vcf
tabix -f -p vcf ProSNP6_POT_594.vcf
tabix -f -p vcf ProSNP6_RIV_1148.vcf
tabix -f -p vcf ProSNP6_RIV_180.vcf
tabix -f -p vcf ProSNP6_RIV_351.vcf
tabix -f -p vcf ProSNP6_RIV_461.vcf
tabix -f -p vcf ProSNP6_RIV_530.vcf
tabix -f -p vcf ProSNP6_RIV_88.vcf
tabix -f -p vcf ProSNP6_RND_1116.vcf
tabix -f -p vcf ProSNP6_RND_1220.vcf
tabix -f -p vcf ProSNP6_RND_164.vcf
tabix -f -p vcf ProSNP6_RND_272.vcf
tabix -f -p vcf ProSNP6_RND_523.vcf
tabix -f -p vcf ProSNP6_RND_65.vcf
tabix -f -p vcf ProSNP6_SWA_140.vcf
tabix -f -p vcf ProSNP6_SWA_19.vcf
tabix -f -p vcf ProSNP6_SWA_304.vcf
tabix -f -p vcf ProSNP6_SWA_317.vcf
tabix -f -p vcf ProSNP6_SWA_341.vcf
tabix -f -p vcf ProSNP6_SWA_515.vcf
tabix -f -p vcf ProSNP6_SWA_96.vcf
tabix -f -p vcf ProSNP6_UNI_1087.vcf
tabix -f -p vcf ProSNP6_UNI_1175.vcf
tabix -f -p vcf ProSNP6_UNI_1204.vcf
tabix -f -p vcf ProSNP6_UNI_470.vcf
tabix -f -p vcf ProSNP6_UNI_479.vcf
tabix -f -p vcf ProSNP6_UNI_546.vcf
tabix -f -p vcf ProSNP6_VAN_1015.vcf
tabix -f -p vcf ProSNP6_VAN_1179.vcf
tabix -f -p vcf ProSNP6_VAN_269.vcf
tabix -f -p vcf ProSNP6_VAN_396.vcf



vcf-merge ProSNP12_ALC_1045.vcf \
ProSNP12_ALC_12.vcf \
ProSNP12_ALC_34.vcf \
ProSNP12_ALC_44.vcf \
ProSNP12_ANY_19.vcf \
ProSNP12_ANY_1.vcf \
ProSNP12_ANY_30.vcf \
ProSNP12_BAN_21.vcf \
ProSNP12_BAN_35.vcf \
ProSNP12_BAN_3.vcf \
ProSNP12_BAV_20.vcf \
ProSNP12_BAV_32.vcf \
ProSNP12_BAV_44.vcf \
ProSNP12_BRD_1.vcf \
ProSNP12_BRD_22.vcf \
ProSNP12_BRD_41.vcf \
ProSNP12_CDB_26.vcf \
ProSNP12_CDB_2.vcf \
ProSNP12_CDB_40.vcf \
ProSNP12_CER_1.vcf \
ProSNP12_CER_22.vcf \
ProSNP12_CER_42.vcf \
ProSNP12_GAR_1.vcf \
ProSNP12_GAR_20.vcf \
ProSNP12_GAR_41.vcf \
ProSNP12_KAR_1.vcf \
ProSNP12_KAR_25.vcf \
ProSNP12_KAR_42.vcf \
ProSNP12_KLM_20.vcf \
ProSNP12_KLM_45.vcf \
ProSNP12_KLM_5.vcf \
ProSNP12_KSW_20.vcf \
ProSNP12_KSW_45.vcf \
ProSNP12_KSW_4.vcf \
ProSNP12_LOE_1.vcf \
ProSNP12_LOE_23.vcf \
ProSNP12_LOE_45.vcf \
ProSNP12_MGU_17.vcf \
ProSNP12_MGU_1.vcf \
ProSNP12_MGU_57.vcf \
ProSNP12_POT_1.vcf \
ProSNP12_POT_26.vcf \
ProSNP12_POT_44.vcf \
ProSNP12_RIV_21.vcf \
ProSNP12_RIV_2.vcf \
ProSNP12_RIV_40.vcf \
ProSNP12_RND_1.vcf \
ProSNP12_RND_20.vcf \
ProSNP12_RND_44.vcf \
ProSNP12_SWA_1.vcf \
ProSNP12_SWA_20.vcf \
ProSNP12_SWA_45.vcf \
ProSNP12_UNI_1.vcf \
ProSNP12_UNI_24.vcf \
ProSNP12_UNI_39.vcf \
ProSNP12_VAN_15.vcf \
ProSNP12_VAN_29.vcf \
ProSNP12_VAN_2.vcf \
ProSNP4_ALC_1109.vcf \
ProSNP4_ALC_1132.vcf \
ProSNP4_ALC_314.vcf \
ProSNP4_ALC_573.vcf \
ProSNP4_ANY_111.vcf \
ProSNP4_ANY_1152.vcf \
ProSNP4_ANY_300.vcf \
ProSNP4_ANY_39.vcf \
ProSNP4_ANY_507.vcf \
ProSNP4_BAN_1060.vcf \
ProSNP4_BAN_133.vcf \
ProSNP4_BAN_200.vcf \
ProSNP4_BAN_385.vcf \
ProSNP4_BAV_1014.vcf \
ProSNP4_BAV_1022.vcf \
ProSNP4_BAV_22.vcf \
ProSNP4_BAV_337.vcf \
ProSNP4_BAV_448.vcf \
ProSNP4_BRD_1215.vcf \
ProSNP4_BRD_123.vcf \
ProSNP4_BRD_356.vcf \
ProSNP4_BRD_406.vcf \
ProSNP4_BRD_513.vcf \
ProSNP4_CDB_1100.vcf \
ProSNP4_CDB_252.vcf \
ProSNP4_CDB_28.vcf \
ProSNP4_CDB_440.vcf \
ProSNP4_CDB_567.vcf \
ProSNP4_CER_1023.vcf \
ProSNP4_CER_291.vcf \
ProSNP4_CER_39.vcf \
ProSNP4_CER_445.vcf \
ProSNP4_CER_50.vcf \
ProSNP4_GAR_11.vcf \
ProSNP4_GAR_259.vcf \
ProSNP4_GAR_298.vcf \
ProSNP4_GAR_309.vcf \
ProSNP4_GAR_574.vcf \
ProSNP4_KAR_1004.vcf \
ProSNP4_KAR_1159.vcf \
ProSNP4_KAR_288.vcf \
ProSNP4_KAR_57.vcf \
ProSNP4_KAR_596.vcf \
ProSNP4_KLM_1112.vcf \
ProSNP4_KLM_1209.vcf \
ProSNP4_KLM_519.vcf \
ProSNP4_KLM_6.vcf \
ProSNP4_KLM_9.vcf \
ProSNP4_KSW_1047.vcf \
ProSNP4_KSW_1064.vcf \
ProSNP4_KSW_106.vcf \
ProSNP4_KSW_1163.vcf \
ProSNP4_KSW_1206.vcf \
ProSNP4_KSW_132.vcf \
ProSNP4_KSW_18.vcf \
ProSNP4_LOE_1033.vcf \
ProSNP4_LOE_1141.vcf \
ProSNP4_LOE_359.vcf \
ProSNP4_LOE_404.vcf \
ProSNP4_LOE_82.vcf \
ProSNP4_MGU_135.vcf \
ProSNP4_MGU_214.vcf \
ProSNP4_MGU_407.vcf \
ProSNP4_POT_1005.vcf \
ProSNP4_POT_1188.vcf \
ProSNP4_POT_126.vcf \
ProSNP4_POT_313.vcf \
ProSNP4_POT_531.vcf \
ProSNP4_RIV_108.vcf \
ProSNP4_RIV_1103.vcf \
ProSNP4_RIV_1205.vcf \
ProSNP4_RIV_15.vcf \
ProSNP4_RIV_193.vcf \
ProSNP4_RND_124.vcf \
ProSNP4_RND_147.vcf \
ProSNP4_RND_261.vcf \
ProSNP4_RND_318.vcf \
ProSNP4_RND_420.vcf \
ProSNP4_RND_576.vcf \
ProSNP4_SWA_112.vcf \
ProSNP4_SWA_1183.vcf \
ProSNP4_SWA_13.vcf \
ProSNP4_SWA_352.vcf \
ProSNP4_SWA_545.vcf \
ProSNP4_UNI_1217.vcf \
ProSNP4_UNI_306.vcf \
ProSNP4_UNI_347.vcf \
ProSNP4_UNI_383.vcf \
ProSNP4_UNI_544.vcf \
ProSNP4_UNI_55.vcf \
ProSNP4_VAN_1158.vcf \
ProSNP4_VAN_1211.vcf \
ProSNP4_VAN_293.vcf \
ProSNP4_VAN_361.vcf \
ProSNP4_VAN_521.vcf \
ProSNP5_ALC1045.vcf \
ProSNP5_ALC230.vcf \
ProSNP5_ALC250.vcf \
ProSNP5_ALC502.vcf \
ProSNP5_ALC62.vcf \
ProSNP5_ANY1126.vcf \
ProSNP5_ANY116.vcf \
ProSNP5_ANY117.vcf \
ProSNP5_ANY303.vcf \
ProSNP5_ANY322.vcf \
ProSNP5_BAN1138.vcf \
ProSNP5_BAN207.vcf \
ProSNP5_BAN229.vcf \
ProSNP5_BAN506.vcf \
ProSNP5_BAN92.vcf \
ProSNP5_BAV1191.vcf \
ProSNP5_BAV422.vcf \
ProSNP5_BAV527.vcf \
ProSNP5_BAV75.vcf \
ProSNP5_BAV7.vcf \
ProSNP5_BRD369.vcf \
ProSNP5_BRD381.vcf \
ProSNP5_BRD483.vcf \
ProSNP5_BRD484.vcf \
ProSNP5_BRD51.vcf \
ProSNP5_CDB100.vcf \
ProSNP5_CDB1134.vcf \
ProSNP5_CDB376.vcf \
ProSNP5_CDB512.vcf \
ProSNP5_CDB564.vcf \
ProSNP5_CER1117.vcf \
ProSNP5_CER2.vcf \
ProSNP5_CER382.vcf \
ProSNP5_CER458.vcf \
ProSNP5_CER78.vcf \
ProSNP5_GAR1019.vcf \
ProSNP5_GAR434.vcf \
ProSNP5_GAR439.vcf \
ProSNP5_GAR46.vcf \
ProSNP5_GAR547.vcf \
ProSNP5_KAR1044.vcf \
ProSNP5_KAR1063.vcf \
ProSNP5_KAR122.vcf \
ProSNP5_KAR178.vcf \
ProSNP5_KAR346.vcf \
ProSNP5_KLM1025.vcf \
ProSNP5_KLM1203.vcf \
ProSNP5_KLM534.vcf \
ProSNP5_KLM56.vcf \
ProSNP5_KLM97.vcf \
ProSNP5_KSW1145.vcf \
ProSNP5_KSW1206.vcf \
ProSNP5_KSW398.vcf \
ProSNP5_KSW505.vcf \
ProSNP5_KSW597.vcf \
ProSNP5_KSW95.vcf \
ProSNP5_LOE1018.vcf \
ProSNP5_LOE125.vcf \
ProSNP5_LOE388.vcf \
ProSNP5_LOE585.vcf \
ProSNP5_LOE79.vcf \
ProSNP5_MGU1006.vcf \
ProSNP5_MGU1056.vcf \
ProSNP5_MGU16.vcf \
ProSNP5_MGU490.vcf \
ProSNP5_MGU498.vcf \
ProSNP5_POT1176.vcf \
ProSNP5_POT255.vcf \
ProSNP5_POT282.vcf \
ProSNP5_POT525.vcf \
ProSNP5_POT54.vcf \
ProSNP5_RIV151.vcf \
ProSNP5_RIV191.vcf \
ProSNP5_RIV195.vcf \
ProSNP5_RIV44.vcf \
ProSNP5_RIV560.vcf \
ProSNP5_RND1010.vcf \
ProSNP5_RND1210.vcf \
ProSNP5_RND139.vcf \
ProSNP5_RND290.vcf \
ProSNP5_RND579.vcf \
ProSNP5_SWA107.vcf \
ProSNP5_SWA157.vcf \
ProSNP5_SWA189.vcf \
ProSNP5_SWA577.vcf \
ProSNP5_SWA80.vcf \
ProSNP5_UNI386.vcf \
ProSNP5_UNI3.vcf \
ProSNP5_UNI403.vcf \
ProSNP5_VAN163.vcf \
ProSNP5_VAN206.vcf \
ProSNP5_VAN208.vcf \
ProSNP5_VAN260.vcf \
ProSNP5_VAN27.vcf \
ProSNP6_ANY_1020.vcf \
ProSNP6_ANY_1079.vcf \
ProSNP6_ANY_1122.vcf \
ProSNP6_ANY_12.vcf \
ProSNP6_ANY_301.vcf \
ProSNP6_ANY_518.vcf \
ProSNP6_ANY_85.vcf \
ProSNP6_BAV_1077.vcf \
ProSNP6_BAV_1214.vcf \
ProSNP6_BAV_339.vcf \
ProSNP6_BAV_462.vcf \
ProSNP6_BAV_556.vcf \
ProSNP6_BAV_63.vcf \
ProSNP6_BRD_1009.vcf \
ProSNP6_BRD_342.vcf \
ProSNP6_BRD_442.vcf \
ProSNP6_BRD_501.vcf \
ProSNP6_BRD_533.vcf \
ProSNP6_BRD_543.vcf \
ProSNP6_CDB_228.vcf \
ProSNP6_CDB_571.vcf \
ProSNP6_CER_1038.vcf \
ProSNP6_CER_1142.vcf \
ProSNP6_CER_14.vcf \
ProSNP6_CER_199.vcf \
ProSNP6_CER_338.vcf \
ProSNP6_CER_589.vcf \
ProSNP6_GAR_1041.vcf \
ProSNP6_GAR_1200.vcf \
ProSNP6_GAR_174.vcf \
ProSNP6_GAR_299.vcf \
ProSNP6_GAR_437.vcf \
ProSNP6_GAR_557.vcf \
ProSNP6_GAR_90.vcf \
ProSNP6_KAR_1187.vcf \
ProSNP6_KAR_184.vcf \
ProSNP6_KAR_486.vcf \
ProSNP6_KAR_49.vcf \
ProSNP6_KAR_68.vcf \
ProSNP6_KAR_84.vcf \
ProSNP6_KLM_1052.vcf \
ProSNP6_KLM_1129.vcf \
ProSNP6_KLM_155.vcf \
ProSNP6_KLM_343.vcf \
ProSNP6_KLM_475.vcf \
ProSNP6_KLM_566.vcf \
ProSNP6_KLM_582.vcf \
ProSNP6_KSW_1043.vcf \
ProSNP6_KSW_104.vcf \
ProSNP6_KSW_1076.vcf \
ProSNP6_KSW_10.vcf \
ProSNP6_KSW_1125.vcf \
ProSNP6_KSW_47.vcf \
ProSNP6_KSW_516.vcf \
ProSNP6_LOE_1035.vcf \
ProSNP6_LOE_1150.vcf \
ProSNP6_LOE_211.vcf \
ProSNP6_LOE_497.vcf \
ProSNP6_LOE_548.vcf \
ProSNP6_POT_1119.vcf \
ProSNP6_POT_128.vcf \
ProSNP6_POT_183.vcf \
ProSNP6_POT_380.vcf \
ProSNP6_POT_463.vcf \
ProSNP6_POT_594.vcf \
ProSNP6_RIV_1148.vcf \
ProSNP6_RIV_180.vcf \
ProSNP6_RIV_351.vcf \
ProSNP6_RIV_461.vcf \
ProSNP6_RIV_530.vcf \
ProSNP6_RIV_88.vcf \
ProSNP6_RND_1116.vcf \
ProSNP6_RND_1220.vcf \
ProSNP6_RND_164.vcf \
ProSNP6_RND_272.vcf \
ProSNP6_RND_523.vcf \
ProSNP6_RND_65.vcf \
ProSNP6_SWA_140.vcf \
ProSNP6_SWA_19.vcf \
ProSNP6_SWA_304.vcf \
ProSNP6_SWA_317.vcf \
ProSNP6_SWA_341.vcf \
ProSNP6_SWA_515.vcf \
ProSNP6_SWA_96.vcf \
ProSNP6_UNI_1087.vcf \
ProSNP6_UNI_1175.vcf \
ProSNP6_UNI_1204.vcf \
ProSNP6_UNI_470.vcf \
ProSNP6_UNI_479.vcf \
ProSNP6_UNI_546.vcf \
ProSNP6_VAN_1015.vcf \
ProSNP6_VAN_1179.vcf \
ProSNP6_VAN_269.vcf \
ProSNP6_VAN_396.vcf > all_combined.vcf


