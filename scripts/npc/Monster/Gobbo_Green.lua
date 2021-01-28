function Gobbo_Green()
    local npc = CreateNPC(GetNewNPCName("Goblin"));

    if(npc == -1)then
        print("Creating Gobbo_Green Failed!");
    end

    SetPlayerInstance(npc,"Gobbo_Green");

    SetPlayerStrength(npc, 35);
    SetPlayerDexterity(npc, 35);
    SetPlayerLevel(npc, 7);
    SetPlayerMaxHealth(npc, 60);
    SetPlayerHealth(npc, 60);

    EquipMeleeWeapon(npc, "ItMw_1h_Bau_Mace");

    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 200;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Goblin;
    npcarr.GotEnemyFunc = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.func = Gobbo_Green;
	npcarr.instance = "Goblin";
	npcarr.respawntime = 240;

    return npcarr;
end

function OW_Gobbo_Green()
    local npc = CreateNPC(GetNewNPCName("Goblin"));

    if(npc == -1)then
        print("Creating OW_Gobbo_Green Failed!");
    end

    SetPlayerInstance(npc,"Gobbo_Green");

    SetPlayerStrength(npc, 35);
    SetPlayerDexterity(npc, 35);
    SetPlayerLevel(npc, 7);
    SetPlayerMaxHealth(npc, 60);
    SetPlayerHealth(npc, 60);

    EquipMeleeWeapon(npc, "ItMw_1h_Bau_Mace");

    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 200;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Goblin;
    npcarr.GotEnemyFunc = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.func = Gobbo_Green;
	npcarr.instance = "OW_Goblin";
	npcarr.respawntime = 240;

    return npcarr;
end

function JK_Gobbo_Green()
    local npc = CreateNPC(GetNewNPCName("Goblin"));

    if(npc == -1)then
        print("Creating JKGobbo_Green Failed!");
    end

    SetPlayerInstance(npc,"Gobbo_Green");

    SetPlayerStrength(npc, 35);
    SetPlayerDexterity(npc, 35);
    SetPlayerLevel(npc, 7);
    SetPlayerMaxHealth(npc, 60);
    SetPlayerHealth(npc, 60);

    EquipMeleeWeapon(npc, "ItMw_1h_Bau_Mace");

    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 200;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Goblin;
    npcarr.GotEnemyFunc = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.func = Gobbo_Green;
	npcarr.instance = "JK_Goblin";
	npcarr.respawntime = 240;

    return npcarr;
end

function YoungGobbo_Green()
    local npc = CreateNPC(GetNewNPCName("Junger Goblin"));

    if(npc == -1)then
        print("Creating YGobbo_Green Failed!");
    end

    SetPlayerInstance(npc,"YGobbo_Green");

    SetPlayerStrength(npc, 25);
    SetPlayerDexterity(npc, 25);
    SetPlayerLevel(npc, 7);
    SetPlayerMaxHealth(npc, 40);
    SetPlayerHealth(npc, 40);

    EquipMeleeWeapon(npc, "ItMw_1h_Bau_Mace");

    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 200;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Goblin;
    npcarr.GotEnemyFunc = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.func = YGobbo_Green;
	npcarr.instance = "Junger_Goblin";
	npcarr.respawntime = 120;

    return npcarr;
end

-- /spawn Gobbo_Green --

function Spawn_Gobbo_Green()
    local npc = CreateNPC(GetNewNPCName("Goblin"));

    if(npc == -1)then
        print("Creating Spawn_Gobbo_Green Failed!");
    end

    SetPlayerInstance(npc,"Gobbo_Green");

    SetPlayerStrength(npc, 35);
    SetPlayerDexterity(npc, 35);
    SetPlayerLevel(npc, 7);
    SetPlayerMaxHealth(npc, 60);
    SetPlayerHealth(npc, 60);

    EquipMeleeWeapon(npc, "ItMw_1h_Bau_Mace");

    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 200;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Goblin;
    npcarr.GotEnemyFunc = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.func = Gobbo_Green;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;

    return npcarr;
end

function Spawn_YGobbo_Green()
    local npc = CreateNPC(GetNewNPCName("Junger Goblin"));

    if(npc == -1)then
        print("Creating Spawn_YGobbo_Green Failed!");
    end

    SetPlayerInstance(npc,"YGobbo_Green");

    SetPlayerStrength(npc, 25);
    SetPlayerDexterity(npc, 25);
    SetPlayerLevel(npc, 7);
    SetPlayerMaxHealth(npc, 40);
    SetPlayerHealth(npc, 40);

    EquipMeleeWeapon(npc, "ItMw_1h_Bau_Mace");

    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 200;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Goblin;
    npcarr.GotEnemyFunc = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.func = YGobbo_Green;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;

    return npcarr;
end