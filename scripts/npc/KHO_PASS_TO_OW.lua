function Ritter()
	local npc = CreateNPC(GetNewNPCName("Ritter"));

	if(npc == -1)then
		print("Creating Ritter Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",23);
	SetPlayerFatness(npc, 0.4);
	SetPlayerScale(npc, 1.15, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_1H_Blessed_01");
	EquipRangedWeapon(npc, "ItRw_schwere_armbrust");
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_PASS_RITTER;
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
	npcarr.instance = "Ritter";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;

function Ritter2()
	local npc = CreateNPC(GetNewNPCName("Ritter"));

	if(npc == -1)then
		print("Creating Ritter2 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",26);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_1H_Blessed_01");
	EquipRangedWeapon(npc, "ItRw_schwere_armbrust");
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_PASS_RITTER2;
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
	npcarr.instance = "Ritter2";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;

function Ritter3()
	local npc = CreateNPC(GetNewNPCName("Ritter"));

	if(npc == -1)then
		print("Creating Ritter3 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",27);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_1H_Blessed_01");
	EquipRangedWeapon(npc, "ItRw_schwere_armbrust");
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_PASS_RITTER3;
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
	npcarr.instance = "Ritter3";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;

function Ritter4()
	local npc = CreateNPC(GetNewNPCName("Ritter"));

	if(npc == -1)then
		print("Creating Ritter4 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",28);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_1H_Blessed_01");
	EquipRangedWeapon(npc, "ItRw_schwere_armbrust");
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_PASS_RITTER4;
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
	npcarr.instance = "Ritter4";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;

function Paladin()
	local npc = CreateNPC(GetNewNPCName("Paladin"));

	if(npc == -1)then
		print("Creating Paladin Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",22);
	SetPlayerFatness(npc, 0.4);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_2H, 60);

	EquipMeleeWeapon(npc, "ItMw_Vollstrecker");
	EquipRangedWeapon(npc, "ItRw_goldarmbrust");
	EquipArmor(npc, "ITAR_PAL_MY");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_PASS_PALADIN;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "Paladin";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;

function Paladin2()
	local npc = CreateNPC(GetNewNPCName("Paladin"));

	if(npc == -1)then
		print("Creating Paladin2 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Thief",24);
	SetPlayerFatness(npc, 0.4);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_2H, 60);

	EquipMeleeWeapon(npc, "ItMw_Vollstrecker");
	EquipRangedWeapon(npc, "ItRw_goldarmbrust");
	EquipArmor(npc, "ITAR_PAL_MY");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_PASS_PALADIN_2;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "Paladin2";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;

function Ferdinand()
	local npc = CreateNPC(GetNewNPCName("Ferdinand"));

	if(npc == -1)then
		print("Creating Ferdinand Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",29);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_2H, 60);

	EquipMeleeWeapon(npc, "ItMw_Schlachtklinge");
	EquipRangedWeapon(npc, "ItRw_goldarmbrust");
	EquipArmor(npc, "ITAR_PAL_KOE");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_PASS_FERDINAND;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "Ferdinand";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;

function Rorik()
	local npc = CreateNPC(GetNewNPCName("Rorik"));

	if(npc == -1)then
		print("Creating Rorik Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",2,"Hum_Head_Thief",0);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 80);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 10000);
	SetPlayerHealth(npc, 10000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 80);

	EquipMeleeWeapon(npc, "ItMw_EdlesLangschwert");
	EquipArmor(npc, "ITAR_RITTER_M");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_PASS_RORIK;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Rorik";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end

function Keris()
	local npc = CreateNPC(GetNewNPCName("Keris"));

	if(npc == -1)then
		print("Creating Keris Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",0,"Hum_Head_Pony",10);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 80);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 10000);
	SetPlayerHealth(npc, 10000);
	SetPlayerSkillWeapon(npc, SKILL_2H, 80);

	EquipMeleeWeapon(npc, "ItMw_EdleKriegsschneide");
	EquipArmor(npc, "ITAR_RITTER_M");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_PASS_KERIS;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Keris";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end