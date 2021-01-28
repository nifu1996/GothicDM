function InitOldworldNpc()
	local world = "NEWWORLD\\CLASSICSTRAFKOLONIE.ZEN";

--Burg
	SpawnNPC		(RitterSmalltalk1(),"FP_SMALLTALK_OC_CENTER_02", world);
	SpawnNPC		(RitterSmalltalk2(),"FP_SMALLTALK_OC_CENTER_01", world);
	SpawnNPC		(WaffenknechtLagerfeuer1(),"FP_CAMPFIRE_OC_OUT_01", world);
	SpawnNPC		(RitterLagerfeuer2(),"FP_CAMPFIRE_OC_OUT_02", world);
	SpawnNPC		(WaffenknechtLagerfeuer3(),"FP_CAMPFIRE_OC_OUT_03", world);
	SpawnNPC		(RitterLagerfeuer4(),"FP_CAMPFIRE_OC_OUT_04", world);
	SpawnNPC		(RitterWachhaus(),"FP_GUARD_OC_GUARDSROOM_01", world);
	SpawnNPC		(PaladinSaal1(),"FP_SMALLTALK_OC_EBR_01", world);
	SpawnNPC		(PaladinSaal2(),"FP_SMALLTALK_OC_EBR_02", world);
	SpawnNPC		(PaladinRaven(),"FP_GUARD_OC_EBR_03", world);
	SpawnNPC		(RitterOrkramme(),"OC_GUARD_PALISADE_07", world);
	SpawnNPC		(RitterTorhaus(),"OC_GUARD_PALISADE_09", world);
	SpawnNPC		(RitterTuersteher1(),"OC_EBR_GUARDPASSAGE_01", world);
	SpawnNPC		(RitterTuersteher2(),"OC_EBR_GUARDPASSAGE_02", world);	

--hinter der Brücke gegenüber der verlassenen Mine
	SpawnNPC		(Giant_Bug(),"SPAWN_MOLERAT02_SPAWN01", world);	
	SpawnNPC		(Giant_Bug(),"SPAWN_MOLERAT02_SPAWN01", world);	
	
--Pfad zur Burg
	SpawnNPC		(Bergsnapper(),"SPAWN_TOTURIAL_CHICKEN_2_2", world); 	
	SpawnNPC		(Bloodfly(), "OW_PATH_1_5_4", world);  
	SpawnNPC		(Bloodfly(), "OW_PATH_1_5_4", world);  
	SpawnNPC		(Bloodfly(), "OW_PATH_1_5_3", world);  
	SpawnNPC		(Bergsnapper(), "FP_ROAM_OW_MAETBUG_ROOT_03", world);

--Sandbank im Fluß nördlich der Burg
	SpawnNPC		(Lurker(),"SPAWN_OW_BLOODFLY_E_3", world);
	SpawnNPC		(Lurker(),"SPAWN_OW_BLOODFLY_E_3", world);
	
--alter Chillerspot von Ratford und Drax
	SpawnNPC		(Snapper(),"FP_ROAM_OW_GOBBO_07_02", world);  
	SpawnNPC		(Snapper(),"FP_ROAM_OW_GOBBO_07_02", world);
	SpawnNPC		(Snapper(),"FP_ROAM_OW_GOBBO_07_02", world); 
	SpawnNPC		(Snapper(),"OW_PATH_1_5_A", world); 
		
--zwischen Ratford/Drax und Brücke zur Burg
	SpawnNPC		(Snapper(),"SPAWN_OW_STARTSCAVNGERBO_01_02", world); 
	SpawnNPC		(Snapper(),"SPAWN_OW_STARTSCAVENGER_02_01", world);
	SpawnNPC		(Snapper(),"SPAWN_OW_SCA_05_01", world);
	SpawnNPC		(Snapper(),"SPAWN_OW_SCA_05_01", world);

--Scavengerbande
	SpawnNPC		(Scavenger(),"OW_SPAWN_SCAVENGER_01", world);	
	SpawnNPC		(Scavenger(),"OW_SPAWN_SCAVENGER_01", world);	
	SpawnNPC		(Scavenger(),"OW_SPAWN_SCAVENGER_01", world);	
	SpawnNPC		(Scavenger(),"OW_SPAWN_SCAVENGER_01", world);	
	SpawnNPC		(Scavenger(),"OW_SPAWN_SCAVENGER_01", world);
	SpawnNPC		(Scavenger(),"OW_SPAWN_SCAVENGER_02", world);	
	SpawnNPC		(Scavenger(),"OW_SPAWN_SCAVENGER_02", world);	
	SpawnNPC		(Scavenger(),"OW_SPAWN_SCAVENGER_02", world);	
	SpawnNPC		(Scavenger(),"OW_SPAWN_SCAVENGER_02", world);
	SpawnNPC		(Scavenger(),"OW_SPAWN_SCAVENGER_02", world);
	
--Fluss nahe der Burg
	SpawnNPC		(Lurker(),"OW_PATH_WARAN05_SPAWN02", world);
	SpawnNPC		(Lurker(),"OW_PATH_WARAN05_SPAWN02", world);
	SpawnNPC		(Warg(),"SPAWN_O_SCAVENGER_05_02", world);
	SpawnNPC		(Lurker(),"OW_PATH_OW_PATH_WARAN05_SPAWN01", world);

