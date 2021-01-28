
function Wolf()
    local npc = CreateNPC(GetNewNPCName("Wolf"));
    
    if(npc == -1)then
        print("Creating Wolf Failed!");
    end
    
    SetPlayerInstance(npc,"Wolf");
    
    SetPlayerStrength(npc, math.random(45, 50)); --30
    SetPlayerDexterity(npc, math.random(45, 50)); --30
    SetPlayerLevel(npc, 6);
    SetPlayerMaxHealth(npc, math.random(180, 190)); --120
    SetPlayerHealth(npc, 180); --120
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Wolf;
    npcarr.func = "Wolf";
	npcarr.instance = "Wolf";
	npcarr.respawntime = 240;
	
    return npcarr;
end

function OW_Wolf()
    local npc = CreateNPC(GetNewNPCName("Wolf"));
    
    if(npc == -1)then
        print("Creating OW_Wolf Failed!");
    end
    
    SetPlayerInstance(npc,"Wolf");
    
    SetPlayerStrength(npc, 45);
    SetPlayerDexterity(npc, 45);
    SetPlayerLevel(npc, 6);
    SetPlayerMaxHealth(npc, 180);
    SetPlayerHealth(npc, 180);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Wolf;
    npcarr.func = "OW_Wolf";
	npcarr.instance = "OW_Wolf";
	npcarr.respawntime = 240;
	
    return npcarr;
end

function JK_Wolf()
    local npc = CreateNPC(GetNewNPCName("Wolf"));
    
    if(npc == -1)then
        print("Creating JK_Wolf Failed!");
    end
    
    SetPlayerInstance(npc,"Wolf");
    
    SetPlayerStrength(npc, math.random(45, 50)); --30
    SetPlayerDexterity(npc, math.random(45, 50)); --30
    SetPlayerLevel(npc, 6);
    SetPlayerMaxHealth(npc, math.random(180, 190)); --120
    SetPlayerHealth(npc, 180); --120
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Wolf;
    npcarr.func = "JK_Wolf";
	npcarr.instance = "JK_Wolf";
	npcarr.respawntime = 240;
	
    return npcarr;
end

function YoungWolf()
    local npc = CreateNPC(GetNewNPCName("Junger Wolf"));
    
    if(npc == -1)then
        print("Creating YWolf Failed!");
    end
    
    SetPlayerInstance(npc,"YWolf");
    
    SetPlayerStrength(npc, math.random(35, 40)); -- 15
    SetPlayerDexterity(npc, math.random(35, 40)); -- 15
    SetPlayerLevel(npc, 3);
    SetPlayerMaxHealth(npc, math.random(70, 80)); -- 30
    SetPlayerHealth(npc, 70); -- 30
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Wolf;
    npcarr.func = "YoungWolf";
	npcarr.instance = "Junger_Wolf";
	npcarr.respawntime = 120;
	
    return npcarr;
end

function OW_YoungWolf()
    local npc = CreateNPC(GetNewNPCName("Junger Wolf"));
    
    if(npc == -1)then
        print("Creating OW_YWolf Failed!");
    end
    
    SetPlayerInstance(npc,"YWolf");
    
    SetPlayerStrength(npc, 45);
    SetPlayerDexterity(npc, 45);
    SetPlayerLevel(npc, 3);
    SetPlayerMaxHealth(npc, 70);
    SetPlayerHealth(npc, 70);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Wolf;
    npcarr.func = "OW_YoungWolf";
	npcarr.instance = "OW_Junger_Wolf";
	npcarr.respawntime = 120;
	
    return npcarr;
end

function SchwarzerWolf()
    local npc = CreateNPC(GetNewNPCName("Schwarzer Wolf"));
    
    if(npc == -1)then
        print("Creating Black Wolf Failed!");
    end
    
    SetPlayerInstance(npc,"BlackWolf");
    
    SetPlayerStrength(npc, 60);
    SetPlayerDexterity(npc, 60);
    SetPlayerLevel(npc, 6);
    SetPlayerMaxHealth(npc, 350);
    SetPlayerHealth(npc, 350);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Wolf;
    npcarr.func = "SchwarzerWolf";
	npcarr.instance = "Schwarzer Wolf";
	npcarr.respawntime = 240;
	
    return npcarr;
end

-- Extras für Spawn Funktion --

function Spawn_Wolf()
    local npc = CreateNPC(GetNewNPCName("Wolf"));
    
    if(npc == -1)then
        print("Creating Spawn_Wolf Failed!");
    end
    
    SetPlayerInstance(npc,"Wolf");
    
    SetPlayerStrength(npc, 45);
    SetPlayerDexterity(npc, 45);
    SetPlayerLevel(npc, 6);
    SetPlayerMaxHealth(npc, 180);
    SetPlayerHealth(npc, 180);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Wolf;
    npcarr.func = Spawn_Wolf;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
    return npcarr;
end

function Spawn_SchwarzerWolf()
    local npc = CreateNPC(GetNewNPCName("Schwarzer Wolf"));
    
    if(npc == -1)then
        print("Creating Spawn_Black Wolf Failed!");
    end
    
    SetPlayerInstance(npc,"BlackWolf");
    
    SetPlayerStrength(npc, 60);
    SetPlayerDexterity(npc, 60);
    SetPlayerLevel(npc, 6);
    SetPlayerMaxHealth(npc, 350);
    SetPlayerHealth(npc, 350);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Wolf;
    npcarr.func = Wolf;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
    return npcarr;
end

function Icewolf()
    local npc = CreateNPC(GetNewNPCName("Eiswolf"));
    
    if(npc == -1)then
        print("Creating Eiswolf Failed!");
    end
    
    SetPlayerInstance(npc,"Icewolf");
    
    SetPlayerStrength(npc, 70);
    SetPlayerDexterity(npc, 70);
    SetPlayerLevel(npc, 15);
    SetPlayerMaxHealth(npc, 690);
    SetPlayerHealth(npc, 690);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Wolf;
    npcarr.func = Wolf;
	npcarr.instance = "Eiswolf";
	npcarr.respawntime = 5;
	
    return npcarr;
end


function Spawn_Icewolf()
    local npc = CreateNPC(GetNewNPCName("Eiswolf"));
    
    if(npc == -1)then
        print("Creating Spawn_Eiswolf Failed!");
    end
    
    SetPlayerInstance(npc,"Icewolf");
    
    SetPlayerStrength(npc, 70);
    SetPlayerDexterity(npc, 70);
    SetPlayerLevel(npc, 15);
    SetPlayerMaxHealth(npc, 690);
    SetPlayerHealth(npc, 690);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Wolf;
    npcarr.func = Wolf;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
    return npcarr;
end

function Spawn_YWolf()
    local npc = CreateNPC(GetNewNPCName("Junger Wolf"));
    
    if(npc == -1)then
        print("Creating Spawn_YWolf Failed!");
    end
    
    SetPlayerInstance(npc,"YWolf");
    
    SetPlayerStrength(npc, 15);
    SetPlayerDexterity(npc, 15);
    SetPlayerLevel(npc, 3);
    SetPlayerMaxHealth(npc, 30);
    SetPlayerHealth(npc, 30);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Wolf;
    npcarr.func = Spawn_Wolf;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
    return npcarr;
end