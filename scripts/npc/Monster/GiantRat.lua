function GiantRat()
    local npc = CreateNPC(GetNewNPCName("Riesenratte"));
    
    if(npc == -1)then
        print("Creating GiantRat Failed!");
    end
    
    SetPlayerInstance(npc,"Giant_Rat");
    
    SetPlayerStrength(npc, math.random(30, 40));
    SetPlayerDexterity(npc, 35);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, math.random(100, 140));
    SetPlayerHealth(npc, 100);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_GiantRat;
    npcarr.func = GiantRat;
    npcarr.instance = "Riesenratte";
	npcarr.respawntime = 240;
	
    return npcarr;
end

function JK_GiantRat()
    local npc = CreateNPC(GetNewNPCName("Riesenratte"));
    
    if(npc == -1)then
        print("Creating JKGiantRat Failed!");
    end
    
    SetPlayerInstance(npc,"Giant_Rat");
    
    SetPlayerStrength(npc, math.random(30, 40));
    SetPlayerDexterity(npc, 35);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, math.random(100, 140));
    SetPlayerHealth(npc, 100);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_GiantRat;
    npcarr.func = GiantRat;
    npcarr.instance = "JK_Riesenratte";
	npcarr.respawntime = 240;
	
    return npcarr;
end

function OW_GiantRat()
    local npc = CreateNPC(GetNewNPCName("Riesenratte"));
    
    if(npc == -1)then
        print("Creating OWGiantRat Failed!");
    end
    
    SetPlayerInstance(npc,"Giant_Rat");
    
    SetPlayerStrength(npc, math.random(30, 40));
    SetPlayerDexterity(npc, 35);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, math.random(100, 140));
    SetPlayerHealth(npc, 100);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_GiantRat;
    npcarr.func = GiantRat;
    npcarr.instance = "OW_Riesenratte";
	npcarr.respawntime = 240;
	
    return npcarr;
end

function Young_GiantRat()
   local npc = CreateNPC(GetNewNPCName("Junge Riesenratte"));
    
    if(npc == -1)then
        print("Creating Young_GiantRat Failed!");
    end
    
    SetPlayerInstance(npc,"YGiant_Rat");
    
    SetPlayerStrength(npc, math.random(10, 20));
    SetPlayerDexterity(npc, 15);
    SetPlayerLevel(npc, 4);
    SetPlayerMaxHealth(npc, math.random(40, 70));
    SetPlayerHealth(npc, 40);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_GiantRat;
    npcarr.func = GiantRat;
    npcarr.instance = "Junge_Riesenratte";
	npcarr.respawntime = 240;
	
    return npcarr;
end

function Spawn_GiantRat()
    local npc = CreateNPC(GetNewNPCName("Riesenratte"));
    
    if(npc == -1)then
        print("Creating SpawnGiantRat Failed!");
    end
    
    SetPlayerInstance(npc,"Giant_Rat");
    
    SetPlayerStrength(npc, 35);
    SetPlayerDexterity(npc, 35);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, 120);
    SetPlayerHealth(npc, 120);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_GiantRat;
    npcarr.func = GiantRat;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
    return npcarr;
end

-- Added by Rodin
function Spawn_YoungGiantRat()
   local npc = CreateNPC(GetNewNPCName("Junge Riesenratte"));
    
    if(npc == -1)then
        print("Creating SpawnYoung_GiantRat Failed!");
    end
    
    SetPlayerInstance(npc,"YGiant_Rat");
    
    SetPlayerStrength(npc, 15);
    SetPlayerDexterity(npc, 15);
    SetPlayerLevel(npc, 4);
    SetPlayerMaxHealth(npc, 50);
    SetPlayerHealth(npc, 50);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; --DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_GiantRat;
    npcarr.func = GiantRat;
    npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
    return npcarr;
end