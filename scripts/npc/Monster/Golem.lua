function StoneGolem()
    local npc = CreateNPC(GetNewNPCName("Steingolem"));
    
    if(npc == -1)then
        print("Creating StoneGolem Failed!");
    end
    
    SetPlayerInstance(npc,"StoneGolem");
    
    SetPlayerStrength(npc, 80);
    SetPlayerDexterity(npc, 80);
    SetPlayerLevel(npc, 25);
    SetPlayerMaxHealth(npc, 510);
    SetPlayerHealth(npc, 510);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; --DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Golem;
    npcarr.func = StoneGolem;
	npcarr.instance = "Steingolem";
	npcarr.respawntime = 480;
    
    return npcarr;
end

function OW_StoneGolem()
    local npc = CreateNPC(GetNewNPCName("Steingolem"));
    
    if(npc == -1)then
        print("Creating OW_StoneGolem Failed!");
    end
    
    SetPlayerInstance(npc,"StoneGolem");
    
    SetPlayerStrength(npc, 80);
    SetPlayerDexterity(npc, 80);
    SetPlayerLevel(npc, 25);
    SetPlayerMaxHealth(npc, 510);
    SetPlayerHealth(npc, 510);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; --DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Golem;
    npcarr.func = StoneGolem;
	npcarr.instance = "OW_Steingolem";
	npcarr.respawntime = 480;
    
    return npcarr;
end

function JK_StoneGolem()
    local npc = CreateNPC(GetNewNPCName("Steingolem"));
    
    if(npc == -1)then
        print("Creating JK_StoneGolem Failed!");
    end
    
    SetPlayerInstance(npc,"StoneGolem");
    
    SetPlayerStrength(npc, 80);
    SetPlayerDexterity(npc, 80);
    SetPlayerLevel(npc, 25);
    SetPlayerMaxHealth(npc, 510);
    SetPlayerHealth(npc, 510);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; --DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Golem;
    npcarr.func = StoneGolem;
	npcarr.instance = "JK_Steingolem";
	npcarr.respawntime = 480;
    
    return npcarr;
end

function FireGolem()
    local npc = CreateNPC(GetNewNPCName("Feuergolem"));
    
    if(npc == -1)then
        print("Creating FireGolem Failed!");
    end
    
    SetPlayerInstance(npc,"FireGolem");
    
    SetPlayerStrength(npc, 80);
    SetPlayerDexterity(npc, 80);
    SetPlayerLevel(npc, 40);
    SetPlayerMaxHealth(npc, 540);
    SetPlayerHealth(npc, 540);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Golem;
    npcarr.func = FireGolem;
	npcarr.instance = "Feuergolem";
	npcarr.respawntime = 480;
    
    return npcarr;
end

function JK_FireGolem()
    local npc = CreateNPC(GetNewNPCName("Feuergolem"));
    
    if(npc == -1)then
        print("Creating JK_FireGolem Failed!");
    end
    
    SetPlayerInstance(npc,"FireGolem");
    
    SetPlayerStrength(npc, 80);
    SetPlayerDexterity(npc, 80);
    SetPlayerLevel(npc, 40);
    SetPlayerMaxHealth(npc, 540);
    SetPlayerHealth(npc, 540);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Golem;
    npcarr.func = FireGolem;
	npcarr.instance = "JK_Feuergolem";
	npcarr.respawntime = 480;
    
    return npcarr;
end

function OW_FireGolem()
    local npc = CreateNPC(GetNewNPCName("Feuergolem"));
    
    if(npc == -1)then
        print("Creating OW_FireGolem Failed!");
    end
    
    SetPlayerInstance(npc,"FireGolem");
    
    SetPlayerStrength(npc, 80);
    SetPlayerDexterity(npc, 80);
    SetPlayerLevel(npc, 40);
    SetPlayerMaxHealth(npc, 540);
    SetPlayerHealth(npc, 540);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Golem;
    npcarr.func = FireGolem;
	npcarr.instance = "OW_Feuergolem";
	npcarr.respawntime = 480;
    
    return npcarr;
end


function IceGolem()
    local npc = CreateNPC(GetNewNPCName("Eisgolem"));
    
    if(npc == -1)then
        print("Creating IceGolem Failed!");
    end
    
    SetPlayerInstance(npc,"IceGolem");
    
    SetPlayerStrength(npc, 85);
    SetPlayerDexterity(npc, 85);
    SetPlayerLevel(npc, 45);
    SetPlayerMaxHealth(npc, 570);
    SetPlayerHealth(npc, 570);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Golem;
    npcarr.func = IceGolem;
	npcarr.instance = "Eisgolem";
	npcarr.respawntime = 480;
    
    return npcarr;
end

function JK_IceGolem()
    local npc = CreateNPC(GetNewNPCName("Eisgolem"));
    
    if(npc == -1)then
        print("Creating JK_IceGolem Failed!");
    end
    
    SetPlayerInstance(npc,"IceGolem");
    
    SetPlayerStrength(npc, 85);
    SetPlayerDexterity(npc, 85);
    SetPlayerLevel(npc, 45);
    SetPlayerMaxHealth(npc, 570);
    SetPlayerHealth(npc, 570);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Golem;
    npcarr.func = IceGolem;
	npcarr.instance = "JK_Eisgolem";
	npcarr.respawntime = 480;
    
    return npcarr;
