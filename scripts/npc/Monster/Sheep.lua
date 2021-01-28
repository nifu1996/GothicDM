function Sheep()
    local npc = CreateNPC(GetNewNPCName("Schaf"));
    
    if(npc == -1)then
        print("Creating Sheep Failed!");
    end
    
    SetPlayerInstance(npc,"Sheep");
    
    SetPlayerStrength(npc, 5);
    SetPlayerDexterity(npc, 5);
    SetPlayerLevel(npc, 1);
    SetPlayerMaxHealth(npc, 20);
    SetPlayerHealth(npc, 20);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = nil;
    npcarr.GotEnemyFunc = nil;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = nil;
    npcarr.onhitted = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.Guild = AI_GUILD_Sheep;
    npcarr.func = Sheep;
	npcarr.instance = "Schaf";
	npcarr.respawntime = 1440;
    
    return npcarr;
end

function Hammel()
    local npc = CreateNPC(GetNewNPCName("Hammel"));
    
    if(npc == -1)then
        print("Creating Hammel Failed!");
    end
    
    SetPlayerInstance(npc,"Hammel");
    
    SetPlayerStrength(npc, 10);
    SetPlayerDexterity(npc, 10);
    SetPlayerLevel(npc, 1);
    SetPlayerMaxHealth(npc, 30);
    SetPlayerHealth(npc, 30);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = nil;
    npcarr.GotEnemyFunc = nil;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = nil;
    npcarr.onhitted = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.Guild = AI_GUILD_Sheep;
    npcarr.func = Hammel;
	npcarr.instance = "Hammel";
	npcarr.respawntime = 1440;
    
    return npcarr;
end

function Kuh()
    local npc = CreateNPC(GetNewNPCName("Kuh"));
    
    if(npc == -1)then
        print("Creating Kuh Failed!");
    end
    
    SetPlayerInstance(npc,"Kuh");
    
    SetPlayerStrength(npc, 8);
    SetPlayerDexterity(npc, 8);
    SetPlayerLevel(npc, 1);
    SetPlayerMaxHealth(npc, 80);
    SetPlayerHealth(npc, 80);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = nil;
    npcarr.GotEnemyFunc = nil;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.Guild = AI_GUILD_Sheep;
    npcarr.func = Kuh;
	npcarr.instance = "Kuh";
	npcarr.respawntime = 1440;
    
    return npcarr;
end

function Spawn_Sheep()
    local npc = CreateNPC(GetNewNPCName("Schaf"));
    
    if(npc == -1)then
        print("Creating Sheep Failed!");
    end
    
    SetPlayerInstance(npc,"Sheep");
    
    SetPlayerStrength(npc, 5);
    SetPlayerDexterity(npc, 5);
    SetPlayerLevel(npc, 1);
    SetPlayerMaxHealth(npc, 20);
    SetPlayerHealth(npc, 20);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = nil;
    npcarr.GotEnemyFunc = nil;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = nil;
    npcarr.onhitted = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.Guild = AI_GUILD_Sheep;
    npcarr.func = Sheep;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end

function Spawn_Hammel()
    local npc = CreateNPC(GetNewNPCName("Hammel"));
    
    if(npc == -1)then
        print("Creating Hammel Failed!");
    end
    
    SetPlayerInstance(npc,"Hammel");
    
    SetPlayerStrength(npc, 8);
    SetPlayerDexterity(npc, 8);
    SetPlayerLevel(npc, 1);
    SetPlayerMaxHealth(npc, 30);
    SetPlayerHealth(npc, 30);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = nil;
    npcarr.GotEnemyFunc = nil;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = nil;
    npcarr.onhitted = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.Guild = AI_GUILD_Sheep;
    npcarr.func = Hammel;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end

function Spawn_Kuh()
    local npc = CreateNPC(GetNewNPCName("Kuh"));
    
    if(npc == -1)then
        print("Creating Spawn_Kuh Failed!");
    end
    
    SetPlayerInstance(npc,"Kuh");
    
    SetPlayerStrength(npc, 5);
    SetPlayerDexterity(npc, 5);
    SetPlayerLevel(npc, 1);
    SetPlayerMaxHealth(npc, 20);
    SetPlayerHealth(npc, 20);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = nil;
    npcarr.GotEnemyFunc = nil;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = nil;
    npcarr.onhitted = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.Guild = AI_GUILD_Sheep;
    npcarr.func = Kuh;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end