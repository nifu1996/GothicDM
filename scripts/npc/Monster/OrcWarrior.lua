function OrcWarriorLight()
	local npc = CreateNPC(GetNewNPCName("Leichter Orkkrieger"));

	if(npc == -1)then
		print("Creating LeichterOrkkrieger Failed!");
	end

	SetPlayerInstance(npc,"OrcWarrior_Light");

	SetPlayerStrength(npc, 110); -- 100
	SetPlayerDexterity(npc, 110); -- 150
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 500); -- 300
	SetPlayerHealth(npc, 500);

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
	npcarr.func = OrcWarrior;
	npcarr.instance = "Leichter_Orkkrieger";
	npcarr.respawntime = 600;

	return npcarr;
end

function OW_OrcWarriorLight()
	local npc = CreateNPC(GetNewNPCName("Leichter Orkkrieger"));

	if(npc == -1)then
		print("Creating OW_LeichterOrkkrieger Failed!");
	end

	SetPlayerInstance(npc,"OrcWarrior_Light");

	SetPlayerStrength(npc, 110); -- 100
	SetPlayerDexterity(npc, 110); -- 150
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 500); -- 300
	SetPlayerHealth(npc, 500);

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
	npcarr.func = OrcWarrior;
	npcarr.instance = "OW_Leichter_Orkkrieger";
	npcarr.respawntime = 600;

	return npcarr;
end

function JK_OrcWarriorLight()
	local npc = CreateNPC(GetNewNPCName("Leichter Orkkrieger"));

	if(npc == -1)then
		print("Creating JK_LeichterOrkkrieger Failed!");
	end

	SetPlayerInstance(npc,"OrcWarrior_Light");

	SetPlayerStrength(npc, 110); -- 100
	SetPlayerDexterity(npc, 110); -- 150
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 500); -- 300
	SetPlayerHealth(npc, 500);

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
	npcarr.func = OrcWarrior;
	npcarr.instance = "JK_Leichter_Orkkrieger";
	npcarr.respawntime = 600;

	return npcarr;
end

function OrcWarrior()
	local npc = CreateNPC(GetNewNPCName("Orkkrieger"));

	if(npc == -1)then
		print("Creating Orkkrieger Failed!");
	end

	SetPlayerInstance(npc,"OrcWarrior_Roam");

	SetPlayerStrength(npc, 120); -- 100
	SetPlayerDexterity(npc, 120); -- 150
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 610); -- 300
	SetPlayerHealth(npc, 610);

	EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_03");

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
	npcarr.func = OrcWarrior;
	npcarr.instance = "Orkkrieger";
	npcarr.respawntime = 600;

	return npcarr;
end

function JK_OrcWarrior()
	local npc = CreateNPC(GetNewNPCName("Orkkrieger"));

	if(npc == -1)then
		print("Creating JK_Orkkrieger Failed!");
	end

	SetPlayerInstance(npc,"OrcWarrior_Roam");

	SetPlayerStrength(npc, 120); -- 100
	SetPlayerDexterity(npc, 120); -- 150
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 610); -- 300
	SetPlayerHealth(npc, 610);

	EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_03");

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
	npcarr.func = OrcWarrior;
	npcarr.instance = "JK_Orkkrieger";
	npcarr.respawntime = 600;

	return npcarr;
end

function OW_OrcWarrior()
	local npc = CreateNPC(GetNewNPCName("Orkkrieger"));

	if(npc == -1)then
		print("Creating OW_Orkkrieger Failed!");
	end

	SetPlayerInstance(npc,"OrcWarrior_Roam");

	SetPlayerStrength(npc, 120); -- 100
	SetPlayerDexterity(npc, 120); -- 150
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 610); -- 300
	SetPlayerHealth(npc, 610);

	EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_03");

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
	npcarr.func = OrcWarrior;
	npcarr.instance = "OW_Orkkrieger";
	npcarr.respawntime = 600;

	return npcarr;
end

function OrcWarriorHeavy()
	local npc = CreateNPC(GetNewNPCName("Schwerer Orkkrieger"));

	if(npc == -1)then
		print("Creating SchwererOrkkrieger Failed!");
	end

	SetPlayerInstance(npc,"OrcWarrior_Heavy");

	SetPlayerStrength(npc, 135); -- 100
	SetPlayerDexterity(npc, 135); -- 150
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 730); -- 300
	SetPlayerHealth(npc, 730);

	EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_04");

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
	npcarr.func = OrcWarriorHeavy;
	npcarr.instance = "Schwerer_Orkkrieger";
	npcarr.respawntime = 600;

	return npcarr;