--Außenring
	SpawnNPC		(OrcShaman(), "SPAWN_O_SCAVENGER_05_02", world);
	SpawnNPC		(OrcWarrior(), "SPAWN_O_SCAVENGER_05_02", world);
	SpawnNPC		(OrcWarrior(), "OC1", world);
	SpawnNPC		(OrcWarrior(), "OC2", world);
	SpawnNPC		(OrcShaman(), "OC2", world);
	SpawnNPC		(OrcWarrior(), "OC7", world);
	SpawnNPC		(OrcWarrior(), "OC8", world);
	SpawnNPC		(OrcWarrior(), "OC10", world);
	SpawnNPC		(OrcWarrior(), "OC12", world);
	SpawnNPC		(OrcWarrior(), "OC13", world);
	SpawnNPC		(OrcWarrior(), "OC14", world);
	SpawnNPC		(OrcWarrior(), "OC_ROUND_22_CF_2", world);
	SpawnNPC		(OrcWarrior(), "OC_ROUND_22_CF_2", world);
	SpawnNPC		(OrcShaman(), "OC_ROUND_22_CF_2", world);
	SpawnNPC		(OrcElite(),"OC14", world);
	SpawnNPC		(OrcWarrior(),"OC_ORK_BETWEEN_CAMPS_01", world); 
	SpawnNPC		(OrcElite(),"OC_ORK_LITTLE_CAMP_01", world); 
	SpawnNPC		(OrcWarrior(),"OC_ORK_BETWEEN_CAMPS_02", world); 
	SpawnNPC		(OrcElite(),"OC_ORK_LITTLE_CAMP_03", world);
	SpawnNPC		(OrcWarrior(),"OC10", world);
	SpawnNPC		(OrcWarrior(),"OC9", world);
	SpawnNPC		(OrcWarrior(),"OC_ORK_BACK_CAMP_02", world);
	SpawnNPC		(OrcElite(),"OC8", world);
	SpawnNPC		(OrcWarrior(),"OC6", world);
	SpawnNPC		(OrcWarrior(),"OC_ORK_BACK_CAMP_15", world);
	SpawnNPC		(OrcShaman(),"OC_ORK_MAIN_CAMP_05", world);		-- sitzt im SP
	SpawnNPC		(OrcElite(),"OC_ORK_MAIN_CAMP_05", world);	
	SpawnNPC		(OrcWarrior(),"OC_ORK_MAIN_CAMP_04", world);
	SpawnNPC		(OrcWarrior(),"OC_ORK_MAIN_CAMP_01", world);	
	SpawnNPC		(OrcShaman(),"OC_ORK_MAIN_CAMP_02", world);		-- sitzt im SP
	SpawnNPC		(OrcElite(),"OC_ORK_MAIN_CAMP_03", world);
	SpawnNPC		(OrcShaman(),"OC_ORK_LITTLE_CAMP_03", world);	-- sitzt im SP
	SpawnNPC		(OrcShaman(),"OC_ORK_LITTLE_CAMP_03", world);	-- sitzt im SP
	SpawnNPC		(OrcShaman(),"OC_ORK_BACK_CAMP_16", world);		-- sitzt im SP
	SpawnNPC		(OrcElite(),"OC_ORK_BACK_CAMP_16", world);
	SpawnNPC		(OrcWarrior(),"OC_ORK_BACK_CAMP_06", world);	
	SpawnNPC		(OrcShaman(),"OC_ORK_BACK_CAMP_06", world);		-- sitzt im SP
	SpawnNPC		(OrcElite(),"OC_ORK_BACK_CAMP_06", world);	
	SpawnNPC		(OrcElite(),"OC_ORK_BACK_CAMP_06", world);		
	SpawnNPC		(OrcElite(),"OC_ORK_BACK_CAMP_07", world);	
	SpawnNPC		(OrcShaman(),"OC7", world);						-- sitzt im SP
	SpawnNPC		(OrcElite(),"OC7", world);
	SpawnNPC		(OrcShaman(),"OC_ORK_LITTLE_CAMP_05", world);	-- sitzt im SP
	SpawnNPC		(OrcWarrior(),"OC_ORK_MAIN_CAMP_10", world);	
	SpawnNPC		(OrcElite(),"OC_ORK_MAIN_CAMP_11", world);
	SpawnNPC		(OrcWarrior(),"OC_ORK_MAIN_CAMP_12", world);	
	SpawnNPC		(OrcWarrior(),"OC_ORK_MAIN_CAMP_03", world);	
	SpawnNPC		(OrcWarrior(),"OC_ORK_MAIN_CAMP_02", world);
	SpawnNPC		(OrcElite(),"OC_ORK_MAIN_CAMP_07", world);
	SpawnNPC		(OrcWarrior(),"OC_ORK_MAIN_CAMP_04", world);	
	SpawnNPC		(OrcWarrior(),"OC1", world);
	SpawnNPC		(OrcWarrior(),"OC2", world);		
	SpawnNPC		(OrcWarrior(),"OC1", world);	
	SpawnNPC		(OrcWarrior(),"OC13", world);	
	SpawnNPC		(OrcWarrior(),"OC11", world);	
	SpawnNPC		(OrcWarrior(),"OC_ORK_LITTLE_CAMP_02", world);	
	SpawnNPC		(OrcWarrior(),"OC_ORK_LITTLE_CAMP_02", world);	
	SpawnNPC		(OrcWarrior(),"OC_ORK_LITTLE_CAMP_06", world);	
	SpawnNPC		(OrcWarrior(),"OC_ORK_LITTLE_CAMP_04", world);
	SpawnNPC		(OrcElite(),"OC_ORK_BACK_CAMP_01", world);	
	SpawnNPC		(OrcWarrior(),"OC_ORK_BACK_CAMP_02", world);	
	SpawnNPC		(OrcWarrior(),"OC_ORK_BACK_CAMP_03", world);	
	SpawnNPC		(OrcWarrior(),"OC_ORK_BACK_CAMP_04", world);	
	SpawnNPC		(OrcWarrior(),"OC_ORK_BACK_CAMP_05", world);	
	SpawnNPC		(OrcElite(),"OC_ORK_BACK_CAMP_06", world);	
	SpawnNPC		(OrcWarrior(),"OC_ORK_BACK_CAMP_07", world);	
	SpawnNPC		(OrcWarrior(),"OC_ORK_BACK_CAMP_08", world);	
	SpawnNPC		(OrcWarrior(),"OC_ORK_BACK_CAMP_09", world);	
	SpawnNPC		(OrcWarrior(),"OC_ORK_BACK_CAMP_10", world);	
	SpawnNPC		(OrcElite(),"OC_ORK_BACK_CAMP_11", world);	
	SpawnNPC		(OrcWarrior(),"OC_ORK_BACK_CAMP_12", world);
	SpawnNPC		(OrcWarrior(),"OC_ORK_BACK_CAMP_13", world);	
	SpawnNPC		(OrcWarrior(),"OC_ORK_BACK_CAMP_14", world);
	SpawnNPC		(OrcWarrior(),"FP_REST_ORK_OC_18", world);
	
