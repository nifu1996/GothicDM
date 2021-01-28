
function InitKhorinisNpc()
    local world = "NEWWORLD\\KHORINISDM.zen";
    print("--------------------");
    print("Init Deathmatch NPCs in "..world);
    print("--------------------");

-- 01.) Alligator

    ------------------------------Mittlererwald-------------------------------------------
    SpawnNPC(Alligator(),"FP_ROAM_MEDIUMFOREST_KAP3_27",world);
    ------------------------------Trollschlucht-------------------------------------------
    SpawnNPC(Alligator(),"FP_ROAM_TR_AL_01",world);
    SpawnNPC(Alligator(),"FP_ROAM_TR_AL_02",world);
    SpawnNPC(Alligator(),"FP_ROAM_TR_AL_03",world);
    SpawnNPC(Alligator(),"FP_ROAM_TR_AL_04",world);
    SpawnNPC(Alligator(),"FP_ROAM_TR_AL_06",world);
    SpawnNPC(Alligator(),"FP_ROAM_TR_AL_07",world);
    SpawnNPC(Alligator(),"FP_ROAM_TR_AL_08",world);
    ------------------------------Felder des Großbauer-------------------------------------------
    SpawnNPC(Alligator(),"FP_ROAM_FG_AL_01",world);
    SpawnNPC(Alligator(),"FP_ROAM_FG_AL_02",world);
    SpawnNPC(Alligator(),"FP_ROAM_FG_AL_03",world);

-- 02.) Blattcrawler/Feldräuber
    --------------------------Lobartshof & Umgebung-------------------------------------------
    SpawnNPC(Giant_Bug(),"FP_ROAM_NW_FARM1_OUT_13_01", world);
-- 03.) Blutfliegen

 --------------------------------Xardasturm-------------------------------------------
    SpawnNPC(JK_Bloodfly(), "FP_ROAM_XARDAS_TOWER_3_03", world);
    SpawnNPC(JK_Bloodfly(), "FP_ROAM_XARDAS_TOWER_3_04", world);
    SpawnNPC(JK_Bloodfly(), "FP_ROAM_XARDAS_TOWER_3_05", world);
    SpawnNPC(JK_Bloodfly(), "FP_ROAM_XARDAS_TOWER_3_06", world);
    SpawnNPC(JK_Bloodfly(), "FP_ROAM_XARDAS_TOWER_3_07", world);
    
    --------------------------Lobartshof & Umgebung-------------------------------------------
    SpawnNPC(JK_Bloodfly(), "FP_ROAM_FARM1_BLOODFLY_05", world);
    SpawnNPC(JK_Bloodfly(), "FP_ROAM_FARM1_BLOODFLY_06", world);
    SpawnNPC(JK_Bloodfly(), "FP_ROAM_FARM1_BLOODFLY_07", world);
    SpawnNPC(JK_Bloodfly(), "FP_ROAM_FARM1_BLOODFLY_08", world);
    ------------------------------Mittlererwald-------------------------------------------

  ---------------------------------Kloster-------------------------------------------
    SpawnNPC(JK_Bloodfly(), "FP_ROAM_KLOSTER_43", world);
    SpawnNPC(JK_Bloodfly(), "FP_ROAM_KLOSTER_44", world);
    SpawnNPC(JK_Bloodfly(), "FP_ROAM_KLOSTER_45", world);
    SpawnNPC(JK_Bloodfly(), "FP_ROAM_KLOSTER_46", world);
    SpawnNPC(JK_Bloodfly(), "FP_ROAM_KLOSTER_47", world);
   ---------------------------Großes Plateau------------------------------------------
   SpawnNPC(JK_Bloodfly(), "FP_ROAM_GP_BL_01", world);
   SpawnNPC(JK_Bloodfly(), "FP_ROAM_GP_BL_02", world);
   SpawnNPC(JK_Bloodfly(), "FP_ROAM_GP_BL_03", world);
   SpawnNPC(JK_Bloodfly(), "FP_ROAM_GP_BL_04", world);
   SpawnNPC(JK_Bloodfly(), "FP_ROAM_GP_BL_05", world);
   SpawnNPC(JK_Bloodfly(), "FP_ROAM_GP_BL_06", world);
   SpawnNPC(JK_Bloodfly(), "FP_ROAM_GP_BL_07", world);
   SpawnNPC(JK_Bloodfly(), "FP_ROAM_GP_BL_08", world);
   ---------------------------Weg in den Norden------------------------------------------
   SpawnNPC(JK_Bloodfly(), "FP_ROAM_WIN_BL_01", world);
   SpawnNPC(JK_Bloodfly(), "FP_ROAM_WIN_BL_02", world);
   SpawnNPC(JK_Bloodfly(), "FP_ROAM_WIN_BL_03", world);
   SpawnNPC(JK_Bloodfly(), "FP_ROAM_WIN_BL_04", world);



-- 04.) Bluthunde
    ------------------------------Felder des Großbauer-------------------------------------------
    SpawnNPC(Bloodhound(), "FP_ROAM_FG_BL_01", world);
    SpawnNPC(Bloodhound(), "FP_ROAM_FG_BL_02", world);
    SpawnNPC(Bloodhound(), "FP_ROAM_FG_BL_03", world);
    SpawnNPC(Bloodhound(), "FP_ROAM_FG_BL_04", world);
    SpawnNPC(Bloodhound(), "FP_ROAM_FG_BL_05", world);
    SpawnNPC(Bloodhound(), "FP_ROAM_FG_BL_06", world);
    SpawnNPC(Bloodhound(), "FP_ROAM_FG_BL_07", world);
    SpawnNPC(Bloodhound(), "FP_ROAM_FG_BL_08", world);
    SpawnNPC(Bloodhound(), "FP_ROAM_FG_BL_09", world);
    SpawnNPC(Bloodhound(), "FP_ROAM_FG_BL_10", world);
    SpawnNPC(Bloodhound(), "FP_ROAM_FG_BL_11", world);
    SpawnNPC(Bloodhound(), "FP_ROAM_FG_BL_12", world);
    SpawnNPC(Bloodhound(), "FP_ROAM_FG_BL_13", world);
    SpawnNPC(Bloodhound(), "FP_ROAM_FG_BL_14", world);
    SpawnNPC(Bloodhound(), "FP_ROAM_FG_BL_15", world);
    ---------------------------Taverne------------------------------------------
    SpawnNPC(Bloodhound(), "FP_ROAM_T_BL_01", world);
    SpawnNPC(Bloodhound(), "FP_ROAM_T_BL_02", world);
    SpawnNPC(Bloodhound(), "FP_ROAM_T_BL_03", world);
    SpawnNPC(Bloodhound(), "FP_ROAM_T_BL_04", world);
    SpawnNPC(Bloodhound(), "FP_ROAM_T_BL_05", world);

-- 05.) Echsenmenschen
    ----------------------------------------------Jharkendarruinen------------------------------------------------
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_01",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_02",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_06",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_07",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_08",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_09",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_10",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_11",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_12",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_13",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_14",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_15",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_16",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_17",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_18",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_19",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_20",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_21",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_22",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_23",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_24",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_25",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_26",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_27",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_28",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_29",world);
    SpawnNPC(Draconian(),"FP_ROAM_JH_E_30",world);


-- 06.) Wüsstenratten

    --  Keine 

