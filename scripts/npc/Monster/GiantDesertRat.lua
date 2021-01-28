function Giant_DesertRat()
    local npc = CreateNPC(GetNewNPCName("Wüstenratte"));
    
    if(npc == -1)then
        print("Creating GiantDesertRat Failed!");
    end
    
    SetPlayerInstance(npc,"Giant_DesertRat");
    
    SetPlayerStrength(npc, math.random(55, 65));
    SetPlayerDexterity(npc, 60);
    SetPlayerLevel(npc, 10);
    SetPlayerMaxHealth(npc, math.random(390, 490));
    SetPlayerHealth(npc, 390);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = DR_Monster_MidEat;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_GiantDesertRat;
    npcarr.func = Giant_DesertRat;
	npcarr.instance = "Giant_DesertRat";
	npcarr.respawntime = 300;
    return npcarr;
end

function Spawn_Giant_DesertRat()
    local npc = CreateNPC(GetNewNPCName("Wüstenratte"));
    
    if(npc == -1)then
        print("Creating SpawnGiantDesertRat Failed!");
    end
    
    SetPlayerInstance(npc,"Giant_DesertRat");
    
    SetPlayerStrength(npc, 60);
    SetPlayerDexterity(npc, 60);
    SetPlayerLevel(npc, 10);
    SetPlayerMaxHealth(npc, 440);
    SetPlayerHealth(npc, 440);
    
    npcarr = {};
    npcarr.id = npc;
    npcarr.daily_routine = nil;
    npcarr.attack_routine = FAI_WOLF_ATTACK;
    npcarr.WeaponMode = 0;
    npcarr.dialogs = nil;
    npcarr.update_func = AI_UP_MONSTER;
    npcarr.target_routine = AI_TA_MONSTER;
    npcarr.onhitted = ON_WOLF_HIT;
    npcarr.Guild = AI_GUILD_GiantDesertRat;
    npcarr.func = Giant_DesertRat;
    return npcarr;
end