
function Bloodhound()
    local npc = CreateNPC(GetNewNPCName("Bluthund"));
    
    if(npc == -1)then
        print("Creating Bloodhound Failed!");
    end
    
    SetPlayerInstance(npc,"Bloodhound");
    
    SetPlayerStrength(npc, 85);
    SetPlayerDexterity(npc, 85);
    SetPlayerLevel(npc, 7);
    SetPlayerMaxHealth(npc, 530);
    SetPlayerHealth(npc, 530);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; --DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Bloodhound;
    npcarr.func = Bloodhound;
    npcarr.instance = "Bluthund";
	npcarr.respawntime = 720;
    
    return npcarr;
end


function OW_Bloodhound()
    local npc = CreateNPC(GetNewNPCName("Bluthund"));
    
    if(npc == -1)then
        print("Creating OWBloodhound Failed!");
    end
    
    SetPlayerInstance(npc,"Bloodhound");
    
    SetPlayerStrength(npc, 85);
    SetPlayerDexterity(npc, 85);
    SetPlayerLevel(npc, 7);
    SetPlayerMaxHealth(npc, 530);
    SetPlayerHealth(npc, 530);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; --DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Bloodhound;
    npcarr.func = Bloodhound;
    npcarr.instance = "OW_Bluthund";
	npcarr.respawntime = 720;
    
    return npcarr;
end

function JK_Bloodhound()
    local npc = CreateNPC(GetNewNPCName("Bluthund"));
    
    if(npc == -1)then
        print("Creating JKBloodhound Failed!");
    end
    
    SetPlayerInstance(npc,"Bloodhound");
    
    SetPlayerStrength(npc, 85);
    SetPlayerDexterity(npc, 85);
    SetPlayerLevel(npc, 7);
    SetPlayerMaxHealth(npc, 530);
    SetPlayerHealth(npc, 530);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Bloodhound;
    npcarr.func = Bloodhound;
    npcarr.instance = "JK_Bluthund";
	npcarr.respawntime = 720;
    
    return npcarr;
end


function Spawn_Bloodhound()
    local npc = CreateNPC(GetNewNPCName("Bluthund"));
    
    if(npc == -1)then
        print("Creating SpawnBloodhound Failed!");
    end
    
    SetPlayerInstance(npc,"Bloodhound");
    
    SetPlayerStrength(npc, 85);
    SetPlayerDexterity(npc, 85);
    SetPlayerLevel(npc, 7);
    SetPlayerMaxHealth(npc, 530);
    SetPlayerHealth(npc, 530);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; --DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Bloodhound;
    npcarr.func = Bloodhound;
    npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end