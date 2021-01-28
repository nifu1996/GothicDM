function Carter()
	local npc = CreateNPC(GetNewNPCName("Carter"));

	if(npc == -1)then
		print("Creating Carter Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Psionic",59);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 80);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 10050);
	SetPlayerHealth(npc, 10050);

	EquipMeleeWeapon(npc, "ItMw_Felsenbrecher");
	--EquipRangedWeapon(npc, "ItRw_Mil_Crossbow");
	EquipArmor(npc, "ITAR_HAFENB_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_TAVERNENWACHE;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "Carter";
	npcarr.respawntime = 360;
	--npcarr.guardian = 1;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Jose()
	local npc = CreateNPC(GetNewNPCName("Jose"));

	if(npc == -1)then
		print("Creating Jose Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Thief",22);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 80);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 10050);
	SetPlayerHealth(npc, 10050);

	EquipMeleeWeapon(npc, "ItMw_Morgenstern");
	--EquipRangedWeapon(npc, "ItRw_Mil_Crossbow");
	EquipArmor(npc, "ITAR_HAFENB_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_HAFEN_JOSE;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "Jose";
	npcarr.respawntime = 360;
	--npcarr.guardian = 1;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Kharim()
	local npc = CreateNPC(GetNewNPCName("Kharim"));

	if(npc == -1)then
		print("Creating Kharim Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",3,"Hum_Head_Bald",28);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");


	SetPlayerStrength(npc, 80);
	SetPlayerDexterity(npc, 80);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 10050);
	SetPlayerHealth(npc, 10050);

	EquipMeleeWeapon(npc, "ItMw_Bastardschwert");
	EquipRangedWeapon(npc, "ItRw_Mil_Crossbow");
	EquipArmor(npc, "ITAR_HAFENB_M");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_HAFEN_KHARIM;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	--npcarr.aivar = {};
	--npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "Kharim";
	npcarr.respawntime = 360;
	--npcarr.guardian = 1;
	npcarr.passiveNPC = 1;

	return npcarr;
end