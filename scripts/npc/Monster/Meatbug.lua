function Meatbug()
    local npc = CreateNPC(GetNewNPCName("Fleischwanze"));

    if(npc == -1)then
        print("Creating Meatbug Failed!");
    end

    SetPlayerInstance(npc,"Meatbug");

    SetPlayerStrength(npc, 1);
    SetPlayerDexterity(npc, 1);
    SetPlayerLevel(npc, 1);
    SetPlayerMaxHealth(npc, 10);
    SetPlayerHealth(npc, 10);

    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = nil;
    npcarr.GotEnemyFunc = nil;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.onhitted = nil;
    npcarr.Guild = AI_GUILD_Meatbug;
    npcarr.func = Meatbug;
	npcarr.instance = "Fleischwanze";
	npcarr.respawntime = 15;

    return npcarr;
end

function JK_Meatbug()
    local npc = CreateNPC(GetNewNPCName("Fleischwanze"));

    if(npc == -1)then
        print("Creating JK_Meatbug Failed!");
    end

    SetPlayerInstance(npc,"Meatbug");

    SetPlayerStrength(npc, 1);
    SetPlayerDexterity(npc, 1);
    SetPlayerLevel(npc, 1);
    SetPlayerMaxHealth(npc, 10);
    SetPlayerHealth(npc, 10);

    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = nil;
    npcarr.GotEnemyFunc = nil;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.onhitted = nil;
    npcarr.Guild = AI_GUILD_Meatbug;
    npcarr.func = Meatbug;
	npcarr.instance = "JK_Fleischwanze";
	npcarr.respawntime = 15;

    return npcarr;
end

function OW_Meatbug()
    local npc = CreateNPC(GetNewNPCName("Fleischwanze"));

    if(npc == -1)then
        print("Creating OW_Meatbug Failed!");
    end

    SetPlayerInstance(npc,"Meatbug");

    SetPlayerStrength(npc, 1);
    SetPlayerDexterity(npc, 1);
    SetPlayerLevel(npc, 1);
    SetPlayerMaxHealth(npc, 10);
    SetPlayerHealth(npc, 10);

    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = nil;
    npcarr.GotEnemyFunc = nil;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.onhitted = nil;
    npcarr.Guild = AI_GUILD_Meatbug;
    npcarr.func = Meatbug;
	npcarr.instance = "OW_Fleischwanze";
	npcarr.respawntime = 15;

    return npcarr;
end

function Spawn_Meatbug()
    local npc = CreateNPC(GetNewNPCName("Fleischwanze"));

    if(npc == -1)then
        print("Creating Spawn_Meatbug Failed!");
    end

    SetPlayerInstance(npc,"Meatbug");

    SetPlayerStrength(npc, 1);
    SetPlayerDexterity(npc, 1);
    SetPlayerLevel(npc, 1);
    SetPlayerMaxHealth(npc, 10);
    SetPlayerHealth(npc, 10);

    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; --DR_Monster_MidEat;
    npcarr.attack_routine = nil;
    npcarr.GotEnemyFunc = nil;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.onhitted = nil;
    npcarr.Guild = AI_GUILD_Meatbug;
    npcarr.func = Meatbug;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;

    return npcarr;
end