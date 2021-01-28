print("Loaded Lib: AIFunctions.lua");

require "scripts/libs/scriptFunctions"
require "scripts/libs/WayPoints"
require "scripts/libs/GetItems"
big_require("./scripts/libs/Handler/", "");
big_require("./scripts/libs/AI/", "");
--[[
require "scripts/libs/Handler/OnPlayerConnect"
require "scripts/libs/Handler/OnPlayerDisconnect"
require "scripts/libs/Handler/OnPlayerHasItem"
require "scripts/libs/Handler/OnPlayerHit"
require "scripts/libs/Handler/OnPlayerKey"
require "scripts/libs/Handler/OnPlayerResponseItem"
require "scripts/libs/AI/AI_DialogList"
require "scripts/libs/AI/AI_Dialogs"
require "scripts/libs/AI/AI_DR_Func"
require "scripts/libs/AI/AI_FAIFunctions"
require "scripts/libs/AI/AI_FullPlayerList"
require "scripts/libs/AI/AI_GuildAttitude"
require "scripts/libs/AI/AI_Names"
require "scripts/libs/AI/AI_State"
require "scripts/libs/AI/AI_Trading"
require "scripts/libs/AI/AI_Update"
]]

--[[COAITimer = coroutine.create(
	function () -- AI_Timer wird in einen eigenen Thread ausgelagert
		SetTimer("AI_Timer",180,1);
	coroutine.yield()
     end) --]]

    

AI_NPCList = {};--List with all NPCs and their AI-Functions!
AI_NPCList_Sort = {};--table.insert(NPCList, id);
AI_PlayerList = {}; -- Only Players!
AI_FullPList = {}; --Players and NPCs, only IDS! AI_FullPList[id] = id;
AI_WayNets = {};
AI_FreePoints = {};
AI_HASITEM_TABLE = {};
AI_FullPlayerPos = {};

AI_TARGET_DISTANCE = 2500;



local gameTime = 0;
local gameTimeCounter = 0;

function AI_Set(_playerid)
    if(AI_NPCList[_playerid] == nil) then
        AI_NPCList[_playerid] = {};
        AI_NPCList[_playerid].ID = _playerid;
        AI_NPCList[_playerid].Func = nil;
        AI_NPCList[_playerid].STATES = {};
        AI_NPCList[_playerid].INACTIVESTATES = {};
        AI_NPCList[_playerid].TALKTABLE=true;
        AI_NPCList[_playerid].INTERRUPTED = false;
        AI_NPCList[_playerid].UpdateFunc = nil;
        AI_NPCList[_playerid].TargetFunc = nil;
        AI_NPCList[_playerid].TARGETS = {};
        AI_NPCList[_playerid].ENEMY= {};
        AI_NPCList[_playerid].AttackFunc = nil;
		AI_NPCList[_playerid].Instance = "Human"; -- Added von Jey
		AI_NPCList[_playerid].RespawnCounter = 0; -- Added von Jey
		AI_NPCList[_playerid].RespawnTime = 1; -- Added von Jey, 1200 * 30 = Endzeit (RespawnTime * Timer)
		AI_NPCList[_playerid].attackWait = 0 -- Determines when the next attack is allowed
		AI_NPCList[_playerid].attackInterruptable = false

        Reset_TA(_playerid);

        AI_NPCList[_playerid].TA_FUNC = nil;
        AI_NPCList[_playerid].Dialogs = {};
        AI_NPCList[_playerid].UPDATETA = true;

        AI_NPCList[_playerid].INDIALOG = false;
        AI_NPCList[_playerid].LASTATTACKED = 0;
        AI_NPCList[_playerid].LASTWP = nil;
        AI_NPCList[_playerid].LASTFP = nil;
        AI_NPCList[_playerid].WeaponMode = 0;


        AI_NPCList[_playerid].DIA_CHOISES = {};
        AI_NPCList[_playerid].DIA_WAITFORCHOISE = false;
        AI_NPCList[_playerid].DIA_CHOISE = 0;
        AI_NPCList[_playerid].DIA_TARGET = 0;
        AI_NPCList[_playerid].DIA_TARGETLIST = {};
        AI_NPCList[_playerid].OnHitFunc = nil;
        AI_NPCList[_playerid].NEXTMOVES = {};

        AI_NPCList[_playerid].Guild = "Mensch";
        AI_NPCList[_playerid].Aivars = {};
        AI_NPCList[_playerid].FRIENDS = {};
        AI_NPCList[_playerid].NpcUpdateStati = 1;
        AI_NPCList[_playerid].NPCTradingInventory = {};

        AI_NPCList[_playerid].GuildAttitude = {};

        AI_NPCList[_playerid].LastState = nil;
        AI_NPCList[_playerid].GotEnemyFunc = nil;
        AI_NPCList[_playerid].TargetChecked = {};

        AI_NPCList[_playerid].LastPosUpdate = 0;

        AI_NPCList[_playerid].StartWP = nil;

        --General Things from GetPlayer.. to make the script faster
        AI_NPCList[_playerid].GP_World = nil;
        AI_NPCList[_playerid].GP_IsDead = false;
        AI_NPCList[_playerid].GP_IsUnconscious = false;
        AI_NPCList[_playerid].GP_PosX = nil;
        AI_NPCList[_playerid].GP_PosY = nil;
        AI_NPCList[_playerid].GP_PosZ = nil;

		AI_NPCList[_playerid].Guardian = nil; -- added by Migos ftw
		AI_NPCList[_playerid].passiveNPC = nil; -- added by Migos ftw


    end
end

function AI_SetPlayer(_playerid)
    AI_PlayerList[_playerid] = {};
    AI_PlayerList[_playerid].ID=_playerid
    AI_PlayerList[_playerid].DIALOGPATNER=nil
    AI_PlayerList[_playerid].TRADINGPARTNER = nil
    AI_PlayerList[_playerid].Invisible = false
    AI_PlayerList[_playerid].Guild = "Mensch";
    AI_PlayerList[_playerid].INDIALOG = false;
    AI_PlayerList[_playerid].KnowsDialog = {};
end

function AI_SetAivar(_playerid)
    if(AI_NPCList[_playerid].Aivars["TARGETS"] == nil)then
        AI_NPCList[_playerid].Aivars["TARGETS"] = {};
    end

    if(AI_NPCList[_playerid].Aivars["WARN"] == nil)then
        AI_NPCList[_playerid].Aivars["WARN"] = 0;
    end

    if(AI_NPCList[_playerid].Aivars["WARNTIME"] == nil)then
        AI_NPCList[_playerid].Aivars["WARNTIME"] = 6000; -- 10000
    end

    if(AI_NPCList[_playerid].Aivars["MaxWarnDistance"] == nil)then
        AI_NPCList[_playerid].Aivars["MaxWarnDistance"] = 1300;
    end

    if(AI_NPCList[_playerid].Aivars["WarnDistance"] == nil)then
        AI_NPCList[_playerid].Aivars["WarnDistance"] = 1000;
    end

    if(AI_NPCList[_playerid].Aivars["MinWarnDistance"] == nil)then
        AI_NPCList[_playerid].Aivars["MinWarnDistance"] = 500;
    end



    if(AI_NPCList[_playerid].Aivars["TARGETDISTANCE"] == nil)then
        AI_NPCList[_playerid].Aivars["TARGETDISTANCE"] = 2000;
    end

    if(AI_NPCList[_playerid].Aivars["Flee"] == nil)then
        AI_NPCList[_playerid].Aivars["Flee"] = false;
    end

    AI_NPCList[_playerid].Aivars["FleeStartWP"] = nil;

    AI_NPCList[_playerid].Aivars["FleeEndWP"] = nil;

    AI_NPCList[_playerid].Aivars["FleeRoute"] = nil;
end

function ENEMY_DISCONNECTED(_playerid)
    if(IsNPC(AI_NPCList[_playerid]["ENEMY"][1]) == 0 and IsPlayerConnected(AI_NPCList[_playerid]["ENEMY"][1]) == 0)then
        --print("NPC ".._playerid..": Enemy "..AI_NPCList[_playerid]["ENEMY"][1].." is disconncted!");
        table.remove(AI_NPCList[_playerid]["ENEMY"], 1);

        if(next(AI_NPCList[_playerid]["ENEMY"]) ~= nil)then
            ENEMY_DISCONNECTED(_playerid);
        end
    end
end



