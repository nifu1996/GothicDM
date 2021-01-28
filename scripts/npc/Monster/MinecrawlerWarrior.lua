function MinecrawlerWarrior()
    local npc = CreateNPC(GetNewNPCName("Minecrawler Krieger"));
    
    if(npc == -1)then
        print("Creating MinecrawlerWarrior Failed!");
    end
    
    SetPlayerInstance(npc,"MinecrawlerWarrior");
    
    SetPlayerStrength(npc, math.random(65, 75));
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 20);
	SetPlayerMaxHealth(npc, math.random(370, 470));
	SetPlayerHealth(npc, 370);
    
    
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
    npcarr.func = MinecrawlerWarrior;
	npcarr.instance = "Minecrawler_Krieger";
	npcarr.respawntime = 240;
    
    return npcarr;
end


function JK_MinecrawlerWarrior()
    local npc = CreateNPC(GetNewNPCName("Minecrawler Krieger"));
    
    if(npc == -1)then
        print("Creating JK_MinecrawlerWarrior Failed!");
    end
    
    SetPlayerInstance(npc,"MinecrawlerWarrior");
    
    SetPlayerStrength(npc, math.random(65, 75));
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 20);
	SetPlayerMaxHealth(npc, math.random(370, 470));
	SetPlayerHealth(npc, 370);
    
    
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
    npcarr.func = MinecrawlerWarrior;
	npcarr.instance = "JK_Minecrawler_Krieger";
	npcarr.respawntime = 240;
    
    return npcarr;
end


function OW_MinecrawlerWarrior()
    local npc = CreateNPC(GetNewNPCName("Minecrawler Krieger"));
    
    if(npc == -1)then
        print("Creating OW_MinecrawlerWarrior Failed!");
    end
    
    SetPlayerInstance(npc,"MinecrawlerWarrior");
    
    SetPlayerStrength(npc, math.random(65, 75));
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 20);
	SetPlayerMaxHealth(npc, math.random(370, 470));
	SetPlayerHealth(npc, 370);
    
    
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
    npcarr.func = MinecrawlerWarrior;
	npcarr.instance = "OW_Minecrawler_Krieger";
	npcarr.respawntime = 240;
    
    return npcarr;
end

function Spawn_MinecrawlerWarrior()
    local npc = CreateNPC(GetNewNPCName("Minecrawler Krieger"));
    
    if(npc == -1)then
        print("Creating Spawn_MinecrawlerWarrior Failed!");
    end
    
    SetPlayerInstance(npc,"MinecrawlerWarrior");
    
    SetPlayerStrength(npc, 70);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 20);
	SetPlayerMaxHealth(npc, 420);
	SetPlayerHealth(npc, 420);
    
    
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
    npcarr.func = MinecrawlerWarrior;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end	


function OW_MinecrawlerWarriorElite()
    local npc = CreateNPC(GetNewNPCName("Minecrawlerelite"));
    
    if(npc == -1)then
        print("Creating OW_Starker Minecrawlerkrieger Failed!");
    end
    
    SetPlayerInstance(npc,"MinecrawlerWarriorElite");
    
    SetPlayerStrength(npc, math.random(70, 80)); --60
    SetPlayerDexterity(npc, 70); --60
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, math.random(500, 600)); --180
    SetPlayerHealth(npc, 500); --180
    
    
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
    npcarr.func = MinecrawlerWarriorElite;
	npcarr.instance = "OW_MinecrawlerWarriorElite";
	npcarr.respawntime = 30;
    
    return npcarr;
end