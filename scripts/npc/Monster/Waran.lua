
function Waran()
    local npc = CreateNPC(GetNewNPCName("Waran"));

    if(npc == -1)then
        print("Creating Waran Failed!");
    end

    SetPlayerInstance(npc,"Waran");

    SetPlayerStrength(npc, math.random(50, 60));
    SetPlayerDexterity(npc, 55);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, math.random(200, 260));
    SetPlayerHealth(npc, 200);


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
    npcarr.Guild = AI_GUILD_Waran;
    npcarr.func = Waran;
	npcarr.instance = "Waran";
	npcarr.respawntime = 240;

    return npcarr;
end

function OW_Waran()
    local npc = CreateNPC(GetNewNPCName("Waran"));

    if(npc == -1)then
        print("Creating OW_Waran Failed!");
    end

    SetPlayerInstance(npc,"Waran");

    SetPlayerStrength(npc, math.random(50, 60));
    SetPlayerDexterity(npc, 55);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, math.random(200, 260));
    SetPlayerHealth(npc, 200);


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
    npcarr.Guild = AI_GUILD_Waran;
    npcarr.func = Waran;
	npcarr.instance = "OW_Waran";
	npcarr.respawntime = 240;

    return npcarr;
end

function JK_Waran()
    local npc = CreateNPC(GetNewNPCName("Waran"));

    if(npc == -1)then
        print("Creating JK_Waran Failed!");
    end

    SetPlayerInstance(npc,"Waran");

    SetPlayerStrength(npc, math.random(50, 60));
    SetPlayerDexterity(npc, 55);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, math.random(200, 260));
    SetPlayerHealth(npc, 200);


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
    npcarr.Guild = AI_GUILD_Waran;
    npcarr.func = Waran;
	npcarr.instance = "JK_Waran";
	npcarr.respawntime = 240;

    return npcarr;
end

function Firewaran()
    local npc = CreateNPC(GetNewNPCName("Feuerwaran"));

    if(npc == -1)then
        print("Creating Firewaran Failed!");
    end

    SetPlayerInstance(npc,"FireWaran");

    SetPlayerStrength(npc, 70);
    SetPlayerDexterity(npc, 70);
    SetPlayerLevel(npc, 30);
    SetPlayerMaxHealth(npc, 530);
    SetPlayerHealth(npc, 530);


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
    npcarr.Guild = AI_GUILD_Waran;
    npcarr.func = Firewaran;
	npcarr.instance = "Feuerwaran";
	npcarr.respawntime = 420;

    return npcarr;
end

function OW_Firewaran()
    local npc = CreateNPC(GetNewNPCName("Feuerwaran"));

    if(npc == -1)then
        print("Creating OW_Feuerwaran Failed!");
    end

    SetPlayerInstance(npc,"FireWaran");

    SetPlayerStrength(npc, 70);
    SetPlayerDexterity(npc, 70);
    SetPlayerLevel(npc, 30);
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
    npcarr.aivar["ATTACKRANGE"] = 400;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Waran;
    npcarr.func = Firewaran;
	npcarr.instance = "OW_Feuerwaran";
	npcarr.respawntime = 420;

    return npcarr;
end

function JK_Firewaran()
    local npc = CreateNPC(GetNewNPCName("Feuerwaran"));

    if(npc == -1)then
        print("Creating JK_Feuerwaran Failed!");
    end

    SetPlayerInstance(npc,"FireWaran");

    SetPlayerStrength(npc, 70);
    SetPlayerDexterity(npc, 70);
    SetPlayerLevel(npc, 30);
    SetPlayerMaxHealth(npc, 530);
    SetPlayerHealth(npc, 530);


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
    npcarr.Guild = AI_GUILD_Waran;
    npcarr.func = Firewaran;
	npcarr.instance = "JK_Feuerwaran";
	npcarr.respawntime = 420;

    return npcarr;
end

-- /spawn Waran

function Spawn_Waran()
    local npc = CreateNPC(GetNewNPCName("Waran"));

    if(npc == -1)then
        print("Creating Spawn_Waran Failed!");
    end

    SetPlayerInstance(npc,"Waran");

    SetPlayerStrength(npc, 55);
    SetPlayerDexterity(npc, 55);
    SetPlayerLevel(npc, 12);
    SetPlayerMaxHealth(npc, 230);
    SetPlayerHealth(npc, 230);


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
    npcarr.Guild = AI_GUILD_Waran;
    npcarr.func = Waran;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;

    return npcarr;
end

function Spawn_Firewaran()
    local npc = CreateNPC(GetNewNPCName("Feuerwaran"));

    if(npc == -1)then
        print("Creating Spawn_Firewaran Failed!");
    end

    SetPlayerInstance(npc,"FireWaran");

    SetPlayerStrength(npc, 70);
    SetPlayerDexterity(npc, 70);
    SetPlayerLevel(npc, 30);
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
    npcarr.aivar["ATTACKRANGE"] = 400;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Waran;
    npcarr.func = Firewaran;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;

    return npcarr;
end
