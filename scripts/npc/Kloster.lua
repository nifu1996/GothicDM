function Asrael()
	local npc = CreateNPC(GetNewNPCName("Asrael"));

	if(npc == -1)then
		print("Creating Asrael Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Psionic",66);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");


	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 25);
	SetPlayerMaxHealth(npc, 1050);
	SetPlayerHealth(npc, 1050);
	SetPlayerSkillWeapon(npc, SKILL_2H, 60);

	EquipMeleeWeapon(npc, "ItMw_Meisterstab");
	--EquipMeleeWeapon(npc, "ItMw_Besen");
	EquipArmor(npc, "itar_nov_feuer");


	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_KLOSTER_ASRAEL;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.aivar = {};
	npcarr.aivar["WARNTIME"] = 0;
	npcarr.instance = "Asrael";
	npcarr.respawntime = 360;
	npcarr.guardian = 1;

	return npcarr;
end
