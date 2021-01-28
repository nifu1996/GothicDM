function OrcScout()
	local npc = CreateNPC(GetNewNPCName("Orksp‰her"));

	if(npc == -1)then
		print("Creating Orc Scout Failed!");
	end

	SetPlayerInstance(npc,"OrcWarrior_Scout");

	SetPlayerStrength(npc, 100); -- 80
	SetPlayerDexterity(npc, 100); -- 70
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 420);
	SetPlayerHealth(npc, 420);

	EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_01");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Orc;
	npcarr.func = OrcScout;
	npcarr.instance = "Orkspaeher";
	npcarr.respawntime = 360;

	return npcarr;
end

function OW_OrcScout()
	local npc = CreateNPC(GetNewNPCName("Orksp‰her"));

	if(npc == -1)then
		print("Creating OW_Orc Scout Failed!");
	end

	SetPlayerInstance(npc,"OrcWarrior_Scout");

	SetPlayerStrength(npc, 100); -- 80
	SetPlayerDexterity(npc, 100); -- 70
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 420);
	SetPlayerHealth(npc, 420);

	EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_01");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Orc;
	npcarr.func = OrcScout;
	npcarr.instance = "OW_Orkspaeher";
	npcarr.respawntime = 360;

	return npcarr;
end

function JK_OrcScout()
	local npc = CreateNPC(GetNewNPCName("Orksp‰her"));

	if(npc == -1)then
		print("Creating JK_Orc Scout Failed!");
	end

	SetPlayerInstance(npc,"OrcWarrior_Scout");

	SetPlayerStrength(npc, 100); -- 80
	SetPlayerDexterity(npc, 100); -- 70
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 420);
	SetPlayerHealth(npc, 420);

	EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_01");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Orc;
	npcarr.func = OrcScout;
	npcarr.instance = "JK_Orkspaeher";
	npcarr.respawntime = 360;

	return npcarr;
end

-- Instanzen f√ºr /spawn Befehl mit modifizierten TA und ohne Respawnroutine

function Spawn_OrcScout()
	local npc = CreateNPC(GetNewNPCName("Orksp‰her"));
	
	if(npc == -1)then
		print("Creating Spawn_Orc Scout Failed!");
	end
	
	SetPlayerInstance(npc,"OrcWarrior_Scout");

	SetPlayerStrength(npc, 100); -- 80
	SetPlayerDexterity(npc, 100); -- 70
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 420);
	SetPlayerHealth(npc, 420);
	
	EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_02");
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Orc;
	npcarr.func = OrcScout;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end