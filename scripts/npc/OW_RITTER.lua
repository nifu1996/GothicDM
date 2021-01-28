--Die Besatzung der Burg im Minental:
--9 Ritter
--3 Paladine
--2 Waffenknechte

function RitterSmalltalk1()
	local npc = CreateNPC(GetNewNPCName("Ritter"));

	if(npc == -1)then
		print("Creating RitterSmalltalk1 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",66);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_EdlesLangschwert");
	--EquipRangedWeapon(npc, "ItRw_schwere_armbrust");
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_RitterSmalltalk1;
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
	npcarr.instance = "OW_Ritter_SmallTalk1";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;

function RitterSmalltalk2()
	local npc = CreateNPC(GetNewNPCName("Ritter"));

	if(npc == -1)then
		print("Creating RitterSmalltalk2 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Pony",67);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_GrobesSchwert");
	--EquipRangedWeapon(npc, "ItRw_schwere_armbrust");
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_RitterSmalltalk2;
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
	npcarr.instance = "OW_Ritter_SmallTalk2";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;

function WaffenknechtLagerfeuer1()
	local npc = CreateNPC(GetNewNPCName("Waffenknecht"));

	if(npc == -1)then
		print("Creating WaffenknechtLagerfeuer1 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Pony",2);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 30);

	EquipMeleeWeapon(npc, "ItMw_GrobesSchwert");
	EquipArmor(npc, "ITAR_MIL_L");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_WaffenknechtLagerfeuer1
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
	npcarr.instance = "OW_Waffenknecht_Lagerfeuer1";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end

function RitterLagerfeuer2()
	local npc = CreateNPC(GetNewNPCName("Ritter"));

	if(npc == -1)then
		print("Creating RitterLagerfeuer2 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",2,"Hum_Head_Pony",8);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_GrobesSchwert");
	--EquipRangedWeapon(npc, "ItRw_schwere_armbrust");
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_RitterLagerfeuer2;
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
	npcarr.instance = "OW_Ritter_Lagerfeuer2";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;

function WaffenknechtLagerfeuer3()
	local npc = CreateNPC(GetNewNPCName("Waffenknecht"));

	if(npc == -1)then
		print("Creating WaffenknechtLagerfeuer3 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",3,"Hum_Head_Pony",130);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 30);

	EquipMeleeWeapon(npc, "ItMw_GrobesSchwert");
	EquipArmor(npc, "ITAR_MIL_L");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_WaffenknechtLagerfeuer3
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
	npcarr.instance = "OW_Waffenknecht_Lagerfeuer3";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end

function RitterLagerfeuer4()
	local npc = CreateNPC(GetNewNPCName("Ritter"));

	if(npc == -1)then
		print("Creating RitterLagerfeuer4 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",2,"Hum_Head_Bald",55);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_GrobesSchwert");
	--EquipRangedWeapon(npc, "ItRw_schwere_armbrust");
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_RitterLagerfeuer4;
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
	npcarr.instance = "OW_Ritter_Lagerfeuer4";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;

function RitterWachhaus()
	local npc = CreateNPC(GetNewNPCName("Ritter"));

	if(npc == -1)then
		print("Creating RitterWachhaus Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",2,"Hum_Head_Bald",24);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_Langschwert");
	--EquipRangedWeapon(npc, "ItRw_schwere_armbrust");
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_RitterWachhaus;
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
	npcarr.instance = "OW_Ritter_Wachhaus";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;

function PaladinSaal1()
	local npc = CreateNPC(GetNewNPCName("Paladin"));

	if(npc == -1)then
		print("Creating PaladinSaal1 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",46);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_EdlesLangschwert");
	EquipArmor(npc, "ITAR_PAL_MY");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_PaladinSaal1;
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
	npcarr.instance = "OW_Paladin_Saal1";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;

function PaladinSaal2()
	local npc = CreateNPC(GetNewNPCName("Paladin"));

	if(npc == -1)then
		print("Creating PaladinSaal2 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Pony",56);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_GrobesBreitschwert");
	EquipArmor(npc, "ITAR_PAL_MY");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_PaladinSaal2;
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
	npcarr.instance = "OW_Paladin_Saal2";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;

function PaladinRaven()
	local npc = CreateNPC(GetNewNPCName("Paladin"));

	if(npc == -1)then
		print("Creating PaladinRaven Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Pony",107);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_Langschwert");
	EquipArmor(npc, "ITAR_PAL_MY");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_PaladinRaven;
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
	npcarr.instance = "OW_Paladin_Raven";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;

function RitterOrkramme()
	local npc = CreateNPC(GetNewNPCName("Ritter"));

	if(npc == -1)then
		print("Creating RitterOrkramme Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Pony",107);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_Langschwert");
	EquipRangedWeapon(npc, "ItRw_schwere_armbrust");	
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_RitterOrkramme;
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
	npcarr.instance = "OW_Ritter_Orkramme";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;

function RitterTorhaus()
	local npc = CreateNPC(GetNewNPCName("Ritter"));

	if(npc == -1)then
		print("Creating RitterTorhaus Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Pony",3);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_Langschwert");
	EquipRangedWeapon(npc, "ItRw_schwere_armbrust");	
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_RitterTorhaus;
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
	npcarr.instance = "OW_Ritter_Torhaus";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;

function RitterTuersteher1()
	local npc = CreateNPC(GetNewNPCName("Ritter"));

	if(npc == -1)then
		print("Creating RitterTürsteher1 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Pony",85);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_EdlesLangschwert");
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_RitterTuersteher1;
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
	npcarr.instance = "OW_Ritter_Tuersteher1";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;

function RitterTuersteher2()
	local npc = CreateNPC(GetNewNPCName("Ritter"));

	if(npc == -1)then
		print("Creating RitterTürsteher2 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Thief",20);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_GrobesBreitschwert");
	EquipArmor(npc, "ITAR_RITTER_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_RitterTuersteher2;
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
	npcarr.instance = "OW_Ritter_Tuersteher2";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;