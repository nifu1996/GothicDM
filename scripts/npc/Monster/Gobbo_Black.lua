
function Gobbo_Black()
    local npc = CreateNPC(GetNewNPCName("Schwarzer Goblin"));

    if(npc == -1)then
        print("Creating Gobbo_Black Failed!");
    end

    SetPlayerInstance(npc,"Gobbo_Black");

    SetPlayerStrength(npc, 50);
    SetPlayerDexterity(npc, 50);
    SetPlayerLevel(npc, 8);
    SetPlayerMaxHealth(npc, 210);
    SetPlayerHealth(npc, 210);

    EquipMeleeWeapon(npc, "ItMw_1h_Bau_Mace");

    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 200;
    npcarr.Guild = AI_GUILD_Goblin;
    npcarr.GotEnemyFunc = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.func = Gobbo_Black;
    npcarr.instance = "Schwarzer_Goblin";
	npcarr.respawntime = 120;

    return npcarr;
end

function OW_Gobbo_Black()
    local npc = CreateNPC(GetNewNPCName("Schwarzer Goblin"));

    if(npc == -1)then
        print("Creating OW_Gobbo_Black Failed!");
    end

    SetPlayerInstance(npc,"Gobbo_Black");

    SetPlayerStrength(npc, 50);
    SetPlayerDexterity(npc, 50);
    SetPlayerLevel(npc, 8);
    SetPlayerMaxHealth(npc, 210);
    SetPlayerHealth(npc, 210);

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
    npcarr.func = Gobbo_Black;
    npcarr.instance = "OW_Schwarzer_Goblin";
	npcarr.respawntime = 120;

    return npcarr;
end

function JK_Gobbo_Black()
    local npc = CreateNPC(GetNewNPCName("Schwarzer Goblin"));

    if(npc == -1)then
        print("Creating JK_Gobbo_Black Failed!");
    end

    SetPlayerInstance(npc,"Gobbo_Black");

    SetPlayerStrength(npc, 50);
    SetPlayerDexterity(npc, 50);
    SetPlayerLevel(npc, 8);
    SetPlayerMaxHealth(npc, 210);
    SetPlayerHealth(npc, 210);

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
    npcarr.func = Gobbo_Black;
    npcarr.instance = "JK_Schwarzer_Goblin";
	npcarr.respawntime = 120;

    return npcarr;
end

function Spawn_Gobbo_Black()
    local npc = CreateNPC(GetNewNPCName("Schwarzer Goblin"));

    if(npc == -1)then
        print("Creating Spawn_Gobbo_Black Failed!");
    end

    SetPlayerInstance(npc,"Gobbo_Black");

    SetPlayerStrength(npc, 50);
    SetPlayerDexterity(npc, 50);
    SetPlayerLevel(npc, 8);
    SetPlayerMaxHealth(npc, 210);
    SetPlayerHealth(npc, 210);

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
    npcarr.func = Gobbo_Black;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;

    return npcarr;
end
