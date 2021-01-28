function Gobbo_Warrior()
    local npc = CreateNPC(GetNewNPCName("Goblin Krieger"));

    if(npc == -1)then
        print("Creating Gobbo_Warrior Failed!");
    end

    SetPlayerInstance(npc,"Gobbo_Warrior");

    SetPlayerStrength(npc, 65);
    SetPlayerDexterity(npc, 65);
    SetPlayerLevel(npc, 15);
    SetPlayerMaxHealth(npc, 350);
    SetPlayerHealth(npc, 350);

    EquipMeleeWeapon(npc, "ItMw_Shortsword2");

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
    npcarr.instance = "Goblinkrieger";
	npcarr.respawntime = 120;

    return npcarr;
end

function OW_Gobbo_Warrior()
    local npc = CreateNPC(GetNewNPCName("Goblin Krieger"));

    if(npc == -1)then
        print("Creating OWGobbo_Warrior Failed!");
    end

    SetPlayerInstance(npc,"Gobbo_Warrior");

    SetPlayerStrength(npc, 65);
    SetPlayerDexterity(npc, 65);
    SetPlayerLevel(npc, 15);
    SetPlayerMaxHealth(npc, 350);
    SetPlayerHealth(npc, 350);

    EquipMeleeWeapon(npc, "ItMw_Shortsword2");

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
    npcarr.instance = "OW_Goblinkrieger";
	npcarr.respawntime = 120;

    return npcarr;
end

function JK_Gobbo_Warrior()
    local npc = CreateNPC(GetNewNPCName("Goblin Krieger"));

    if(npc == -1)then
        print("Creating JKGobbo_Warrior Failed!");
    end

    SetPlayerInstance(npc,"Gobbo_Warrior");

    SetPlayerStrength(npc, 65);
    SetPlayerDexterity(npc, 65);
    SetPlayerLevel(npc, 15);
    SetPlayerMaxHealth(npc, 350);
    SetPlayerHealth(npc, 350);

    EquipMeleeWeapon(npc, "ItMw_Shortsword2");

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
    npcarr.instance = "JK_Goblinkrieger";
	npcarr.respawntime = 120;

    return npcarr;
end

function Spawn_Gobbo_Warrior()
    local npc = CreateNPC(GetNewNPCName("Goblin Krieger"));

    if(npc == -1)then
        print("Creating Spawn_Gobbo_Warrior Failed!");
    end

    SetPlayerInstance(npc,"Gobbo_Warrior");

    SetPlayerStrength(npc, 65);
    SetPlayerDexterity(npc, 65);
    SetPlayerLevel(npc, 15);
    SetPlayerMaxHealth(npc, 350);
    SetPlayerHealth(npc, 350);

    EquipMeleeWeapon(npc, "ItMw_Shortsword2");

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

function Gobbo_Warrior_Visir()
    local npc = CreateNPC(GetNewNPCName("Goblin Anführer"));

    if(npc == -1)then
        print("Creating Gobbo_Warrior_Visir Failed!");
    end

    SetPlayerInstance(npc,"Gobbo_Warrior_Visir");

    SetPlayerStrength(npc, 75);
    SetPlayerDexterity(npc, 75);
    SetPlayerLevel(npc, 15);
    SetPlayerMaxHealth(npc, 480);
    SetPlayerHealth(npc, 480);

    EquipMeleeWeapon(npc, "ItMw_1h_Misc_Axe");

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
    npcarr.instance = "Goblinanfuehrer";
	npcarr.respawntime = 120;

    return npcarr;
end

function OW_Gobbo_Warrior_Visir()
    local npc = CreateNPC(GetNewNPCName("Goblin Anführer"));

    if(npc == -1)then
        print("Creating OWGobbo_Warrior_Visir Failed!");
    end

    SetPlayerInstance(npc,"Gobbo_Warrior_Visir");

    SetPlayerStrength(npc, 75);
    SetPlayerDexterity(npc, 75);
    SetPlayerLevel(npc, 15);
    SetPlayerMaxHealth(npc, 480);
    SetPlayerHealth(npc, 480);

    EquipMeleeWeapon(npc, "ItMw_Shortsword2");

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
    npcarr.instance = "OW_Goblinanfuehrer";
	npcarr.respawntime = 120;

    return npcarr;
end

function JK_Gobbo_Warrior_Visir()
    local npc = CreateNPC(GetNewNPCName("Goblin Anführer"));

    if(npc == -1)then
        print("Creating JKGobbo_Warrior_Visir Failed!");
    end

    SetPlayerInstance(npc,"Gobbo_Warrior_Visir");

    SetPlayerStrength(npc, 75);
    SetPlayerDexterity(npc, 75);
    SetPlayerLevel(npc, 15);
    SetPlayerMaxHealth(npc, 480);
    SetPlayerHealth(npc, 480);

    EquipMeleeWeapon(npc, "ItMw_Shortsword2");

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
    npcarr.instance = "JK_Goblinanfuehrer";
	npcarr.respawntime = 120;

    return npcarr;
end

function Spawn_Gobbo_Warrior_Visir()
    local npc = CreateNPC(GetNewNPCName("Goblin Anführer"));

    if(npc == -1)then
        print("Creating Spawn_Gobbo_Warrior_Visir Failed!");
    end

    SetPlayerInstance(npc,"Gobbo_Warrior_Visir");

    SetPlayerStrength(npc, 75);
    SetPlayerDexterity(npc, 75);
    SetPlayerLevel(npc, 15);
    SetPlayerMaxHealth(npc, 480);
    SetPlayerHealth(npc, 480);

    EquipMeleeWeapon(npc, "ItMw_Shortsword2");

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
	SetPlayerScale(npcarr.id,1.2,1.2,1.2);

    return npcarr;
end