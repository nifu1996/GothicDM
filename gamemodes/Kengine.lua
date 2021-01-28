require "scripts/libs/AIFunctions"
require "gamemodes/sql"
require "scriptsnew/Loader"

NPCConverter = false; --Übertraegt NPCs in datenbank (InitSpawnDataBaseNPC deaktivieren um duplizierung zu verhindern) Wird in Zeile 329 function SpawnNPC verwendet
WPConverter = false; --Waypoints übertragen

if NPCConverter == true then
	require "scripts/default_scripts/SpawnColony"
	require "scripts/default_scripts/SpawnNewWorld"
	require "scripts/default_scripts/SpawnAddonWorld"
end

RespawnTimerTick = 15*1000 --60 * 1000 = 1 Min , RespawnTimerTick * respawn_time von datenbankmonster = Respawn
SpawnWorlds = {"NEWWORLD\\KOLONIEDM.ZEN","NEWWORLD\\JHARKENDARDM.ZEN","NEWWORLD\\KHORINISDM.ZEN"}

local playerSpawnedNPC = {}; -- required to despawn manually spawned NPCs

function OnGamemodeInit()
	CreateClock();
	print("Gothic DM started")

	SetServerDescription("Gothic Deathmatch made by Kelevra")
	SetServerHostname("Gothic DM")
	SetGamemodeName("Gothic Deathmatch")
	SetRespawnTime(2147483647)

	if NPCConverter == true then
		InitColonyNpc();
		InitNewWorldNPC();
		InitJhakendarNPC();
	end

	if WPConverter == true then
		CreateAI_WayNets()
	end

	MonsterBelohnungenTabelleLesen()

	OnScriptInit();
	InitAiSystem();
	InitMonsterlistDataBase()
	--InitSpawnDataBaseNPC()
	OnDeathmatchInit()
end;

function CreateClock()
    --Clock_Headline = CreateDraw(500, 6000, "Uhrzeit", "Font_Default.tga", 255, 255, 255);
    --Clock_Ingame = CreateDraw(130, 7500, "Ingame : 00:00", "Font_Default.tga", 255, 255, 255);
    Clock_Real = CreateDraw(7550, 7800, "Echt : 00:00", "Font_Default.tga", 255, 255, 255);
    SetTimer("UpdateClock", 1000, 1);
end;

function ShowClock(playerid)
    --ShowDraw(playerid, Clock_Headline);
    --ShowDraw(playerid, Clock_Ingame);
    ShowDraw(playerid, Clock_Real);
end;

function HideClock(playerid)
    --HideDraw(playerid, Clock_Headline);
    --HideDraw(playerid, Clock_Ingame);
    HideDraw(playerid, Clock_Real);
end;

function UpdateClock()
    --local ingametime = string.format("%s %02i:%02i", "", GetTime());
    local realtime = string.format("%s %s", "RL:", os.date("%X"));
    --UpdateDraw(Clock_Ingame, 130, 7500, ingametime, "Font_default.tga", 255, 255, 255);
    UpdateDraw(Clock_Real, 7550, 7800, realtime, "Font_default.tga", 255, 255, 255);
end;

function Gettime()
    local hour,minute = GetTime()
	if hour == 18 then
		SetTime(9,0) 
    end
end

--[[
	Returns true if text equals case-insensitive first or second.
	second can also be nil
--]]
function check(text, first, second)
	if text == nil or (first == nil and second == nil) then
		return false
	else
		if first == nil then
			return text:lower() == second:lower()
		elseif second == nil then
			return text:lower() == first:lower()
		else
			return text:lower() == first:lower() or text:lower() == second:lower()
		end
	end
end


function OnGamemodeExit()

end;