--Lager der Orkgeneräle (Hosh-Paks Hügel)
	SpawnNPC		(OrcGeneral(),"FP_ROAM_HOSHPAK_01", world);
	
--Mine im Nordwesten (nahe der ehemaligen Alten Mine) + orkischer Angriffstrupp in der Nähe
	--SpawnNPC		(RitterNWMine1(),"FP_STAND_GUARDING_MINE2_02", world);
	SpawnNPC		(RitterNWMine2(),"FPFP_STAND_GUARDING_JERGAN_02", world);
	--SpawnNPC		(RitterNWMine3(),"FP_STAND_GUARDING_MINE2_01", world);
	SpawnNPC		(PaladinNWMine1(),"OW_PATH_265", world);
	SpawnNPC		(PaladinNWMine2(),"OW_PATH_266", world);
	SpawnNPC		(OrcNWMineElite(),"FP_ROAM_OW_MOLERAT_A_6_NC7", world);
	SpawnNPC		(OrcNWMineElite(),"FP_ROAM_OW_MOLERAT_A_6_NC7_02", world);	
	SpawnNPC		(OrcNWMineWarrior(),"FP_ROAM_OW_MOLERAT_A_6_NC7_03", world);	
	SpawnNPC		(OrcNWMineWarrior(),"FP_ROAM_OW_MOLERAT_A_6_NC7_04", world);	
	SpawnNPC		(OrcNWMineWarrior(),"FP_ROAM_OW_MOLERAT_A_6_NC7_02", world);	
	SpawnNPC		(OrcNWMineWarrior(),"FP_ROAM_OW_MOLERAT_A_6_NC7_03", world);			
	
--Tor zum Orkgebiet
	SpawnNPC		(OrcWarrior(), "OW_GATE_ORCS_01", world);
	SpawnNPC		(OrcWarrior(), "OW_GATE_ORCS_02", world);
	SpawnNPC		(OrcWarrior(), "OW_GATE_ORCS_03", world);
	
--Fajeths Mine (Snappergefahr)
	SpawnNPC		(Snapper(),"SPAWN_OW_SCAVENGER_ORC_03", world);
	SpawnNPC		(Snapper(),"SPAWN_OW_SCAVENGER_ORC_03", world);
	SpawnNPC		(Snapper(),"SPAWN_OW_BLOCKGOBBO_CAVE_DM6", world);
	SpawnNPC		(Snapper(),"SPAWN_OW_BLOCKGOBBO_CAVE_DM6", world);
	SpawnNPC		(Snapper(),"OW_PATH_333", world);

--Fajeths Mine (Stollen)
	SpawnNPC 		(Minecrawler(), "OW_MINE3_05", world); 
	SpawnNPC 		(Minecrawler(), "OW_MINE3_05", world);
	SpawnNPC 		(Minecrawler(), "OW_MINE3_05", world);
	SpawnNPC 		(Minecrawler(), "OW_MINE3_06", world);
	SpawnNPC 		(Minecrawler(), "OW_MINE3_06", world);	
	SpawnNPC 		(Minecrawler(), "OW_MINE3_08", world);
	SpawnNPC 		(Minecrawler(), "OW_MINE3_08", world);
	SpawnNPC 		(Minecrawler(), "OW_MINE3_10", world);
	SpawnNPC 		(MinecrawlerWarrior(), "OW_MINE3_10", world);
	SpawnNPC		(Minecrawler(), "OW_MINE3_LEICHE_02", world);
	SpawnNPC 		(Minecrawler(), "OW_MINE3_LEICHE_03", world);	

--eingestürzte Brücke zur ehemaligen Orkstadt
	SpawnNPC		(Wolf(),"OW_PATH_099", world);
	SpawnNPC		(Wolf(),"OW_PATH_099", world);
	SpawnNPC		(Bloodfly(),"SPAWN_OW_WARAN_ORC_01", world);
	SpawnNPC		(Bloodfly(),"SPAWN_OW_WARAN_ORC_01", world);

--Brückengoblins	
	SpawnNPC		(Gobbo_Green(),"OW_PATH_149", world);
	SpawnNPC		(Gobbo_Green(),"OW_PATH_150", world);
	SpawnNPC		(Gobbo_Green(),"OW_PATH_057", world);
	SpawnNPC		(Gobbo_Green(),"OW_PATH_059", world);

