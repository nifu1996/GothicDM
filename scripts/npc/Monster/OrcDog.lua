
function OrcDog()
    local npc = CreateNPC(GetNewNPCName("Orkhund"));
    
    if(npc == -1)then
        print("Creating Orc Dog Failed!");
    end
    
    SetPlayerInstance(npc,"Orkhund");
    
    SetPlayerStrength(npc, 70);
    SetPlayerDexterity(npc, 70);
    SetPlayerLevel(npc, 30);
    SetPlayerMaxHealth(npc, 470);
    SetPlayerHealth(npc, 470);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_OrcDog;
    npcarr.func = OrcDog;
	npcarr.instance = "Orkhund";
	npcarr.respawntime = 720;
    
    return npcarr;
end


function OW_OrcDog()
    local npc = CreateNPC(GetNewNPCName("Orkhund"));
    
    if(npc == -1)then
        print("Creating OW_Orc Dog Failed!");
    end
    
    SetPlayerInstance(npc,"Orkhund");
    
    SetPlayerStrength(npc, 70);
    SetPlayerDexterity(npc, 70);
    SetPlayerLevel(npc, 30);
    SetPlayerMaxHealth(npc, 470);
    SetPlayerHealth(npc, 470);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_OrcDog;
    npcarr.func = OrcDog;
	npcarr.instance = "OW_Orkhund";
	npcarr.respawntime = 720;
    
    return npcarr;
end


function JK_OrcDog()
    local npc = CreateNPC(GetNewNPCName("Orkhund"));
    
    if(npc == -1)then
        print("Creating JK_Orc Dog Failed!");
    end
    
    SetPlayerInstance(npc,"Orkhund");
    
    SetPlayerStrength(npc, 70);
    SetPlayerDexterity(npc, 70);
    SetPlayerLevel(npc, 30);
    SetPlayerMaxHealth(npc, 470);
    SetPlayerHealth(npc, 470);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_OrcDog;
    npcarr.func = OrcDog;
	npcarr.instance = "JK_Orkhund";
	npcarr.respawntime = 720;
    
    return npcarr;
end

function Spawn_OrcDog()
    local npc = CreateNPC(GetNewNPCName("Orkhund"));
    
    if(npc == -1)then
        print("Creating Spawn Orc Dog Failed!");
    end
    
    SetPlayerInstance(npc,"Orkhund");
    
    SetPlayerStrength(npc, 70);
    SetPlayerDexterity(npc, 70);
    SetPlayerLevel(npc, 30);
    SetPlayerMaxHealth(npc, 470);
    SetPlayerHealth(npc, 470);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_OrcDog;
    npcarr.func = OrcDog;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end
