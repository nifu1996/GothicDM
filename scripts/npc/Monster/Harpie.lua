function Harpie()
    local npc = CreateNPC(GetNewNPCName("Harpie"));
    
    if(npc == -1)then
        print("Creating Harpie Failed!");
    end
    
    SetPlayerInstance(npc,"Harpie");
    
    SetPlayerStrength(npc, 75);
    SetPlayerDexterity(npc, 75);
    SetPlayerLevel(npc, 18);
    SetPlayerMaxHealth(npc, 320);
    SetPlayerHealth(npc, 320);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Harpie;
    npcarr.func = Harpie;
	npcarr.instance = "Harpie";
	npcarr.respawntime = 240;
    
    return npcarr;
end

function OW_Harpie()
    local npc = CreateNPC(GetNewNPCName("Harpie"));
    
    if(npc == -1)then
        print("Creating OW_Harpie Failed!");
    end
    
    SetPlayerInstance(npc,"Harpie");
    
    SetPlayerStrength(npc, 75);
    SetPlayerDexterity(npc, 75);
    SetPlayerLevel(npc, 18);
    SetPlayerMaxHealth(npc, 320);
    SetPlayerHealth(npc, 320);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Harpie;
    npcarr.func = Harpie;
	npcarr.instance = "OW_Harpie";
	npcarr.respawntime = 480;
    
    return npcarr;
end

function JK_Harpie()
    local npc = CreateNPC(GetNewNPCName("Harpie"));
    
    if(npc == -1)then
        print("Creating JK_Harpie Failed!");
    end
    
    SetPlayerInstance(npc,"Harpie");
    
    SetPlayerStrength(npc, 75);
    SetPlayerDexterity(npc, 75);
    SetPlayerLevel(npc, 18);
    SetPlayerMaxHealth(npc, 320);
    SetPlayerHealth(npc, 320);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Harpie;
    npcarr.func = Harpie;
	npcarr.instance = "JK_Harpie";
	npcarr.respawntime = 480;
    
    return npcarr;
end

function Spawn_Harpie()
    local npcArray = Harpie();

    npcarr.daily_routine = nil;	
	npcarr.instance = nil;
	npcarr.respawntime = nil;
	npcArray.func = Spawn_Harpie;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcArray;
end