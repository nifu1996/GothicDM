function JK_Blattcrawler()
    local npc = CreateNPC(GetNewNPCName("Fangheuschrecke"));
    
    if(npc == -1)then
        print("Creating JKBlattcrawler Failed!");
    end
    
    SetPlayerInstance(npc,"Blattcrawler");
    
    SetPlayerStrength(npc, 65);
    SetPlayerDexterity(npc, 65);
    SetPlayerLevel(npc, 15);
    SetPlayerMaxHealth(npc, 320);
    SetPlayerHealth(npc, 320);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; --DR_BLATTCRAWLER;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Blattcrawler;
    npcarr.func = Blattcrawler;
	npcarr.instance = "JK_Blattcrawler";
	npcarr.respawntime = 300;
	
    return npcarr;
end

function Spawn_Blattcrawler()
    local npc = CreateNPC(GetNewNPCName("Fangheuschrecke"));
    
    if(npc == -1)then
        print("Creating SpawnBlattcrawler Failed!");
    end
    
    SetPlayerInstance(npc,"Blattcrawler");
    
    SetPlayerStrength(npc, 65);
    SetPlayerDexterity(npc, 65);
    SetPlayerLevel(npc, 15);
    SetPlayerMaxHealth(npc, 320);
    SetPlayerHealth(npc, 320);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; --DR_BLATTCRAWLER;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Blattcrawler;
    npcarr.func = Blattcrawler;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
    return npcarr;
end