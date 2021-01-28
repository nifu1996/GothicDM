function UndeadOrc()
    local npc = CreateNPC(GetNewNPCName("Untoter Ork"));

    if(npc == -1)then
        print("Creating UndeadOrc Failed!");
    end

    SetPlayerInstance(npc,"UndeadOrcWarrior");

    SetPlayerStrength(npc, 145);
    SetPlayerDexterity(npc, 145); 
    SetPlayerLevel(npc, 40);
    SetPlayerMaxHealth(npc, 680); 
    SetPlayerHealth(npc, 680); 

    EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_02");

    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 4;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Orc;
    npcarr.func = UndeadOrcWarrior;
	npcarr.instance = "UntoterOrk";
	npcarr.respawntime = 600;
	
    return npcarr;
end

function Spawn_UndeadOrc()
    local npc = CreateNPC(GetNewNPCName("Untoter Ork"));

    if(npc == -1)then
        print("Creating SpawnUndeadOrc Failed!");
    end

    SetPlayerInstance(npc,"UndeadOrcWarrior");

    SetPlayerStrength(npc, 145);
    SetPlayerDexterity(npc, 145); 
    SetPlayerLevel(npc, 40);
    SetPlayerMaxHealth(npc, 680); 
    SetPlayerHealth(npc, 680); 

    EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_02");

    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 4;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_Orc;
    npcarr.func = UndeadOrcWarrior;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;

    return npcarr;
end