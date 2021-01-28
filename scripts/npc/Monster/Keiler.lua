function Keiler()
    local npc = CreateNPC(GetNewNPCName("Keiler"));
    
    if(npc == -1)then
        print("Creating Keiler Failed!");
    end
    
    SetPlayerInstance(npc,"Keiler");
    
    SetPlayerStrength(npc, math.random(45, 55));
    SetPlayerDexterity(npc, 50);
    SetPlayerLevel(npc, 8);
    SetPlayerMaxHealth(npc, math.random(270, 350));
    SetPlayerHealth(npc, 270);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 400;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Keiler;
    npcarr.func = Keiler;
	npcarr.instance = "Keiler";
	npcarr.respawntime = 360;
    
    return npcarr;
end

function OW_Keiler()
    local npc = CreateNPC(GetNewNPCName("Keiler"));
    
    if(npc == -1)then
        print("Creating OW_Keiler Failed!");
    end
    
    SetPlayerInstance(npc,"Keiler");
    
    SetPlayerStrength(npc, math.random(45, 55));
    SetPlayerDexterity(npc, 50);
    SetPlayerLevel(npc, 8);
    SetPlayerMaxHealth(npc, math.random(270, 350));
    SetPlayerHealth(npc, 270);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 400;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Keiler;
    npcarr.func = Keiler;
	npcarr.instance = "OW_Keiler";
	npcarr.respawntime = 360;
    
    return npcarr;
end

function JK_Keiler()
    local npc = CreateNPC(GetNewNPCName("Keiler"));
    
    if(npc == -1)then
        print("Creating JK_Keiler Failed!");
    end
    
    SetPlayerInstance(npc,"Keiler");
    
    SetPlayerStrength(npc, math.random(45, 55));
    SetPlayerDexterity(npc, 50);
    SetPlayerLevel(npc, 8);
    SetPlayerMaxHealth(npc, math.random(270, 350));
    SetPlayerHealth(npc, 270);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 400;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Keiler;
    npcarr.func = Keiler;
	npcarr.instance = "JK_Keiler";
	npcarr.respawntime = 360;
    
    return npcarr;
end

function SpawnKeiler()
    local npc = CreateNPC(GetNewNPCName("Keiler"));
    
    if(npc == -1)then
        print("Creating SpawnKeiler Failed!");
    end
    
    SetPlayerInstance(npc,"Keiler");
    
    SetPlayerStrength(npc, 50);
    SetPlayerDexterity(npc, 50);
    SetPlayerLevel(npc, 8);
    SetPlayerMaxHealth(npc, 310);
    SetPlayerHealth(npc, 310);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Keiler;
    npcarr.func = Keiler;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end

function Wildsau()
    local npc = CreateNPC(GetNewNPCName("Wildsau"));
    
    if(npc == -1)then
        print("Creating Wildsau Failed!");
    end
    
    SetPlayerInstance(npc,"Wildsau");
    
    SetPlayerStrength(npc, 50);
    SetPlayerDexterity(npc, 50);
    SetPlayerLevel(npc, 8);
    SetPlayerMaxHealth(npc, 310);
    SetPlayerHealth(npc, 310);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Sheep_MidEat;
    npcarr.attack_routine = nil;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = nil;
    npcarr.onhitted = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.Guild = AI_GUILD_Keiler;
    npcarr.func = Wildsau;
	npcarr.instance = "Wildsau";
	npcarr.respawntime = 360;
    
    return npcarr;
end

function Spawn_Wildsau()
    local npc = CreateNPC(GetNewNPCName("Wildsau"));
    
    if(npc == -1)then
        print("Creating SpawnWildsau Failed!");
    end
    
    SetPlayerInstance(npc,"Wildsau");
    
    SetPlayerStrength(npc, 50);
    SetPlayerDexterity(npc, 50);
    SetPlayerLevel(npc, 8);
    SetPlayerMaxHealth(npc, 310);
    SetPlayerHealth(npc, 310);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Sheep_MidEat;
    npcarr.attack_routine = nil;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = nil;
    npcarr.onhitted = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.Guild = AI_GUILD_Keiler;
    npcarr.func = Wildsau;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end