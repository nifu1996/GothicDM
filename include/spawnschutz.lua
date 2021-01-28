-- BehehlsDistanz zum Lager Spawnpunkt. Radius in dem der /lager Befehel ausgeführt werden darf.
BehehlsDistanz = 1500 -- sollte 15 m entsprechen.

-- LagerId Konstanten.
AltesLagerId = 1
NeuesLagerId = 2
SumpfLagerId = 3
PiratenId = 1
BanditenId = 2
FeuermagierId = 1
SchwarzmagierId = 2
RaymondId = 1
GoraxId = 2
GrandId = 3
FalksonId = 4
GarId = 5
AllanId = 6

-- Zum ermitteln der Id für einen Lagernamen, der als String vorliegt. ( LagernameAufId[<LagernamenString>] )
LagernameAufId = { alteslager = 1, neueslager = 2, sumpflager = 3, piraten = 1, banditen = 2, feuermagier = 1, schwarzmagier = 2 , raymond = 1, gorax = 2, grand = 3, falkson = 4, gar = 5, allan = 6}

-- Zum zurückgeben des Lagernamens für die "kaempft nur fuer" Anzeige für Mode, Map und LagerId.
KaempftFuerLager = { Deathmatch = { Kolonie = {}, Jharkendar = {}, Khorinis = {} }, KilltheKing = { Kolonie = {}, Khorinis = {} } }
KaempftFuerLager.Deathmatch.Kolonie = { "die gierigen Erzbarone im AltenLager", "die verstrahlten Wassermagier im NeuenLager", "die Sektenspinner im SumpfLager"}
KaempftFuerLager.Deathmatch.Jharkendar = { "das Piraten Pack", "die dreckigen Banditen" }
KaempftFuerLager.Deathmatch.Khorinis = { "die Feuermagier", "die Schwarzmagier" }

-- Spawnpunkte für Mode, Map, LagerId.
-- Für die Koordinaten sollten Freepoints oder Waypoints verwendet werden. Dann kann man die Punkte leicht verschieben. (ZEN Export WP, FP)
Spawnpunkt = { Deathmatch = { Kolonie = {}, Jharkendar = {}, Khorinis = {} }, KilltheKing = { Kolonie = {}, Khorinis = {} } }
Spawnpunkt.Deathmatch.Kolonie[AltesLagerId]          = { x =    356.48, y =   164.98, z =     -1.87 } --AltesLager
Spawnpunkt.Deathmatch.Kolonie[NeuesLagerId]          = { x = -46058.43, y =  1674.20, z =  12678.01 } --NeuesLager
Spawnpunkt.Deathmatch.Kolonie[SumpfLagerId]          = { x =  48845.00, y = -3975.72, z =  -4296.05 } --SumpfLager
Spawnpunkt.Deathmatch.Jharkendar[PiratenId]          = { x = -36545.04, y = -1854.38, z =  19328.29 } --Piraten
Spawnpunkt.Deathmatch.Jharkendar[BanditenId]         = { x =  30396.31, y = -4462.89, z =   9752.17 } --Banditen
Spawnpunkt.Deathmatch.Khorinis[FeuermagierId]        = { x =  50678.14, y =  5087.99, z =  20796.94 } --Feuermagier
Spawnpunkt.Deathmatch.Khorinis[SchwarzmagierId]      = { x =  29888.68, y =  5247.75, z = -16465.73 } --Schwarzmagier

-- StrafSpawnpunkte für Mode, Map, LagerId.
-- Für die Koordinaten sollten Freepoints oder Waypoints verwendet werden. Dann kann man die Punkte leicht verschieben. (ZEN Export WP, FP)
StrafSpawnpunkt = { Deathmatch = { Kolonie = {}, Jharkendar = {}, Khorinis = {} }, KilltheKing = { Kolonie = {}, Khorinis = {} } }
StrafSpawnpunkt.Deathmatch.Kolonie[AltesLagerId]     = { x =   -395.67, y =   247.72, z =   2574.72 } --AltesLager
StrafSpawnpunkt.Deathmatch.Kolonie[NeuesLagerId]     = { x = -52493.55, y =  2646.96, z =  11498.01 } --NeuesLager
StrafSpawnpunkt.Deathmatch.Kolonie[SumpfLagerId]     = { x =  53328.35, y = -3640.76, z = -11973.95 } --SumpfLager
StrafSpawnpunkt.Deathmatch.Jharkendar[PiratenId]     = { x = -36545.04, y = -1854.38, z =  19328.29 } --Piraten (gleich wie Spawnpunkt)
StrafSpawnpunkt.Deathmatch.Jharkendar[BanditenId]    = { x =  30396.31, y = -4462.89, z =   9752.17 } --Banditen (gleich wie Spawnpunkt)
StrafSpawnpunkt.Deathmatch.Khorinis[FeuermagierId]   = { x =  50678.14, y =  5087.99, z =  20796.94 } --Feuermagier (gleich wie Spawnpunkt)
StrafSpawnpunkt.Deathmatch.Khorinis[SchwarzmagierId] = { x =  29888.68, y =  5247.75, z = -16465.73 } --Schwarzmagier (gleich wie Spawnpunkt)

