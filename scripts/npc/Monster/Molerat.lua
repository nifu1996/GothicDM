
function Molerat()
    local npc = CreateNPC(GetNewNPCName("Molerat"));
    
    if(npc == -1)then
        print("Creating Molerat Failed!");
    end
    
    SetPlayerInstance(npc,"Molerat");
    
    SetPlayerStrength(npc, math.random(35, 45)); --25
    SetPlayerDexterity(npc, 40); --25
    SetPlayerLevel(npc, 5);
    SetPlayerMaxHealth(npc, math.random(130, 180)); -- 120
    SetPlayerHealth(npc, 130);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Molerat;
    npcarr.func = Molerat;
	npcarr.instance = "Molerat";
	npcarr.respawntime = 360;
    
    return npcarr;
end

function OW_Molerat()
    local npc = CreateNPC(GetNewNPCName("Molerat"));
    
    if(npc == -1)then
        print("Creating OW_Molerat Failed!");
    end
    
    SetPlayerInstance(npc,"Molerat");
    
    SetPlayerStrength(npc, math.random(35, 45));
    SetPlayerDexterity(npc, 40);
    SetPlayerLevel(npc, 5);
    SetPlayerMaxHealth(npc, math.random(130, 180));
    SetPlayerHealth(npc, 130);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Molerat;
    npcarr.func = Molerat;
	npcarr.instance = "OW_Molerat";
	npcarr.respawntime = 360;
    
    return npcarr;
end

function JK_Molerat()
    local npc = CreateNPC(GetNewNPCName("Molerat"));
    
    if(npc == -1)then
        print("Creating JK_Molerat Failed!");
    end
    
    SetPlayerInstance(npc,"Molerat");
    
    SetPlayerStrength(npc, math.random(35, 45)); --25
    SetPlayerDexterity(npc, 40); --25
    SetPlayerLevel(npc, 5);
    SetPlayerMaxHealth(npc, math.random(130, 180)); -- 120
    SetPlayerHealth(npc, 130);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Molerat;
    npcarr.func = Molerat;
	npcarr.instance = "JK_Molerat";
	npcarr.respawntime = 360;
    
    return npcarr;
end

function YoungMolerat()
    local npcArray = Molerat();
    local youngwolfname = GetNewNPCName("Junger Molerat");
    SetPlayerName(npcArray.id, youngwolfname);
    
    SetPlayerStrength(npcArray.id, math.random(15, 25));
    SetPlayerDexterity(npcArray.id, 20);
    SetPlayerLevel(npcArray.id, 2);
    SetPlayerMaxHealth(npcArray.id, math.random(40, 80));
    SetPlayerHealth(npcArray.id, 40);
	npcarr.instance = "Junger_Molerat";
	npcarr.respawntime = 240;
    
    npcArray.func = YoungMolerat;
    
    
    
    return npcArray;
end

function OW_YoungMolerat()
    local npcArray = Molerat();
    local youngwolfname = GetNewNPCName("Junger Molerat");
    SetPlayerName(npcArray.id, youngwolfname);
    
    SetPlayerStrength(npcArray.id, math.random(15, 25));
    SetPlayerDexterity(npcArray.id, 20);
    SetPlayerLevel(npcArray.id, 2);
    SetPlayerMaxHealth(npcArray.id, math.random(40, 80));
    SetPlayerHealth(npcArray.id, 40);
	npcarr.instance = "OW_Junger_Molerat";
	npcarr.respawntime = 240;
    
    npcArray.func = YoungMolerat;
    
    
    
    return npcArray;
end

function SpawnMolerat()
    local npc = CreateNPC(GetNewNPCName("Molerat"));
    
    if(npc == -1)then
        print("Creating Spawn_Molerat Failed!");
    end
    
    SetPlayerInstance(npc,"Molerat");
    
    SetPlayerStrength(npc, 40);
    SetPlayerDexterity(npc, 40);
    SetPlayerLevel(npc, 5);
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
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Molerat;
    npcarr.func = Molerat;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end

function SpawnYMolerat()
    local npc = CreateNPC(GetNewNPCName("Junger Molerat"));
    
    if(npc == -1)then
        print("Creating SpawnYMolerat Failed!");
    end
    
    SetPlayerInstance(npc,"Molerat");
    
    SetPlayerStrength(npc, 20);
    SetPlayerDexterity(npc, 20);
    SetPlayerLevel(npc, 2);
    SetPlayerMaxHealth(npc, 80);
    SetPlayerHealth(npc, 80);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Molerat;
    npcarr.func = Molerat;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end