
function Bloodfly()
    local npc = CreateNPC(GetNewNPCName("Blutfliege"));
    
    if(npc == -1)then
        print("Creating Bloodfly Failed!");
    end
    
    SetPlayerInstance(npc,"Bloodfly");
    
    SetPlayerStrength(npc, 35);
    SetPlayerDexterity(npc, 35);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, 110);
    SetPlayerHealth(npc, 110);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Bloodfly;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 200;
    npcarr.aivar["WARNTIME"] = 6000;
    npcarr.func = Bloodfly;
	npcarr.instance = "Blutfliege";
	npcarr.respawntime = 240;
    
    return npcarr;
end

function JK_Bloodfly()
    local npc = CreateNPC(GetNewNPCName("Blutfliege"));
    
    if(npc == -1)then
        print("Creating JKBloodfly Failed!");
    end
    
    SetPlayerInstance(npc,"Bloodfly");
    
    SetPlayerStrength(npc, 35);
    SetPlayerDexterity(npc, 35);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, 110);
    SetPlayerHealth(npc, 110);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Bloodfly;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 200;
    npcarr.aivar["WARNTIME"] = 6000;
    npcarr.func = Bloodfly;
	npcarr.instance = "JK_Blutfliege";
	npcarr.respawntime = 240;
    
    return npcarr;
end

function OW_Bloodfly()
    local npc = CreateNPC(GetNewNPCName("Blutfliege"));
    
    if(npc == -1)then
        print("Creating OW_Bloodfly Failed!");
    end
    
    SetPlayerInstance(npc,"Bloodfly");
    
    SetPlayerStrength(npc, 35);
    SetPlayerDexterity(npc, 35);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, 110);
    SetPlayerHealth(npc, 110);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Bloodfly;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 200;
    npcarr.aivar["WARNTIME"] = 6000;
    npcarr.func = Bloodfly;
	npcarr.instance = "OW_Blutfliege";
	npcarr.respawntime = 240;
    
    return npcarr;
end


function YoungBloodfly()
    local npc = CreateNPC(GetNewNPCName("Junge Blutfliege"));
    
    if(npc == -1)then
        print("Creating Young_Bloodfly Failed!");
    end
    
    SetPlayerInstance(npc,"YBloodfly");
    
    SetPlayerStrength(npc, 15);
    SetPlayerDexterity(npc, 15);
    SetPlayerLevel(npc, 3);
    SetPlayerMaxHealth(npc, 40);
    SetPlayerHealth(npc, 40);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Bloodfly;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 200;
    npcarr.aivar["WARNTIME"] = 6000;
    npcarr.func = Bloodfly;
	npcarr.instance = "Junge_Blutfliege";
	npcarr.respawntime = 120;
    
    return npcarr;
end

function OW_YoungBloodfly()
    local npc = CreateNPC(GetNewNPCName("Junge Blutfliege"));
    
    if(npc == -1)then
        print("Creating OWYoung_Bloodfly Failed!");
    end
    
    SetPlayerInstance(npc,"YBloodfly");
    
    SetPlayerStrength(npc, 15);
    SetPlayerDexterity(npc, 15);
    SetPlayerLevel(npc, 3);
    SetPlayerMaxHealth(npc, 40);
    SetPlayerHealth(npc, 40);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Bloodfly;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 200;
    npcarr.aivar["WARNTIME"] = 6000;
    npcarr.func = Bloodfly;
	npcarr.instance = "OW_Junge_Blutfliege";
	npcarr.respawntime = 120;
    
    return npcarr;
end

function JK_YoungBloodfly()
    local npc = CreateNPC(GetNewNPCName("Junge Blutfliege"));
    
    if(npc == -1)then
        print("Creating JKYoung_Bloodfly Failed!");
    end
    
    SetPlayerInstance(npc,"YBloodfly");
    
    SetPlayerStrength(npc, 15);
    SetPlayerDexterity(npc, 15);
    SetPlayerLevel(npc, 3);
    SetPlayerMaxHealth(npc, 40);
    SetPlayerHealth(npc, 40);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Bloodfly;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 200;
    npcarr.aivar["WARNTIME"] = 6000;
    npcarr.func = Bloodfly;
	npcarr.instance = "JK_Junge_Blutfliege";
	npcarr.respawntime = 120;
    
    return npcarr;
end

function SpawnBloodfly()
    local npc = CreateNPC(GetNewNPCName("Blutfliege"));
    
    if(npc == -1)then
        print("Creating SpawnBloodfly Failed!");
    end
    
    SetPlayerInstance(npc,"Bloodfly");
    
    SetPlayerStrength(npc, 35);
    SetPlayerDexterity(npc, 35);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, 110);
    SetPlayerHealth(npc, 110);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Bloodfly;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 200;
    npcarr.aivar["WARNTIME"] = 6000;
    npcarr.func = Bloodfly;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end

function SpawnYBloodfly()
    local npc = CreateNPC(GetNewNPCName("Junge Blutfliege"));
    
    if(npc == -1)then
        print("Creating SpawnYBloodfly Failed!");
    end
    
    SetPlayerInstance(npc,"YBloodfly");
    
    SetPlayerStrength(npc, 15);
    SetPlayerDexterity(npc, 15);
    SetPlayerLevel(npc, 3);
    SetPlayerMaxHealth(npc, 40);
    SetPlayerHealth(npc, 40);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Bloodfly;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 200;
    npcarr.aivar["WARNTIME"] = 6000;
    npcarr.func = Bloodfly;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end