function InitAiSystem()
	--CreateAI_WayNets();
	DBCreateAI_Waynets();
    SetDefaultGuildAttitude();
	--coroutine.resume(CO_Respawn_Timer)
    SetTimer("Respawn_Timer",RespawnTimerTick,1) -- Added von Jey

	--coroutine.resume(COAITimer)
    SetTimer("AI_Timer",50,1);
end

function GetGameTime()
    return GetTickCount();
end

function TA_FUNC(_playerid, _hour, _minute, _hour2, _minute2)
    if(AI_NPCList[_playerid]["INDIALOG"])then
        return false;
    end
    local hour,minute = GetTime();

    local hour3 = nil;
    if(_hour2 < _hour)then
        hour3 = _hour2+24;
    end

    if((hour >= _hour and hour <= _hour2) or ( hour3~=nil and hour+24 >= _hour and hour <= _hour2)or ( hour3~=nil and hour >= _hour and hour <= hour3))then
        if(hour == _hour and minute <_minute)then--Minute has to be bigger!
            return false;
        end
        if(hour == _hour2 and minute >=_minute2)then--Minute has to be lower!
            return false;
        end
        if(AI_NPCList[_playerid]["TAHOUR"] == -10 or
                ((AI_NPCList[_playerid]["TAHOUR"] ~= _hour or AI_NPCList[_playerid]["TAMINUTE"] ~= _minute) or (AI_NPCList[_playerid]["TAHOUR_END"] ~= _hour2 or AI_NPCList[_playerid]["TAMINUTE_END"] ~= _minute2)) or
                (_hour == 0 and _minute == 0 and _hour2 == 24 and _minute2 == 0 and AI_NPCList[_playerid]["TA_Last_Hour"] == 23 and hour == 0) )then
            AI_NPCList[_playerid]["TAHOUR"] = _hour;
            AI_NPCList[_playerid]["TAMINUTE"] = _minute;
            AI_NPCList[_playerid]["TAHOUR_END"] = _hour2;
            AI_NPCList[_playerid]["TAMINUTE_END"] = _minute2;
            AI_NPCList[_playerid]["TA_Last_Hour"] = hour;
            AI_NPCList[_playerid]["TA_Last_Minute"] = minute;
            return true;
        else
            AI_NPCList[_playerid]["TA_Last_Hour"] = hour;
            AI_NPCList[_playerid]["TA_Last_Minute"] = minute;
        end
    end
    return false;
end

function Reset_TA(_player)
    AI_NPCList[_player]["TAHOUR"] = -10;
    AI_NPCList[_player]["TAMINUTE"]= -10;
    AI_NPCList[_player]["TAHOUR_END"] = -10;
    AI_NPCList[_player]["TAMINUTE_END"]= -10;
    AI_NPCList[_player]["TA_Last_Hour"] = -10;
    AI_NPCList[_player]["TA_Last_Minute"] = -10;
end


function CreateAI_WayNets()
	--AI_WayNets["NEWWORLD\\MINENKOLONIE1.ZEN"] = WayNet.create();
	--AI_WayNets["NEWWORLD\\MINENKOLONIE1.ZEN"]:load("scripts/wps/colony.wp");
    --AI_WayNets["NEWWORLD\\CLASSICKHORINIS.ZEN"]:load("scripts/wps/newworld.wp");
    --AI_WayNets["NEWWORLD\\CLASSICKHORINIS.ZEN"] = WayNet.create();
    --AI_WayNets["NEWWORLD\\NEWWORLD.ZEN"] = WayNet.create();
    --AI_WayNets["NEWWORLD\\NEWWORLD.ZEN"]:load("scripts/wps/newworld.wp");
    --AI_WayNets["OLDWORLD\\OLDWORLD.ZEN"] = WayNet.create();
    --AI_WayNets["OLDWORLD\\OLDWORLD.ZEN"]:load("scripts/wps/oldworld.wp");
    --AI_WayNets["ADDON\\ADDONWORLD.ZEN"] = WayNet.create();
    --AI_WayNets["ADDON\\ADDONWORLD.ZEN"]:load("scripts/wps/addonworld.wp");
	--AI_WayNets["ADDON\\CK_JHARKENDAR.ZEN"] = WayNet.create();
    --AI_WayNets["ADDON\\CK_JHARKENDAR.ZEN"]:load("scripts/wps/addonworld.wp");
	--AI_WayNets["NEWWORLD\\CLASSICSTRAFKOLONIE.ZEN"] = WayNet.create();
    --AI_WayNets["NEWWORLD\\CLASSICSTRAFKOLONIE.ZEN"]:load("scripts/wps/oldworld.wp");

	--AI_FreePoints["NEWWORLD\\MINENKOLONIE1.ZEN"] = FreePointList.create( );
   -- AI_FreePoints["NEWWORLD\\MINENKOLONIE1.ZEN"]:load("scripts/wps/colony.fp");
    --AI_FreePoints["NEWWORLD\\CLASSICKHORINIS.ZEN"] = FreePointList.create( );
    --AI_FreePoints["NEWWORLD\\CLASSICKHORINIS.ZEN"]:load("scripts/wps/newworld.fp");
    --AI_FreePoints["NEWWORLD\\NEWWORLD.ZEN"] = FreePointList.create( );
    --AI_FreePoints["NEWWORLD\\NEWWORLD.ZEN"]:load("scripts/wps/newworld.fp");
    --AI_FreePoints["OLDWORLD\\OLDWORLD.ZEN"] = FreePointList.create( );
    --AI_FreePoints["OLDWORLD\\OLDWORLD.ZEN"]:load("scripts/wps/oldworld.fp");
    --AI_FreePoints["ADDON\\ADDONWORLD.ZEN"] = FreePointList.create( );
    --AI_FreePoints["ADDON\\ADDONWORLD.ZEN"]:load("scripts/wps/addonworld.fp");
    --AI_FreePoints["NEWWORLD\\CLASSICSTRAFKOLONIE.ZEN"] = FreePointList.create();
    --AI_FreePoints["NEWWORLD\\CLASSICSTRAFKOLONIE.ZEN"]:load("scripts/wps/oldworld.fp");
    --AI_FreePoints["ADDON\\CK_JHARKENDAR.ZEN"] = FreePointList.create( );
    --AI_FreePoints["ADDON\\CK_JHARKENDAR.ZEN"]:load("scripts/wps/addonworld.fp");
end

function GetAIWayNet(world)
    return AI_WayNets[string.upper(trim(world))];
end