-- KillTheKing Spawnpunkte sind nur proforma hier drin ...
Spawnpunkt.KilltheKing.Kolonie[RaymondId]            = { x =  -2181.74, y =    -27.69, z =  -3206.15 } -- Nr=1, "Raymond", RoterGardist(), "FP_SWEEP_OC_02"
Spawnpunkt.KilltheKing.Kolonie[GoraxId]              = { x =  -6770.71, y =  -1165.32, z =   4314.94 } -- Nr=2, "Gorax", BlauGardist(), "OCR_MAINGATE_INSIDE"
Spawnpunkt.KilltheKing.Kolonie[GrandId]              = { x =   4009.45, y =  -1422.41, z =   3395.40 } -- Nr=3, "Grand", GruenGardist(), "OCR_ARENABATTLE"
Spawnpunkt.KilltheKing.Kolonie[FalksonId]            = { x =  -4206.99, y =   -542.50, z =  -5888.94 } -- Nr=4, "Falkson", GelbGardist(), "FP_CAMPFIRE_F_2"
Spawnpunkt.KilltheKing.Kolonie[GarId]                = { x =   2928.69, y =    175.17, z =   1234.72 } -- Nr=5, "Gar", OrangeGardist(), "FP_STAND_A_OC_45"
Spawnpunkt.KilltheKing.Kolonie[AllanId]              = { x =   4125.33, y =   -803.32, z =  -4934.20 } -- Nr=6, "Allan", LilaGardist(), "OCR_NORTHGATE_RAMP_ATOP"

Spawnpunkt.KilltheKing.Khorinis[RaymondId]           = { x =  15553.79, y =   1048.67, z =     49.71 } -- Nr=1, "Raymond", RoteMiliz(), "FP_STAND_HAGEN"
Spawnpunkt.KilltheKing.Khorinis[GoraxId]             = { x =   1368.14, y =    319.38, z =   3953.00 } -- Nr=2, "Gorax", BlaueMiliz(), "FP_SMALLTALK_CITY_26"
Spawnpunkt.KilltheKing.Khorinis[GrandId]             = { x =   9722.19, y =    323.89, z =   5623.03 } -- Nr=3, "Grand", GrueneMiliz(), "FP_STAND_DARON"
Spawnpunkt.KilltheKing.Khorinis[FalksonId]           = { x =   8052.20, y =    137.19, z =   1148.45 } -- Nr=4, "Falkson", GelbeMiliz(), "FP_STAND_CITY_TAVERN_02"
Spawnpunkt.KilltheKing.Khorinis[GarId]               = { x =   -330.28, y =   -153.89, z =  -4311.36 } -- Nr=5, "Gar", OrangeMiliz(), "FP_SMALLTALK_CITY_20"
Spawnpunkt.KilltheKing.Khorinis[AllanId]             = { x =   7922.04, y =    289.43, z =  -5395.52 } -- Nr=6, "Allan", LilaMiliz(), "FP_STAND_CITY_ANDRE"



-- Gibt "true" zurück wenn die übergebenen Koordinaten im Lagerschutz NeuesLager liegen, sonst "false".
function ImSchutzNeuesLager(x, z)
	return ((x < -38769.73 and x > -40499.59 and z < 6380.43 and z > 5880.68)
			or
			(x < -36984.89 and x > -37059.37 and z < 12229.53 and z > 10216.91)
			or
			(x < -55474.05 and x > -57183.90 and z < -3647.76 and z > -4083.84))
end

-- Gibt "true" zurück wenn die übergebenen Koordinaten im Lagerschutz SumpfLager liegen, sonst "false".
function ImSchutzSumpfLager(x, z)
	return ((x < 42303.60 and x > 40112.63 and z < -3367.85 and z > -8491.08)
			or
			(x < 43715.54 and x > 40112.63 and z < -8491.08 and z > -18462.24))
end

