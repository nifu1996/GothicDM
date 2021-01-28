function JK_Alligator()
    local npc = CreateNPC(GetNewNPCName("Alligator"));
    
    if(npc == -1)then
        print("Creating JKAlligator Failed!");
    end
    
    SetPlayerInstance(npc,"Alligator");
    
    SetPlayerStrength(npc, 80);
    SetPlayerDexterity(npc, 80);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, 1000);
    SetPlayerHealth(npc, 1000);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; --DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Swampshark;
    npcarr.func = Alligator;
	npcarr.instance = "JK_Alligator";
	npcarr.respawntime = 720;
    
    return npcarr;
end




function Spawn_Alligator()
    local npc = CreateNPC(GetNewNPCName("Alligator"));
    
    if(npc == -1)then
        print("Creating SpawnAlligator Failed!");
    end
    
    SetPlayerInstance(npc,"Alligator");
    
    SetPlayerStrength(npc, 80);
    SetPlayerDexterity(npc, 80);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, 1000);
    SetPlayerHealth(npc, 1000);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; --DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Swampshark;
    npcarr.func = Alligator;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end