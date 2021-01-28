function Spawn_Echsenmensch()
	local npc = CreateNPC(GetNewNPCName("Echsenmensch"));

	if(npc == -1)then
		print("Creating Spawn_Echsenmensch Failed!");
	end

	SetPlayerInstance(npc,"Draconian");

	SetPlayerStrength(npc, 135); 
	SetPlayerDexterity(npc, 135); 
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 590); 
	SetPlayerHealth(npc, 590);

	EquipMeleeWeapon(npc, "ItMw_2H_OrcSword_01");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_DRACONIAN;
	npcarr.func = Draconian;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;

	return npcarr;
end

function Echsenmensch()
	local npc = CreateNPC(GetNewNPCName("Echsenmensch"));

	if(npc == -1)then
		print("Creating Echsenmensch Failed!");
	end

	SetPlayerInstance(npc,"Draconian");

	SetPlayerStrength(npc, 135); 
	SetPlayerDexterity(npc, 135); 
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 590); 
	SetPlayerHealth(npc, 590);

	EquipMeleeWeapon(npc, "ItMw_2H_OrcSword_01");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_DRACONIAN;
	npcarr.func = Draconian;
	npcarr.instance = "Echsenmensch";
	npcarr.respawntime = 2500;

	return npcarr;
end

function OW_Echsenmensch()
	local npc = CreateNPC(GetNewNPCName("Echsenmensch"));

	if(npc == -1)then
		print("Creating OWEchsenmensch Failed!");
	end

	SetPlayerInstance(npc,"Draconian");

	SetPlayerStrength(npc, 135); 
	SetPlayerDexterity(npc, 135); 
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 590); 
	SetPlayerHealth(npc, 590);

	EquipMeleeWeapon(npc, "ItMw_2H_OrcSword_01");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_DRACONIAN;
	npcarr.func = Draconian;
	npcarr.instance = "OW_Echsenmensch";
	npcarr.respawntime = 2500;

	return npcarr;
end

function JK_Echsenmensch()
	local npc = CreateNPC(GetNewNPCName("Echsenmensch"));

	if(npc == -1)then
		print("Creating JKEchsenmensch Failed!");
	end

	SetPlayerInstance(npc,"Draconian");

	SetPlayerStrength(npc, 135); 
	SetPlayerDexterity(npc, 135); 
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 590); 
	SetPlayerHealth(npc, 590);

	EquipMeleeWeapon(npc, "ItMw_2H_OrcSword_01");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_DRACONIAN;
	npcarr.func = Draconian;
	npcarr.instance = "JK_Echsenmensch";
	npcarr.respawntime = 2500;

	return npcarr;
end