-- Gibt "true" zurück wenn die übergebenen Koordinaten im Lagerschutz AltesLager liegen, sonst "false".
function ImSchutzAltesLager(x, z)
	return ((x < -5965.79 and x > -7937.44 and z < 4864.10 and z > 4366.92)
			or
			(x < 4707.43 and x > 4386.87 and z < -5188.79 and z > -6713.64))
end

-- Gibt "true" zurück wenn die übergebenen Koordinaten im Lagerschutz der Banditen liegen, sonst "false".
function ImSchutzBanditenLager(x, z)
	return (x > 26599.05 and x < 27608.71 and z < 8117.45 and z > 6208.57)
end

-- Gibt "true" zurück wenn die übergebenen Koordinaten im Lagerschutz der Piraten liegen, sonst "false".
function ImSchutzPiratenLager(x, z)
	return (x < -33185.64  and x > -35369.55 and z < 15985.23 and z > 14647.64)
end

-- Gibt "true" zurück wenn die übergebenen Koordinaten im Lagerschutz der Schwarzmagier liegen, sonst "false".
function ImSchutzSchwarzmagier(x, z)
	return (x < 32544.00  and x > 28701.00 and z > -17980.00 and z < -14686.00)
end

-- Gibt "true" zurück wenn die übergebenen Koordinaten im Lagerschutz der Feuermagier liegen, sonst "false".
function ImSchutzFeuermagier(x, z)
	return (x > 46815.00 and x < 50764.00 and z > 18536.00 and z < 20885.00)
end

-- Funktion, die den angegebenen Spieler für das Betreten des Lageschutzes bestraft.
function BestrafeSpielerImLagerschutz(playerId)
	local lager = Player[playerId].Lager
	local pos = StrafSpawnpunkt[Mode][Map][lager]
	SetPlayerPos(playerId, pos.x, pos.y, pos.z);
	--SetPlayerAngle(playerId, 0); 
	SetPlayerHealth(playerId, 10);
	PlayAnimation(playerId, "T_DEAD");
	SendPlayerMessage(playerId, 255, 255, 255, "Du hast es gerade so ueberlebt.");
	Killstreakbreak(playerId)
end

-- Für jeden Spieler wird geprüft ob er sich in einem Lageschutz befindet und wird dann bestraft.
-- (Prüfen auf Lagerschutz nicht besonders gut, da der Lagerschutz nur am Eingang des Lagers ist.)
-- (Generell kann der Lageschutz meistens umgangen werden.)
-- (Ich kann z.B. als Bandit einfach bei den Piraten einkaufen gehen.)
-- (Oder als Sektenspinner im Neuen Lager ... LOL)
function Lagercheck()
	if Mode == "Deathmatch" then
		for i = 0,GetMaxPlayers() - 1 do
			if IsPlayerConnected(i) == 1 and Player[i].register == 0 then
				local x, y, z = GetPlayerPos(i);
				local lager = Player[i].Lager;
				if Map == "Kolonie" then	
					if lager == AltesLagerId then --AltesLager
						if (ImSchutzNeuesLager(x, z) or ImSchutzSumpfLager(x, z)) then
							BestrafeSpielerImLagerschutz(i)
						end
					elseif lager == NeuesLagerId then --Neueslager
						if (ImSchutzAltesLager(x, z) or ImSchutzSumpfLager(x, z) ) 	then
							BestrafeSpielerImLagerschutz(i)
						end
					elseif lager == SumpfLagerId then --Sumpflager
						if (ImSchutzAltesLager(x, z) or ImSchutzNeuesLager(x, z) ) then
							BestrafeSpielerImLagerschutz(i)
						end
					end
				elseif Map == "Jharkendar" then
					if lager == PiratenId then --Piraten
						if ImSchutzBanditenLager(x, z) then
							BestrafeSpielerImLagerschutz(i)
						end	
					elseif lager == BanditenId then --Banditen
						if ImSchutzPiratenLager(x, z) then
							BestrafeSpielerImLagerschutz(i)
						end
					end
				elseif Map == "Khorinis" then
					if lager == FeuermagierId then --Feuermagier
						if ImSchutzSchwarzmagier(x, z) then
							BestrafeSpielerImLagerschutz(i)
						end	
					elseif lager == SchwarzmagierId then --Schwarzmagier 
						if ImSchutzFeuermagier(x, z) then
							BestrafeSpielerImLagerschutz(i)
						end
					end
				end
			end
		end
	end
end



