function Scavenger()
    local npc = CreateNPC(GetNewNPCName("Scavenger"));
    
    if(npc == -1)then
        print("Creating Scavenger Failed!");
    end
    
    SetPlayerInstance(npc,"Scavenger");
    
    SetPlayerStrength(npc, math.random(35, 45)); --35
    SetPlayerDexterity(npc, 40); --35
    SetPlayerLevel(npc, 7);
    SetPlayerMaxHealth(npc, math.random(100, 140)); --150
    SetPlayerHealth(npc, 100);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 400;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Scavenger;
    npcarr.GotEnemyFunc = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.func = Scavenger;
	npcarr.instance = "Scavenger";
	npcarr.respawntime = 300;
    
    return npcarr;
end

function OW_Scavenger()
    local npc = CreateNPC(GetNewNPCName("Scavenger"));
    
    if(npc == -1)then
        print("Creating OW_Scavenger Failed!");
    end
    
    SetPlayerInstance(npc,"Scavenger");
    
    SetPlayerStrength(npc, math.random(35, 45)); --35
    SetPlayerDexterity(npc, 40); --35
    SetPlayerLevel(npc, 7);
    SetPlayerMaxHealth(npc, math.random(100, 140)); --150
    SetPlayerHealth(npc, 100);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 400;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Scavenger;
    npcarr.GotEnemyFunc = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.func = Scavenger;
	npcarr.instance = "OW_Scavenger";
	npcarr.respawntime = 300;
    
    return npcarr;
end

function JK_Scavenger()
    local npc = CreateNPC(GetNewNPCName("Scavenger"));
    
    if(npc == -1)then
        print("Creating JK_Scavenger Failed!");
    end
    
    SetPlayerInstance(npc,"Scavenger");
    
    SetPlayerStrength(npc, math.random(35, 45)); --35
    SetPlayerDexterity(npc, 40); --35
    SetPlayerLevel(npc, 7);
    SetPlayerMaxHealth(npc, math.random(100, 140)); --150
    SetPlayerHealth(npc, 100);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 400;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Scavenger;
    npcarr.GotEnemyFunc = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.func = Scavenger;
	npcarr.instance = "JK_Scavenger";
	npcarr.respawntime = 300;
    
    return npcarr;
end

function YoungScavenger()
    local npcarr = Scavenger();
    local name = GetNewNPCName("Junger Scavenger");
    SetPlayerName(npcarr.id, name);
    
    SetPlayerStrength(npcarr.id, math.random(15, 25));
    SetPlayerDexterity(npcarr.id, 20);
    SetPlayerLevel(npcarr.id, 4);
    SetPlayerMaxHealth(npcarr.id, math.random(40, 70));
    SetPlayerHealth(npcarr.id, 40);
    npcarr.func = YoungScavenger;
    npcarr.instance = "Junger_Scavenger";
	npcarr.respawntime = 300;
    
    return npcarr;
end

function OW_YoungScavenger()
    local npcarr = Scavenger();
    local name = GetNewNPCName("Junger Scavenger");
    SetPlayerName(npcarr.id, name);
    
    SetPlayerStrength(npcarr.id, math.random(15, 25));
    SetPlayerDexterity(npcarr.id, 20);
    SetPlayerLevel(npcarr.id, 4);
    SetPlayerMaxHealth(npcarr.id, math.random(40, 70));
    SetPlayerHealth(npcarr.id, 40);
    npcarr.func = YoungScavenger;
    npcarr.instance = "OW_Junger_Scavenger";
	npcarr.respawntime = 300;
    
    return npcarr;
end

function ScavengerDemon()
    local npcarr = Scavenger();
    local name = GetNewNPCName("Graslandscavenger");
    SetPlayerName(npcarr.id, name);
    
    SetPlayerInstance(npcarr.id,"Scavenger_Demon");
    
    SetPlayerStrength(npcarr.id, math.random(55, 65));
    SetPlayerDexterity(npcarr.id, 60);
    SetPlayerLevel(npcarr.id, 12);
    SetPlayerMaxHealth(npcarr.id, math.random(290, 370));
    SetPlayerHealth(npcarr.id, 290);
    npcarr.func = ScavengerDemon;
	npcarr.instance = "Graslandscavenger";
	npcarr.respawntime = 720;    
    
    return npcarr;
end

function OW_ScavengerDemon()
    local npcarr = Scavenger();--A normal Wolf will be created
    local name = GetNewNPCName("Graslandscavenger");
    SetPlayerName(npcarr.id, name);
    
    SetPlayerInstance(npcarr.id,"Scavenger_Demon");
    
    SetPlayerStrength(npcarr.id, math.random(55, 65));
    SetPlayerDexterity(npcarr.id, 60);
    SetPlayerLevel(npcarr.id, 12);
    SetPlayerMaxHealth(npcarr.id, math.random(290, 370));
    SetPlayerHealth(npcarr.id, 290);
    npcarr.func = ScavengerDemon;
	npcarr.instance = "OW_Graslandscavenger";
	npcarr.respawntime = 720;
    
    
    return npcarr;
end

function JK_ScavengerDemon()
    local npcarr = Scavenger();
    local name = GetNewNPCName("Graslandscavenger");
    SetPlayerName(npcarr.id, name);
    
    SetPlayerInstance(npcarr.id,"Scavenger_Demon");
    
    SetPlayerStrength(npcarr.id, math.random(55, 65));
    SetPlayerDexterity(npcarr.id, 60);
    SetPlayerLevel(npcarr.id, 12);
    SetPlayerMaxHealth(npcarr.id, math.random(290, 370));
    SetPlayerHealth(npcarr.id, 290);
	
    npcarr.func = ScavengerDemon;
	npcarr.instance = "JK_Graslandscavenger";
	npcarr.respawntime = 720;    
    
    return npcarr;
end

function SpawnScavenger()
    local npc = CreateNPC(GetNewNPCName("Scavenger"));
    
    if(npc == -1)then
        print("Creating SpawnScavenger Failed!");
    end
    
    SetPlayerInstance(npc,"Scavenger");
    
    SetPlayerStrength(npc, 40);
    SetPlayerDexterity(npc, 40);
    SetPlayerLevel(npc, 7);
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
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 400;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Scavenger;
    npcarr.GotEnemyFunc = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.func = Scavenger;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end

function SpawnYScavenger()
    local npc = CreateNPC(GetNewNPCName("Junger Scavenger"));
    
    if(npc == -1)then
        print("Creating SpawnYScavenger Failed!");
    end
    
    SetPlayerInstance(npc,"Scavenger");
    
    SetPlayerStrength(npc, 20);
    SetPlayerDexterity(npc, 20);
    SetPlayerLevel(npc, 4);
    SetPlayerMaxHealth(npc, 70);
    SetPlayerHealth(npc, 70);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 400;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Scavenger;
    npcarr.GotEnemyFunc = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.func = Scavenger;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end

function Spawn_ScavengerDemon()
    local npc = CreateNPC(GetNewNPCName("Graslandscavenger"));
    
    if(npc == -1)then
        print("Creating SpawnScavengerDemon Failed!");
    end
    
    SetPlayerInstance(npc,"Scavenger_Demon");
    
    SetPlayerStrength(npc, 60);
    SetPlayerDexterity(npc, 60);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, 290);
    SetPlayerHealth(npc, 290);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 400;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Scavenger;
    npcarr.GotEnemyFunc = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.func = Scavenger;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end