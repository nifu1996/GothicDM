function Minecrawler()
    local npc = CreateNPC(GetNewNPCName("Minecrawler"));
    
    if(npc == -1)then
        print("Creating Minecrawler Failed!");
    end
    
    SetPlayerInstance(npc,"Minecrawler");
    
    SetPlayerStrength(npc, math.random(50, 60));
    SetPlayerDexterity(npc, 55);
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
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Minecrawler;
    npcarr.func = Minecrawler;
	npcarr.instance = "Minecrawler";
	npcarr.respawntime = 180;
    
    return npcarr;
end

function JK_Minecrawler()
    local npc = CreateNPC(GetNewNPCName("Minecrawler"));
    
    if(npc == -1)then
        print("Creating JK_Minecrawler Failed!");
    end
    
    SetPlayerInstance(npc,"Minecrawler");
    
    SetPlayerStrength(npc, math.random(50, 60));
    SetPlayerDexterity(npc, 55);
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
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Minecrawler;
    npcarr.func = Minecrawler;
	npcarr.instance = "JK_Minecrawler";
	npcarr.respawntime = 180;
    
    return npcarr;
end

function OW_Minecrawler()
    local npc = CreateNPC(GetNewNPCName("Minecrawler"));
    
    if(npc == -1)then
        print("Creating OW_Minecrawler Failed!");
    end
    
    SetPlayerInstance(npc,"Minecrawler");
    
    SetPlayerStrength(npc, math.random(50, 60));
    SetPlayerDexterity(npc, 55);
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
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Minecrawler;
    npcarr.func = Minecrawler;
	npcarr.instance = "OW_Minecrawler";
	npcarr.respawntime = 180;
    
    return npcarr;
end
-- /spawn Minecrawler & /spawn MinecrawlerWarrior --

function Spawn_Minecrawler()
    local npc = CreateNPC(GetNewNPCName("Minecrawler"));
    
    if(npc == -1)then
        print("Creating Spawn_Minecrawler Failed!");
    end
    
    SetPlayerInstance(npc,"Minecrawler");
    
    SetPlayerStrength(npc, 55);
    SetPlayerDexterity(npc, 55);
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
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Minecrawler;
    npcarr.func = Minecrawler;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end

function Tough_Minecrawler()
    local npc = CreateNPC(GetNewNPCName("Zäher Minecrawler"));
    
    if(npc == -1)then
        print("Creating Zäher Minecrawler Failed!");
    end
    
    SetPlayerInstance(npc,"Minecrawler");
    
    SetPlayerStrength(npc, math.random(55, 65)); --60
    SetPlayerDexterity(npc, 60); --60
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, math.random(250, 300)); --180
    SetPlayerHealth(npc, 250); --180
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Minecrawler;
    npcarr.func = Minecrawler;
	npcarr.instance = "Zäher_Minecrawler";
	npcarr.respawntime = 40;
    
    return npcarr;
end

function OW_Tough_Minecrawler()
    local npc = CreateNPC(GetNewNPCName("Zäher Minecrawler"));
    
    if(npc == -1)then
        print("Creating OWZäher Minecrawler Failed!");
    end
    
    SetPlayerInstance(npc,"Minecrawler");
    
    SetPlayerStrength(npc, math.random(55, 65)); --60
    SetPlayerDexterity(npc, 60); --60
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, math.random(250, 300)); --180
    SetPlayerHealth(npc, 250); --180
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Minecrawler;
    npcarr.func = Minecrawler;
	npcarr.instance = "OW_Zäher_Minecrawler";
	npcarr.respawntime = 40;
    
    return npcarr;
end

function JK_Tough_Minecrawler()
    local npc = CreateNPC(GetNewNPCName("Zäher Minecrawler"));
    
    if(npc == -1)then
        print("Creating JKZäher Minecrawler Failed!");
    end
    
    SetPlayerInstance(npc,"Minecrawler");
    
    SetPlayerStrength(npc, math.random(55, 65)); --60
    SetPlayerDexterity(npc, 60); --60
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, math.random(250, 300)); --180
    SetPlayerHealth(npc, 250); --180
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Minecrawler;
    npcarr.func = Minecrawler;
	npcarr.instance = "JK_Zäher_Minecrawler";
	npcarr.respawntime = 40;
    
    return npcarr;
end

function MinecrawlerQueen()
    local npc = CreateNPC(GetNewNPCName("Minecrawlerkönigin"));
    
    if(npc == -1)then
        print("Creating MinecrawlerQueen Failed!");
    end
    
    SetPlayerInstance(npc,"Crwqueen");
    
    SetPlayerStrength(npc, 85);
    SetPlayerDexterity(npc, 85);
    SetPlayerLevel(npc, 100);
    SetPlayerMaxHealth(npc, 2150);
    SetPlayerHealth(npc, 2150);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Minecrawler;
    npcarr.func = MinecrawlerQueen;
	npcarr.instance = "MinecrawlerQueen";
	npcarr.respawntime = 180;
    
    return npcarr;
end

function Spawn_MinecrawlerQueen()
    local npc = CreateNPC(GetNewNPCName("Minecrawlerkönigin"));
    
    if(npc == -1)then
        print("Creating Spawn_MinecrawlerQueen Failed!");
    end
    
    SetPlayerInstance(npc,"Crwqueen");
    
    SetPlayerStrength(npc, 85);
    SetPlayerDexterity(npc, 85);
    SetPlayerLevel(npc, 100);
    SetPlayerMaxHealth(npc, 2150);
    SetPlayerHealth(npc, 2150);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Minecrawler;
    npcarr.func = MinecrawlerQueen;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end