-- Setzt die Lagerzugehörigkeit des Spielers playerid auf die zielLagerId.
function Lagerwechsel(playerid, zielLagerId)
	local kaempftFuerLagername = KaempftFuerLager[Mode][Map][zielLagerId]
	local playername = Player[playerid].nick	
	MinusPlayer(playerid);
	Player[playerid].Lager = zielLagerId
	PlusPlayer(playerid);
	UnequipArmor(playerid);
	Player[playerid].dontbreakkillstreak = 1; -- Killstreak NICHT nach Lagerwechsel löschen
	SetTimerEx("RespawnAfterDeathTimer",2000,0,playerid);
	mysql_query(mysql_handler, "UPDATE user SET Lager='" .. zielLagerId .. "' WHERE name='" .. playername .. "'");	
	SendMessageToAll(200,200,50,string.format("%s %s %s %s", playername, "kaempft nun fuer", kaempftFuerLagername, "!"));
	
	-- Hier für die Map die PlayerId ins aktuelle Lager setzen.
	MapPlayerLagerSet(playerid, zielLagerId)
end

-- Zeigt dem Spieler playerId den Hilfetext fÃ¼r den /lager Befehl an.
function LagerwechselHilfeAnzeigen(playerid)
	if Map == "Kolonie" then	
		SendPlayerMessage(playerid,255,255,255,"/lager (Lagername). (AltesLager, NeuesLager, SumpfLager)");
	elseif Map == "Jharkendar" then
		SendPlayerMessage(playerid,255,255,255,"/lager (Lagername). (Piraten, Banditen)");
	elseif Map == "Khorinis" then
		SendPlayerMessage(playerid,255,255,255,"/lager (Lagername). (Feuermagier, Schwarzmagier)");
	end
end

-- Funktion um den /lager Befehl auszuführen.
-- Wenn sich der Spieler im eigenen Lager befindet kann er in ein anderes Lager gewechselt werden.
function CMD_Lagerwechsel(playerid,params)
	-- Wenn nicht Deathmatch, aufhören.
	if Mode ~= "Deathmatch" then
		return
	end
	
	-- Wenn das Level zu hoch ist, Meldung anzeigen und aufhören.
	if Player[playerid].level >= 3 then
		SendPlayerMessage(playerid,255,255,255,"Dein LVL ist bereits zu hoch um das Lager zu wechseln.");
		return
	end
	
	-- Parameter ermitteln.
	local result, Lager = sscanf(params,"s");
	
	-- Wenn falsche Parameter angegeben wurden, Hilfetext anzeigen und aufhören.
	if result ~= 1 then
		LagerwechselHilfeAnzeigen(playerid)
		return
	end

	-- Ziellager Id ermitteln.
	local  zielLagerId = LagernameAufId[string.lower(Lager)]

	-- Wenn ein falscher Name angegeben wurde ist zielLagerId nil. Dann Hilfetext anzeigen und aufhören.
	if (zielLagerId == nil) then
		LagerwechselHilfeAnzeigen(playerid)
		return
	end

	local aktuellesLager = Player[playerid].Lager

	-- Wenn die aktuelle Lager Id gleich der gewünschten LagerId ist, das dem Spieler mitteilen.
	if aktuellesLager == zielLagerId then
		SendPlayerMessage(playerid,255,255,255,"Du gehoerst schon zu diesem Lager.");
		return
	end

	-- Hier Prüfen ob der Spieler auch im eigenen Lager ist.
	-- Abstand zum Spawnpoint sollte < BehehlsDistanz sein.
	-- (Prüfen auf Lagerschutz ist derzeit sinnlos, da der Lagerschutz nur am Eingang des Lagers ist.)
	local x, y, z = GetPlayerPos(playerid)
	local pos = Spawnpunkt[Mode][Map][aktuellesLager]
	local abstand = GetDistance3D(x, y, z, pos.x, pos.y, pos.z);
	if abstand > BehehlsDistanz then
		SendPlayerMessage(playerid,255,255,255,"Du musst dich in der naehe deiner Lager-Haendler befinden um den Befehl auszufuehren.");
		return
	end

	-- Spieler in gewünschtes Lager setzen.
	Lagerwechsel(playerid, zielLagerId)
end



function Fail(playerid)
	local lager = Player[playerid].Lager
	local pos = StrafSpawnpunkt[Mode][Map][lager]
	SetPlayerPos(playerid, pos.x, pos.y, pos.z);	
	SetPlayerHealth(playerid,10);
	PlayAnimation(playerid,"T_DEAD");
	SendPlayerMessage(playerid,255,255,255,"Zu grosser Level Unterschied des Gegners.");
	Killstreakbreak(playerid)
end

print("Loaded LUA file   " .. debug.getinfo(1).source)