-- 07.) Razor
     ---------------------------Großes Plateau------------------------------------------
    SpawnNPC(Razor(),"FP_ROAM_GP_RZ_01", world);
    SpawnNPC(Razor(),"FP_ROAM_GP_RZ_02", world);
    SpawnNPC(Razor(),"FP_ROAM_GP_RZ_03", world);
    SpawnNPC(Razor(),"FP_ROAM_GP_RZ_04", world);
    SpawnNPC(Razor(),"FP_ROAM_GP_RZ_05", world);
    SpawnNPC(Razor(),"FP_ROAM_GP_RZ_06", world);
    SpawnNPC(Razor(),"FP_ROAM_GP_RZ_07", world);
    SpawnNPC(Razor(),"FP_ROAM_GP_RZ_08", world);
    SpawnNPC(Razor(),"FP_ROAM_GP_RZ_09", world);
    SpawnNPC(Razor(),"FP_ROAM_GP_RZ_10", world);
    SpawnNPC(Razor(),"FP_ROAM_GP_RZ_11", world);
    SpawnNPC(Razor(),"FP_ROAM_GP_RZ_12", world);
    SpawnNPC(Razor(),"FP_ROAM_GP_RZ_13", world);
    SpawnNPC(Razor(),"FP_ROAM_GP_RZ_14", world);
    SpawnNPC(Razor(),"FP_ROAM_GP_RZ_15", world);
    SpawnNPC(Razor(),"FP_ROAM_GP_RZ_16", world);
    SpawnNPC(Razor(),"FP_ROAM_GP_RZ_17", world);
    SpawnNPC(Razor(),"FP_ROAM_GP_RZ_18", world);
    SpawnNPC(Razor(),"FP_ROAM_GP_RZ_19", world);
    SpawnNPC(Razor(),"FP_ROAM_GP_RZ_20", world);

-- 08.) Sumpfratten

    -- Keine 

-- 09.) Riesenratten
    ------------------------------Xardasturm-------------------------------------------
   
    SpawnNPC(JK_GiantRat(),"FP_ROAM_XARDAS_TOWER_1",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_XARDAS_TOWER_2",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_XARDAS_TOWER_3",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_XARDAS_TOWER_4",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_XARDAS_TOWER_5",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_XARDAS_TOWER_6",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_XARDAS_TOWER_7",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_XARDAS_TOWER_8",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_XARDAS_TOWER_9",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_XARDAS_TOWER_10",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_XARDAS_TOWER_11",world);
    -------------------------------- -Kloster-------------------------------------------
    SpawnNPC(JK_GiantRat(),"FP_ROAM_KLOSTER_01",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_KLOSTER_02",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_KLOSTER_03",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_KLOSTER_04",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_KLOSTER_05",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_KLOSTER_06",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_KLOSTER_07",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_KLOSTER_08",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_KLOSTER_09",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_KLOSTER_10",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_KLOSTER_11",world);
    ---------------------------Taverne------------------------------------------
    SpawnNPC(JK_GiantRat(),"FP_ROAM_TAVERNE_01",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_TAVERNE_02",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_TAVERNE_03",world);
    SpawnNPC(JK_GiantRat(),"FP_ROAM_TAVERNE_04",world);


    

-- 10.) Schattenläufer
    SpawnNPC(OW_Shadowbeast(),"FP_CAMPFIRE_NW_FOREST_04", world);
    SpawnNPC(OW_Shadowbeast(),"NW_CITY_TO_FOREST_04_08", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_NW_CITYFOREST_CAVE_A06_02", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_NW_FOREST_VINOSKELLEREI_01", world);
    ------------------------------Onarshof-------------------------------------------
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_01", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_02", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_03", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_04", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_05", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_06", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_07", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_08", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_09", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_10", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_11", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_12", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_13", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_14", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_15", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_16", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_17", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_19", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_20", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_21", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_22", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_23", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_24", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_25", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_26", world);
    SpawnNPC(OW_Shadowbeast(),"FP_ROAM_OH_S_27", world);
--

-- 11.) Golems
    ------------------------------Mine beim Banditenturm-------------------------------------------
    SpawnNPC(BridgeGolem(),"FP_ROAM_MBT_01", world);
    SpawnNPC(StoneGolem(),"FP_ROAM_MBT_02", world);
    SpawnNPC(IceGolem(),"FP_ROAM_MBT_03", world);
    SpawnNPC(FireGolem(),"FP_ROAM_MBT_04", world);


