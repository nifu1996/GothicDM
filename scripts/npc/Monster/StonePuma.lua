function StonePuma()
    local npc = CreateNPC(GetNewNPCName("Puma"));
    
    if(npc == -1)then
        print("Creating Puma Failed!");
    end
    
    SetPlayerInstance(npc,"StonePuma");
    
    SetPlayerStrength(npc, 75);
    SetPlayerDexterity(npc, 75);
    SetPlayerLevel(npc, 20);
    SetPlayerMaxHealth(npc, 770);
    SetPlayerHealth(npc, 770);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; --DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Wolf;
    npcarr.func = Puma;
	npcarr.instance = "Puma";
	npcarr.respawntime = nil;
	
    return npcarr;
end

function Spawn_StonePuma()
    local npc = CreateNPC(GetNewNPCName("Puma"));
    
    if(npc == -1)then
        print("Creating SpawnStonePuma Failed!");
    end
    
    SetPlayerInstance(npc,"StonePuma");
    
    SetPlayerStrength(npc, 75);
    SetPlayerDexterity(npc, 75);
    SetPlayerLevel(npc, 20);
    SetPlayerMaxHealth(npc, 770);
    SetPlayerHealth(npc, 770);
    
	
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; --DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Wolf;
    npcarr.func = Puma;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
    return npcarr;
end