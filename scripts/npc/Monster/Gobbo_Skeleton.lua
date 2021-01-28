
function Gobbo_Skeleton()
    local npc = CreateNPC(GetNewNPCName("Goblin Skelett"));
    
    if(npc == -1)then
        print("Creating Gobbo_Skeleton Failed!");
    end
    
    SetPlayerInstance(npc,"Gobbo_Skeleton");
    
    SetPlayerStrength(npc, 65);
    SetPlayerDexterity(npc, 65);
    SetPlayerLevel(npc, 15);
    SetPlayerMaxHealth(npc, 370);
    SetPlayerHealth(npc, 370);
    
    EquipMeleeWeapon(npc, "ItMw_1h_Bau_Mace");
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; -- DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 200;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Goblin_Skeleton;
    npcarr.GotEnemyFunc = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.func = Gobbo_Skeleton;
	npcarr.instance = "Goblin_Skelett";
	npcarr.respawntime = 90;
    
    return npcarr;
end


function OW_Gobbo_Skeleton()
    local npc = CreateNPC(GetNewNPCName("Goblin Skelett"));
    
    if(npc == -1)then
        print("Creating OWGobbo_Skeleton Failed!");
    end
    
    SetPlayerInstance(npc,"Gobbo_Skeleton");
    
    SetPlayerStrength(npc, 65);
    SetPlayerDexterity(npc, 65);
    SetPlayerLevel(npc, 15);
    SetPlayerMaxHealth(npc, 370);
    SetPlayerHealth(npc, 370);
    
    EquipMeleeWeapon(npc, "ItMw_1h_Bau_Mace");
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; -- DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 200;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Goblin_Skeleton;
    npcarr.GotEnemyFunc = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.func = Gobbo_Skeleton;
	npcarr.instance = "OW_Goblin_Skelett";
	npcarr.respawntime = 90;
    
    return npcarr;
end


function JK_Gobbo_Skeleton()
    local npc = CreateNPC(GetNewNPCName("Goblin Skelett"));
    
    if(npc == -1)then
        print("Creating JKGobbo_Skeleton Failed!");
    end
    
    SetPlayerInstance(npc,"Gobbo_Skeleton");
    
    SetPlayerStrength(npc, 65);
    SetPlayerDexterity(npc, 65);
    SetPlayerLevel(npc, 15);
    SetPlayerMaxHealth(npc, 370);
    SetPlayerHealth(npc, 370);
    
    EquipMeleeWeapon(npc, "ItMw_1h_Bau_Mace");
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; -- DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 200;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Goblin_Skeleton;
    npcarr.GotEnemyFunc = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.func = Gobbo_Skeleton;
	npcarr.instance = "JK_Goblin_Skelett";
	npcarr.respawntime = 90;
    
    return npcarr;
end

function Spawn_Gobbo_Skeleton()
    local npc = CreateNPC(GetNewNPCName("Goblin Skelett"));
    
    if(npc == -1)then
        print("Creating SpawnGobbo_Skeleton Failed!");
    end
    
    SetPlayerInstance(npc,"Gobbo_Skeleton");
    
    SetPlayerStrength(npc, 65);
    SetPlayerDexterity(npc, 65);
    SetPlayerLevel(npc, 15);
    SetPlayerMaxHealth(npc, 370);
    SetPlayerHealth(npc, 370);
    
    EquipMeleeWeapon(npc, "ItMw_1h_Bau_Mace");
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil; -- DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 200;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Goblin_Skeleton;
    npcarr.GotEnemyFunc = AI_GOTENEMY_MONSTER_FLEE;
    npcarr.func = Gobbo_Skeleton;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
    
    return npcarr;
end