--zwischen Eisregion und Banditenlager	
	SpawnNPC		(Bloodfly(),"OW_PATH_055", world);
	SpawnNPC		(Bloodfly(),"OW_PATH_055", world);
	SpawnNPC		(Bloodfly(),"OW_PATH_055", world);
	SpawnNPC		(Bloodfly(),"OW_PATH_055", world);
	SpawnNPC		(GiantRat(),"OW_SPAWN_TRACK_LEICHE_01", world);
	SpawnNPC		(GiantRat(),"OW_SPAWN_TRACK_LEICHE_01", world);
	SpawnNPC		(Gobbo_Black(),"OW_MOLERAT_CAVE_SPAWN", world);
	SpawnNPC		(Gobbo_Black(),"OW_MOLERAT_CAVE_SPAWN", world);
	SpawnNPC		(Gobbo_Black(),"OW_MOLERAT_CAVE_SPAWN", world);
	SpawnNPC		(Gobbo_Black(),"OW_MOLERAT_CAVE_SPAWN", world);
	SpawnNPC		(Gobbo_Black(),"OW_MOLERAT_CAVE_SPAWN", world);
	SpawnNPC		(Gobbo_Black(),"OW_MOLERAT_FORCAVE_SPAWN", world);
	SpawnNPC		(Gobbo_Black(),"OW_MOLERAT_FORCAVE_SPAWN", world);
	SpawnNPC		(Gobbo_Black(),"OW_MOLERAT_FORCAVE_SPAWN", world);
	SpawnNPC		(Gobbo_Black(),"OW_MOLERAT_FORCAVE_SPAWN", world);

--irgendeine Brücke (vermutlich nahe der Eisregion)
	SpawnNPC		(Gobbo_Green(),"OW_PATH_149", world);
	SpawnNPC		(Gobbo_Green(),"OW_PATH_150", world);
	SpawnNPC		(Gobbo_Green(),"OW_PATH_057", world);
	SpawnNPC		(Gobbo_Green(),"OW_PATH_059", world);
	
--Orkzaun
	SpawnNPC		(OrcWarrior(),"OW_ORCBARRIER_01", world);
	SpawnNPC		(OrcWarrior(),"OW_ORCBARRIER_01", world);	
	SpawnNPC		(OrcWarrior(),"OW_ORCBARRIER_04_01", world);
	SpawnNPC		(OrcElite(),"OW_ORCBARRIER_04_01", world);
	SpawnNPC		(OrcWarrior(),"OW_ORCBARRIER_04_01", world);
	SpawnNPC		(OrcWarrior(),"OW_ORCBARRIER_06", world);
	SpawnNPC		(OrcWarrior(),"OW_ORCBARRIER_06", world);
	SpawnNPC		(OrcShaman(),"OW_ORCBARRIER_08_01", world);
	SpawnNPC		(OrcWarrior(),"OW_ORCBARRIER_08_01", world);
	SpawnNPC		(OrcElite(),"OW_ORCBARRIER_08_01", world);
	SpawnNPC		(OrcWarrior(),"OW_ORCBARRIER_08_01", world);
	SpawnNPC		(OrcWarrior(),"OW_ORCBARRIER_11", world);
	SpawnNPC		(OrcWarrior(),"OW_ORCBARRIER_11", world);
	SpawnNPC		(OrcWarrior(),"OW_ORCBARRIER_14", world);
	SpawnNPC		(OrcWarrior(),"OW_ORCBARRIER_14", world);
	SpawnNPC		(OrcWarrior(),"OW_ORCBARRIER_16", world);
	SpawnNPC		(OrcWarrior(),"OW_ORCBARRIER_16", world);
	SpawnNPC		(OrcWarrior(),"OW_ORCBARRIER_17", world);
	SpawnNPC		(OrcWarrior(),"OW_ORCBARRIER_17", world);
	SpawnNPC		(OrcWarrior(),"PATH_OC_FOGTOWER03", world);
	SpawnNPC		(OrcWarrior(),"PATH_OC_FOGTOWER03", world);	
	
--Orklager bei ehemaliger Almanachhöhle
	SpawnNPC		(OrcWarrior(),"MOVEMENT_GOBBO_LOCATION_29_01", world);	
	SpawnNPC		(OrcWarrior(),"MOVEMENT_GOBBO_LOCATION_29_01", world);
	SpawnNPC		(OrcWarrior(),"LOCATION_29_04", world);
	SpawnNPC		(OrcShaman(),"MOVEMENT_GOBBO_LOCATION_29_03", world);
	SpawnNPC		(OrcWarrior(),"SPAWN_GOBBO_LOCATION_29_03", world);
	SpawnNPC		(OrcWarrior(),"OW_WATERFALL_GOBBO6", world);
	SpawnNPC		(OrcWarrior(),"OW_WATERFALL_GOBBO10", world); 
	SpawnNPC		(OrcWarrior(),"OW_WATERFALL_GOBBO10", world);
	SpawnNPC		(OrcWarrior(),"OW_WATERFALL_GOBBO10", world);
	SpawnNPC		(OrcWarrior(),"OW_WATERFALL_GOBBO10", world);
	
--Xardas' alter Turm (Umgebung)
	SpawnNPC		(Bloodfly(),"OW_PATH_205", world);
	SpawnNPC		(Bloodfly(),"OW_PATH_208", world);
	SpawnNPC		(Bloodfly(),"OW_PATH_206", world);
	SpawnNPC		(Bloodfly(),"OW_DT_BLOODFLY_01", world); 
	SpawnNPC		(Bloodfly(),"OW_DT_BLOODFLY_01", world);
	SpawnNPC		(Firewaran(),"SPAWN_OW_WARAN_DEMON_02_01", world);	
	