end

function OW_OrcWarriorHeavy()
	local npc = CreateNPC(GetNewNPCName("Schwerer Orkkrieger"));

	if(npc == -1)then
		print("Creating OW_SchwererOrkkrieger Failed!");
	end

	SetPlayerInstance(npc,"OrcWarrior_Heavy");

	SetPlayerStrength(npc, 135); -- 100
	SetPlayerDexterity(npc, 135); -- 150
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 730); -- 300
	SetPlayerHealth(npc, 730);

	EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_04");

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
	npcarr.func = OrcWarriorHeavy;
	npcarr.instance = "OW_Schwerer_Orkkrieger";
	npcarr.respawntime = 600;

	return npcarr;
end

function JK_OrcWarriorHeavy()
	local npc = CreateNPC(GetNewNPCName("Schwerer Orkkrieger"));

	if(npc == -1)then
		print("Creating JK_SchwererOrkkrieger Failed!");
	end

	SetPlayerInstance(npc,"OrcWarrior_Heavy");

	SetPlayerStrength(npc, 135); -- 100
	SetPlayerDexterity(npc, 135); -- 150
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 730); -- 300
	SetPlayerHealth(npc, 730);

	EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_04");

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
	npcarr.func = OrcWarriorHeavy;
	npcarr.instance = "JK_Schwerer_Orkkrieger";
	npcarr.respawntime = 600;

	return npcarr;
end

function OrcWarrior1()
	npcarr = OrcWarriorLight();

	npcarr.func = OrcWarrior1;


	return npcarr;
end

function OrcWarrior2()
	npcarr = OrcWarriorLight();
	npcarr.func = OrcWarrior2;

	return npcarr;
end

function OrcWarrior3()
	npcarr = OrcWarrior();
	npcarr.func = OrcWarrior3;

	return npcarr;
end

function OrcWarrior4()
	npcarr = OrcWarriorHeavy();
	npcarr.func = OrcWarrior4;

	return npcarr;
end

-- Instanzen für /spawn Befehl mit modifizierten TA und ohne Respawnroutine

function Spawn_OrcWarriorLight()
	local npc = CreateNPC(GetNewNPCName("Leichter Orkkrieger"));

	if(npc == -1)then
		print("Creating Spawn_LeichterOrkkrieger Failed!");
	end

	SetPlayerInstance(npc,"OrcWarrior_Light");

	SetPlayerStrength(npc, 110); -- 100
	SetPlayerDexterity(npc, 110); -- 150
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 500); -- 300
	SetPlayerHealth(npc, 500);

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
	npcarr.func = OrcWarrior;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;

	return npcarr;
end

function Spawn_OrcWarrior()
	local npc = CreateNPC(GetNewNPCName("Orkkrieger"));

	if(npc == -1)then
		print("Creating Spawn_Orkkrieger Failed!");
	end

	SetPlayerInstance(npc,"OrcWarrior_Roam");

	SetPlayerStrength(npc, 120); -- 100
	SetPlayerDexterity(npc, 120); -- 150
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 610); -- 300
	SetPlayerHealth(npc, 610);

	EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_03");

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
	npcarr.func = OrcWarrior;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;

	return npcarr;
end

function Spawn_OrcWarriorHeavy()
	local npc = CreateNPC(GetNewNPCName("Schwerer Orkkrieger"));

	if(npc == -1)then
		print("Creating Spawn_SchwererOrkkrieger Failed!");
	end

	SetPlayerInstance(npc,"OrcWarrior_Heavy");

	SetPlayerStrength(npc, 135); -- 100
	SetPlayerDexterity(npc, 135); -- 150
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 730); -- 300
	SetPlayerHealth(npc, 730);

	EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_04");

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
	npcarr.func = OrcWarriorHeavy;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;

	return npcarr;
end

--Angriffstrupp Mine im Nordwesten
function OrcNWMineWarrior()
	local npc = CreateNPC(GetNewNPCName("Orkkrieger"));

	if(npc == -1)then
		print("Creating OrcNWMineWarrior Failed!");
	end

	SetPlayerInstance(npc,"OrcWarrior_Roam");

	SetPlayerStrength(npc, 80); -- 100
	SetPlayerDexterity(npc, 80); -- 150
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 35); -- 300
	SetPlayerHealth(npc, 35);

	EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_03");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_OW_MINENORKS1;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Orc;
	npcarr.func = OrcWarrior;
	npcarr.instance = "NW_Mine_OrcWarrior";
	npcarr.respawntime = 120;

	return npcarr;
end