-- 12.) Scavenger
    ----------------------------Xardasturm-------------------------------------------
    SpawnNPC(OW_Scavenger(), "FP_ROAM_XARDAS_TOWER_4_01", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_XARDAS_TOWER_1_01", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_XARDAS_TOWER_1_02", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_XARDAS_TOWER_1_03", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_XARDAS_TOWER_1_04", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_XARDAS_TOWER_1_05", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_XARDAS_TOWER_3_01", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_XARDAS_TOWER_4_03", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_XARDAS_TOWER_4_05", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_XARDAS_TOWER_4_06", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_XARDAS_TOWER_4_07", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_XARDAS_VALLEY_2_05", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_XARDAS_VALLEY_2_06", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_XARDAS_VALLEY_2_07", world);


    -----------------------Lobartshof & Umgebung-------------------------------------------
    SpawnNPC(OW_Scavenger(), "FP_ROAM_NW_FARM1_PATH_SPAWN_02_01", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_NW_FARM1_PATH_SPAWN_02_04", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_NW_FARM1_PATH_SHEEP_01_04", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_NW_FARM1_PATH_SPAWN_01_03", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_NW_FARM1_PATH_SPAWN_07_03", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_NW_FARM1_PATH_SPAWN_07_04", world);
    ---------------------------------Kloster-------------------------------------------
    SpawnNPC(OW_Scavenger(), "FP_ROAM_KLOSTER_13", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_KLOSTER_14", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_KLOSTER_15", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_KLOSTER_16", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_KLOSTER_17", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_KLOSTER_18", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_KLOSTER_19", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_KLOSTER_20", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_KLOSTER_21", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_KLOSTER_22", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_KLOSTER_23", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_KLOSTER_24", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_KLOSTER_25", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_KLOSTER_26", world);
    
    ---------------------------Großes Plateau------------------------------------------
    SpawnNPC(OW_Scavenger(), "FP_ROAM_GP_SCA_01", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_GP_SCA_02", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_GP_SCA_03", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_GP_SCA_04", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_GP_SCA_05", world);
    ---------------------------Sonnenkreis------------------------------------------
    SpawnNPC(OW_Scavenger(), "FP_ROAM_SK_SCA_01", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_SK_SCA_02", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_SK_SCA_03", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_SK_SCA_04", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_SK_SCA_05", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_SK_SCA_06", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_SK_SCA_07", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_SK_SCA_08", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_SK_SCA_09", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_SK_SCA_10", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_SK_SCA_11", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_SK_SCA_12", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_SK_SCA_13", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_SK_SCA_14", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_SK_SCA_15", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_SK_SCA_16", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_SK_SCA_17", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_SK_SCA_18", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_SK_SCA_19", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_SK_SCA_20", world);
    ---------------------------Taverne------------------------------------------
    SpawnNPC(OW_Scavenger(), "FP_ROAM_TA_SCA_01", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_TA_SCA_02", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_TA_SCA_03", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_TA_SCA_04", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_TA_SCA_05", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_TA_SCA_06", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_TA_SCA_07", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_TA_SCA_08", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_TA_SCA_09", world);
    SpawnNPC(OW_Scavenger(), "FP_ROAM_TA_SCA_10", world);

-- 13.) Snapper
    --------------------Lobartshof & Umgebung-------------------------------------------
    SpawnNPC(OW_Snapper(), "NW_FARM1_PATH_BANDITS_02", world);
    SpawnNPC(OW_Snapper(), "NW_FARM1_PATH_BANDITS_06", world);
    SpawnNPC(OW_Snapper(), "NW_FARM1_PATH_BANDITS_06", world);
    SpawnNPC(OW_Snapper(), "FP_STAND_DEMENTOR_KDF_29", world);
    SpawnNPC(OW_Snapper(), "FP_STAND_DEMENTOR_KDF_30", world);
    SpawnNPC(OW_Snapper(), "NW_FARM1_PATH_BANDITS_11", world);
    SpawnNPC(OW_Snapper(), "FP_CAMPFIRE_NW_FARM1_BANDITS_CAVE_03", world);
    SpawnNPC(OW_Snapper(), "FP_CAMPFIRE_NW_FARM1_BANDITS_CAVE_03", world);
    SpawnNPC(OW_Snapper(), "FP_CAMPFIRE_NW_FARM1_BANDITS_CAVE_07", world);
    SpawnNPC(OW_Snapper(), "FP_CAMPFIRE_NW_FARM1_BANDITS_CAVE_08", world);
    SpawnNPC(OW_Snapper(), "FP_ROAM_FARM1_FORREST_SNAPPER_01", world);
    SpawnNPC(OW_Snapper(), "FP_ROAM_FARM1_FORREST_SNAPPER_02", world);
    SpawnNPC(OW_Snapper(), "FP_ROAM_FARM1_FORREST_SNAPPER_03", world);
    ---------------------------Sonnenkreis------------------------------------------
    SpawnNPC(OW_Snapper(), "FP_ROAM_SK_S_01", world);
    SpawnNPC(OW_Snapper(), "FP_ROAM_SK_S_02", world);
    SpawnNPC(OW_Snapper(), "FP_ROAM_SK_S_03", world);
    SpawnNPC(OW_Snapper(), "FP_ROAM_SK_S_04", world);
    SpawnNPC(OW_Snapper(), "FP_ROAM_SK_S_06", world);
    SpawnNPC(OW_Snapper(), "FP_ROAM_SK_S_07", world);
    SpawnNPC(OW_Snapper(), "FP_ROAM_SK_S_08", world);
    ------------------------------Felder des Großbauer-----------------------------
    SpawnNPC(OW_Snapper(), "FP_ROAM_FG_SN_01", world);
    SpawnNPC(OW_Snapper(), "FP_ROAM_FG_SN_02", world);
    SpawnNPC(OW_Snapper(), "FP_ROAM_FG_SN_03", world);
    SpawnNPC(OW_Snapper(), "FP_ROAM_FG_SN_04", world);
    SpawnNPC(OW_Snapper(), "FP_ROAM_FG_SN_05", world);
    SpawnNPC(OW_Snapper(), "FP_ROAM_FG_SN_06", world);
    SpawnNPC(OW_Snapper(), "FP_ROAM_FG_SN_07", world);
    SpawnNPC(OW_Snapper(), "FP_ROAM_FG_SN_08", world);
    SpawnNPC(OW_Snapper(), "FP_ROAM_FG_SN_09", world);
    SpawnNPC(OW_Snapper(), "FP_ROAM_FG_SN_10", world);

-- 14.) Molerat
    ------------------------------Xardasturm-------------------------------------------
    SpawnNPC(OW_Molerat(), "FP_ROAM_XARDAS_TOWER_2_01", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_XARDAS_TOWER_2_02", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_XARDAS_TOWER_2_03", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_XARDAS_TOWER_2_04", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_XARDAS_TOWER_2_05", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_XARDAS_TOWER_2_06", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_XARDAS_TOWER_3_02", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_XARDAS_TOWER_5_01", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_XARDAS_TOWER_5_02", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_XARDAS_TOWER_5_03", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_XARDAS_TOWER_5_04", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_XARDAS_TOWER_5_05", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_XARDAS_VALLEY_2_01", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_XARDAS_VALLEY_2_02", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_XARDAS_VALLEY_2_03", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_XARDAS_VALLEY_2_04", world);
    ---------------------------------Kloster-------------------------------------------
    SpawnNPC(OW_Molerat(), "FP_ROAM_KLOSTER_27", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_KLOSTER_28", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_KLOSTER_29", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_KLOSTER_30", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_KLOSTER_31", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_KLOSTER_32", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_KLOSTER_33", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_KLOSTER_34", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_KLOSTER_35", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_KLOSTER_36", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_KLOSTER_37", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_KLOSTER_38", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_KLOSTER_39", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_KLOSTER_40", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_KLOSTER_41", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_KLOSTER_42", world);

   
    ---------------------------Großes Plateau------------------------------------------
    SpawnNPC(OW_Molerat(), "FP_ROAM_GP_MO_01", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_GP_MO_02", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_GP_MO_03", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_GP_MO_04", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_GP_MO_05", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_GP_MO_06", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_GP_MO_07", world);
    ---------------------------Taverne------------------------------------------
    SpawnNPC(OW_Molerat(), "FP_ROAM_T_MO_01", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_T_MO_02", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_T_MO_03", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_T_MO_04", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_T_MO_05", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_T_MO_06", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_T_MO_07", world);
    SpawnNPC(OW_Molerat(), "FP_ROAM_T_MO_08", world);

-- 15.) Minecrawler 
    ----------------------------Vor dem Nord Tor -------------------------------------------
    SpawnNPC(Minecrawler(), "FP_ROAM_CITYFOREST_KAP3_09", world);
    SpawnNPC(Minecrawler(), "FP_ROAM_CITYFOREST_KAP3_11", world);
    SpawnNPC(Minecrawler(), "FP_ROAM_CITYFOREST_KAP3_12", world);
    SpawnNPC(Minecrawler(), "FP_ROAM_CITYFOREST_KAP3_16", world);
    SpawnNPC(Minecrawler(), "FP_ROAM_CITYFOREST_KAP3_18", world);
    SpawnNPC(Minecrawler(), "FP_ROAM_CITYFOREST_KAP3_17", world);
    SpawnNPC(Minecrawler(), "FP_ROAM_CITYFOREST_KAP3_02", world);
    SpawnNPC(Minecrawler(), "FP_ROAM_CITYFOREST_KAP3_01", world);
    SpawnNPC(Minecrawler(), "FP_ROAM_CITYFOREST_KAP3_21", world);
-- 16.) Minecrawler Warrior
    ----------------------------Vor dem Nord Tor -------------------------------------------
    SpawnNPC(MinecrawlerWarrior(), "FP_ROAM_CITYFOREST_KAP3_06", world);
    SpawnNPC(MinecrawlerWarrior(), "FP_ROAM_CITYFOREST_KAP3_07", world);
    SpawnNPC(MinecrawlerWarrior(), "FP_ITEM_FOREST_STPLATE_01", world);
    -----------------------------------------------------------------
-- 17.) Harpie
    

-- 18.) Goblin Krieger 

    -----------------------------Lobartshof & Umgebung-------------------------------------------
    SpawnNPC(OW_Gobbo_Warrior(),"FP_ROAM_NW_FARM1_MILL_01_01", world);
    SpawnNPC(OW_Gobbo_Warrior(),"FP_ROAM_NW_FARM1_MILL_01_06", world);
    ----------------------------Vor dem Nord Tor -------------------------------------------
    SpawnNPC(OW_Gobbo_Warrior(), "FP_ROAM_NW_CITY_SMFOREST_09_02", world);
    SpawnNPC(OW_Gobbo_Warrior(), "FP_ROAM_NW_CITY_SMFOREST_09_04", world);
    SpawnNPC(OW_Gobbo_Warrior(), "FP_ROAM_NW_CITY_SMFOREST_09_03", world);
    SpawnNPC(OW_Gobbo_Warrior(), "FP_ROAM_NW_CITY_SMFOREST_09_01", world);