--Xardas' alter Turm (Wasser)
	SpawnNPC		(Lurker(),"MT16", world);	
	SpawnNPC		(Lurker(),"MT15", world);
	SpawnNPC		(Lurker(),"MT09", world);
	SpawnNPC		(Lurker(),"MT08", world);
	SpawnNPC		(Lurker(),"MT08", world);
	SpawnNPC		(Bergsnapper(),"OW_PATH_210", world);
	SpawnNPC		(Bergsnapper(),"OW_PATH_210", world);
	SpawnNPC		(StoneGolem(),"OW_PATH_116", world);
	
--Höhle in der Nähe des Stonehenge
	SpawnNPC		(Bergsnapper(),"OW_PATH_07_15_CAVE3", world);
	SpawnNPC		(Bergsnapper(),"OW_PATH_07_15", world);
	SpawnNPC		(Bergsnapper(),"OW_PATH_07_15", world);
	SpawnNPC		(Bergsnapper(),"OW_PATH_07_15", world);
	
--Stonehenge und Umgebung
   	SpawnNPC		(SkeletonMage(),"OW_UNDEAD_DUNGEON_03", world);
   	SpawnNPC		(Skeleton(),"FP_ROAM_OW_UNDEAD_DUNGEON_01", world); 
	SpawnNPC		(Skeleton(),"FP_ROAM_OW_UNDEAD_DUNGEON_04", world);
   	SpawnNPC		(Skeleton(),"FP_ROAM_OW_UNDEAD_DUNGEON_02", world); 
	SpawnNPC		(Skeleton(),"OW_PATH_07_03", world);	
	SpawnNPC		(Skeleton(),"OW_PATH_07_03", world);
	SpawnNPC		(Skeleton(),"OW_PATH_07_04", world);
	SpawnNPC		(Skeleton(),"OW_PATH_07_04", world);
	SpawnNPC		(Skeleton(),"OW_PATH_305", world);
	SpawnNPC		(Skeleton(),"OW_PATH_033_TO_CAVE5", world);
	SpawnNPC		(Skeleton(),"OW_PATH_033_TO_CAVE5", world);
	SpawnNPC		(Skeleton(),"OW_PATH_092", world);
	SpawnNPC		(Skeleton(),"OW_PATH_092", world);
	SpawnNPC		(Skeleton(),"OW_PATH_091", world);
	SpawnNPC		(Skeleton(),"OW_PATH_036", world);
	SpawnNPC		(Keiler(),"OW_PATH_274_RIGHT2", world);
	SpawnNPC		(OrcWarrior(),"FP_ROAM_ORC_05", world);	
	SpawnNPC		(OrcWarrior(),"FP_ROAM_ORC_06", world);	
	SpawnNPC		(OrcWarrior(),"OW_PATH_3_06", world);
	
--Orkgebiet (östlicher Zugang von der Burg)
	SpawnNPC		(Wolf(),"SPAWN_O_SCAVENGER_OCWOODL2", world);
	SpawnNPC		(Bloodfly(),"SPAWN_O_SCAVENGER_OCWOODL2", world);
		
--Orkgebiet (Wald)
	SpawnNPC		(Keiler(),"FP_ROAM_OW_SCAVENGER_LONE_WALD_OC3", world);
	SpawnNPC		(Keiler(),"FP_ROAM_OW_SCAVENGER_LONE_WALD_OC3", world);
	SpawnNPC		(Bloodfly(),"SPAWN_OW_WOLF2_WALD_OC3", world);
	SpawnNPC		(Bloodfly(),"SPAWN_OW_WOLF2_WALD_OC3", world);
	SpawnNPC		(Bloodfly(),"SPAWN_WALD_OC_BLOODFLY01", world);
	SpawnNPC		(Bloodfly(),"SPAWN_WALD_OC_BLOODFLY01", world);
	SpawnNPC		(Wolf(),"SPAWN_OW_MOLERAT2_WALD_OC1", world);
	SpawnNPC		(Wolf(),"SPAWN_OW_MOLERAT2_WALD_OC1", world);
	SpawnNPC		(Wolf(),"SPAWN_OW_MOLERAT2_WALD_OC1", world);	
	SpawnNPC		(Snapper(),"SPAWN_OW_SCAVENGER_OC_PSI_RUIN1", world);		
	SpawnNPC		(Wolf(),"PATH_WALD_OC_MOLERATSPAWN", world);
	SpawnNPC		(Wolf(),"PATH_WALD_OC_MOLERATSPAWN", world);
	SpawnNPC		(Wolf(),"SPAWN_OW_WOLF2_WALD_OC2", world);
	SpawnNPC		(Wolf(),"SPAWN_OW_SCAVENGER_INWALD_OC2", world);

--Orkgebiet (westlicher Zugang von der Burg)
	SpawnNPC		(Bloodfly(),"OW_ORC_ORCDOG_MOVEMENT_02", world); 
	SpawnNPC		(Wolf(),"OW_PATH_195", world);
	SpawnNPC		(Wolf(),"OW_PATH_195", world);
	SpawnNPC		(Warg(),"OW_ORC_ORCDOG_SPAWN01", world);
	SpawnNPC		(Warg(),"FP_ROAM_OW_WOLF_02_12", world);
	SpawnNPC		(Bloodfly(),"SPAWN_OW_MOLERAT_ORC_04", world);
	SpawnNPC		(Bloodfly(),"SPAWN_OW_MOLERAT_ORC_04", world);
	SpawnNPC		(Bloodfly(),"SPAWN_OW_MOLERAT_ORC_04", world);

