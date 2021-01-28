function Buster()
	local npc = CreateNPC(GetNewNPCName("Buster"));

	if(npc == -1)then
		print("Creating Buster Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Bald",22);
	SetPlayerFatness(npc, 0.4);
	SetPlayerScale(npc, 1.15, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 60);

	EquipMeleeWeapon(npc, "ItMw_Morgenstern");
	EquipRangedWeapon(npc, "ItRw_buchenbogen");
	EquipArmor(npc, "ITAR_BanditSchwer");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_BANDIT_BUSTER;
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
	npcarr.instance = "Buster";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;

function Krain()
	local npc = CreateNPC(GetNewNPCName("Krain"));

	if(npc == -1)then
		print("Creating Krain Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Fighter",102);
	SetPlayerFatness(npc, 0.4);
	SetPlayerScale(npc, 1, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_1H, 30);

	EquipMeleeWeapon(npc, "ItMw_Rabenschnabel");
	EquipRangedWeapon(npc, "ItRw_ulmenbogen");
	EquipArmor(npc, "ITAR_BND_ROT_L");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_BANDIT_KRAIN;
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
	npcarr.instance = "Krain";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;

function Alek()
	local npc = CreateNPC(GetNewNPCName("Alek"));

	if(npc == -1)then
		print("Creating Alek Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",3,"Hum_Head_Bald",130);
	SetPlayerFatness(npc, 0.4);
	SetPlayerScale(npc, 1.15, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 5050);
	SetPlayerHealth(npc, 5050);
	SetPlayerSkillWeapon(npc, SKILL_2H, 60);

	EquipMeleeWeapon(npc, "ItMw_LeichteStreitaxt");
	EquipArmor(npc, "ITAR_BND_ROT_L");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_BANDIT_ALEK;
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
	npcarr.instance = "Alek";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end;