-- 19.) Schwarzergoblin 
    -----------------------------Lobartshof & Umgebung-------------------------------------------
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_FARM1_SHEEP_11", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_FARM1_SHEEP_13", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_CAMPFIRE_NW_FARM1_MILL_01", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_CAMPFIRE_NW_FARM1_MILL_01", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_CAMPFIRE_NW_FARM1_MILL_01", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_NW_FARM1_MILL_01_04", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_NW_FARM1_MILL_01_02", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_NW_FARM1_MILL_01_05", world);
    ----------------------------Vor dem Nord Tor -------------------------------------------
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_NW_CITY_SMFOREST_05_01", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_NW_CITY_SMFOREST_05_02", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_CAMPFIRE_NW_FOREST_02", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_CAMPFIRE_NW_FOREST_02", world);
    ------------------------------Mittlererwald-------------------------------------------
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_MW_FARM_13", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_MW_FARM_14", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_MW_FARM_15", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_MW_FARM_16", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_MW_FARM_17", world);
    ---------------------------Großes Plateau------------------------------------------
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_GP_SG_01", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_GP_SG_02", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_GP_SG_03", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_GP_SG_04", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_GP_SG_05", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_GP_SG_07", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_GP_SG_08", world);
    ---------------------------Wald des Großbauern------------------------------------------
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_GBW_SG_01", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_GBW_SG_03", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_GBW_SG_04", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_GBW_SG_05", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_GBW_SG_06", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_GBW_SG_07", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_GBW_SG_08", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_GBW_SG_09", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_GBW_SG_10", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_GBW_SG_11", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_GBW_SG_12", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_GBW_SG_13", world);
    SpawnNPC(OW_Gobbo_Black(), "FP_ROAM_GBW_SG_14", world);
   
    
    



-- 20.) Grüner Goblin
    ------------------------------Xardasturm-------------------------------------------
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_XARDAS_CAVE_05", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_XARDAS_CAVE_06", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_XARDAS_CAVE_07", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_XARDASCAVE_DJG_01", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_XARDASCAVE_DJG_02", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_XARDASCAVE_DJG_03", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_XARDAS_CAVE_01", world)
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_XARDAS_CAVE_02", world)
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_XARDAS_CAVE_03", world)
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_XARDAS_CAVE_04", world)
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_XARDAS_CAVE_08", world)
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_XARDAS_CAVE_09", world)
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_XARDAS_CAVE_10", world)
    
 -----------------------------Lobartshof & Umgebung-------------------------------------------
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_FARM1_SHEEP_23", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_FARM1_SHEEP_19", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_FARM1_SHEEP_16", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_FARM1_SHEEP_24", world);
    ----------------------------Vor dem Nord Tor -------------------------------------------
    ------------------------------Mittlererwald-------------------------------------------
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_MW_FARM_01", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_MW_FARM_02", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_MW_FARM_03", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_MW_FARM_04", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_MW_FARM_05", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_MW_FARM_06", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_MW_FARM_07", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_MW_FARM_08", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_MW_FARM_09", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_MW_FARM_10", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_MW_FARM_11", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_MW_FARM_12", world);
    ---------------------------Großes Plateau------------------------------------------
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_GP_G_01", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_GP_G_02", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_GP_G_03", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_GP_G_04", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_GP_G_05", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_GP_G_06", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_GP_G_07", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_GP_G_08", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_GP_G_09", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_GP_G_10", world);
    ------------------------------Weg in den Norden -------------------------------------------
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_WIN_G_01", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_WIN_G_02", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_WIN_G_03", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_WIN_G_04", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_WIN_G_05", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_WIN_G_06", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_WIN_G_07", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_WIN_G_08", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_WIN_G_09", world);
    SpawnNPC(OW_Gobbo_Green(), "FP_ROAM_WIN_G_10", world);
    



-- 21.) Warg / Orkhund
    ------------------------------Jacksleuchtturm-------------------------------------------
    SpawnNPC(JK_Warg(),"NW_CITY_TO_LIGHTHOUSE_11",world);
    SpawnNPC(JK_Warg(),"NW_CITY_TO_LIGHTHOUSE_13_MONSTER3",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_NW_CITY_TO_LIGHTHOUSE_13_MONSTER_05",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_NW_CITY_TO_LIGHTHOUSE_13_MONSTER_01",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_NW_CITY_TO_LIGHTHOUSE_13_MONSTER_03",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_NW_FOREST_PATH_38_MONSTER_02",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_NW_FOREST_PATH_38_MONSTER_04",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_NW_FOREST_PATH_38_MONSTER_01",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_NW_CITY_TO_LIGHTHOUSE_13_MONSTER7_03",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_NW_CITY_TO_LIGHTHOUSE_13_MONSTER7_04",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_NW_CITY_TO_LIGHTHOUSE_13_MONSTER8_02",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_MEDIUMFOREST_KAP2_29",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_MEDIUMFOREST_KAP2_28",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_MEDIUMFOREST_KAP2_30",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_NW_FOREST_PATH_35_01_01",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_NW_FOREST_PATH_31_NAVIGATION19_01",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_NW_FOREST_PATH_31_NAVIGATION10_02",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_NW_FOREST_PATH_31_NAVIGATION16_04",world);
    ------------------------------Trollschlucht-------------------------------------------
    SpawnNPC(JK_Warg(),"FP_ROAM_TS_W_01",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_TS_W_02",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_TS_W_03",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_TS_W_04",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_TS_W_05",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_TS_W_06",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_TS_W_07",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_TS_W_08",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_TS_W_09",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_TS_W_10",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_TS_W_11",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_TS_W_12",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_TS_W_13",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_TS_W_14",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_TS_W_15",world);
    ------------------------------Wald beim Großbauern-------------------------------------------
    SpawnNPC(JK_Warg(),"FP_ROAM_WDG_WARG_01",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_WDG_WARG_02",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_WDG_WARG_03",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_WDG_WARG_04",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_WDG_WARG_05",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_WDG_WARG_06",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_WDG_WARG_07",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_WDG_WARG_08",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_WDG_WARG_09",world);
    SpawnNPC(JK_Warg(),"FP_ROAM_WDG_WARG_10",world);
-- 22.) Feuerwaran
    SpawnNPC(OW_Firewaran(),"FP_ROAM_FISHERCOAST_01", world);
    SpawnNPC(OW_Firewaran(),"FP_SHELLSPAWN_CITY_06", world);
    SpawnNPC(OW_Firewaran(),"FP_SHELLSPAWN_CITY_02", world);
    