--Orkgebiet (Zugang von der Eisregion)
	SpawnNPC		(Snapper(),"SPAWN_OW_WOLF_NEAR_SHADOW3", world);	
	SpawnNPC		(Snapper(),"OW_PATH_3_09", world);
	SpawnNPC		(Snapper(),"OW_PATH_3_09", world);
	SpawnNPC		(Snapper(),"OW_PATH_3_09", world); 
	SpawnNPC		(Snapper(),"SPAWN_OW_SHADOWBEAST_10_03", world);
	SpawnNPC		(Snapper(),"SPAWN_OW_SHADOWBEAST_10_03", world);	
	SpawnNPC		(OrcShaman(),"FP_ROAM_ORC_2_1_9", world);
	SpawnNPC		(OrcWarrior(),"OW_PATH_3_05", world);
	SpawnNPC		(OrcWarrior(),"FP_ROAM_ORC_2_1_8", world);
	
--irgendwo auf Mordrags alter Route
	SpawnNPC		(OrcWarrior(),"SPAWN_OW_SCAVENGER_06_04", world); 
	SpawnNPC		(OrcShaman(),"SPAWN_OW_SCAVENGER_06_04", world);
	SpawnNPC		(OrcWarrior(),"SPAWN_OW_SCAVENGER_06_04", world);
	SpawnNPC		(OrcWarrior(),"SPAWN_OW_SCAVENGER_06_04", world);
	
--Neks Unglückshöhle
	SpawnNPC		(Giant_Bug(),"SPAWN_OW_SMALLCAVE01_MOLERAT", world);
	SpawnNPC		(Giant_Bug(),"SPAWN_OW_SMALLCAVE01_MOLERAT", world);
	SpawnNPC		(Giant_Bug(),"SPAWN_OW_SMALLCAVE01_MOLERAT", world);

--Banditenlager (früher Aidans Hütte)
	SpawnNPC		(Bandit(),"OW_WOODRUIN_FOR_WOLF_SPAWN", world);
	SpawnNPC		(Bandit2(),"OW_WOODRUIN_FOR_WOLF_SPAWN", world);
	SpawnNPC		(Bandit3(),"OW_WOODRUIN_WOLF_SPAWN", world);
	SpawnNPC		(Bandit4(),"PATH_OC_NC_14", world);

--Banditenlager (früher Krautmischerhöhle)
	SpawnNPC		(Bandit(),"LOCATION_23_CAVE_1_IN_1", world);	
	SpawnNPC		(Bandit2(),"LOCATION_23_CAVE_1_IN_1", world);
	SpawnNPC		(Bandit3(),"LOCATION_23_CAVE_1_IN_1", world);
	SpawnNPC		(Bandit4(),"LOCATION_23_CAVE_1_IN_1", world);
	SpawnNPC		(Bandit5(),"LOCATION_23_CAVE_1_OUT", world);
	
