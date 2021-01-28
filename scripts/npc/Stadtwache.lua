require "scripts/dialogs/Dia_Sebalt"

function Stadtwache()
	local npc = CreateNPC(GetNewNPCName("Stadtwache"));

	if(npc == -1)then
		print("Creating Stadtwache Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Psionic",59);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 10050);
	SetPlayerHealth(npc, 10050);

	EquipMeleeWeapon(npc, "ItMw_Schwert1");
	EquipRangedWeapon(npc, "ItRw_Mil_Crossbow");
	EquipArmor(npc, "ITAR_MIL_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
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
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end

function Sebalt()
	local npc = CreateNPC(GetNewNPCName("Sebalt"));

	if(npc == -1)then
		print("Creating Sebalt Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Psionic",59);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 80);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 10000);
	SetPlayerHealth(npc, 10000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);
	SetPlayerSkillWeapon(npc, SKILL_CBOW, 60);

	EquipMeleeWeapon(npc, "ItMw_Schwert1");
	EquipRangedWeapon(npc, "ItRw_Mil_Crossbow");
	EquipArmor(npc, "ITAR_MIL_M");

	local dialogs = {};

	addDialog(dialogs, 1, IMPORTENT_DIALOG, nil, "Verschwinde!");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_SEBALT;
	npcarr.attack_routine = FAI_SEBALT_ATTACK;
	npcarr.WeaponMode = 6;
	npcarr.dialogs = dialogs;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_SEBALT_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.aivar = {};
	npcarr.aivar["ATTACKRANGE"] = 2000;
	npcarr.instance = "Sebalt";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end

function Wendel()
	local npc = CreateNPC(GetNewNPCName("Wendel"));

	if(npc == -1)then
		print("Creating Wendel Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Thief",33);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 30);

	EquipMeleeWeapon(npc, "ItMw_Schwert1");
	EquipRangedWeapon(npc, "ItRw_Mil_Crossbow");
	EquipArmor(npc, "ITAR_MIL_L");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OSTTOR_WENDEL;
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
	npcarr.instance = "Wendel";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end

function Jenek()
	local npc = CreateNPC(GetNewNPCName("Jenek"));

	if(npc == -1)then
		print("Creating Jenek Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Fighter",69);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 30);

	EquipMeleeWeapon(npc, "ItMw_Schwert1");
	EquipRangedWeapon(npc, "ItRw_Mil_Crossbow");
	EquipArmor(npc, "ITAR_MIL_L");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OSTTOR_JENEK;
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
	npcarr.instance = "Jenek";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end

function Wilhelm()
	local npc = CreateNPC(GetNewNPCName("Wilhelm"));

	if(npc == -1)then
		print("Creating Wilhelm Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Thief",2);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 30);

	EquipMeleeWeapon(npc, "ItMw_Schwert1");
	EquipRangedWeapon(npc, "ItRw_Mil_Crossbow");
	EquipArmor(npc, "ITAR_MIL_L");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_SUEDTOR_WILHELM;
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
	npcarr.instance = "Wilhelm";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end

function Fester()
	local npc = CreateNPC(GetNewNPCName("Fester"));

	if(npc == -1)then
		print("Creating Fester Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",3,"Hum_Head_Thief",130);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 30);

	EquipMeleeWeapon(npc, "ItMw_Schwert1");
	EquipRangedWeapon(npc, "ItRw_Mil_Crossbow");
	EquipArmor(npc, "ITAR_MIL_L");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_SUEDTOR_FESTER;
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
	npcarr.instance = "Fester";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end

function Endres()
	local npc = CreateNPC(GetNewNPCName("Endres"));

	if(npc == -1)then
		print("Creating Endres Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",2,"Hum_Head_Psionic",8);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 30);

	EquipMeleeWeapon(npc, "ItMw_Schwert1");
	EquipRangedWeapon(npc, "ItRw_Mil_Crossbow");
	EquipArmor(npc, "ITAR_MIL_L");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_KASERNE_ENDRES;
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
	npcarr.instance = "Endres";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end

function Bero()
	local npc = CreateNPC(GetNewNPCName("Bero"));

	if(npc == -1)then
		print("Creating Bero Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",2,"Hum_Head_Bald",110);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 30);

	EquipMeleeWeapon(npc, "ItMw_Schwert1");
	EquipRangedWeapon(npc, "ItRw_Mil_Crossbow");
	EquipArmor(npc, "ITAR_MIL_L");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_KASERNE_BERO;
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
	npcarr.instance = "Bero";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end

function Lennard()
	local npc = CreateNPC(GetNewNPCName("Lennard"));

	if(npc == -1)then
		print("Creating Lennard Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Psionic",55);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 80);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 10000);
	SetPlayerHealth(npc, 10000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);
	SetPlayerSkillWeapon(npc, SKILL_CBOW, 60);

	EquipMeleeWeapon(npc, "ItMw_Schwert1");
	EquipRangedWeapon(npc, "ItRw_Mil_Crossbow");
	EquipArmor(npc, "ITAR_MINENWACHE_H");

	local dialogs = {};

	--addDialog(dialogs, 1, IMPORTENT_DIALOG, nil, "Verschwinde!");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_KHORINIS_MINENWACHE;
	npcarr.attack_routine = FAI_SEBALT_ATTACK;
	npcarr.WeaponMode = 6;
	npcarr.dialogs = dialogs;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_SEBALT_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.aivar = {};
	npcarr.aivar["ATTACKRANGE"] = 300;
	npcarr.instance = "Lennard";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end

function Rathauswache()
	local npc = CreateNPC(GetNewNPCName("Rathauswache"));

	if(npc == -1)then
		print("Creating Rathauswache Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",2,"Hum_Head_Bald",24);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 80);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 10000);
	SetPlayerHealth(npc, 10000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 80);

	EquipMeleeWeapon(npc, "ItMw_Langschwert");
	EquipArmor(npc, "ITAR_MIL_H");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_RATHAUS_WACHE;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Rathauswache";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end

function Rathauswache2()
	local npc = CreateNPC(GetNewNPCName("Rathauswache"));

	if(npc == -1)then
		print("Creating Rathauswache2 Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Pony",29);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 80);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 10000);
	SetPlayerHealth(npc, 10000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 80);

	EquipMeleeWeapon(npc, "ItMw_Langschwert");
	EquipArmor(npc, "ITAR_MIL_H");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_RATHAUS_WACHE2;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Rathauswache2";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end

function Ramon()
	local npc = CreateNPC(GetNewNPCName("Ramon"));

	if(npc == -1)then
		print("Creating Ramon Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Pony",27);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 30);

	EquipMeleeWeapon(npc, "ItMw_Schwert1");
	EquipRangedWeapon(npc, "ItRw_Mil_Crossbow");
	EquipArmor(npc, "ITAR_MIL_L");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_KASERNE_RAMON;
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
	npcarr.instance = "Ramon";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end

function Alexandra()
	local npc = CreateNPC(GetNewNPCName("Alexandra"));

	if(npc == -1)then
		print("Creating Alexandra Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",11,"Hum_Head_babe",137);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");


	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 30);

	EquipMeleeWeapon(npc, "ItMw_Schwert1");
	--EquipRangedWeapon(npc, "ItRw_Mil_Crossbow");
	EquipArmor(npc, "ITAR_MIL_WL");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_HAFENTOR_ALEXANDRA;
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
	npcarr.instance = "Alexandra";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end