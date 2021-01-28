function OrcElite()
    local npc = CreateNPC(GetNewNPCName("Ork Elite"));

    if(npc == -1)then
        print("Creating Orc Elite Failed!");
    end

    SetPlayerInstance(npc,"OrcElite_Roam");

    SetPlayerStrength(npc, 155); -- 125
    SetPlayerDexterity(npc, 155); -- 225
    SetPlayerLevel(npc, 45);
    SetPlayerMaxHealth(npc, 930); -- 450
    SetPlayerHealth(npc, 930); -- 450

    EquipMeleeWeapon(npc, "ItMw_2H_OrcSword_02");

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
    npcarr.func = OrcElite;
	npcarr.instance = "Eliteork";
	npcarr.respawntime = 600;
	
    return npcarr;
end

function OW_OrcElite()
    local npc = CreateNPC(GetNewNPCName("Ork Elite"));

    if(npc == -1)then
        print("Creating OW_Orc Elite Failed!");
    end

    SetPlayerInstance(npc,"OrcElite_Roam");

    SetPlayerStrength(npc, 155); -- 125
    SetPlayerDexterity(npc, 155); -- 225
    SetPlayerLevel(npc, 45);
    SetPlayerMaxHealth(npc, 930); -- 450
    SetPlayerHealth(npc, 930); -- 450

    EquipMeleeWeapon(npc, "ItMw_2H_OrcSword_02");

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
    npcarr.func = OrcElite;
	npcarr.instance = "OW_Eliteork";
	npcarr.respawntime = 600;
	
    return npcarr;
end

function JK_OrcElite()
    local npc = CreateNPC(GetNewNPCName("Ork Elite"));

    if(npc == -1)then
        print("Creating JK_Orc Elite Failed!");
    end

    SetPlayerInstance(npc,"OrcElite_Roam");

    SetPlayerStrength(npc, 155); -- 125
    SetPlayerDexterity(npc, 155); -- 225
    SetPlayerLevel(npc, 45);
    SetPlayerMaxHealth(npc, 930); -- 450
    SetPlayerHealth(npc, 930); -- 450

    EquipMeleeWeapon(npc, "ItMw_2H_OrcSword_02");

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
    npcarr.func = OrcElite;
	npcarr.instance = "JK_Eliteork";
	npcarr.respawntime = 600;
	
    return npcarr;
end

function Spawn_OrcElite()
    local npc = CreateNPC(GetNewNPCName("Ork Elite"));

    if(npc == -1)then
        print("Creating Spawn_Orc Elite Failed!");
    end

    SetPlayerInstance(npc,"OrcElite_Roam");

    SetPlayerStrength(npc, 155); -- 125
    SetPlayerDexterity(npc, 155); -- 225
    SetPlayerLevel(npc, 45);
    SetPlayerMaxHealth(npc, 930); -- 450
    SetPlayerHealth(npc, 930); -- 450

    EquipMeleeWeapon(npc, "ItMw_2H_OrcSword_02");

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
    npcarr.func = OrcElite;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;

    return npcarr;
end

-- Orkischer General, wird für eine Patrouille durch den orkischen Belagerungsring genutzt, also nur 1x verwenden
function OrcGeneral()
    local npc = CreateNPC(GetNewNPCName("Orkischer General"));

    if(npc == -1)then
        print("Creating Orkischer General Failed!");
    end

    SetPlayerInstance(npc,"OrcElite_Roam");

    SetPlayerStrength(npc, 190); -- 125
    SetPlayerDexterity(npc, 190); -- 225
    SetPlayerLevel(npc, 80);
    SetPlayerMaxHealth(npc, 1400); -- 450
    SetPlayerHealth(npc, 1400); -- 450

    EquipMeleeWeapon(npc, "ItMw_2H_OrcSword_02");
	EquipRangedWeapon(npc, "ItRw_schwere_armbrust");

    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = TA_OW_ORCGENERAL;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 4;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Orc;
    npcarr.func = OrcElite;
	npcarr.instance = "Orc_General";
	npcarr.respawntime = 3000;

    return npcarr;
end

function OrcNWMineElite() -- hat n speziellen TA? Wird aktuell keiner gespawnt
    local npc = CreateNPC(GetNewNPCName("Ork Elite"));

    if(npc == -1)then
        print("Creating OrcNWMineElite Failed!");
    end

    SetPlayerInstance(npc,"OrcElite_Roam");

    SetPlayerStrength(npc, 155); -- 125
    SetPlayerDexterity(npc, 155); -- 225
    SetPlayerLevel(npc, 45);
    SetPlayerMaxHealth(npc, 930); -- 450
    SetPlayerHealth(npc, 930); -- 450

    EquipMeleeWeapon(npc, "ItMw_2H_OrcSword_02");

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
    npcarr.func = OrcElite;
	npcarr.instance = "NW_Mine_OrcElite";
	npcarr.respawntime = 120;

    return npcarr;
end

function OrkOberst()
	local npc = CreateNPC(GetNewNPCName("Orkischer Oberst"));

	if(npc == -1)then
		print("Creating OrcOberst Failed!");
	end

	SetPlayerInstance(npc,"OrkElite_AntiPaladinOrkOberst");

	SetPlayerStrength(npc, 205); 
	SetPlayerDexterity(npc, 205); 
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 1400); 
	SetPlayerHealth(npc, 1400);

	EquipMeleeWeapon(npc, "ItMw_Schlachtaxt");

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
	npcarr.func = OrcElite;
	npcarr.instance = "Orkoberst";
	npcarr.respawntime = 600;

	return npcarr;
end

function OW_OrkOberst()
	local npc = CreateNPC(GetNewNPCName("Orkischer Oberst"));

	if(npc == -1)then
		print("Creating OW_OrcOberst Failed!");
	end

	SetPlayerInstance(npc,"OrkElite_AntiPaladinOrkOberst");

	SetPlayerStrength(npc, 205); 
	SetPlayerDexterity(npc, 205); 
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 1400); 
	SetPlayerHealth(npc, 1400);

	EquipMeleeWeapon(npc, "ItMw_Schlachtaxt");

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
	npcarr.func = OrcElite;
	npcarr.instance = "OW_Orkoberst";
	npcarr.respawntime = 600;

	return npcarr;
end

function JK_OrkOberst()
	local npc = CreateNPC(GetNewNPCName("Orkischer Oberst"));

	if(npc == -1)then
		print("Creating JK_OrcOberst Failed!");
	end

	SetPlayerInstance(npc,"OrkElite_AntiPaladinOrkOberst");

	SetPlayerStrength(npc, 205); 
	SetPlayerDexterity(npc, 205); 
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 1400); 
	SetPlayerHealth(npc, 1400);

	EquipMeleeWeapon(npc, "ItMw_Schlachtaxt");

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
	npcarr.func = OrcElite;
	npcarr.instance = "JK_Orkoberst";
	npcarr.respawntime = 600;

	return npcarr;
end

function Spawn_OrkOberst()
    local npc = CreateNPC(GetNewNPCName("Orkischer Oberst"));

    if(npc == -1)then
        print("Creating SpawnOrcOberst Failed!");
    end

    SetPlayerInstance(npc,"OrkElite_AntiPaladinOrkOberst");

	SetPlayerStrength(npc, 205); 
	SetPlayerDexterity(npc, 205); 
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 1400); 
	SetPlayerHealth(npc, 1400);

	EquipMeleeWeapon(npc, "ItMw_Schlachtaxt");

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
    npcarr.func = OrcElite;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;

    return npcarr;
end