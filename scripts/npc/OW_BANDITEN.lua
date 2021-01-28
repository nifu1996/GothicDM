function Bandit()
	local npc = CreateNPC(GetNewNPCName("Bandit"));

	if(npc == -1)then
		print("Creating Bandit Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",22);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");


	SetPlayerStrength(npc, 50);
	SetPlayerDexterity(npc, 60);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_Kurzschwert");
	EquipRangedWeapon(npc, "ItRw_Langbogen");
	EquipArmor(npc, "ITAR_BND_L");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_BANDIT3;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Wolf;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "Bandit";
	npcarr.respawntime = 360;
	--npcarr.guardian = 1;

	return npcarr;
end;

function Bandit2()
	local npc = CreateNPC(GetNewNPCName("Bandit"));

	if(npc == -1)then
		print("Creating Bandit2 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Pony",26);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");


	SetPlayerStrength(npc, 50);
	SetPlayerDexterity(npc, 60);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_Schiffsaxt");
	EquipArmor(npc, "ITAR_BND_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_BANDIT3;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Wolf;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "Bandit2";
	npcarr.respawntime = 360;
	--npcarr.guardian = 1;

	return npcarr;
end;

function Bandit3()
	local npc = CreateNPC(GetNewNPCName("Bandit"));

	if(npc == -1)then
		print("Creating Bandit3 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Thief",27);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Arrogance.mds");


	SetPlayerStrength(npc, 50);
	SetPlayerDexterity(npc, 60);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_GrobeAxt");
	EquipArmor(npc, "ITAR_BND_L");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_BANDIT2;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Wolf;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "Bandit3";
	npcarr.respawntime = 360;
	--npcarr.guardian = 1;

	return npcarr;
end;

function Bandit4()
	local npc = CreateNPC(GetNewNPCName("Bandit"));

	if(npc == -1)then
		print("Creating Bandit4 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",28);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");


	SetPlayerStrength(npc, 50);
	SetPlayerDexterity(npc, 60);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_GrobesSchwert");
	EquipRangedWeapon(npc, "ItRw_Langbogen");	
	EquipArmor(npc, "ITAR_BND_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_BANDIT;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Wolf;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "Bandit4";
	npcarr.respawntime = 360;
	--npcarr.guardian = 1;

	return npcarr;
end;

function Bandit5()
	local npc = CreateNPC(GetNewNPCName("Bandit"));

	if(npc == -1)then
		print("Creating Bandit5 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",10);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");


	SetPlayerStrength(npc, 50);
	SetPlayerDexterity(npc, 60);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 150);
	SetPlayerHealth(npc, 150);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_GrobesSchwert");
	EquipArmor(npc, "ITAR_BND_L");
	EquipRangedWeapon(npc, "ItRw_Langbogen");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_BANDIT;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Wolf;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "Bandit5";
	npcarr.respawntime = 360;
	--npcarr.guardian = 1;

	return npcarr;
end;