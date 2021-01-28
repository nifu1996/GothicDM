

function InitMonsterlistDataBase()
    Monster = {}
    local npcQuery = mysql_query(mysql_handler, "SELECT Instance,STK,DEX,Einhand,Zweihand,Bogen,Armbrust,LVL,HP,MAXHP,Walk,Head,Headtex,Body,Bodytex,Armor,Weapon,RangedWeapon,WeaponMode,respawnins,respawn_time,Guild,AttackRange,Warntime,MinWarnDis,WarnDis,MaxWarnDis,Kampfstil FROM NPCList WHERE 1");
    for sqlRow,DB in mysql_rows_assoc(npcQuery) do
        Monster[DB.respawnins] = {}
        Monster[DB.respawnins].Instance = DB.Instance
        Monster[DB.respawnins].STK = DB.STK
        Monster[DB.respawnins].DEX = DB.DEX
        Monster[DB.respawnins].Einhand =DB.Einhand
        Monster[DB.respawnins].Zweihand = DB.Zweihand
        Monster[DB.respawnins].Bogen = DB.Bogen
        Monster[DB.respawnins].Armbrust = DB.Armbrust
        Monster[DB.respawnins].LVL = DB.LVL
        Monster[DB.respawnins].HP = DB.HP
        Monster[DB.respawnins].MAXHP = DB.MAXHP
        Monster[DB.respawnins].Walk = DB.Walk
        Monster[DB.respawnins].Head = DB.Head
        Monster[DB.respawnins].Headtex = DB.Headtex
        Monster[DB.respawnins].Body = DB.Body
        Monster[DB.respawnins].Bodytex = DB.Bodytex
        Monster[DB.respawnins].Armor = DB.Armor
        Monster[DB.respawnins].Weapon = DB.Weapon
        Monster[DB.respawnins].RangedWeapon = DB.RangedWeapon
        Monster[DB.respawnins].WeaponMode = tonumber(DB.WeaponMode)
        Monster[DB.respawnins].respawnins = DB.respawnins
        Monster[DB.respawnins].respawn_time = DB.respawn_time 
        Monster[DB.respawnins].Guild = tostring(DB.Guild)
        Monster[DB.respawnins].AttackRange = DB.AttackRange
        Monster[DB.respawnins].Warntime = DB.Warntime
        Monster[DB.respawnins].MinWarnDistance = DB.MinWarnDis 
        Monster[DB.respawnins].WarnDistance = DB.WarnDis
        Monster[DB.respawnins].MaxWarnDistance = DB.MaxWarnDis
        Monster[DB.respawnins].Kampfstil = DB.Kampfstil
    end
end

function Spawn_NPC(Name)

    local npc = CreateNPC(GetNewNPCName(Name));

    if(npc == -1)then
        print("Creating "..Name.." Failed!");
    end
    
    SetPlayerInstance(npc,Monster[Name].Instance);
        
    SetPlayerStrength(npc,Monster[Name].STK); --30
    SetPlayerDexterity(npc,Monster[Name].DEX); --30
    SetPlayerLevel(npc,Monster[Name].LVL);
    SetPlayerHealth(npc,Monster[Name].HP); --120
    SetPlayerMaxHealth(npc,Monster[Name].MAXHP); --120

    MapNPCAddList(npc)
    
    if Monster[Name].Instance == "PC_Hero" then
        SetPlayerSkillWeapon(npc, 0, Monster[Name].Einhand);
        SetPlayerSkillWeapon(npc, 1, Monster[Name].Zweihand);
        SetPlayerSkillWeapon(npc, 2, Monster[Name].Bogen);
        SetPlayerSkillWeapon(npc, 3, Monster[Name].Armbrust);

        SetPlayerWalk(npc, Monster[Name].Walk);
        SetPlayerAdditionalVisual(npc,Monster[Name].Body,tonumber(Monster[Name].Bodytex),Monster[Name].Head,tonumber(Monster[Name].Headtex));

        if Monster[Name].Armor ~= mysql_null() then
            EquipArmor(npc, Monster[Name].Armor);
        end
    end
        
    if Monster[Name].Weapon ~= mysql_null() then
        EquipMeleeWeapon(npc, Monster[Name].Weapon);
    end

    if Monster[Name].RangedWeapon ~= mysql_null() then
        EquipRangedWeapon(npc, Monster[Name].RangedWeapon);
    end

    npcarr = {};
    npcarr.id = npc;
    if Monster[Name].WeaponMode ~= nil then
        npcarr.WeaponMode = Monster[Name].WeaponMode;
    else
        npcarr.WeaponMode = 0;
    end

    npcarr.dialogs = nil;

    npcarr.daily_routine = DR_Monster_MidEat; -- Ambient bewegungen wie Fressen
    npcarr.update_func = AI_UP_MONSTER;  -- Warnsystem
    npcarr.target_routine = AI_TA_MONSTER; -- Platzhalter

    npcarr.instance = Monster[Name].respawnins;
    npcarr.respawntime = tonumber(Monster[Name].respawn_time);
    npcarr.Guild = Monster[Name].Guild;
        --npcarr.GotEnemyFunc = AI_GOTENEMY_MONSTER_FLEE; --Fluchtfunkion
        
    npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = tonumber(Monster[Name].AttackRange);
    npcarr.aivar["WARNTIME"] = tonumber(Monster[Name].Warntime);
    npcarr.aivar["MinWarnDistance"] = tonumber(Monster[Name].MinWarnDistance);
    npcarr.aivar["WarnDistance"] = tonumber(Monster[Name].WarnDistance);
    npcarr.aivar["MaxWarnDistance"] = tonumber(Monster[Name].MaxWarnDis);

    if Monster[Name].Kampfstil == "Wolf" then
        npcarr.attack_routine = FAI_WOLF_ATTACK;
        npcarr.onhitted = ON_WOLF_HIT;
    elseif Monster[Name].Kampfstil == "SkelettMagier" then
        npcarr.attack_routine = FAI_SKELETMAGE_ATTACK;
        npcarr.onhitted = ON_SKELETMAGE_HIT;
    elseif Monster[Name].Kampfstil == "Schattenläufer" then
        npcarr.attack_routine = FAI_SHADOWBEAST_ATTACK;
        npcarr.onhitted = ON_SHADOWBEAST_HIT;
    elseif Monster[Name].Kampfstil == "Molerat" then
        npcarr.attack_routine = FAI_MOLERAT_ATTACK;
        npcarr.onhitted = ON_MOLERAT_HIT;
    elseif Monster[Name].Kampfstil == "Keiler" then
        npcarr.attack_routine = FAI_KEILER_ATTACK;
        npcarr.onhitted = ON_KEILER_HIT;
    elseif Monster[Name].Kampfstil == "Meister" then
        npcarr.attack_routine = FAI_WOLF_ATTACK;
        npcarr.onhitted = ON_WOLF_HIT;
    elseif Monster[Name].Kampfstil == "Anfaenger" then
        npcarr.attack_routine = FAI_HUMAN_ATTACK_UNEXP;
        npcarr.onhitted = ON_HUMAN_UNEXP_HIT;
    elseif Monster[Name].Kampfstil == "Feldraeuber" then
        npcarr.attack_routine = FAI_HUMAN_ATTACK_MASTER;
        npcarr.onhitted = ON_HUMAN_MASTER_HIT;
    end

    return npcarr;
end

print(debug.getinfo(1).source .. "has been loaded")