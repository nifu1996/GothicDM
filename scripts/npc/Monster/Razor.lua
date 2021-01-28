function OW_Razor()
    local npc = CreateNPC(GetNewNPCName("Razor"));
    
    if(npc == -1)then
        print("Creating OW_Razor Failed!");
    end
    
    SetPlayerInstance(npc,"Razor");
    
    SetPlayerStrength(npc, math.random(65, 75));
    SetPlayerDexterity(npc, 70);
    SetPlayerLevel(npc, 18);
    SetPlayerMaxHealth(npc, math.random(460, 580));
    SetPlayerHealth(npc, 460);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; --DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Razor;
    npcarr.func = Razor;
	npcarr.instance = "OW_Razor";
	npcarr.respawntime = 720;
    
    return npcarr;
end

function JK_Razor()
    local npc = CreateNPC(GetNewNPCName("Razor"));
    
    if(npc == -1)then
        print("Creating JK_Razor Failed!");
    end
    
    SetPlayerInstance(npc,"Razor");
    
    SetPlayerStrength(npc, math.random(65, 75));
    SetPlayerDexterity(npc, 70);
    SetPlayerLevel(npc, 18);
    SetPlayerMaxHealth(npc, math.random(460, 580));
    SetPlayerHealth(npc, 460);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Razor;
    npcarr.func = Razor;
	npcarr.instance = "JK_Razor";
	npcarr.respawntime = 720;
    
    return npcarr;
end

function Spawn_Razor()
    local npc = CreateNPC(GetNewNPCName("Razor"));
    
    if(npc == -1)then
        print("Creating SpawnRazor Failed!");
    end
    
    SetPlayerInstance(npc,"Razor");
    
    SetPlayerStrength(npc, math.random(65, 75));
    SetPlayerDexterity(npc, 70);
    SetPlayerLevel(npc, 18);
    SetPlayerMaxHealth(npc, math.random(460, 580));
    SetPlayerHealth(npc, 460);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; --DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Razor;
    npcarr.func = Razor;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end
