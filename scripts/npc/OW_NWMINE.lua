--3 Ritter und 2 Paladine in der Mine im Nordwesten

function RitterNWMine1()
	local npc = CreateNPC(GetNewNPCName("Ritter"));

	if(npc == -1)then
		print("Creating RitterNWMine1 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",66);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 450);
	SetPlayerHealth(npc, 450);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_EdlesLangschwert");
	--EquipRangedWeapon(npc, "ItRw_schwere_armbrust");
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_MINENRITTER1;
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
	npcarr.instance = "RitterNWMine1";
	npcarr.respawntime = 120;
	npcarr.guardian = 1;

	return npcarr;
end;

function RitterNWMine2()
	local npc = CreateNPC(GetNewNPCName("Ritter"));

	if(npc == -1)then
		print("Creating RitterNWMine2 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Pony",67);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 450);
	SetPlayerHealth(npc, 450);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_GrobesSchwert");
	--EquipRangedWeapon(npc, "ItRw_schwere_armbrust");
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_MINENRITTER2;
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
	npcarr.instance = "RitterNWMine2";
	npcarr.respawntime = 120;
	npcarr.guardian = 1;

	return npcarr;
end;

function RitterNWMine3()
	local npc = CreateNPC(GetNewNPCName("Ritter"));

	if(npc == -1)then
		print("Creating RitterNWMine3 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Pony",2);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 450);
	SetPlayerHealth(npc, 450);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_Langschwert");
	--EquipRangedWeapon(npc, "ItRw_schwere_armbrust");
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_MINENRITTER3;
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
	npcarr.instance = "RitterNWMine3";
	npcarr.respawntime = 120;
	npcarr.guardian = 1;

	return npcarr;
end;

function PaladinNWMine1()
	local npc = CreateNPC(GetNewNPCName("Paladin"));

	if(npc == -1)then
		print("Creating PaladinNWMine1 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",56);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 450);
	SetPlayerHealth(npc, 450);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_EdlesLangschwert");
	EquipArmor(npc, "ITAR_PAL_MY");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_MINENRITTER4;
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
	npcarr.instance = "PaladinNWMine1";
	npcarr.respawntime = 120;
	npcarr.guardian = 1;

	return npcarr;
end;

function PaladinNWMine2()
	local npc = CreateNPC(GetNewNPCName("Paladin"));

	if(npc == -1)then
		print("Creating PaladinNWMine2 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Thief",46);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 450);
	SetPlayerHealth(npc, 450);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_EdlesLangschwert");
	EquipArmor(npc, "ITAR_PAL_MY");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_MINENRITTER5;
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
	npcarr.instance = "PaladinNWMine2";
	npcarr.respawntime = 120;
	npcarr.guardian = 1;

	return npcarr;
end;