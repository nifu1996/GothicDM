function H_Torwache() -- Haupteingang
	local npc = CreateNPC(GetNewNPCName("Torwache"));

	if(npc == -1)then
		print("Creating Torwache Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Psionic",66);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 10000);
	SetPlayerHealth(npc, 10000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_Schwert1");
	--EquipRangedWeapon(npc, "ItRw_langbogen");
	EquipArmor(npc, "ITAR_GAR_L");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_AL_KOLONIE;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_AL_TORWACHE";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function H_Torwache2() -- Haupteingang
	local npc = CreateNPC(GetNewNPCName("Torwache"));

	if(npc == -1)then
		print("Creating Torwache Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Psionic",63);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 10000);
	SetPlayerHealth(npc, 10000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_Schwert1");
	--EquipRangedWeapon(npc, "ItRw_langbogen");
	EquipArmor(npc, "ITAR_GAR_L");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_AL_KOLONIE;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_AL_TORWACHE_2";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function N_Torwache() -- Nebeneingang
	local npc = CreateNPC(GetNewNPCName("Torwache"));

	if(npc == -1)then
		print("Creating N_Torwache Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Fighter",51);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 10000);
	SetPlayerHealth(npc, 10000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_Schwert1");
	--EquipRangedWeapon(npc, "ItRw_langbogen");
	EquipArmor(npc, "ITAR_GAR_L");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_AL_KOLONIE_2;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_AL_TORWACHE_3";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function N_Torwache2() -- Nebeneingang
	local npc = CreateNPC(GetNewNPCName("Torwache"));

	if(npc == -1)then
		print("Creating N_Torwache2 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Thief",61);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 10000);
	SetPlayerHealth(npc, 10000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_Schwert1");
	--EquipRangedWeapon(npc, "ItRw_langbogen");
	EquipArmor(npc, "ITAR_GAR_L");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_AL_KOLONIE_2;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_AL_TORWACHE_4";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function Burgwache() -- Burgeingang
	local npc = CreateNPC(GetNewNPCName("Burgwache"));

	if(npc == -1)then
		print("Creating Burgwache Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Fighter",62);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 10000);
	SetPlayerHealth(npc, 10000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_Schwert1");
	--EquipRangedWeapon(npc, "ItRw_langbogen");
	EquipArmor(npc, "ITAR_GAR_H");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_AL_KOLONIE_BURG;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_AL_BURGWACHE";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function AL_Minenwache() -- Alte Lager Mine
	local npc = CreateNPC(GetNewNPCName("Minenwache"));

	if(npc == -1)then
		print("Creating Minenwache Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Thief",67);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 10000);
	SetPlayerHealth(npc, 10000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_Schwert1");
	--EquipRangedWeapon(npc, "ItRw_langbogen");
	EquipArmor(npc, "ITAR_GAR_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_AL_KOLONIE_AlteMine;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_AL_MINENWACHE";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

-- ab hier die arbeit von Ska/Gaspade

function OW_Ritter1() -- Hat die Hosen an in seiner Mine
	local npc = CreateNPC(GetNewNPCName("Fajeth"));

	if(npc == -1)then
		print("Creating Fajeth Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Fighter",37);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Militia.mds");


	SetPlayerStrength(npc, 70);
	SetPlayerDexterity(npc, 30);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_2H, 60);

	EquipMeleeWeapon(npc, "ItMw_EdleKriegsschneide");
	EquipRangedWeapon(npc, "ItRw_Meisterarmbrust");
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Ritter1;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Ritter1";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Ritter2() -- Wurde vom Mineneingang verbannt
	local npc = CreateNPC(GetNewNPCName("Tengron"));

	if(npc == -1)then
		print("Creating Tengron Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",2,"Hum_Head_Bald",120);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Militia.mds");


	SetPlayerStrength(npc, 65);
	SetPlayerDexterity(npc, 15);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_2H, 60);

	EquipMeleeWeapon(npc, "ItMw_Kriegsschneide");
	EquipRangedWeapon(npc, "itrw_veteranenarmbrust");
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Ritter2;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Ritter2";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Ritter3() -- Starrt gerne ins Leere
	local npc = CreateNPC(GetNewNPCName("Fajeths Minenwache"));

	if(npc == -1)then
		print("Creating Tengron Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",102);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Militia.mds");


	SetPlayerStrength(npc, 65);
	SetPlayerDexterity(npc, 15);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_2H, 60);

	EquipMeleeWeapon(npc, "ItMw_Kriegsschneide");
	EquipRangedWeapon(npc, "itrw_veteranenarmbrust");
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Ritter3;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Ritter3";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Spaeher1() -- Kundschafter zwischen den Minen
	local npc = CreateNPC(GetNewNPCName("Jergan"));

	if(npc == -1)then
		print("Creating Jergan Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",38);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Tired.mds");


	SetPlayerStrength(npc, 20);
	SetPlayerDexterity(npc, 40);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_BOW, 60);

	EquipMeleeWeapon(npc, "ItMw_Wolfsmesser");
	EquipRangedWeapon(npc, "ItRw_eschenbogen");
	EquipArmor(npc, "ITAR_BND_L");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Spaeher1;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Spaeher1";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Soldat1() -- Nutzloser Milizionärr
	local npc = CreateNPC(GetNewNPCName("Bilgot"));

	if(npc == -1)then
		print("Creating Bilgot Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",57);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Relaxed.mds");


	SetPlayerStrength(npc, 50);
	SetPlayerDexterity(npc, 10);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_2H, 30);

	EquipMeleeWeapon(npc, "ItMw_Langschwert");
	--EquipRangedWeapon(npc, "ItRw_eschenbogen");
	EquipArmor(npc, "ITAR_MIL_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Soldat1;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 2;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Soldat1";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Buddler1() -- N Ossi Buddler
	local npc = CreateNPC(GetNewNPCName("Fauler Buddler"));

	if(npc == -1)then
		print("Creating Fauler Buddler Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",90);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Relaxed.mds");


	SetPlayerStrength(npc, 15);
	SetPlayerDexterity(npc, 10);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_2H, 10);

	EquipMeleeWeapon(npc, "ItMw_Spitzhacke");
	--EquipRangedWeapon(npc, "ItRw_eschenbogen");
	EquipArmor(npc, "ITAR_BLD_L");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Buddler1;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 1;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Buddler1";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Buddler2() -- n Anderer Ossi Buddler
	local npc = CreateNPC(GetNewNPCName("Fleißiger Buddler"));

	if(npc == -1)then
		print("Creating Fleißiger Buddler Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",0,"Hum_Head_Thief",52);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Militia.mds");


	SetPlayerStrength(npc, 20);
	SetPlayerDexterity(npc, 10);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_2H, 20);

	EquipMeleeWeapon(npc, "ItMw_Spitzhacke");
	--EquipRangedWeapon(npc, "ItRw_eschenbogen");
	EquipArmor(npc, "ITAR_BLD_H");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Buddler2;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 1;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Buddler2";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Ritter4() -- Findet WÃ¤lder ganz schnieke
	local npc = CreateNPC(GetNewNPCName("Wache der Alten Mine"));

	if(npc == -1)then
		print("Creating Wache der Alten Mine Oben Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",55);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Militia.mds");


	SetPlayerStrength(npc, 62);
	SetPlayerDexterity(npc, 10);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_2H, 60);

	EquipMeleeWeapon(npc, "ItMw_Kriegsschneide");
	--EquipRangedWeapon(npc, "itrw_veteranenarmbrust");
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Ritter4;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Ritter4";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Ritter5() -- Findet WÃ¤lder nicht ganz so schnieke
	local npc = CreateNPC(GetNewNPCName("Wache der Alten Mine"));

	if(npc == -1)then
		print("Creating Wache der Alten Mine Unten Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",56);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Militia.mds");


	SetPlayerStrength(npc, 62);
	SetPlayerDexterity(npc, 10);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_2H, 60);

	EquipMeleeWeapon(npc, "ItMw_Kriegsschneide");
	--EquipRangedWeapon(npc, "itrw_veteranenarmbrust");
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Ritter5;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Ritter5";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Ritter6() -- Blinzler ist Blind. Daher schÃ¤tzt er ob jemand oder etwas kommt.
	local npc = CreateNPC(GetNewNPCName("Turmwache Blinzler"));

	if(npc == -1)then
		print("Creating Wache der Turmwache Blinzler Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",33);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Militia.mds");


	SetPlayerStrength(npc, 65);
	SetPlayerDexterity(npc, 0);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_CBOW, 60);

	--EquipMeleeWeapon(npc, "ItMw_Kriegsschneide");
	EquipRangedWeapon(npc, "itrw_veteranenarmbrust");
	EquipArmor(npc, "ITAR_MIL_L");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Ritter6;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Ritter6";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Buddler3() -- HeiÃŸt Tutnix
	local npc = CreateNPC(GetNewNPCName("Buddler"));

	if(npc == -1)then
		print("Creating OW_Buddler3 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",3,"Hum_Head_Bald",129);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Relaxed.mds");


	SetPlayerStrength(npc, 20);
	SetPlayerDexterity(npc, 10);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_2H, 20);

	EquipMeleeWeapon(npc, "ItMw_Spitzhacke");
	--EquipRangedWeapon(npc, "ItRw_eschenbogen");
	EquipArmor(npc, "ITAR_BLD_H");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Buddler3;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 1;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Buddler3";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Buddler4() -- HeiÃŸt Kannnix
	local npc = CreateNPC(GetNewNPCName("Buddler"));

	if(npc == -1)then
		print("Creating OW_Buddler4 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",2,"Hum_Head_Bald",40);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Relaxed.mds");


	SetPlayerStrength(npc, 20);
	SetPlayerDexterity(npc, 10);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_2H, 20);

	EquipMeleeWeapon(npc, "ItMw_Spitzhacke");
	--EquipRangedWeapon(npc, "ItRw_eschenbogen");
	EquipArmor(npc, "ITAR_BLD_H");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Buddler4;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 1;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Buddler4";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Buddler5() -- Tick
	local npc = CreateNPC(GetNewNPCName("Buddler"));

	if(npc == -1)then
		print("Creating OW_Buddler5 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",2,"Hum_Head_FatBald",40);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Tired.mds");


	SetPlayerStrength(npc, 20);
	SetPlayerDexterity(npc, 10);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_2H, 20);

	EquipMeleeWeapon(npc, "ItMw_Spitzhacke");
	--EquipRangedWeapon(npc, "ItRw_eschenbogen");
	EquipArmor(npc, "ITAR_BLD_H");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Buddler5;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 1;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Buddler5";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Buddler6() -- Trick
	local npc = CreateNPC(GetNewNPCName("Buddler"));

	if(npc == -1)then
		print("Creating OW_Buddler6 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",2,"Hum_Head_Bald",29);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Relaxed.mds");


	SetPlayerStrength(npc, 20);
	SetPlayerDexterity(npc, 10);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_2H, 20);

	EquipMeleeWeapon(npc, "ItMw_Spitzhacke");
	--EquipRangedWeapon(npc, "ItRw_eschenbogen");
	EquipArmor(npc, "ITAR_BLD_L");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Buddler6;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 1;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Buddler6";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Buddler7() -- Track
	local npc = CreateNPC(GetNewNPCName("Buddler"));

	if(npc == -1)then
		print("Creating OW_Buddler7 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",0,"Hum_Head_Bald",39);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Relaxed.mds");


	SetPlayerStrength(npc, 20);
	SetPlayerDexterity(npc, 10);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_2H, 20);

	EquipMeleeWeapon(npc, "ItMw_Spitzhacke");
	--EquipRangedWeapon(npc, "ItRw_eschenbogen");
	EquipArmor(npc, "ITAR_BLD_L");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Buddler7;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 1;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Buddler7";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Raeuber01() -- Schaut böse
	local npc = CreateNPC(GetNewNPCName("Räuber"));

	if(npc == -1)then
		print("Creating Räuber1 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",3,"Hum_Head_FatBald",132);
	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Relaxed.mds");


	SetPlayerStrength(npc, 40);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_BOW, 60);

	EquipMeleeWeapon(npc, "ItMw_Degen");
	EquipRangedWeapon(npc, "ItRw_eschenbogen");
	EquipArmor(npc, "ITAR_BND_ROT_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Raeuber01;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Raeuber01";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Raeuber02() -- Was gibt es schöneres als herum zu stehen?
	local npc = CreateNPC(GetNewNPCName("Räuber"));

	if(npc == -1)then
		print("Creating Räuber2 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Fatbald",22);
	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Relaxed.mds");


	SetPlayerStrength(npc, 40);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_BOW, 60);

	EquipMeleeWeapon(npc, "ItMw_Degen");
	EquipRangedWeapon(npc, "ItRw_eschenbogen");
	EquipArmor(npc, "ITAR_BND_ROT_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Raeuber02;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Raeuber02";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Raeuber03() -- Man nannte ihn auch Nervensäge
	local npc = CreateNPC(GetNewNPCName("Räuber"));

	if(npc == -1)then
		print("Creating Räuber3 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_FatBald",27);
	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Relaxed.mds");


	SetPlayerStrength(npc, 40);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_BOW, 60);

	EquipMeleeWeapon(npc, "ItMw_Degen");
	--EquipRangedWeapon(npc, "ItRw_eschenbogen");
	EquipArmor(npc, "ITAR_BND_ROT_L");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Raeuber03;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Raeuber03";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Raeuber04() -- Wegelagerer der schmiere Steht
	local npc = CreateNPC(GetNewNPCName("Räuberlager Wache"));

	if(npc == -1)then
		print("Creating Räuber4 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Fighter",27);
	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Relaxed.mds");


	SetPlayerStrength(npc, 40);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_BOW, 60);

	--EquipMeleeWeapon(npc, "ItMw_Degen");
	EquipRangedWeapon(npc, "ItRw_eschenbogen");
	EquipArmor(npc, "ITAR_BND_ROT_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Raeuber04;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Raeuber04";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Raeuber05() -- Anführer der Wegelagerer
	local npc = CreateNPC(GetNewNPCName("Räuber Anführer"));

	if(npc == -1)then
		print("Creating Räuber5 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Psionic",25);
	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Relaxed.mds");


	SetPlayerStrength(npc, 50);
	SetPlayerDexterity(npc, 60);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_BOW, 60);

	EquipMeleeWeapon(npc, "ItMw_Degen");
	EquipRangedWeapon(npc, "ItRw_eschenbogen");
	EquipArmor(npc, "ITAR_BND_ROT_H");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Raeuber05;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Raeuber05";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Raeuber06() -- Mag kein Sonnenlicht
	local npc = CreateNPC(GetNewNPCName("Räuber"));

	if(npc == -1)then
		print("Creating Räuber6 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Thief",20);
	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Relaxed.mds");


	SetPlayerStrength(npc, 40);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_BOW, 60);

	EquipMeleeWeapon(npc, "ItMw_Degen");
	EquipRangedWeapon(npc, "ItRw_eschenbogen");
	EquipArmor(npc, "ITAR_BND_ROT_L");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Raeuber06;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Raeuber06";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