-- 23.) Waran
    --------------------Lobartshof & Umgebung-------------------------------------------
    SpawnNPC(OW_Waran(), "FP_ROAM_FARM1_GOBBO_06", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_FARM1_GOBBO_03", world);
    SpawnNPC(OW_Waran(), "FP_STAND_DEMENTOR_KDF_27", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_FARM1_ORC_SCOUT_01", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_FARM1_FORREST_WOLF_01", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_FARM1_FORREST_WOLF_04", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_FARM1_FORREST_WOLF_09", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_NW_FARM1_CITYWALL_RIGHT_04_03", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_NW_FARM1_CITYWALL_RIGHT_04_04", world);
    ----------------------------Vor dem Nord Tor -------------------------------------------
    SpawnNPC(OW_Waran(), "FP_ROAM_NW_CITY_SMFOREST_03_03", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_NW_CITY_SMFOREST_03_01", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_NW_CITY_SMFOREST_03_M_03", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_NW_CITY_SMFOREST_03_M_02", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_CITYFOREST_KAP3_38", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_CITYFOREST_KAP3_20", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_CITYFOREST_KAP3_24", world);
    ------------------------------Mittlererwald-------------------------------------------
    SpawnNPC(OW_Waran(), "FP_ROAM_NW_FOREST_PATH_35_01_MONSTER_01", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_NW_FOREST_PATH_35_01_MONSTER_03", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_NW_FOREST_PATH_27_03_04", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_MEDIUMFOREST_KAP3_30", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_MEDIUMFOREST_KAP3_20", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_NW_FOREST_PATH_62_06_04", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_NW_FOREST_PATH_62_06_04", world);
    ---------------------------Großes Plateau------------------------------------------
    SpawnNPC(OW_Waran(), "FP_ROAM_GP_W_02", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_GP_W_03", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_GP_W_04", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_GP_W_05", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_GP_W_06", world);
    ---------------------------Trollschlucht------------------------------------------
    SpawnNPC(OW_Waran(), "FP_ROAM_TR_WARAN_01", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_TR_WARAN_02", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_TR_WARAN_03", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_TR_WARAN_04", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_TR_WARAN_05", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_TR_WARAN_06", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_TR_WARAN_07", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_TR_WARAN_08", world);
    ---------------------------Trollschlucht------------------------------------------
    SpawnNPC(OW_Waran(), "FP_ROAM_WIN_WARAN_01", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_WIN_WARAN_02", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_WIN_WARAN_03", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_WIN_WARAN_04", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_WIN_WARAN_05", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_WIN_WARAN_06", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_WIN_WARAN_07", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_WIN_WARAN_08", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_WIN_WARAN_09", world);
    SpawnNPC(OW_Waran(), "FP_ROAM_WIN_WARAN_10", world);

-- 24.) Sumpfhaie
 

-- 25.) Panther
 ---------------------------Großes Plateau------------------------------------------
    SpawnNPC(StonePuma(),"FP_ROAM_GP_Tal_01",world);
    SpawnNPC(StonePuma(),"FP_ROAM_GP_Tal_02",world);
    SpawnNPC(StonePuma(),"FP_ROAM_GP_Tal_03",world);
    SpawnNPC(StonePuma(),"FP_ROAM_GP_Tal_04",world);
    SpawnNPC(StonePuma(),"FP_ROAM_GP_Tal_05",world);
    SpawnNPC(StonePuma(),"FP_ROAM_GP_Tal_06",world);
    ------------------------------Trollschlucht-------------------------------------
    SpawnNPC(StonePuma(),"FP_ROAM_TS_P_01",world);
    SpawnNPC(StonePuma(),"FP_ROAM_TS_P_02",world);
    SpawnNPC(StonePuma(),"FP_ROAM_TS_P_03",world);
    SpawnNPC(StonePuma(),"FP_ROAM_TS_P_04",world);
    SpawnNPC(StonePuma(),"FP_ROAM_TS_P_06",world);
    ------------------------------Felder des Großbauer-----------------------------
    SpawnNPC(StonePuma(),"FP_ROAM_FG_P_01",world);
    SpawnNPC(StonePuma(),"FP_ROAM_FG_P_02",world);
    SpawnNPC(StonePuma(),"FP_ROAM_FG_P_3",world);
    SpawnNPC(StonePuma(),"FP_ROAM_FG_P_04",world);
    ------------------------------Wald des Großbauer-----------------------------
    SpawnNPC(StonePuma(),"FP_ROAM_WDG_P_01",world);
    SpawnNPC(StonePuma(),"FP_ROAM_WDG_P_02",world);
    SpawnNPC(StonePuma(),"FP_ROAM_WDG_P_03",world);
    SpawnNPC(StonePuma(),"FP_ROAM_WDG_P_04",world);
    SpawnNPC(StonePuma(),"FP_ROAM_WDG_P_05",world);
    SpawnNPC(StonePuma(),"FP_ROAM_WDG_P_06",world);


