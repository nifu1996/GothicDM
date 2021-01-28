function Giant_Bug()
    local npc = CreateNPC(GetNewNPCName("Feldraeuber"));
    
    if(npc == -1)then
        print("Creating Giant_Bug Failed!");
    end
    
    SetPlayerInstance(npc,"Giant_Bug");
    
    SetPlayerStrength(npc, 45);
    SetPlayerDexterity(npc, 45);
    SetPlayerLevel(npc, 8);
    SetPlayerMaxHealth(npc, 150);
    SetPlayerHealth(npc, 150);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 350;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_GiantBug;
    npcarr.func = Giant_Bug;
	npcarr.instance = "Feldraeuber";
	npcarr.respawntime = 360;
	
    return npcarr;
end

function OW_Giant_Bug()
    local npc = CreateNPC(GetNewNPCName("Feldraeuber"));
    
    if(npc == -1)then
        print("Creating OWGiant_Bug Failed!");
    end
    
    SetPlayerInstance(npc,"Giant_Bug");
    
    SetPlayerStrength(npc, 45);
    SetPlayerDexterity(npc, 45);
    SetPlayerLevel(npc, 8);
    SetPlayerMaxHealth(npc, 150);
    SetPlayerHealth(npc, 150);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 350;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_GiantBug;
    npcarr.func = Giant_Bug;
	npcarr.instance = "OW_Feldraeuber";
	npcarr.respawntime = 360;
	
    return npcarr;
end

function JK_Giant_Bug()
    local npc = CreateNPC(GetNewNPCName("Feldraeuber"));
    
    if(npc == -1)then
        print("Creating JKGiant_Bug Failed!");
    end
    
    SetPlayerInstance(npc,"Giant_Bug");
    
    SetPlayerStrength(npc, 45);
    SetPlayerDexterity(npc, 45);
    SetPlayerLevel(npc, 8);
    SetPlayerMaxHealth(npc, 150);
    SetPlayerHealth(npc, 150);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 350;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_GiantBug;
    npcarr.func = Giant_Bug;
	npcarr.instance = "JK_Feldraeuber";
	npcarr.respawntime = 360;
	
    return npcarr;
end


function YoungGiant_Bug()
    local npc = CreateNPC(GetNewNPCName("Junger Feldraeuber"));

	if(npc == -1)then
        print("Creating YoungGiant_Bug Failed!");
    end
	
    SetPlayerInstance(npc,"YGiant_Bug");
    
    SetPlayerStrength(npc, 30);
    SetPlayerDexterity(npc, 30);
    SetPlayerLevel(npc, 2);
    SetPlayerMaxHealth(npc, 50);
    SetPlayerHealth(npc, 50);
	
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
    npcarr.aivar["ATTACKRANGE"] = 350;
    npcarr.Guild = AI_GUILD_GiantBug;
	npcarr.func = YoungGiant_Bug;
    npcarr.instance = "Junger_Feldraeuber";
	npcarr.respawntime = 240;
    
    return npcarr;
end

function Spawn_Giant_Bug()
    local npc = CreateNPC(GetNewNPCName("Feldraeuber"));
    
    if(npc == -1)then
        print("Creating SpawnGiant_Bug Failed!");
    end
    
    SetPlayerInstance(npc,"Giant_Bug");
    
    SetPlayerStrength(npc, 45);
    SetPlayerDexterity(npc, 45);
    SetPlayerLevel(npc, 8);
    SetPlayerMaxHealth(npc, 150);
    SetPlayerHealth(npc, 150);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 350;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_GiantBug;
    npcarr.func = Giant_Bug;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
    return npcarr;
end

-- Added by Rodin

function Spawn_YoungGiant_Bug()
    local npc = CreateNPC(GetNewNPCName("Junger Feldraeuber"));

	if(npc == -1)then
        print("Creating SpawnYoungGiant_Bug Failed!");
    end
	
    SetPlayerInstance(npc,"YGiant_Bug");
    
    SetPlayerStrength(npc, 30);
    SetPlayerDexterity(npc, 30);
    SetPlayerLevel(npc, 2);
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
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 350;
    npcarr.Guild = AI_GUILD_GiantBug;
	npcarr.func = YoungGiant_Bug;
    npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end