function GetNearFreepoint(_playerid, waypoint, freepoint)
    local wp = AI_WayNets[AI_NPCList[_playerid].GP_World]:GetWaypoint(waypoint);
    local fp = AI_FreePoints[AI_NPCList[_playerid].GP_World]:GetNearFreePoints(wp.x, wp.y, wp.z, freepoint, 2000);

    if(fp == nil or #fp == 0)then
        return "";
    end
    return fp[1].name;
end

function GetNextNearFreepoint(_playerid, waypoint, freepoint)
    local wp = AI_WayNets[AI_NPCList[_playerid].GP_World]:GetWaypoint(waypoint);
    if(wp == nil)then
         wp = AI_FreePoints[AI_NPCList[_playerid].GP_World]:GetFreePoint(waypoint);
    end
    local fp = AI_FreePoints[AI_NPCList[_playerid].GP_World]:GetNearFreePoints(wp.x, wp.y, wp.z, freepoint, 2000);

    if(fp == nil or #fp == 0)then
        return nil;
    end
    if(#fp == 1 or AI_NPCList[_playerid].LASTFP == nil)then
        return fp[1].name;
    end


    local x = math.random(1, #fp-1);
    local none = 1;
    for key,value in ipairs(fp)do
        if(string.upper(trim(value.name)) == string.upper(trim(AI_NPCList[_playerid].LASTFP)))then
            none = key;
            break;
        end
    end

    if(x >= none)then
        x = x+1;
    end


    return fp[x].name;
end

-- AI_NPCList[_npc.id] = ainpc
AI_RespawnWorlds = {};

function SpawnNPC(_npc, _waypoint, _world)

	--Wird nur beim  bei übertragungen von TXT Spawns aktiviert. -Kelevra
	--if NPCConverter == true then
		
		--print("To String:",type(_npc.func))
		--local NPCinDB = mysql_query(mysql_handler, "INSERT INTO `NPCSpawn`(`Instance`,`Waypoint`,`World`)VALUES('".. _npc.func .."','".. _waypoint .."','".. _world .."')") 
	--end

    if(_npc.id == -1)then
        print("NPC wasn't valid! -1");
        return;
    end
    AI_Set(_npc.id);
    AI_NPCList[_npc.id].DailyRoutine = _npc.daily_routine;
    AI_NPCList[_npc.id].AttackFunc = _npc.attack_routine;

   -- AI_NPCList[_npc.id].Func = _npc.func;

    if(_npc.WeaponMode ~= nil)then
        AI_NPCList[_npc.id].WeaponMode = _npc.WeaponMode;
    end

    if(_npc.dialogs ~= nil)then
        AI_NPCList[_npc.id].Dialogs = _npc.dialogs;
    end

    if(_npc.update_func ~= nil)then
        AI_NPCList[_npc.id].UpdateFunc = _npc.update_func;
    end

    if(_npc.target_routine ~= nil)then
        AI_NPCList[_npc.id].TargetFunc = _npc.target_routine;
    end

    if(_npc.onhitted ~= nil)then
        AI_NPCList[_npc.id].OnHitFunc = _npc.onhitted;
    end

    if(_npc.Guild ~= nil)then
        AI_NPCList[_npc.id].Guild = _npc.Guild;
    end
    ResetGuildAttitude(AI_NPCList[_npc.id]);

    if(_npc.GotEnemyFunc ~= nil)then
        AI_NPCList[_npc.id].GotEnemyFunc = _npc.GotEnemyFunc;
    end

    if(_npc.aivar ~= nil)then
        AI_NPCList[_npc.id].Aivars = _npc.aivar;
    end

    if(_npc.instance ~= nil)then -- Added von Jey
        AI_NPCList[_npc.id].Instance = _npc.instance;
	end

	if(_npc.respawntime ~= nil)then -- Added von Jey
        AI_NPCList[_npc.id].RespawnTime = _npc.respawntime;
	--elseif (_npc.respawntime == nil) then -- Added by Fye, respawntime soll auf 24 Tage gesetzt werden bei Monstern ohne Angabe
		--AI_NPCList[_npc.id].RespawnTime = 2147483;
		-- _npc.respawntime = 2147483;
    end

    AI_SetAivar(_npc.id);

    if(_npc.tradingInventory ~=nil)then
        AI_NPCList[_npc.id].NPCTradingInventory = _npc.tradingInventory;
    end

	if(_npc.guardian ~=nil)then -- added by Migos ftw
        AI_NPCList[_npc.id].Guardian = _npc.guardian;
	else
		AI_NPCList[_npc.id].Guardian = nil;
    end

	if(_npc.passiveNPC ~=nil)then -- added by Migos ftw
        AI_NPCList[_npc.id].passiveNPC = _npc.passiveNPC;
	else
		AI_NPCList[_npc.id].passiveNPC = nil;
    end

    SpawnPlayer(_npc.id, 0, 0, 0, 0);
	
	local world = nil
    if(_world == nil)then
        world = string.upper(trim(GetPlayerWorld(_npc.id)));
    else
    	world = string.upper(trim(_world));
    end

	AI_RespawnWorlds[_npc.id] = world;

    if(world ~= nil and _waypoint ~= nil)then
        if(_world ~= nil)then
            SetPlayerWorld(_npc.id,world,_waypoint);
        end

		local wp = AI_WayNets[world]:GetWaypoint(_waypoint);
		
		if(wp == nil)then
            local fp = AI_FreePoints[world]:GetFreePoint(_waypoint);
            if(fp == nil)then
                print("The waypoint couldn't be found! Actual World:"..world.." searched waypoint: ".._waypoint.." NPCID:".._npc.id);
            else
                SetPlayerPos(_npc.id, tonumber(fp.x), tonumber(fp.y), tonumber(fp.z));
                AI_NPCList[_npc.id].LASTWP = _waypoint;
                AI_NPCList[_npc.id].StartWP = _waypoint;
            end
        else
            SetPlayerPos(_npc.id, tonumber(wp.x), tonumber(wp.y), tonumber(wp.z));
            AI_NPCList[_npc.id].LASTWP = _waypoint;
            AI_NPCList[_npc.id].StartWP = _waypoint;
        end

    elseif(_world ~= nil)then
        SetPlayerWorld(_npc.id,_world,"START");
    end

    AddPlayerOrNPC(AI_NPCList[_npc.id]);

	local x,y,z = GetPlayerPos(_npc.id); -- Alle 4 Zeilen added von Jey
    AI_NPCList[_npc.id].spawnx=x;
    AI_NPCList[_npc.id].spawny=y;
    AI_NPCList[_npc.id].spawnz=z;

    table.insert(AI_NPCList_Sort, _npc.id);
end

--[[
function PlayerSpawnNPC(_npc, _player)
    if(_npc.id == -1)then
        print("NPC wasn't valid! -1");
        return;
	end
	if _player == nil then
		print("Player can't be nil!");
        return;
	end
    AI_Set(_npc.id);
    AI_NPCList[_npc.id].DailyRoutine = _npc.daily_routine;
    AI_NPCList[_npc.id].AttackFunc = _npc.attack_routine;

    --AI_NPCList[_npc.id].Func = _npc.func;

    if(_npc.WeaponMode ~= nil)then
        AI_NPCList[_npc.id].WeaponMode = _npc.WeaponMode;
    end

    if(_npc.dialogs ~= nil)then
        AI_NPCList[_npc.id].Dialogs = _npc.dialogs;
    end

    if(_npc.update_func ~= nil)then
        AI_NPCList[_npc.id].UpdateFunc = _npc.update_func;
    end

    if(_npc.target_routine ~= nil)then
        AI_NPCList[_npc.id].TargetFunc = _npc.target_routine;
    end

    if(_npc.onhitted ~= nil)then
        AI_NPCList[_npc.id].OnHitFunc = _npc.onhitted;
    end

    if(_npc.Guild ~= nil)then
        AI_NPCList[_npc.id].Guild = _npc.Guild;
    end
    ResetGuildAttitude(AI_NPCList[_npc.id]);

    if(_npc.GotEnemyFunc ~= nil)then
        AI_NPCList[_npc.id].GotEnemyFunc = _npc.GotEnemyFunc;
    end

    if(_npc.aivar ~= nil)then
        AI_NPCList[_npc.id].Aivars = _npc.aivar;
    end

    if(_npc.instance ~= nil)then -- Added von Jey
        AI_NPCList[_npc.id].Instance = _npc.instance;
	end

	if(_npc.respawntime ~= nil)then -- Added von Jey
        AI_NPCList[_npc.id].RespawnTime = _npc.respawntime;
	--elseif (_npc.respawntime == nil) then -- Added by Fye, respawntime soll auf 24 Tage gesetzt werden bei Monstern ohne Angabe
		--AI_NPCList[_npc.id].RespawnTime = 2147483;
		-- _npc.respawntime = 2147483;
    end

    AI_SetAivar(_npc.id);

    if(_npc.tradingInventory ~=nil)then
        AI_NPCList[_npc.id].NPCTradingInventory = _npc.tradingInventory;
    end

	if(_npc.guardian ~=nil)then 
        AI_NPCList[_npc.id].Guardian = _npc.guardian;
	else
		AI_NPCList[_npc.id].Guardian = nil;
    end

	if(_npc.passiveNPC ~=nil)then 
        AI_NPCList[_npc.id].passiveNPC = _npc.passiveNPC;
	else
		AI_NPCList[_npc.id].passiveNPC = nil;
    end

    SpawnPlayer(_npc.id);

	local world = GetPlayerWorld(_player)
	local wp = nil
	if world ~= nil and world ~= "NO WORLD" then
		wp = AI_WayNets[world]:GetNearestWP(_player).name
	end

	if world ~= nil and wp ~= nil then
		SetPlayerWorld(_npc.id, world, wp)
		AI_NPCList[_npc.id].LASTWP = wp;
        AI_NPCList[_npc.id].StartWP = wp;

		local x, y, z = GetPlayerPos(_player)
		local angle = GetPlayerAngle(_player)
		if x ~= nil and y ~= nil and z ~= nil and angle ~= nil then
			SetPlayerPos(_npc.id, x + 50, y, z + 50)
			SetPlayerAngle(_npc.id, angle)
		else
			SendPlayerMessage(_player,255,250,200,"(Server): Konnte Tier nicht spawnen, da deine Position und Ausrichtung fehlerhaft war.")
			print("Fehlerhafter Spieler Tier spawn mit id: ".._npc.id)
		end
	else
		SendPlayerMessage(_player,255,250,200,"(Server): Konnte Tier nicht spawnen, da Welt oder Waypoint nicht gefunden werden konnte.")
		print("Fehlerhafter Spieler Tier spawn mit id: ".._npc.id)
	end

    AddPlayerOrNPC(AI_NPCList[_npc.id]);

	local x,y,z = GetPlayerPos(_npc.id); -- Alle 4 Zeilen added von Jey
    AI_NPCList[_npc.id].spawnx=x;
    AI_NPCList[_npc.id].spawny=y;
    AI_NPCList[_npc.id].spawnz=z;

    table.insert(AI_NPCList_Sort, _npc.id);
end]]

function SetEnemy(_playerid, _enemyid)
	--if _enemyid == nil or (IsNPC(_enemyid) == 0 and not (AI_PlayerList[_enemyid]) and AI_PlayerList[_enemyid].Invisible) then
	--	return;
	--end
	if AI_PlayerList[_enemyid] == nil then
		return
	end

	if IsNPC(_enemyid) == 0 and AI_PlayerList[_enemyid].Invisible then
		return
	end
	
    for key, val in ipairs(AI_NPCList[_playerid]["ENEMY"]) do
        if(val == _enemyid)then
            return;
        end
    end

    if(AI_NPCList[_enemyid] ~= nil and AI_NPCList[_enemyid].GotEnemyFunc ~= nil)then
        AI_NPCList[_enemyid].GotEnemyFunc(_enemyid, _playerid);
    end

    table.insert(AI_NPCList[_playerid]["ENEMY"], _enemyid);
end

function GetPlayerAI(_playerid)
    return AI_NPCList[_playerid];
end

function GetWayNets(_playerid)
    return AI_WayNets;
end

function GetNPCwithFunc(_func)
    local npcList = {};

    for key, val in pairs(AI_NPCList) do
        if(val.Func == _func)then
            table.insert(npcList, val);
        end
    end

    return npcList;
end

function GetNPCwithGuild(_guild)
    local npcList = {};

    for key, val in pairs(AI_NPCList) do
        if(val.Guild == _guild)then
            table.insert(npcList, val);
        end
    end

    return npcList;
end

--[[CO_Respawn_Timer = coroutine.create(
	function Respawn_Timer() 

	coroutine.yield()
	 end)
	 
function Respawn_Timer() -- Function von Jey
	for key,val in pairs(GetFullPlayerList()) do
		if(val.GP_IsNPC == 1)then
			if val.GP_IsDead == 1 then
				if val.RespawnCounter <= val.RespawnTime then
					val.RespawnCounter = val.RespawnCounter + 1;
				else
					local randomspawn = math.random(0, 1) -- generiert einen Wert von 0 oder 1
					if randomspawn ~= 0 then -- Wenn wert ungleich 0, f�hre alles weitere aus
						local bot_id = val.ID
						local startwp = val.StartWP
						local world = "NEWWORLD\\CLASSICKHORINIS.ZEN"
						local world2 = "NEWWORLD\\MINENKOLONIE1.ZEN"
						local world3 = "ADDON\\CK_JHARKENDAR.ZEN"
						local Instance = val.Instance
						for sortkey,sortval in ipairs(AI_NPCList_Sort) do
							if sortval == val.ID then
								table.remove(AI_NPCList_Sort, sortkey);
							end
						end
						world = AI_RespawnWorlds[val.ID];
						world2 = AI_RespawnWorlds[val.ID];
						world3 = AI_RespawnWorlds[val.ID];
						AI_RespawnWorlds[val.ID] = nil;
						
						DestroyNPC(val.ID)
						if Instance == "Human" then
							print("Spawned Monster Respawn Aufruf, Human Instanz");
--------------------------------------------------CK Gothic 2 Monster--------------------------------------------------
						elseif Instance == "Blutfliege" then
							SpawnNPC(Bloodfly(), startwp, world);
						elseif Instance == "Junge_Blutfliege" then
							SpawnNPC(YoungBloodfly(), startwp, world);
						elseif Instance == "Bluthund" then
							SpawnNPC(Bloodhound(), startwp, world);
						elseif Instance == "Demon" then
							SpawnNPC(Demon(), startwp, world);
						elseif Instance == "Daemonenlord" then
							SpawnNPC(Demonlord(), startwp, world);
						elseif Instance == "Echsenmensch" then
							SpawnNPC(Echsenmensch(), startwp, world);
						elseif Instance == "Feldraeuber" then
							SpawnNPC(Giant_Bug(), startwp, world);
						elseif Instance == "Junger_Feldraeuber" then
							SpawnNPC(YoungGiant_Bug(), startwp, world);
						elseif Instance == "Riesenratte" then
							SpawnNPC(GiantRat(), startwp, world);
						elseif Instance == "Junge_Riesenratte" then
							SpawnNPC(YoungGiantRat(), startwp, world);
						elseif Instance == "Schwarzer_Goblin" then
							SpawnNPC(Gobbo_Black(), startwp, world);
						elseif Instance == "Goblin" then
							SpawnNPC(Gobbo_Green(), startwp, world);
						elseif Instance == "Junger_Goblin" then
							SpawnNPC(YoungGobbo_Green(), startwp, world);
						elseif Instance == "Goblin_Skelett" then
							SpawnNPC(Gobbo_Skeleton(), startwp, world);
						elseif Instance == "Goblinkrieger" then
							SpawnNPC(Gobbo_Warrior(), startwp, world);
						elseif Instance == "Goblinanfuehrer" then
							SpawnNPC(Gobbo_Warrior_Visir(), startwp, world);
						elseif Instance == "Steingolem" then
							SpawnNPC(StoneGolem(), startwp, world);
						elseif Instance == "Feuergolem" then
							SpawnNPC(FireGolem(), startwp, world);
						elseif Instance == "Eisgolem" then
							SpawnNPC(IceGolem(), startwp, world);
						elseif Instance == "Sumpfgolem" then
							SpawnNPC(SwampGolem(), startwp, world);
						elseif Instance == "Harpie" then
							SpawnNPC(Harpie(), startwp, world);
						elseif Instance == "Keiler" then
							SpawnNPC(Keiler(), startwp, world);
						elseif Instance == "Wildsau" then
							SpawnNPC(Wildsau(), startwp, world);
						elseif Instance == "Lurker" then
							SpawnNPC(Lurker(), startwp, world);
						elseif Instance == "Fleischwanze" then
							SpawnNPC(Meatbug(), startwp, world);
						elseif Instance == "Minecrawler" then
							SpawnNPC(Minecrawler(), startwp, world);
						elseif Instance == "Z�her_Minecrawler" then
							SpawnNPC(Tough_Minecrawler(), startwp, world);
						elseif Instance == "Minecrawler_Krieger" then
							SpawnNPC(MinecrawlerWarrior(), startwp, world);
						elseif Instance == "Molerat" then
							SpawnNPC(Molerat(), startwp, world);
						elseif Instance == "Junger_Molerat" then
							SpawnNPC(YoungMolerat(), startwp, world);
						elseif Instance == "Orkschuetze" then
							SpawnNPC(Orkschuetze(), startwp, world);
						elseif Instance == "Orkbeisser" then
							SpawnNPC(OrcBiter(), startwp, world);
						elseif Instance == "Orkhund" then
							SpawnNPC(OrcDog(), startwp, world);
						elseif Instance == "Eliteork" then
							SpawnNPC(OrcElite(), startwp, world);
						elseif Instance == "Orkoberst" then
							SpawnNPC(OrkOberst(), startwp, world);
						elseif Instance == "Orkspaeher" then
							SpawnNPC(OrcScout(), startwp, world);
						elseif Instance == "Orkschamane" then
							SpawnNPC(OrcShaman(), startwp, world);
						elseif Instance == "OrkschamaneMagie" then
							SpawnNPC(OrcShamanMagie(), startwp, world);
						elseif Instance == "Leichter_Orkkrieger" then
							SpawnNPC(OrcWarriorLight(), startwp, world);
						elseif Instance == "Orkkrieger" then
							SpawnNPC(OrcWarrior(), startwp, world);
						elseif Instance == "Orkkrieger1" then
							SpawnNPC(OrcWarrior1(), startwp, world);
						elseif Instance == "Orkkrieger2" then
							SpawnNPC(OrcWarrior2(), startwp, world);
						elseif Instance == "Orkkrieger3" then
							SpawnNPC(OrcWarrior3(), startwp, world);
						elseif Instance == "Orkkrieger4" then
							SpawnNPC(OrcWarrior4(), startwp, world);							
						elseif Instance == "Schwerer_Orkkrieger" then
							SpawnNPC(OrcWarriorHeavy(), startwp, world);
						elseif Instance == "Scavenger" then
							SpawnNPC(Scavenger(), startwp, world);
						elseif Instance == "Junger_Scavenger" then
							SpawnNPC(YoungScavenger(), startwp, world);
						elseif Instance == "Graslandscavenger" then
							SpawnNPC(ScavengerDemon(), startwp, world);
						elseif Instance == "Schattenlaeufer" then
							SpawnNPC(Shadowbeast(), startwp, world);
						elseif Instance == "Junger_Schattenlaeufer" then
							SpawnNPC(YoungShadowbeast(), startwp, world);
						elseif Instance == "Schaf" then
							SpawnNPC(Sheep(), startwp, world);
						elseif Instance == "Hammel" then
							SpawnNPC(Hammel(), startwp, world);
						elseif Instance == "Kuh" then
							SpawnNPC(Kuh(), startwp, world);
						elseif Instance == "Skelett" then
							SpawnNPC(Skeleton(), startwp, world);
						elseif Instance == "Schwaches_Skelett" then
							SpawnNPC(SkeletonScout(), startwp, world);
						elseif Instance == "Skelett-Lord" then
							SpawnNPC(SkeletonLord(), startwp, world);
						elseif Instance == "Skelett_Magier" then
							SpawnNPC(SkeletonMage(), startwp, world);
						elseif Instance == "Snapper" then
							SpawnNPC(Snapper(), startwp, world);
						elseif Instance == "Bergsnapper" then
							SpawnNPC(Bergsnapper(), startwp, world);
						elseif Instance == "Drachensnapper" then
							SpawnNPC(Dragonsnapper(), startwp, world);
						elseif Instance == "Troll" then
							SpawnNPC(Troll(), startwp, world);
						elseif Instance == "Schwarzer_Troll" then
							SpawnNPC(Troll_Black(), startwp, world);
						elseif Instance == "Waran" then
							SpawnNPC(Waran(), startwp, world);
						elseif Instance == "Feuerwaran" then
							SpawnNPC(Firewaran(), startwp, world);
						elseif Instance == "Warg" then
							SpawnNPC(Warg(), startwp, world);
						elseif Instance == "Irrlicht" then
							SpawnNPC(Wisp(), startwp, world);
						elseif Instance == "Wolf" then
							SpawnNPC(Wolf(), startwp, world);
						elseif Instance == "Junger_Wolf" then
							SpawnNPC(YoungWolf(), startwp, world);
						elseif Instance == "Schwarzer Wolf" then
							SpawnNPC(SchwarzerWolf(), startwp, world);
						elseif Instance == "Zombie" then
							SpawnNPC(Zombie(), startwp, world);
						elseif Instance == "Zombie1" then
							SpawnNPC(Zombie1(), startwp, world);
						elseif Instance == "Zombie2" then
							SpawnNPC(Zombie2(), startwp, world);
						elseif Instance == "Zombie3" then
							SpawnNPC(Zombie3(), startwp, world);
						elseif Instance == "Zombie4" then
							SpawnNPC(Zombie4(), startwp, world);
						elseif Instance == "SkeletonWeak" then
							SpawnNPC(SkeletonWeak(),startwp,world);	
						elseif Instance == "ZombieWeak" then
							SpawnNPC(ZombieWeak(),startwp,world);								
			---------------------------------CK Kolonie Monster-----------------------------
						elseif Instance == "OW_Blutfliege" then
							SpawnNPC(OW_Bloodfly(), startwp, world2);
						elseif Instance == "OW_Junge_Blutfliege" then
							SpawnNPC(OW_YoungBloodfly(), startwp, world2);
						elseif Instance == "OW_Bluthund" then
							SpawnNPC(OW_Bloodhound(), startwp, world2);
						elseif Instance == "OW_Demon" then
							SpawnNPC(OW_Demon(), startwp, world2);
						elseif Instance == "OW_Daemonenlord" then
							SpawnNPC(OW_Demonlord(), startwp, world2);
						elseif Instance == "OW_Echsenmensch" then
							SpawnNPC(OW_Echsenmensch(), startwp, world2);
						elseif Instance == "Eisechse" then
							SpawnNPC(Eisechse(), startwp, world2);
						elseif Instance == "OW_Feldraeuber" then
							SpawnNPC(OW_Giant_Bug(), startwp, world2);
						elseif Instance == "OW_Riesenratte" then
							SpawnNPC(OW_GiantRat(), startwp, world2);
						elseif Instance == "OW_Schwarzer_Goblin" then
							SpawnNPC(OW_Gobbo_Black(), startwp, world2);
						elseif Instance == "OW_Goblin" then
							SpawnNPC(OW_Gobbo_Green(), startwp, world2);
						elseif Instance == "OW_Goblin_Skelett" then
							SpawnNPC(OW_Gobbo_Skeleton(), startwp, world2);
						elseif Instance == "OW_Goblinkrieger" then
							SpawnNPC(OW_Gobbo_Warrior(), startwp, world2);
						elseif Instance == "OW_Goblinanfuehrer" then
							SpawnNPC(OW_Gobbo_Warrior_Visir(), startwp, world2);
						elseif Instance == "OW_Steingolem" then
							SpawnNPC(OW_StoneGolem(), startwp, world2);
						elseif Instance == "OW_Feuergolem" then
							SpawnNPC(OW_FireGolem(), startwp, world2);
						elseif Instance == "OW_Eisgolem" then
							SpawnNPC(OW_IceGolem(), startwp, world2);
						elseif Instance == "OW_Sumpfgolem" then
							SpawnNPC(OW_SwampGolem(), startwp, world2);
						elseif Instance == "OW_Harpie" then
							SpawnNPC(OW_Harpie(), startwp, world2);
						elseif Instance == "OW_Keiler" then
							SpawnNPC(OW_Keiler(), startwp, world2);
						elseif Instance == "OW_Lurker" then
							SpawnNPC(OW_Lurker(), startwp, world2);
						elseif Instance == "OW_Fleischwanze" then
							SpawnNPC(OW_Meatbug(), startwp, world2);
						elseif Instance == "OW_Minecrawler" then
							SpawnNPC(OW_Minecrawler(), startwp, world2);
						elseif Instance == "OW_Minecrawler_Krieger" then
							SpawnNPC(OW_MinecrawlerWarrior(), startwp, world2);
						elseif Instance == "OW_Minecrawler_KriegerElite" then
							SpawnNPC(OW_MinecrawlerWarriorElite(), startwp, world2);
						elseif Instance == "OW_Z�her_Minecrawler" then
							SpawnNPC(OW_Tough_Minecrawler(), startwp, world2);
						elseif Instance == "OW_Molerat" then
							SpawnNPC(OW_Molerat(), startwp, world2);
						elseif Instance == "OW_Junger_Molerat" then
							SpawnNPC(OW_YoungMolerat(), startwp, world2);
						elseif Instance == "OW_Orkschuetze" then
							SpawnNPC(OW_Orkschuetze(), startwp, world2);
						elseif Instance == "OW_Orkbeisser" then
							SpawnNPC(OW_OrcBiter(), startwp, world2);
						elseif Instance == "OW_Orkhund" then
							SpawnNPC(OW_OrcDog(), startwp, world2);
						elseif Instance == "OW_Eliteork" then
							SpawnNPC(OW_OrcElite(), startwp, world2);
						elseif Instance == "Orc_General" then
							SpawnNPC(OrcGeneral(), startwp, world2);
						elseif Instance == "NW_Mine_OrcElite" then
							SpawnNPC(OrcNWMineElite(), startwp, world2);
						elseif Instance == "OW_Orkoberst" then
							SpawnNPC(OW_OrkOberst(), startwp, world2);
						elseif Instance == "OW_Orkspaeher" then
							SpawnNPC(OW_OrcScout(), startwp, world2);
						elseif Instance == "OW_Orkschamane" then
							SpawnNPC(OW_OrcShaman(), startwp, world2);
						elseif Instance == "OW_Leichter_Orkkrieger" then
							SpawnNPC(OW_OrcWarriorLight(), startwp, world2);
						elseif Instance == "OW_Orkkrieger" then
							SpawnNPC(OW_OrcWarrior(), startwp, world2);
						elseif Instance == "OW_Schwerer_Orkkrieger" then
							SpawnNPC(OW_OrcWarriorHeavy(), startwp, world2);
						elseif Instance == "NW_Mine_OrcWarrior" then
							SpawnNPC(OrcNWMineWarrior(), startwp, world2);
						elseif Instance == "OW_Razor" then
							SpawnNPC(OW_Razor(), startwp, world2);
						elseif Instance == "OW_Scavenger" then
							SpawnNPC(OW_Scavenger(), startwp, world2);
						elseif Instance == "OW_Junger_Scavenger" then
							SpawnNPC(OW_YoungScavenger(), startwp, world2);
						elseif Instance == "OW_Graslandscavenger" then
							SpawnNPC(OW_ScavengerDemon(), startwp, world2);
						elseif Instance == "OW_Schattenlaeufer" then
							SpawnNPC(OW_Shadowbeast(), startwp, world2);
						elseif Instance == "OW_Junger_Schattenlaeufer" then
							SpawnNPC(OW_YoungShadowbeast(), startwp, world2);
						elseif Instance == "OW_SkelettNeu" then
							SpawnNPC(OW_SkeletonNeu(), startwp, world2);
						elseif Instance == "OW_Skelett_Lord" then
							SpawnNPC(OW_SkeletonLord(), startwp, world2);
						elseif Instance == "OW_SkeletonSH" then --?
							SpawnNPC(SkeletonSH(), startwp, world2); --?
						elseif Instance == "OW_Schwaches_Skelett" then
							SpawnNPC(OW_SkeletonScout(), startwp, world2);
						elseif Instance == "OW_Skelett" then --?
							SpawnNPC(Skeleton(), startwp, world2); --?
						elseif Instance == "OW_Skelett_Magier" then
							SpawnNPC(OW_SkeletonMage(), startwp, world2);
						elseif Instance == "OW_Snapper" then
							SpawnNPC(OW_Snapper(), startwp, world2);
						elseif Instance == "OW_Bergsnapper" then
							SpawnNPC(OW_Bergsnapper(), startwp, world2);
						elseif Instance == "OW_Drachensnapper" then
							SpawnNPC(OW_Dragonsnapper(), startwp, world2);
						elseif Instance == "Steinechse" then
							SpawnNPC(Steinechse(), startwp, world2);
						elseif Instance == "Sumpfechse" then
							SpawnNPC(Sumpfechse(), startwp, world2);
						elseif Instance == "OW_SwampDrone" then
							SpawnNPC(OW_SwampDrone(), startwp, world2);
						elseif Instance == "OW_Swamprat" then
							SpawnNPC(OW_Swamprat(), startwp, world2);
						elseif Instance == "Sumpfhai" then
							SpawnNPC(Swampshark(), startwp, world2);
						elseif Instance == "OW_Troll" then
							SpawnNPC(OW_Troll(), startwp, world2);
						elseif Instance == "OW_Waran" then
							SpawnNPC(OW_Waran(), startwp, world2);
						elseif Instance == "OW_Feuerwaran" then
							SpawnNPC(OW_Firewaran(), startwp, world2);
						elseif Instance == "OW_Irrlicht" then
							SpawnNPC(OW_Wisp(), startwp, world2);
						elseif Instance == "OW_Wolf" then
							SpawnNPC(OW_Wolf(), startwp, world2);
						elseif Instance == "OW_Junger_Wolf" then
							SpawnNPC(OW_YoungWolf(), startwp, world2);
						elseif Instance == "Eiswolf" then
							SpawnNPC(Icewolf(), startwp, world2);
						elseif Instance == "OW_Zombie" then
							SpawnNPC(OW_Zombie(), startwp, world2);
						elseif Instance == "OW_Zombie2" then
							SpawnNPC(OW_Zombie2(), startwp, world2);
						elseif Instance == "OW_Zombie3" then
							SpawnNPC(OW_Zombie3(), startwp, world2);
						elseif Instance == "OW_Zombie4" then
							SpawnNPC(OW_Zombie4(), startwp, world2);
						elseif Instance == "OW_SwampZombie" then
							SpawnNPC(OW_SwampZombie(), startwp, world2);
						elseif Instance == "OW_PalZombie" then
							SpawnNPC(OW_PalZombie(), startwp, world2);
						elseif Instance == "OW_Schwarzer_Troll" then
							SpawnNPC(OW_Troll_Black(), startwp, world2);
						elseif Instance == "OW_SkeletonWeak" then
							SpawnNPC(OW_SkeletonWeak(),startwp,world2);
						elseif Instance == "OW_ZombieWeak" then
							SpawnNPC(OW_ZombieWeak(),startwp,world2);	
			---------------------------------CK Jharkendar NPC-----------------------------
						elseif Instance == "JK_Alligator" then
							SpawnNPC(JK_Alligator(), startwp, world3);
						elseif Instance == "JK_Blattcrawler" then
							SpawnNPC(JK_Blattcrawler(), startwp, world3);
						elseif Instance == "JK_Blutfliege" then
							SpawnNPC(JK_Bloodfly(), startwp, world3);
						elseif Instance == "JK_Junge_Blutfliege" then
							SpawnNPC(JK_YoungBloodfly(), startwp, world3);
						elseif Instance == "JK_Bluthund" then
							SpawnNPC(JK_Bloodhound(), startwp, world3);
						elseif Instance == "JK_Demon" then
							SpawnNPC(JK_Demon(), startwp, world3);
						elseif Instance == "JK_Daemonenlord" then
							SpawnNPC(JK_Demonlord(), startwp, world3);
						elseif Instance == "JK_Echsenmensch" then
							SpawnNPC(JK_Echsenmensch(), startwp, world3);
						elseif Instance == "JK_Feldraeuber" then
							SpawnNPC(JK_Giant_Bug(), startwp, world3);
						elseif Instance == "Giant_DesertRat" then
							SpawnNPC(Giant_DesertRat(), startwp, world3);
						elseif Instance == "JK_Riesenratte" then
							SpawnNPC(JK_GiantRat(), startwp, world3);
						elseif Instance == "JK_Schwarzer_Goblin" then
							SpawnNPC(JK_Gobbo_Black(), startwp, world3);
						elseif Instance == "JK_Goblin" then
							SpawnNPC(JK_Gobbo_Green(), startwp, world3);
						elseif Instance == "JK_Goblin_Skelett" then
							SpawnNPC(JK_Gobbo_Skeleton(), startwp, world3);
						elseif Instance == "JK_Goblinkrieger" then
							SpawnNPC(JK_Gobbo_Warrior(), startwp, world3);
						elseif Instance == "JK_Goblinanfuehrer" then
							SpawnNPC(JK_Gobbo_Warrior_Visir(), startwp, world3);
						elseif Instance == "JK_Sumpfgolem" then
							SpawnNPC(JK_SwampGolem(), startwp, world3);
						elseif Instance == "JK_Steingolem" then
							SpawnNPC(JK_StoneGolem(), startwp, world3);
						elseif Instance == "JK_Feuergolem" then
							SpawnNPC(JK_FireGolem(), startwp, world3);
						elseif Instance == "JK_Eisgolem" then
							SpawnNPC(JK_IceGolem(), startwp, world3);
						elseif Instance == "JK_Harpie" then
							SpawnNPC(JK_Harpie(), startwp, world3);
						elseif Instance == "JK_Keiler" then
							SpawnNPC(JK_Keiler(), startwp, world3);
						elseif Instance == "JK_Lurker" then
							SpawnNPC(JK_Lurker(), startwp, world3);
						elseif Instance == "JK_Fleischwanze" then
							SpawnNPC(JK_Meatbug(), startwp, world3);
						elseif Instance == "JK_Minecrawler" then
							SpawnNPC(JK_Minecrawler(), startwp, world3);
						elseif Instance == "JK_Z�her_Minecrawler" then
							SpawnNPC(JK_Tough_Minecrawler(), startwp, world3);
						elseif Instance == "JK_Minecrawler_Krieger" then
							SpawnNPC(JK_MinecrawlerWarrior(), startwp, world3);
						elseif Instance == "JK_Molerat" then
							SpawnNPC(JK_Molerat(), startwp, world3);
						elseif Instance == "JK_Orkbeisser" then
							SpawnNPC(JK_OrcBiter(), startwp, world3);
						elseif Instance == "JK_Orkhund" then
							SpawnNPC(JK_OrcDog(), startwp, world3);
						elseif Instance == "JK_Eliteork" then
							SpawnNPC(JK_OrcElite(), startwp, world3);
						elseif Instance == "JK_Orkoberst" then
							SpawnNPC(JK_OrkOberst(), startwp, world3);
						elseif Instance == "JK_Orkspaeher" then
							SpawnNPC(JK_OrcScout(), startwp, world3);
						elseif Instance == "JK_Orkschamane" then
							SpawnNPC(JK_OrcShaman(), startwp, world3);
						elseif Instance == "JK_Leichter_Orkkrieger" then
							SpawnNPC(JK_OrcWarriorLight(), startwp, world3);
						elseif Instance == "JK_Orkkrieger" then
							SpawnNPC(JK_OrcWarrior(), startwp, world3);
						elseif Instance == "JK_Schwerer_Orkkrieger" then
							SpawnNPC(JK_OrcWarriorHeavy(), startwp, world3);
						elseif Instance == "JK_Razor" then
							SpawnNPC(JK_Razor(), startwp, world3);
						elseif Instance == "JK_Scavenger" then
							SpawnNPC(JK_Scavenger(), startwp, world3);
						elseif Instance == "JK_Graslandscavenger" then
							SpawnNPC(JK_ScavengerDemon(), startwp, world3);
						elseif Instance == "JK_SkeletonWeak" then
							SpawnNPC(JK_SkeletonWeak(),startwp,world3);
						elseif Instance == "JK_ZombieWeak" then
							SpawnNPC(JK_ZombieWeak(),startwp,world3);	
						--elseif Instance == "Junger_Graslandscavenger" then -- gibts garnicht
							--SpawnNPC(YoungScavengerDemon(), startwp, world3);
						elseif Instance == "JK_Schattenlaeufer" then
							SpawnNPC(JK_Shadowbeast(), startwp, world3);
						elseif Instance == "JK_Junger_Schattenlaeufer" then
							SpawnNPC(JK_YoungShadowbeast(), startwp, world3);
						elseif Instance == "JK_Schattenlaeuferskelett" then
							SpawnNPC(JK_Shadowbeast_Skeleton(), startwp, world3);
						elseif Instance == "JK_Feuerteufel" then
							SpawnNPC(JK_Feuerteufel(), startwp, world3);
						elseif Instance == "JK_Skelett" then
							SpawnNPC(JK_Skeleton(), startwp, world3);
						elseif Instance == "JK_Schwaches_Skelett" then
							SpawnNPC(JK_SkeletonScout(), startwp, world3);
						elseif Instance == "JK_Skelett_Lord" then
							SpawnNPC(JK_SkeletonLord(), startwp, world3);
						elseif Instance == "JK_Skelett_Magier" then
							SpawnNPC(JK_SkeletonMage(), startwp, world3);
						elseif Instance == "JK_Snapper" then
							SpawnNPC(JK_Snapper(), startwp, world3);
						elseif Instance == "JK_Bergsnapper" then
							SpawnNPC(JK_Bergsnapper(), startwp, world3);
						elseif Instance == "JK_Drachensnapper" then
							SpawnNPC(JK_Dragonsnapper(), startwp, world3);
						elseif Instance == "Steinwaechter" then
							SpawnNPC(Stoneguardian(), startwp, world3);
						elseif Instance == "Puma" then
							SpawnNPC(StonePuma(), startwp, world3);
						elseif Instance == "SwampDrone" then
							SpawnNPC(SwampDrone(), startwp, world3);
						elseif Instance == "Swamprat" then
							SpawnNPC(Swamprat(), startwp, world3);
						elseif Instance == "JK_Sumpfhai" then
							SpawnNPC(JK_Swampshark(), startwp, world3);
						elseif Instance == "JK_Troll" then
							SpawnNPC(JK_Troll(), startwp, world3);
						elseif Instance == "UntoterOrk" then
							SpawnNPC(UndeadOrc(), startwp, world3);
						elseif Instance == "JK_Waran" then
							SpawnNPC(JK_Waran(), startwp, world3);
						elseif Instance == "JK_Feuerwaran" then
							SpawnNPC(JK_Firewaran(), startwp, world3);	
						elseif Instance == "JK_Irrlicht" then
							SpawnNPC(JK_Wisp(), startwp, world3);
						elseif Instance == "JK_Wolf" then
							SpawnNPC(JK_Wolf(), startwp, world3);
						elseif Instance == "JK_Zombie" then
							SpawnNPC(JK_Zombie(), startwp, world3);
						elseif Instance == "JK_Zombie1" then
							SpawnNPC(JK_Zombie1(), startwp, world3);
						elseif Instance == "JK_Zombie2" then
							SpawnNPC(JK_Zombie2(), startwp, world3);
						elseif Instance == "JK_Zombie3" then
							SpawnNPC(JK_Zombie3(), startwp, world3);
						elseif Instance == "JK_Zombie4" then
							SpawnNPC(JK_Zombie4(), startwp, world3);
						elseif Instance == "MayaZombie1" then
							SpawnNPC(MayaZombie1(), startwp, world3);
						elseif Instance == "MayaZombie2" then
							SpawnNPC(MayaZombie2(), startwp, world3);
						elseif Instance == "MayaZombie3" then
							SpawnNPC(MayaZombie3(), startwp, world3);
						elseif Instance == "MayaZombie4" then
							SpawnNPC(MayaZombie4(), startwp, world3);
						elseif Instance == "SwampZombie" then
							SpawnNPC(SwampZombie(), startwp, world3);
						elseif Instance == "PalZombie" then
							SpawnNPC(PalZombie(), startwp, world3);
			---------------------------------CK Kolonie NPC-----------------------------
						elseif Instance == "OW_AL_TORWACHE" then
							SpawnNPC(H_Torwache(), startwp, world2);
						elseif Instance == "OW_AL_TORWACHE_2" then
							SpawnNPC(H_Torwache2(), startwp, world2);
						elseif Instance == "OW_AL_TORWACHE_3" then
							SpawnNPC(N_Torwache(), startwp, world2);
						elseif Instance == "OW_AL_TORWACHE_4" then
							SpawnNPC(N_Torwache2(), startwp, world2);
						elseif Instance == "OW_AL_BURGWACHE" then
							SpawnNPC(Burgwache(), startwp, world2);
						elseif Instance == "OW_AL_MINENWACHE" then
							SpawnNPC(AL_Minenwache(), startwp, world2);
						--------------CLASSICSTRAFKOLONIE Burg --------------------	
						elseif Instance == "OW_Ritter_Smalltalk1" then
							SpawnNPC(RitterSmalltalk1(), startwp, world2);
						elseif Instance == "OW_Ritter_Smalltalk2" then
							SpawnNPC(RitterSmalltalk2(), startwp, world2);
						elseif Instance == "OW_Waffenknecht_Lagerfeuer1" then
							SpawnNPC(WaffenknechtLagerfeuer1(), startwp, world2);
						elseif Instance == "OW_Ritter_Lagerfeuer2" then
							SpawnNPC(RitterLagerfeuer2(), startwp, world2);
						elseif Instance == "OW_Waffenknecht_Lagerfeuer3" then
							SpawnNPC(WaffenknechtLagerfeuer3(), startwp, world2);
						elseif Instance == "OW_Ritter_Lagerfeuer4" then
							SpawnNPC(RitterLagerfeuer4(), startwp, world2);
						elseif Instance == "OW_Ritter_Wachhaus" then
							SpawnNPC(RitterWachhaus(), startwp, world2);
						elseif Instance == "OW_Paladin_Saal1" then
							SpawnNPC(PaladinSaal1(), startwp, world2);
						elseif Instance == "OW_Paladin_Saal2" then
							SpawnNPC(PaladinSaal2(), startwp, world2);
						elseif Instance == "OW_Paladin_Raven" then
							SpawnNPC(PaladinRaven(), startwp, world2);
						elseif Instance == "OW_Ritter_Orkramme" then
							SpawnNPC(RitterOrkramme(), startwp, world2);
						elseif Instance == "OW_Ritter_Torhaus" then
							SpawnNPC(RitterTorhaus(), startwp, world2);
						elseif Instance == "OW_Ritter_Tuersteher1" then
							SpawnNPC(RitterTuersteher1(), startwp, world2);
						elseif Instance == "OW_Ritter_Tuersteher2" then
							SpawnNPC(RitterTuersteher2(), startwp, world2);
							----fajeths mine oder so----
						elseif Instance == "RitterNWMine1" then
							SpawnNPC(RitterNWMine1(), startwp, world2);
						elseif Instance == "RitterNWMine2" then
							SpawnNPC(RitterNWMine2(), startwp, world2);
						elseif Instance == "RitterNWMine3" then
							SpawnNPC(RitterNWMine3(), startwp, world2);
						elseif Instance == "PaladinNWMine1" then
							SpawnNPC(PaladinNWMine1(), startwp, world2);
						elseif Instance == "PaladinNWMine2" then
							SpawnNPC(PaladinNWMine2(), startwp, world2);
						------------Banditen bots -.--------------
						elseif Instance == "Bandit" then
							SpawnNPC(Bandit(), startwp, world2);
						elseif Instance == "Bandit2" then
							SpawnNPC(Bandit2(), startwp, world2);
						elseif Instance == "Bandit3" then
							SpawnNPC(Bandit3(), startwp, world2);
						elseif Instance == "Bandit4" then
							SpawnNPC(Bandit4(), startwp, world2);
						elseif Instance == "Bandit5" then
							SpawnNPC(Bandit5(), startwp, world2);
			---------------------------------CK NPC Wachen-----------------------------------------
						elseif Instance == "Stadtwache" then
							SpawnNPC(Stadtwache(), startwp, world);						
						elseif Instance == "Sebalt" then
							SpawnNPC(Sebalt(), startwp, world);
						elseif Instance == "Wendel" then
							SpawnNPC(Wendel(), startwp, world);
						elseif Instance == "Jenek" then
							SpawnNPC(Jenek(), startwp, world);
						elseif Instance == "Wilhelm" then
							SpawnNPC(Wilhelm(), startwp, world);
						elseif Instance == "Fester" then
							SpawnNPC(Fester(), startwp, world);
						elseif Instance == "Endres" then
							SpawnNPC(Endres(), startwp, world);
						elseif Instance == "Bero" then
							SpawnNPC(Bero(), startwp, world);
						--elseif Instance == "Kilian" then --ehemaliger S�ldnerbot
							--SpawnNPC(Kilian(), startwp, world);
						elseif Instance == "Lennard" then
							SpawnNPC(Lennard(), startwp, world);
						elseif Instance == "Rathauswache" then
							SpawnNPC(Rathauswache(), startwp, world);
						elseif Instance == "Rathauswache2" then
							SpawnNPC(Rathauswache2(), startwp, world);	
						elseif Instance == "Ramon" then
							SpawnNPC(Ramon(), startwp, world);
						elseif Instance == "Alexandra" then
							SpawnNPC(Alexandra(), startwp, world);
							-------Hafenbande-------
						elseif Instance == "Carter" then
							SpawnNPC(Carter(), startwp, world);
						elseif Instance == "Kharim" then
							SpawnNPC(Kharim(), startwp, world);
						elseif Instance == "Jose" then
							SpawnNPC(Jose(), startwp, world);
			---------------------------------CK GB Torwachen-----------------------------------------							
						elseif Instance == "Malakas" then			 
							SpawnNPC(Malakas(), startwp, world);
						elseif Instance == "Merc" then				 
							SpawnNPC(Merc(), startwp, world);
						elseif Instance == "Laindro" then			 
							SpawnNPC(Laindro(), startwp, world);
						elseif Instance == "Therus" then			
							SpawnNPC(Therus(), startwp, world);
					---------Banditenfeste Wachen-----------------------------------------
						elseif Instance == "Buster" then			
							SpawnNPC(Buster(), startwp, world);
						elseif Instance == "Krain" then			
							SpawnNPC(Krain(), startwp, world);
						elseif Instance == "Alek" then			
							SpawnNPC(Alek(), startwp, world);
			---------------------------------CK Pass Wachen und Kloster-----------------------------------------					
						elseif Instance == "Ferdinand" then
							SpawnNPC(Ferdinand(), startwp, world);
						elseif Instance == "Paladin" then
							SpawnNPC(Paladin(), startwp, world);
						elseif Instance == "Paladin2" then
							SpawnNPC(Paladin2(), startwp, world);
						elseif Instance == "Ritter" then
							SpawnNPC(Ritter(), startwp, world);
						elseif Instance == "Ritter2" then
							SpawnNPC(Ritter2(), startwp, world);
						elseif Instance == "Ritter3" then
							SpawnNPC(Ritter3(), startwp, world);
						elseif Instance == "Ritter4" then
							SpawnNPC(Ritter4(), startwp, world);
						elseif Instance == "Rorik" then
							SpawnNPC(Rorik(), startwp, world);
						elseif Instance == "Keris" then
							SpawnNPC(Keris(), startwp, world);
						elseif Instance == "Asrael" then
							SpawnNPC(Asrael(), startwp, world);
			---------------------------------Ska�s eintr�ge-----------------------------------------	
						elseif Instance == "OW_OW_Ritter1" then
							SpawnNPC(OW_Ritter1(), startwp, world2);
						elseif Instance == "OW_OW_Ritter2" then
							SpawnNPC(OW_Ritter2(), startwp, world2);
						elseif Instance == "OW_OW_Ritter3" then
							SpawnNPC(OW_Ritter3(), startwp, world2);
						elseif Instance == "OW_OW_Ritter4" then
							SpawnNPC(OW_Ritter4(), startwp, world2);
						elseif Instance == "OW_OW_Ritter5" then
							SpawnNPC(OW_Ritter5(), startwp, world2);
						elseif Instance == "OW_OW_Ritter6" then
							SpawnNPC(OW_Ritter6(), startwp, world2);
						elseif Instance == "OW_OW_Spaeher1" then
							SpawnNPC(OW_Spaeher1(), startwp, world2);
						elseif Instance == "OW_OW_Soldat1" then
							SpawnNPC(OW_Soldat1(), startwp, world2);
						elseif Instance == "OW_OW_Buddler1" then
							SpawnNPC(OW_Buddler1(), startwp, world2);
						elseif Instance == "OW_OW_Buddler2" then
							SpawnNPC(OW_Buddler2(), startwp, world2);
						elseif Instance == "OW_OW_Buddler3" then
							SpawnNPC(OW_Buddler3(), startwp, world2);
						elseif Instance == "OW_OW_Buddler4" then
							SpawnNPC(OW_Buddler4(), startwp, world2);
						elseif Instance == "OW_OW_Buddler5" then
							SpawnNPC(OW_Buddler5(), startwp, world2);
						elseif Instance == "OW_OW_Buddler6" then
							SpawnNPC(OW_Buddler6(), startwp, world2);
						elseif Instance == "OW_OW_Buddler7" then
							SpawnNPC(OW_Buddler7(), startwp, world2);
						elseif Instance == "OW_OW_Raeuber01" then
							SpawnNPC(OW_Raeuber01(), startwp, world2);
						elseif Instance == "OW_OW_Raeuber02" then
							SpawnNPC(OW_Raeuber02(), startwp, world2);
						elseif Instance == "OW_OW_Raeuber03" then
							SpawnNPC(OW_Raeuber03(), startwp, world2);
						elseif Instance == "OW_OW_Raeuber04" then
							SpawnNPC(OW_Raeuber04(), startwp, world2);
						elseif Instance == "OW_OW_Raeuber05" then
							SpawnNPC(OW_Raeuber05(), startwp, world2);
						elseif Instance == "OW_OW_Raeuber06" then
							SpawnNPC(OW_Raeuber06(), startwp, world2);
						elseif Instance == "OW_OW_Raeuber07" then
							SpawnNPC(OW_Raeuber07(), startwp, world2);
						end
					end
				end
			end
		end
	end
end
]]

big_require("./scripts/fai/", "", true);
big_require("./scripts/ai/", "", true);
--big_require("./scripts/npc/", "", true);
--require "scripts/fai/fai"
--require "scripts/ai/ai"
--require "scripts/npc/aNPC"