-- 26.) Lurker 
    --------------------Lobartshof & Umgebung-------------------------------------------
    SpawnNPC(OW_Lurker(), "FP_ROAM_FARM1_FORREST_SHADOW_01", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_FARM1_FORREST_SHADOW_02", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_FARM1_FORREST_SHADOW_03", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_NW_FARM1_PATH_SPAWN_05_03", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_FARM1_Wolf_04", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_NW_FARM1_CITYWALL_RIGHT_02_03", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_NW_FARM1_CITYWALL_RIGHT_02", world);
    ----------------------------Vor dem Nord Tor -------------------------------------------
    SpawnNPC(OW_Lurker(), "FP_ITEM_HERB_04", world);
    SpawnNPC(OW_Lurker(), "FP_ITEM_HERB_10", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_CITY_TO_FOREST_15", world);
    SpawnNPC(OW_Lurker(), "FP_ITEM_HERB_06", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_CITY_TO_FOREST_11", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_CITY_TO_FOREST_54", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_CITY_TO_FOREST_33", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_CITY_TO_FOREST_34", world);
    ----------------------------Vor dem Nord Tor -------------------------------------------
   
   
    ---------------------------Großes Plateau------------------------------------------
    SpawnNPC(OW_Lurker(), "FP_ROAM_LU_01", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_LU_02", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_LU_03", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_LU_04", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_LU_05", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_LU_06", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_LU_07", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_LU_08", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_LU_09", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_LU_10", world);
    ---------------------------Weg in den Norden------------------------------------------
    SpawnNPC(OW_Lurker(), "FP_ROAM_WIN_LU_01", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_WIN_LU_02", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_WIN_LU_03", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_WIN_LU_04", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_WIN_LU_05", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_WIN_LU_06", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_WIN_LU_07", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_WIN_LU_08", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_WIN_LU_09", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_WIN_LU_10", world);
    ---------------------------Taverne------------------------------------------
    SpawnNPC(OW_Lurker(), "FP_ROAM_T_LU_01", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_T_LU_02", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_T_LU_03", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_T_LU_04", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_T_LU_05", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_T_LU_06", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_T_LU_07", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_T_LU_08", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_T_LU_09", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_T_LU_10", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_T_LU_11", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_T_LU_12", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_T_LU_13", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_T_LU_14", world);
    SpawnNPC(OW_Lurker(), "FP_ROAM_T_LU_15", world);


-- 27.) Ork Schamanen
    ----------------------------------City--------------------------------------------------
    SpawnNPC(OrcShaman(),"FP_ROAM_FISHERMAN_02", world);
    SpawnNPC(OrcShaman(),"FP_ROAM_FISHERMAN_03", world);
    SpawnNPC(OrcShaman(),"FP_ROAM_FISHERMAN_03", world);
    SpawnNPC(OrcShaman(),"FP_STAND_SHIP_08", world);
    ----------------------------------Banditenturm--------------------------------------------------
    SpawnNPC(OrcShaman(),"FP_ROAM_BT_OS_01", world);
    SpawnNPC(OrcShaman(),"FP_ROAM_BT_OS_02", world);
    SpawnNPC(OrcShaman(),"FP_ROAM_BT_OS_03", world);
    SpawnNPC(OrcShaman(),"FP_ROAM_BT_OS_04", world);
    SpawnNPC(OrcShaman(),"FP_ROAM_BT_OS_05", world);
    SpawnNPC(OrcShaman(),"FP_ROAM_BT_OS_06", world);

-- 28.) Ork Krieger
    ----------------------------------City--------------------------------------------------
    SpawnNPC(OrcWarrior2(),"FP_ROAM_FISHERMAN_04", world);
    SpawnNPC(OrcWarrior3(),"FP_ROAM_FISHERMAN_05", world);
    SpawnNPC(OrcWarrior2(),"FP_SHELLSPAWN_CITY", world);
    SpawnNPC(OrcWarrior2(),"FP_STAND_WAITFORSHIP_01", world);
    SpawnNPC(OrcWarrior2(),"FP_STAND_WAITFORSHIP_06", world);
    SpawnNPC(OrcWarrior2(),"FP_STAND_WAITFORSHIP_08", world);
    SpawnNPC(OrcWarrior2(),"FP_STAND_WAITFORSHIP_05", world);
    SpawnNPC(OrcWarrior3(),"FP_SMALLTALK_SHIP_04", world);

    SpawnNPC(OrcElite(),"FP_SMALLTALK_SHIP_03", world);
    SpawnNPC(OrcElite(),"FP_SMALLTALK_SHIP_01", world);
    SpawnNPC(OrcElite(),"FP_STAND_SHIP_01", world);
    SpawnNPC(OrcElite(),"FP_STAND_SHIP_05", world);
    SpawnNPC(OrcElite(),"FP_STAND_SHIP_06", world);
    ----------------------------------Banditen Turm-------------------------------------------------
    SpawnNPC(OrcWarrior2(),"FP_ROAM_BT_OK_01", world);
    SpawnNPC(OrcWarrior2(),"FP_ROAM_BT_OK_02", world);
    SpawnNPC(OrcWarrior2(),"FP_ROAM_BT_OK_03", world);
    SpawnNPC(OrcWarrior2(),"FP_ROAM_BT_OK_04", world);
    SpawnNPC(OrcWarrior2(),"FP_ROAM_BT_OK_05", world);
    SpawnNPC(OrcWarrior2(),"FP_ROAM_BT_OK_06", world);
    SpawnNPC(OrcWarrior2(),"FP_ROAM_BT_OK_07", world);
    SpawnNPC(OrcWarrior2(),"FP_ROAM_BT_OK_08", world);
    SpawnNPC(OrcWarrior2(),"FP_ROAM_BT_OK_09", world);
    SpawnNPC(OrcWarrior2(),"FP_ROAM_BT_OK_10", world);
    SpawnNPC(OrcWarrior2(),"FP_ROAM_BT_OK_11", world);
    SpawnNPC(OrcWarrior2(),"FP_ROAM_BT_OK_12", world);
    SpawnNPC(OrcWarrior2(),"FP_ROAM_BT_OK_13", world);
    SpawnNPC(OrcWarrior2(),"FP_ROAM_BT_OK_14", world);
    SpawnNPC(OrcWarrior2(),"FP_ROAM_BT_OK_15", world);
    SpawnNPC(OrcWarrior2(),"FP_ROAM_BT_OK_16", world);
    SpawnNPC(OrcWarrior2(),"FP_ROAM_BT_OK_17", world);
    SpawnNPC(OrcWarrior2(),"FP_ROAM_BT_OK_18", world);
    SpawnNPC(OrcWarrior2(),"FP_ROAM_BT_OK_19", world);
    SpawnNPC(OrcWarrior2(),"FP_ROAM_BT_OK_20", world);

    
    SpawnNPC(OrcElite(),"FP_ROAM_BT_OE_01", world);
    SpawnNPC(OrcElite(),"FP_ROAM_BT_OE_02", world);
    SpawnNPC(OrcElite(),"FP_ROAM_BT_OE_03", world);
    SpawnNPC(OrcElite(),"FP_ROAM_BT_OE_04", world);
    SpawnNPC(OrcElite(),"FP_ROAM_BT_OE_05", world);


-- 29.) Ork Späher
    ----------------------------------City--------------------------------------------------
    SpawnNPC(OrcScout(),"NW_CITY_WAY_TO_SHIP_10", world);
    SpawnNPC(OrcScout(),"NW_CITY_SHIP_GUARD_01", world);
    SpawnNPC(OrcScout(),"NW_CITY_SHIP_GUARD_02", world);
    ----------------------------------Banditenturm--------------------------------------------------
    SpawnNPC(OrcScout(),"FP_ROAM_BT_OSP_01", world);
    SpawnNPC(OrcScout(),"FP_ROAM_BT_OSP_02", world);
    SpawnNPC(OrcScout(),"FP_ROAM_BT_OSP_03", world);
    SpawnNPC(OrcScout(),"FP_ROAM_BT_OSP_04", world);
    SpawnNPC(OrcScout(),"FP_ROAM_BT_OSP_05", world);
    SpawnNPC(OrcScout(),"FP_ROAM_BT_OSP_06", world);



-- 30.) Ork Beiser 
    ------------------------------Felder des Großbauer-------------------------------------------
    SpawnNPC(OrcBiter(),"FP_ROAM_FG_OB_01", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_FG_OB_02", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_FG_OB_03", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_FG_OB_05", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_FG_OB_06", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_FG_OB_07", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_FG_OB_08", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_FG_OB_09", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_FG_OB_10", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_FG_OB_11", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_FG_OB_12", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_FG_OB_13", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_FG_OB_14", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_FG_OB_15", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_FG_OB_16", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_FG_OB_17", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_FG_OB_18", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_FG_OB_19", world);

    ------------------------------Mittelwald-------------------------------------------
    SpawnNPC(OrcBiter(),"FP_ROAM_MI_OB_01", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_MI_OB_02", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_MI_OB_03", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_MI_OB_04", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_MI_OB_05", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_MI_OB_06", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_MI_OB_07", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_MI_OB_08", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_MI_OB_09", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_MI_OB_10", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_MI_OB_11", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_MI_OB_12", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_MI_OB_13", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_MI_OB_14", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_MI_OB_15", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_MI_OB_16", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_MI_OB_17", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_MI_OB_18", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_MI_OB_19", world);
    SpawnNPC(OrcBiter(),"FP_ROAM_MI_OB_20", world);

-- 32.) Skellete 
    ----------------------------------City--------------------------------------------------
    SpawnNPC(SkeletonScout(),"NW_CITY_ENTRANCE_GUARD_02", world);
    SpawnNPC(SkeletonScout(),"NW_CITY_ENTRANCE_GUARD_01", world);
    SpawnNPC(SkeletonScout(),"NW_CITY_ENTRANCE_BACK_GUARD_02", world);
    SpawnNPC(SkeletonScout(),"NW_CITY_ENTRANCE_BACK_GUARD_01", world);
    SpawnNPC(SkeletonScout(),"NW_CITY_UPTOWN_GUARD_01", world);
    SpawnNPC(SkeletonScout(),"NW_CITY_UPTOWN_GUARD_02", world);
    SpawnNPC(SkeletonScout(),"FP_STAND_CITY_13",world);
    SpawnNPC(SkeletonScout(),"FP_STAND_WEAPON_03",world);
    SpawnNPC(SkeletonScout(),"FP_STAND_RENGARU",world);
    SpawnNPC(SkeletonScout(),"FP_SMALLTALK_BLUBBER_01",world);
    SpawnNPC(SkeletonScout(),"FP_STAND_CITY_18",world);
    SpawnNPC(SkeletonScout(),"FP_STAND_GUARDING_MORTIS",world);
    SpawnNPC(SkeletonScout(),"NW_CITYHALL_GUARD_02",world);
    SpawnNPC(SkeletonScout(),"NW_CITYHALL_GUARD_01",world);
    SpawnNPC(SkeletonScout(),"FP_SWEEP_OV_03",world);
    SpawnNPC(SkeletonScout(),"NW_CITYHALL_WARROOM_GUARD_02",world);
    SpawnNPC(SkeletonScout(),"NW_CITYHALL_WARROOM_GUARD_01",world);
    SpawnNPC(SkeletonScout(),"FP_STAND_CITY_05",world);
    SpawnNPC(SkeletonScout(),"FP_STAND_HAFEN_03",world);
    SpawnNPC(SkeletonScout(),"FP_STAND_HAFEN_01",world);
    SpawnNPC(SkeletonScout(),"FP_PICK_CITY_01",world);

    SpawnNPC(Skeleton(),"FP_STAND_CITY_ANDRE",world);
    SpawnNPC(Skeleton(),"FP_SMALLTALK_CITY_12",world);
    SpawnNPC(Skeleton(),"FP_STAND_CITY_REGIS",world);
    SpawnNPC(Skeleton(),"FP_SMALLTALK_SCHREINER_02",world);
    SpawnNPC(Skeleton(),"FP_STAND_VATRAS_01",world);
    SpawnNPC(Skeleton(),"FP_SMALLTALK_CITY_13",world);
    SpawnNPC(Skeleton(),"FP_STAND_DARON",world);
    SpawnNPC(Skeleton(),"FP_STAND_ZURIS",world);
    SpawnNPC(Skeleton(),"FP_STAND_CITY_16",world);
    SpawnNPC(Skeleton(),"FP_SMALLTALK_CITYKNEIPE_01",world);
    SpawnNPC(Skeleton(),"FP_SWEEP_OV_01",world);
    SpawnNPC(Skeleton(),"FP_SMALLTALK_CITY_39",world);
    SpawnNPC(Skeleton(),"FP_SWEEP_OV_02",world);
    SpawnNPC(Skeleton(),"FP_STAND_GUARDING_HALVOR",world);
    SpawnNPC(Skeleton(),"FP_SMALLTALK_CITY_36",world);
    SpawnNPC(Skeleton(),"FP_SMALLTALK_CITY_07",world);
    SpawnNPC(Skeleton(),"FP_SMALLTALK_CITY_PALCAMP_02",world);
    SpawnNPC(Skeleton(),"FP_SMALLTALK_CITY_PALCAMP_04",world);
    SpawnNPC(Skeleton(),"FP_SMALLTALK_CITY_PALCAMP_06",world);
    SpawnNPC(Skeleton(),"FP_SMALLTALK_CITY_PALCAMP_05",world);
    SpawnNPC(Skeleton(),"FP_SMALLTALK_HAFEN_03",world);
    SpawnNPC(Skeleton(),"FP_SMALLTALK_CITY_18",world);
    SpawnNPC(Skeleton(),"FP_ROAM_CITY_SHEEP_04",world);
    SpawnNPC(Skeleton(),"NW_CITY_HABOUR_10",world);


    SpawnNPC(SkeletonMage(),"NW_CITY_MERCHANT_TEMPLE_FRONT",world);
    SpawnNPC(SkeletonMage(),"FP_STAND_KASERN_01",world);
    SpawnNPC(SkeletonMage(),"FP_SMALLTALK_CITY_PALCAMP_11",world);
    SpawnNPC(SkeletonMage(),"FP_SMALLTALK_CITY_26",world);
    ------------------------------Wald beim Großbauern-------------------------------------------
    SpawnNPC(SkeletonScout(),"FP_ROAM_WGB_01", world);
    SpawnNPC(SkeletonScout(),"FP_ROAM_WGB_02", world);
    SpawnNPC(SkeletonScout(),"FP_ROAM_WGB_03", world);
    SpawnNPC(SkeletonScout(),"FP_ROAM_WGB_04", world);
    SpawnNPC(SkeletonScout(),"FP_ROAM_WGB_05", world);
    SpawnNPC(SkeletonScout(),"FP_ROAM_WGB_06", world);

    SpawnNPC(SkeletonMage(),"FP_ROAM_WGB_M_01",world);

    SpawnNPC(Skeleton(),"FP_ROAM_WGB_S_01",world);
    SpawnNPC(Skeleton(),"FP_ROAM_WGB_S_02",world);
    SpawnNPC(Skeleton(),"FP_ROAM_WGB_S_03",world);
    SpawnNPC(Skeleton(),"FP_ROAM_WGB_S_04",world);
    SpawnNPC(Skeleton(),"FP_ROAM_WGB_S_05",world);
    SpawnNPC(Skeleton(),"FP_ROAM_WGB_S_06",world);
    SpawnNPC(Skeleton(),"FP_ROAM_WGB_S_07",world);
    SpawnNPC(Skeleton(),"FP_ROAM_WGB_S_08",world);
    SpawnNPC(Skeleton(),"FP_ROAM_WGB_S_09",world);
    SpawnNPC(Skeleton(),"FP_ROAM_WGB_S_10",world);

