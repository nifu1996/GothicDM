function Spawn_Orkschuetze()
	local npc = CreateNPC(GetNewNPCName("Ork Armbrustschütze"));

	if(npc == -1)then
		print("Creating Spawn_Orc-Armbrustschuetze Failed!");
	end

	SetPlayerInstance(npc,"OrcWarrior_Archer");

	SetPlayerStrength(npc, 10); -- 100
	SetPlayerDexterity(npc, 10); -- 150
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 420); -- 300
	SetPlayerHealth(npc, 420);
	SetPlayerSkillWeapon(npc, SKILL_CBOW, 30);

	EquipRangedWeapon(npc, "ItRw_schwere_armbrust");
	
	-- Der Schaden der Waffe wird zur Stärke dazu gerechnet! --

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_SEBALT_ATTACK;
	npcarr.WeaponMode = 6;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_SEBALT_HIT;
	npcarr.Guild = AI_GUILD_Orc;
	npcarr.func = OrcWarrior_Archer;
	npcarr.aivar = {};
	npcarr.aivar["ATTACKRANGE"] = 2000;
	npcarr.aivar["MaxWarnDistance"] = 1700;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;

	return npcarr;
end

function Orkschuetze()
	local npc = CreateNPC(GetNewNPCName("Ork Armbrustschütze"));

	if(npc == -1)then
		print("Creating Orc-Armbrustschuetze Failed!");
	end

	SetPlayerInstance(npc,"OrcWarrior_Archer");

	SetPlayerStrength(npc, 10); -- 100
	SetPlayerDexterity(npc, 10); -- 150
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 420); -- 300
	SetPlayerHealth(npc, 420);
	SetPlayerSkillWeapon(npc, SKILL_CBOW, 30);

	EquipRangedWeapon(npc, "ItRw_schwere_armbrust");
	
	-- Der Schaden der Waffe wird zur Stärke dazu gerechnet! --

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_SEBALT_ATTACK;
	npcarr.WeaponMode = 6;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_SEBALT_HIT;
	npcarr.Guild = AI_GUILD_Orc;
	npcarr.func = OrcWarrior_Archer;
	npcarr.aivar = {};
	npcarr.aivar["ATTACKRANGE"] = 2000;
	npcarr.aivar["MaxWarnDistance"] = 1700;
	npcarr.instance = "Orkschuetze";
	npcarr.respawntime = 360;

	return npcarr;
end

function OW_Orkschuetze()
	local npc = CreateNPC(GetNewNPCName("Ork Armbrustschütze"));

	if(npc == -1)then
		print("Creating OW_Orc-Armbrustschuetze Failed!");
	end

	SetPlayerInstance(npc,"OrcWarrior_Archer");

	SetPlayerStrength(npc, 10); -- 100
	SetPlayerDexterity(npc, 10); -- 150
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 420); -- 300
	SetPlayerHealth(npc, 420);
	SetPlayerSkillWeapon(npc, SKILL_CBOW, 30);

	EquipRangedWeapon(npc, "ItRw_schwere_armbrust");
	
	-- Der Schaden der Waffe wird zur Stärke dazu gerechnet! --

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_SEBALT_ATTACK;
	npcarr.WeaponMode = 6;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_SEBALT_HIT;
	npcarr.Guild = AI_GUILD_Orc;
	npcarr.func = OrcWarrior_Archer;
	npcarr.aivar = {};
	npcarr.aivar["ATTACKRANGE"] = 2000;
	npcarr.aivar["MaxWarnDistance"] = 1700;
	npcarr.instance = "OW_Orkschuetze";
	npcarr.respawntime = 360;

	return npcarr;
end