end

function OW_IceGolem()
    local npc = CreateNPC(GetNewNPCName("Eisgolem"));
    
    if(npc == -1)then
        print("Creating OW_IceGolem Failed!");
    end
    
    SetPlayerInstance(npc,"IceGolem");
    
    SetPlayerStrength(npc, 85);
    SetPlayerDexterity(npc, 85);
    SetPlayerLevel(npc, 45);
    SetPlayerMaxHealth(npc, 570);
    SetPlayerHealth(npc, 570);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Golem;
    npcarr.func = IceGolem;
	npcarr.instance = "OW_Eisgolem";
	npcarr.respawntime = 480;
    
    return npcarr;
end

function SwampGolem()
    local npc = CreateNPC(GetNewNPCName("Sumpfgolem"));
    
    if(npc == -1)then
        print("Creating SwampGolem Failed!");
    end
    
    SetPlayerInstance(npc,"SwampGolem");
    
    SetPlayerStrength(npc, 80);
    SetPlayerDexterity(npc, 80);
    SetPlayerLevel(npc, 25);
    SetPlayerMaxHealth(npc, 530);
    SetPlayerHealth(npc, 530);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Golem;
    npcarr.func = SwampGolem;
	npcarr.instance = "Sumpfgolem";
	npcarr.respawntime = 480;
    
    return npcarr;
end

function JK_SwampGolem()
    local npc = CreateNPC(GetNewNPCName("Sumpfgolem"));
    
    if(npc == -1)then
        print("Creating JK_SwampGolem Failed!");
    end
    
    SetPlayerInstance(npc,"SwampGolem");
    
    SetPlayerStrength(npc, 80);
    SetPlayerDexterity(npc, 80);
    SetPlayerLevel(npc, 25);
    SetPlayerMaxHealth(npc, 530);
    SetPlayerHealth(npc, 530);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Golem;
    npcarr.func = SwampGolem;
	npcarr.instance = "JK_Sumpfgolem";
	npcarr.respawntime = 480;
    
    return npcarr;
end

function OW_SwampGolem()
    local npc = CreateNPC(GetNewNPCName("Sumpfgolem"));
    
    if(npc == -1)then
        print("Creating OW_SwampGolem Failed!");
    end
    
    SetPlayerInstance(npc,"SwampGolem");
    
    SetPlayerStrength(npc, 80);
    SetPlayerDexterity(npc, 80);
    SetPlayerLevel(npc, 25);
    SetPlayerMaxHealth(npc, 530);
    SetPlayerHealth(npc, 530);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Golem;
    npcarr.func = SwampGolem;
	npcarr.instance = "OW_Sumpfgolem";
	npcarr.respawntime = 480;
    
    return npcarr;
end

function BridgeGolem()
    npcarr = StoneGolem();
    npcarr.func = BridgeGolem;
    
    
    return npcarr;
end

function Shattered_Golem()
    npcarr = StoneGolem();
    npcarr.func = Shattered_Golem;
    
    
    return npcarr;
end


function Spawn_StoneGolem()
    local npc = CreateNPC(GetNewNPCName("Steingolem"));
    
    if(npc == -1)then
        print("Creating SpawnStoneGolem Failed!");
    end
    
    SetPlayerInstance(npc,"StoneGolem");
    
    SetPlayerStrength(npc, 80);
    SetPlayerDexterity(npc, 80);
    SetPlayerLevel(npc, 25);
    SetPlayerMaxHealth(npc, 510);
    SetPlayerHealth(npc, 510);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; --DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Golem;
    npcarr.func = StoneGolem;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end


function Spawn_FireGolem()
    local npc = CreateNPC(GetNewNPCName("Feuergolem"));
    
    if(npc == -1)then
        print("Creating SpawnFireGolem Failed!");
    end
    
    SetPlayerInstance(npc,"FireGolem");
    
    SetPlayerStrength(npc, 80);
    SetPlayerDexterity(npc, 80);
    SetPlayerLevel(npc, 40);
    SetPlayerMaxHealth(npc, 540);
    SetPlayerHealth(npc, 540);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Golem;
    npcarr.func = FireGolem;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end



function Spawn_IceGolem()
    local npc = CreateNPC(GetNewNPCName("Eisgolem"));
    
    if(npc == -1)then
        print("Creating SpawnIceGolem Failed!");
    end
    
    SetPlayerInstance(npc,"IceGolem");
    
    SetPlayerStrength(npc, 85);
    SetPlayerDexterity(npc, 85);
    SetPlayerLevel(npc, 45);
    SetPlayerMaxHealth(npc, 570);
    SetPlayerHealth(npc, 570);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Golem;
    npcarr.func = IceGolem;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end

function Spawn_SwampGolem()
    local npc = CreateNPC(GetNewNPCName("Sumpfgolem"));
    
    if(npc == -1)then
        print("Creating SpawnSwampGolem Failed!");
    end
    
    SetPlayerInstance(npc,"SwampGolem");
    
    SetPlayerStrength(npc, 80);
    SetPlayerDexterity(npc, 80);
    SetPlayerLevel(npc, 25);
    SetPlayerMaxHealth(npc, 530);
    SetPlayerHealth(npc, 530);
    
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Golem;
    npcarr.func = SwampGolem;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end