-- 33.) Sumpfdrohnen

    -- Keine 

-- 34.) Steinwächer 
    --------------------------Lobartshof & Umgebung-------------------------------------------
    SpawnNPC(Stoneguardian(), "FP_STAND_DEMENTOR_KDF_33",world);
    SpawnNPC(Stoneguardian(), "FP_ITEM_FARM1_01",world);
    SpawnNPC(Stoneguardian(), "FP_ROAM_NW_FARM1_OUT_15_02",world);
    SpawnNPC(Stoneguardian(), "FP_ROAM_WIN_ST_01",world);
    SpawnNPC(Stoneguardian(), "FP_ROAM_WIN_ST_02",world);



-- 35.) Wolf
    ------------------------------Xardasturm-------------------------------------------
    SpawnNPC(OW_Wolf(), "FP_ROAM_XARDAS_5_05", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_XARDAS_VALLEY_1_01", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_XARDAS_VALLEY_1_02", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_XARDAS_VALLEY_1_03", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_XARDAS_VALLEY_1_04", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_XARDAS_VALLEY_1_05", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_XARDAS_VALLEY_1_06", world);

 ----------------------------Lobartshof & Umgebung-------------------------------------------
    SpawnNPC(OW_Wolf(), "FP_ROAM_FARM1_SHEEP_08", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_FARM1_FORREST_BLOODFLY_01", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_FARM1_FORREST_BLOODFLY_02", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_FARM1_FORREST_BLOODFLY_03", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_FARM1_FORREST_BLOODFLY_10", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_FARM1_FORREST_BLOODFLY_07", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_FARM1_FORREST_BLOODFLY_02", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_FARM1_FORREST_BLOODFLY_03", world);
    SpawnNPC(OW_Wolf(), "FP_STAND_FARM1_CANTHAR", world);
    ----------------------------Vor dem Nord Tor -------------------------------------------
    SpawnNPC(OW_Wolf(), "FP_ROAM_CITY_TO_FOREST_04", world);
    SpawnNPC(OW_Wolf(), "FP_ITEM_HERB_01", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_NW_CITY_TO_FOREST_04_01", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_NW_CITY_TO_FOREST_04_02", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_CITY_TO_FOREST_38", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_CITY_TO_FOREST_20", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_CITY_TO_FOREST_23", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_CITY_TO_FOREST_24", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_CITY_TO_FOREST_03", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_CITY_TO_FOREST_02", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_CITY_TO_FOREST_37", world);
    ------------------------------Mittlererwald-------------------------------------------
    SpawnNPC(OW_Wolf(), "FP_ROAM_MEDIUMFOREST_KAP3_23", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_NW_FOREST_PATH_57_04", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_NW_FOREST_PATH_57_01", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_MEDIUMFOREST_KAP2_11", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_MEDIUMFOREST_01", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_MEDIUMFOREST_02", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_MEDIUMFOREST_03", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_MEDIUMFOREST_04", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_MEDIUMFOREST_05", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_MEDIUMFOREST_07", world);
    ---------------------------Weg in den Norden------------------------------------------
    SpawnNPC(OW_Wolf(), "FP_ROAM_WIN_W_01", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_WIN_W_03", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_WIN_W_04", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_WIN_W_05", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_WIN_W_06", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_WIN_W_07", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_WIN_W_08", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_WIN_W_09", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_WIN_W_10", world);
    ---------------------------Taverne------------------------------------------
    SpawnNPC(OW_Wolf(), "FP_ROAM_T_W_01", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_T_W_02", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_T_W_03", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_T_W_04", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_T_W_05", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_T_W_06", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_T_W_07", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_T_W_08", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_T_W_09", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_T_W_10", world);
    ---------------------------Wald des Großbauern------------------------------------------
    SpawnNPC(OW_Wolf(), "FP_ROAM_WDG_W_01", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_WDG_W_02", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_WDG_W_03", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_WDG_W_04", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_WDG_W_05", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_WDG_W_06", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_WDG_W_07", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_WDG_W_08", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_WDG_W_09", world);
    SpawnNPC(OW_Wolf(), "FP_ROAM_WDG_W_10", world);
    







-- 36.) Troll
    SpawnNPC(JK_Troll(),"FP_ITEM_HERB_11",world);
    SpawnNPC(JK_Troll(),"FP_ROAM_PASS_01",world);
    ------------------------------Mittlererwald-------------------------------------------
    SpawnNPC(JK_Troll(),"FP_ROAM_NW_FOREST_PATH_801_01",world);
    SpawnNPC(JK_Troll(),"FP_ROAM_NW_FOREST_PATH_82_03",world);
    ------------------------------Trollschlucht-------------------------------------------
    SpawnNPC(JK_Troll(),"FP_ROAM_TS_Troll_01",world);
    SpawnNPC(JK_Troll(),"FP_ROAM_TS_Troll_02",world);
    SpawnNPC(JK_Troll(),"FP_ROAM_TS_Troll_03",world);
    SpawnNPC(JK_Troll(),"FP_ROAM_TS_Troll_04",world);
    SpawnNPC(JK_Troll(),"FP_ROAM_TS_Troll_05",world);
    SpawnNPC(JK_Troll(),"FP_ROAM_TS_Troll_06",world);
    SpawnNPC(JK_Troll(),"FP_ROAM_TS_Troll_07",world);
    SpawnNPC(JK_Troll(),"FP_ROAM_TS_Troll_08",world);
    SpawnNPC(JK_Troll(),"FP_ROAM_TS_Troll_09",world);
    SpawnNPC(JK_Troll(),"FP_ROAM_TS_Troll_10",world);



-- 37.) Zombie
     ----------------------------------City-----------------------------------------------------
    SpawnNPC(OW_Zombie(), "NW_CITY_SMITH_01", world); 
    SpawnNPC(OW_Zombie(), "FP_STAND_CITY_17", world); 
    SpawnNPC(OW_Zombie(), "FP_STAND_CITY_BEER_04", world); 
    SpawnNPC(OW_Zombie(), "FP_STAND_CITY_BEER_02", world); 
    SpawnNPC(OW_Zombie(), "NW_CITY_UPTOWNPARADE_01", world);
    SpawnNPC(OW_Zombie(), "NW_CITY_UPTOWNPARADE_03", world);
    SpawnNPC(OW_Zombie(), "NW_CITY_UPTOWNPARADE_05", world);
    SpawnNPC(OW_Zombie(), "NW_CITY_UPTOWNPARADE_07", world);
    SpawnNPC(OW_Zombie(), "NW_CITY_UPTOWNPARADE_09", world);
    SpawnNPC(OW_Zombie(), "NW_CITY_UPTOWNPARADE_11", world);
    SpawnNPC(OW_Zombie(), "FP_STAND_EATING_01", world);
    SpawnNPC(OW_Zombie(), "FP_STAND_CITY_PALCAMP_03", world);
    SpawnNPC(OW_Zombie(), "FP_STAND_CITY_20", world);
    SpawnNPC(OW_Zombie(), "FP_STAND_WATCH_01", world);


-- 38.) Fokustiere

    SpawnNPC(RoterWarg(), "FP_STAND_NW_LIGHTHOUSE_01", world);
    SpawnNPC(GruenerLurker(), "FP_ROAM_LURKER_01", world);
    SpawnNPC(BlauerScavenger(), "FP_ROAM_SONNENKREIS_01", world);
    SpawnNPC(GrauerRazor(),"FP_ROAM_NW_FARM3_BIGWOOD_04_04", world);
    SpawnNPC(GelberSnapper(), "FP_CAMPFIRE_NW_FARM1_BANDITS_CAVE_07", world);
    SpawnNPC(LilaCrawler(), "FP_ROAM_NW_CITYFOREST_CAVE_06_05", world);

-- 39.) Boss Tiere 
	
	SpawnBoss(WeisserSchattenlaeufer(), "FP_STAND_WS_04", world)
    SpawnBoss(Erzgolem(), "FP_STAND_ERZGOLEM", world);
    SpawnBoss(DunklerDemon(), "FP_STAND_SHIP_04", world);
    SpawnBoss(Troll_Black(),"FP_ROAM_TROLL_SCHLUCHT", world);
    SpawnBoss(OW_SkeletonLord(),"FP_STAND_HAGEN", world); 
    SpawnBoss(Demon_Wolf(), "FP_STAND_DAEMONWOLF", world);
    