function OW_Raeuber07() -- Wollte schon immer hoch hinaus
	local npc = CreateNPC(GetNewNPCName("Räuberlager Wache"));

	if(npc == -1)then
		print("Creating Räuber7 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",2,"Hum_Head_Bald",29);
	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Relaxed.mds");


	SetPlayerStrength(npc, 40);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_BOW, 60);

	--EquipMeleeWeapon(npc, "ItMw_Degen");
	EquipRangedWeapon(npc, "ItRw_eschenbogen");
	EquipArmor(npc, "ITAR_BND_ROT_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_Raeuber07;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "OW_OW_Raeuber07";
	npcarr.respawntime = 30;
	npcarr.guardian = 1;

	return npcarr;
end

--TEST ORK--

function Ork_Sebalt() -- Haupteingang
	local npc = CreateNPC(GetNewNPCName("OrkWaechter"));

	if(npc == -1)then
		print("Creating OrkWächter Failed!");
	end

	SetPlayerInstance(npc,"OrcElite_Roam");

    SetPlayerStrength(npc, 155); -- 125
    SetPlayerDexterity(npc, 155); -- 225
    SetPlayerLevel(npc, 45);
    SetPlayerMaxHealth(npc, 930); -- 450
    SetPlayerHealth(npc, 930); -- 450

	EquipMeleeWeapon(npc, "ItMw_2H_OrcSword_02");
	
	local dialogs = {};

	addDialog(dialogs, 1, IMPORTENT_DIALOGA, nil, "Verschwinde!");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_ORKSEBALT;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = dialogs;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcElite;
	npcarr.aivar = {};
	npcarr.aivar["ATTACKRANGE"] = 100;
	npcarr.instance = "Ork_Sebalt";
	npcarr.respawntime = 300;
	npcarr.guardian = 1;

	return npcarr;
end

function Ork_Haendler() -- Haupteingang
	local npc = CreateNPC(GetNewNPCName("OrkMinenwaechter"));

	if(npc == -1)then
		print("Creating OrkWächter Failed!");
	end

	SetPlayerInstance(npc,"OrcElite_Roam");

    SetPlayerStrength(npc, 155); -- 125
    SetPlayerDexterity(npc, 155); -- 225
    SetPlayerLevel(npc, 45);
    SetPlayerMaxHealth(npc, 930); -- 450
    SetPlayerHealth(npc, 930); -- 450

    EquipMeleeWeapon(npc, "ItMw_2H_OrcSword_02");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_ORKHAENDLER;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "Ork_Haendler";
	npcarr.respawntime = 300;
	npcarr.guardian = 1;

	return npcarr;
end
