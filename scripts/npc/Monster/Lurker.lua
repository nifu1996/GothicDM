function Lurker()
    local npc = CreateNPC(GetNewNPCName("Lurker"));
    
    if(npc == -1)then
        print("Creating Lurker Failed!");
    end
    
    SetPlayerInstance(npc,"Lurker");
    
    SetPlayerStrength(npc, math.random(45, 55));
    SetPlayerDexterity(npc, 50);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, math.random(220, 290));
    SetPlayerHealth(npc, 220);
    
    
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
    npcarr.Guild = AI_GUILD_Lurker;
    npcarr.func = Lurker;
    npcarr.instance = "Lurker";
	npcarr.respawntime = 240;
    
    return npcarr;
end

function OW_Lurker()
    local npc = CreateNPC(GetNewNPCName("Lurker"));
    
    if(npc == -1)then
        print("Creating OW_Lurker Failed!");
    end
    
    SetPlayerInstance(npc,"Lurker");
    
    SetPlayerStrength(npc, math.random(45, 55));
    SetPlayerDexterity(npc, 50);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, math.random(220, 290));
    SetPlayerHealth(npc, 220);
    
    
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
    npcarr.Guild = AI_GUILD_Lurker;
    npcarr.func = Lurker;
    npcarr.instance = "OW_Lurker";
	npcarr.respawntime = 240;
    
    return npcarr;
end

function JK_Lurker()
    local npc = CreateNPC(GetNewNPCName("Lurker"));
    
    if(npc == -1)then
        print("Creating JK_Lurker Failed!");
    end
    
    SetPlayerInstance(npc,"Lurker");
    
    SetPlayerStrength(npc, math.random(45, 55));
    SetPlayerDexterity(npc, 50);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, math.random(220, 290));
    SetPlayerHealth(npc, 220);
    
    
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
    npcarr.Guild = AI_GUILD_Lurker;
    npcarr.func = Lurker;
    npcarr.instance = "JK_Lurker";
	npcarr.respawntime = 240;
    
    return npcarr;
end

function SpawnLurker()
    local npc = CreateNPC(GetNewNPCName("Lurker"));
    
    if(npc == -1)then
        print("Creating SpawnLurker Failed!");
    end
    
    SetPlayerInstance(npc,"Lurker");
    
    SetPlayerStrength(npc, 50);
    SetPlayerDexterity(npc, 50);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, 250);
    SetPlayerHealth(npc, 250);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 400;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Lurker;
    npcarr.func = Lurker;
    npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end