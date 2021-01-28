function OrcBiter()
    local npc = CreateNPC(GetNewNPCName("Orkbeisser"));
    
    if(npc == -1)then
        print("Creating Orkbeisser Failed!");
    end
    
    SetPlayerInstance(npc,"OrcBiter");
    
    SetPlayerStrength(npc, math.random(50, 60));
    SetPlayerDexterity(npc, 55);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, math.random(340, 440));
    SetPlayerHealth(npc, 340);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_OrcBiter;
    npcarr.func = OrcBiter;
	npcarr.instance = "Orkbeisser";
	npcarr.respawntime = 360;
    
    return npcarr;
end

function JK_OrcBiter()
    local npc = CreateNPC(GetNewNPCName("Orkbeisser"));
    
    if(npc == -1)then
        print("Creating JK_Orkbeisser Failed!");
    end
    
    SetPlayerInstance(npc,"OrcBiter");
    
    SetPlayerStrength(npc, math.random(50, 60));
    SetPlayerDexterity(npc, 55);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, math.random(340, 440));
    SetPlayerHealth(npc, 340);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_OrcBiter;
    npcarr.func = OrcBiter;
	npcarr.instance = "JK_Orkbeisser";
	npcarr.respawntime = 360;
    
    return npcarr;
end

function OW_OrcBiter()
    local npc = CreateNPC(GetNewNPCName("Orkbeisser"));
    
    if(npc == -1)then
        print("Creating OW_Orkbeisser Failed!");
    end
    
    SetPlayerInstance(npc,"OrcBiter");
    
    SetPlayerStrength(npc, math.random(50, 60));
    SetPlayerDexterity(npc, 55);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, math.random(340, 440));
    SetPlayerHealth(npc, 340);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_OrcBiter;
    npcarr.func = OrcBiter;
	npcarr.instance = "OW_Orkbeisser";
	npcarr.respawntime = 360;
    
    return npcarr;
end

function Spawn_OrcBiter()
    local npc = CreateNPC(GetNewNPCName("Orkbeisser"));
    
    if(npc == -1)then
        print("Creating Spawn Orkbeisser Failed!");
    end
    
    SetPlayerInstance(npc,"OrcBiter");
    
    SetPlayerStrength(npc, 55);
    SetPlayerDexterity(npc, 55);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, 390);
    SetPlayerHealth(npc, 390);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_OrcBiter;
    npcarr.func = OrcBiter;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end