-- 40.) NPC Spawns 

    --INNOS

    SpawnNPC(RuestungPaladin(), "FP_STAND_RUESTUNG_PALADIN_01", world);
    SpawnNPC(ObersterFeuermagier(), "FP_STAND_FEUERMAGIER", world);
    SpawnNPC(KFAlchemie(), "FP_STAND_ALCHEMIE_FEUERMAGIER_01", world);
    SpawnNPC(WaffenPaladin(), "FP_STAND_ZWEIHAND_PALADIN_01", world);	
    SpawnNPC(WaffenRitter(), "FP_STAND_EINHAND_RITTER_01", world);
    SpawnNPC(BogenRitter(), "FP_STAND_BOGEN_RITTER_01", world);
    SpawnNPC(ArmbrustRitter(), "FP_STAND_ARMBRUST_RITTER_01", world);	
    SpawnNPC(LehrerPaladin(), "FP_STAND_LEHRER_01", world);	
        
    --BELIAR

    SpawnNPC(ObersterSchwarzmagier(), "FP_STAND_SCHWARZMAGIER_01", world);
    SpawnNPC(SMAlchemie(), "FP_STAND_ALCHEMIE_SCHWARZMAGIER_01", world);
    SpawnNPC(Beliarberserker(), "FP_STAND_RUESTUNG_BELIARBERSERKER_01", world);
    SpawnNPC(WaffenBeliarberserker(), "FP_STAND_WAFFEN_BELIARBERSERKER_01", world);
    SpawnNPC(WaffenBeliarkaempfer(), "FP_STAND_WAFFEN_BELIARKRIEGER_01", world);
    SpawnNPC(BogenBeliarkaempfer(), "FP_STAND_BOGEN_BELIARKRIEGER_01", world);
    SpawnNPC(ArmbrustBeliarkaempfer(), "FP_STAND_ARMBRUST_BELIARKRIEGER_01", world);
    SpawnNPC(LehrerBeliarberserker(), "FP_STAND_LEHRER_02", world);
	
	print("Deathmatch NPCs sind gespawnt in "..world)
end

print("Loaded LUA file   " .. debug.getinfo(1).source)