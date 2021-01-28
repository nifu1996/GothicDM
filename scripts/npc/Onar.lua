function Filan()
	local npc = CreateNPC(GetNewNPCName("Filan"));

	if(npc == -1)then
		print("Creating Filan Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Psionic",66);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_2H, 60);

	EquipMeleeWeapon(npc, "ItMw_Vollstrecker");
	EquipRangedWeapon(npc, "ItRw_langbogen");
	EquipArmor(npc, "ITAR_SLD_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_ONAR_FILAN;
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
	npcarr.instance = "Filan";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end

function Malakas()
	local npc = CreateNPC(GetNewNPCName("Malakas"));

	if(npc == -1)then
		print("Creating Malakas Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Psionic",67);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_2H, 60);

	EquipMeleeWeapon(npc, "ItMw_Vollstrecker");
	EquipRangedWeapon(npc, "ItRw_langbogen");
	EquipArmor(npc, "ITAR_SLD_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_ONAR_MALAKAS;
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
	npcarr.instance = "Malakas";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end

function Merc()
	local npc = CreateNPC(GetNewNPCName("Merc"));

	if(npc == -1)then
		print("Creating Merc Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Fighter",68);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");
	EquipArmor(npc, "ITAR_SLD_M");

	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_Bastardschwert");
	EquipRangedWeapon(npc, "ItRw_langbogen");
	EquipArmor(npc, "ITAR_BanditMittel");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_ONAR_MERC;
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
	npcarr.instance = "Merc";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end

function Laindro()
	local npc = CreateNPC(GetNewNPCName("Laindro"));

	if(npc == -1)then
		print("Creating Laindro Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Psionic",69);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");

	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_2H, 60);

	EquipMeleeWeapon(npc, "ItMw_Vollstrecker");
	EquipRangedWeapon(npc, "ItRw_langbogen");
	EquipArmor(npc, "ITAR_SLD_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_ONAR_LAINDRO;
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
	npcarr.instance = "Laindro";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end

function Therus()
	local npc = CreateNPC(GetNewNPCName("Therus"));

	if(npc == -1)then
		print("Creating Therus Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Thief",70);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");

	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_Bastardschwert");
	EquipRangedWeapon(npc, "ItRw_langbogen");
	EquipArmor(npc, "ITAR_BanditMittel");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_ONAR_THERUS;
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
	npcarr.instance = "Therus";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end

function Kerkerwache()
	local npc = CreateNPC(GetNewNPCName("Kerkerwache"));

	if(npc == -1)then
		print("Creating Kerkerwache Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",2);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_Langschwert");
	EquipArmor(npc, "ITAR_SLD_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_ONAR_KERKERWACHE;
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
	npcarr.instance = "Kerkerwache";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end