--Diverses (Wälder, Pfade, etc.)
	SpawnNPC		(Gobbo_Black(),"SPAWN_OW_MOLERAT_06_CAVE_GUARD3", world);
	SpawnNPC		(Gobbo_Black(),"SPAWN_OW_MOLERAT_06_CAVE_GUARD3", world);
	SpawnNPC		(Gobbo_Black(),"SPAWN_OW_MOLERAT_WOODOLDMINE2", world);
	SpawnNPC		(Bergsnapper(),"SPAWN_OW_SNAPPER_WOOD05_05", world);
	SpawnNPC		(Bergsnapper(),"SPAWN_OW_SNAPPER_WOOD05_05", world);
	SpawnNPC		(Bergsnapper(),"OW_PATH_187", world); 
	SpawnNPC		(Bergsnapper(),"OW_PATH_185", world);
	SpawnNPC		(Bergsnapper(),"OW_PATH_185", world);
	SpawnNPC		(Bergsnapper(),"OW_PATH_190", world);
	SpawnNPC		(Bergsnapper(),"OW_PATH_190", world);
	SpawnNPC		(Bergsnapper(),"OW_PATH_190", world);
	SpawnNPC		(Bergsnapper(),"OW_PATH_189", world); 
	SpawnNPC		(Bergsnapper(),"OW_PATH_189", world);			
	SpawnNPC		(Bloodfly(),"SPAWN_OW_MOLERAT2_WALD_OC1", world);
	SpawnNPC		(Lurker(),"SPAWN_OW_LURKER_RIVER2", world);
	SpawnNPC		(Bloodfly(),"SPAWN_OW_LURKER_RIVER2", world);
	SpawnNPC		(Bloodfly(),"SPAWN_OW_SCAVENGER_OCWOODEND2", world);
	SpawnNPC		(Lurker(),"SPAWN_OW_GOBBO_WATERFALLCAVE_2", world);
	SpawnNPC		(Lurker(),"SPAWN_OW_GOBBO_WATERFALLCAVE_2", world);
	SpawnNPC		(Lurker(),"SPAWN_OW_GOBBO_WATERFALLCAVE_2", world);
	SpawnNPC		(Shadowbeast(),"OW_PATH_033_TO_CAVE5", world);					
	SpawnNPC		(Bergsnapper(),"SPAWN_OW_SNAPPER_OCWOOD1_05_02", world);
	SpawnNPC		(Bergsnapper(),"SPAWN_OW_SNAPPER_OCWOOD1_05_02", world);
	
	SpawnNPC		(Lurker(),"SPAWN_OW_SCAVENGER_BANDIT_02", world);
	SpawnNPC		(Gobbo_Black(),"SPAWN_OW_MOLERAT_03_04", world);
	SpawnNPC		(Gobbo_Warrior(),"SPAWN_OW_MOLERAT_03_04", world);
	SpawnNPC		(Gobbo_Black(),"SPAWN_OW_MOLERAT_03_04", world);
	--SpawnNPC		(Draconian(),"SPAWN_OW_WARAN_NC_03", world);
	--SpawnNPC		(Draconian(),"SPAWN_OW_WARAN_NC_03", world);
	SpawnNPC		(Firewaran(),"SPAWN_OW_WARAN_DEMON_01", world);
	SpawnNPC		(Firewaran(),"SPAWN_OW_WARAN_DEMON_01", world);
	SpawnNPC		(Waran(),"SPAWN_OW_WARAN_EBENE2_02_05", world);
	SpawnNPC		(Firewaran(),"SPAWN_OW_WARAN_EBENE2_02_05", world);
	SpawnNPC		(Waran(),"SPAWN_OW_WARAN_EBENE2_02_05", world);
	SpawnNPC		(Waran(),"SPAWN_OW_WARAN_EBENE_02_05", world);
	SpawnNPC		(Firewaran(),"SPAWN_OW_WARAN_EBENE_02_05", world);
	SpawnNPC		(Waran(),"SPAWN_OW_WARAN_EBENE_02_05", world);
	SpawnNPC		(Lurker(),"SPAWN_OW_LURKER_RIVER2_BEACH3", world);
	SpawnNPC		(Lurker(),"SPAWN_OW_LURKER_RIVER2_BEACH3_2", world);
	SpawnNPC		(OrcWarrior(),"SPAWN_OW_SCAVENGER_WOOD10_04", world);   
	SpawnNPC		(OrcWarrior(),"SPAWN_OW_SCAVENGER_WOOD10_04", world);
	SpawnNPC		(OrcWarrior(),"SPAWN_OW_SCAVENGER_WOOD10_04", world);
	
	SpawnNPC		(Gobbo_Black(),"OW_PATH_WARAN06_SPAWN01", world);
	SpawnNPC		(Gobbo_Black(),"OW_PATH_WARAN06_SPAWN01", world);
	SpawnNPC		(Gobbo_Black(),"OW_PATH_WARAN06_SPAWN01", world);
	SpawnNPC		(Gobbo_Black(),"OW_PATH_WARAN06_SPAWN01", world);
	SpawnNPC		(Snapper(),"OW_PATH_SCAVENGER03_SPAWN01", world);
	SpawnNPC		(Snapper(),"OW_PATH_SCAVENGER03_SPAWN01", world);
	SpawnNPC		(Snapper(),"OW_PATH_SCAVENGER03_SPAWN01", world);
	SpawnNPC		(Snapper(),"OW_PATH_SCAVENGER03_SPAWN01", world);
	SpawnNPC		(Snapper(),"OW_PATH_SCAVENGER12_SPAWN01", world);
	SpawnNPC		(Snapper(),"OW_PATH_SCAVENGER12_SPAWN01", world);
	SpawnNPC		(Snapper(),"OW_PATH_SCAVENGER12_SPAWN01", world);
	SpawnNPC		(Snapper(),"FP_ROAM_OW_SCAVENGER_12_07", world);
	SpawnNPC		(Snapper(),"FP_ROAM_OW_SCAVENGER_12_07", world);
	SpawnNPC		(Snapper(),"OW_PATH_SCAVENGER01_SPAWN01", world);
	SpawnNPC		(Snapper(),"OW_PATH_SCAVENGER01_SPAWN01", world);
	SpawnNPC		(Snapper(),"OW_PATH_SCAVENGER01_SPAWN01", world);
	SpawnNPC		(Snapper(),"OW_PATH_SCAVENGER01_SPAWN01", world);
	SpawnNPC		(OrcWarrior(),"SPAWN_OW_SCAVENGER_OLDWOOD_C3", world);
	SpawnNPC		(OrcWarrior(),"SPAWN_OW_SCAVENGER_OLDWOOD_C3", world);
	SpawnNPC		(Bloodfly(),"SPAWN_OW_SCAVENGER_OLDWOOD_C3", world);
	SpawnNPC		(Warg(),"SPAWN_OW_SHADOWBEAST_NEAR_SHADOW4", world);
	SpawnNPC		(Bloodfly(),"SPAWN_OW_SHADOWBEAST_NEAR_SHADOW4", world);
	SpawnNPC		(OrcShaman(),"SPAWN_OW_SCAVENGER_OCWOOD1", world);	
	SpawnNPC		(OrcWarrior(),"SPAWN_OW_SCAVENGER_OCWOOD1", world);
	
	SpawnNPC		(Keiler(),"SPAWN_OW_MOLERAT_OCWOOD_OC2", world);
	SpawnNPC		(Keiler(),"SPAWN_OW_MOLERAT_OCWOOD_OC2", world);
	SpawnNPC		(OrcWarrior(),"SPAWN_OW_MOLERAT_OLDWOOD1_M", world);
	SpawnNPC		(Warg(),"SPAWN_OW_MOLERAT_OCWOOD_OLDMINE3", world);
	SpawnNPC		(OrcWarrior(),"SPAWN_OW_MOLERAT_OCWOOD_OLDMINE3", world);
	SpawnNPC		(OrcWarrior(),"SPAWN_OW_WOLF_WOOD05_02", world);
	SpawnNPC		(Warg(),"FP_ROAM_OW_WOLF_08_08", world);
	SpawnNPC		(OrcWarrior(),"FP_ROAM_OW_WOLF_08_08", world);
	SpawnNPC		(OrcWarrior(),"OW_DEADWOOD_WOLF_SPAWN01", world);
	SpawnNPC		(OrcWarrior(),"OW_DEADWOOD_WOLF_SPAWN01", world);
	SpawnNPC		(Warg(),"OW_DEADWOOD_WOLF_SPAWN01", world);
	SpawnNPC		(OrcWarrior(),"OW_DEADWOOD_WOLF_SPAWN01", world);
	SpawnNPC		(Lurker(),"FP_ROAM_OW_BLOODFLY_04_02_02", world);
	SpawnNPC		(Bloodfly(),"OW_LAKE_NC_BLOODFLY_SPAWN01", world);
	SpawnNPC		(Lurker(),"OW_LAKE_NC_BLOODFLY_SPAWN01", world);
	SpawnNPC		(Bloodfly(),"OW_LAKE_NC_BLOODFLY_SPAWN01", world);	
	SpawnNPC		(Bloodfly(),"OW_PATH_BLOODFLY01_SPAWN01", world);
	SpawnNPC		(Bloodfly(),"OW_PATH_BLOODFLY01_SPAWN01", world);
	SpawnNPC		(Bloodfly(),"OW_PATH_BLOODFLY01_SPAWN01", world);
	SpawnNPC		(Bloodfly(),"OW_PATH_BLOODFLY01_SPAWN01", world);
	SpawnNPC		(Lurker(),"OW_PATH_BLOODFLY01_SPAWN01", world);
	SpawnNPC		(Bloodfly(),"SPAWN_OW_BLOODFLY_WOOD05_01", world);
	SpawnNPC		(OrcWarrior(),"SPAWN_OW_BLOODFLY_WOOD05_01", world);
	SpawnNPC		(OrcWarrior(),"SPAWN_OW_BLOODFLY_WOOD05_01", world);
	SpawnNPC		(Bloodfly(),"SPAWN_OW_MINICOAST_LURKER_A1", world);
	SpawnNPC		(Bloodfly(),"SPAWN_OW_MINICOAST_LURKER_A1", world);
	SpawnNPC		(Lurker(),"SPAWN_OW_MINICOAST_LURKER_A1", world);
	SpawnNPC		(Bloodfly(),"OW_LAKE_NC_LURKER_SPAWN01", world);
	
	SpawnNPC		(Giant_Bug(),"OW_SCAVENGER_CAVE3_SPAWN", world);
	SpawnNPC		(Giant_Bug(),"OW_SCAVENGER_CAVE3_SPAWN", world);
	SpawnNPC		(Giant_Bug(),"OW_SCAVENGER_TREE_SPAWN", world);
	SpawnNPC		(Gobbo_Black(),"OW_MOLERAT_CAVE_SPAWN", world);
	SpawnNPC		(Gobbo_Black(),"SPAWN_OW_MOLERAT_CAVE1_OC", world);
	SpawnNPC		(Gobbo_Black(),"SPAWN_OW_MOLERAT_CAVE1_OC", world);
	SpawnNPC		(Gobbo_Black(),"SPAWN_OW_MOLERAT_CAVE1_OC", world);
	SpawnNPC		(Lurker(),"SPAWN_OW_BLOODFLY_C3", world);
	SpawnNPC		(Lurker(),"SPAWN_OW_BLOODFLY_C3", world);
	SpawnNPC		(Lurker(),"SPAWN_OW_BLOODFLY_12", world);
	SpawnNPC		(Lurker(),"SPAWN_OW_BLOODFLY_12", world);

	SpawnNPC		(Giant_Bug(),"PATH_OC_NC_6", world);
	SpawnNPC		(Giant_Bug(),"PATH_OC_NC_4", world);
	SpawnNPC		(Giant_Bug(),"PATH_OC_NC_4", world);
	SpawnNPC		(GiantRat(),"OW_SAWHUT_MEATBUG_SPAWN", world);
	SpawnNPC		(GiantRat(),"OW_SAWHUT_MEATBUG_SPAWN", world);	
	SpawnNPC		(GiantRat(),"OW_SAWHUT_MEATBUG_SPAWN", world);
	SpawnNPC		(GiantRat(),"OW_SAWHUT_MEATBUG_SPAWN", world);	

	SpawnNPC		(Giant_Bug(),"OC3", world);	
	SpawnNPC		(Giant_Bug(),"OW_SCAVENGER_SPAWN_TREE", world);
	SpawnNPC		(Giant_Bug(),"OW_SCAVENGER_SPAWN_TREE", world);
	SpawnNPC		(Bloodfly(),"OC4", world);	
	SpawnNPC		(Bloodfly(),"SPAWN_OW_SCAVENGER_AL_ORC", world);
	SpawnNPC		(Bloodfly(),"OC5", world);	
	SpawnNPC		(Bloodfly(),"OC6", world);	
	SpawnNPC		(Wolf(),"SPAWN_PATH_GUARD1", world);
	SpawnNPC		(Wolf(),"SPAWN_OW_BLACKWOLF_02_01", world);
	SpawnNPC		(Bloodfly(),"SPAWN_OW_BLACKWOLF_02_01", world);
	SpawnNPC		(Bloodfly(),"SPAWN_OW_BLACKWOLF_02_01", world);
	SpawnNPC		(Bloodfly(),"FP_ROAM_ORC_09", world);
	SpawnNPC		(Bloodfly(),"FP_ROAM_ORC_08", world);
	SpawnNPC		(Bloodfly(),"OW_PATH_103", world); 
	SpawnNPC		(Bloodfly(),"FP_ROAM_OW_WARAN_ORC_01", world);
	SpawnNPC		(Bloodfly(),"FP_ROAM_OW_WARAN_ORC_04", world);
end

print("Loaded LUA file   " .. debug.getinfo(1).source)