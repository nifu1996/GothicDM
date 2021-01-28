function OnPlayerMD5File(playerid, pathFile, hash)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerMD5File(playerid, pathFile, hash)")
	-- print("function OnPlayerMD5File(playerid, pathFile, hash)", playerid, pathFile, hash)

	if pathFile == "data\\GothicDM.mod" then
		if hash ~= MD5Gothic then
            SendPlayerMessage(playerid,255,255,0,Moddatei[Player[playerid].Language]);
			Kick(playerid);
		else
			SpawnPlayer(playerid)
		end
	elseif  pathFile == "data\\ClassicKhorinis.mod" then
		if hash ~= "NULL" then
			SendPlayerMessage(playerid,255,255,0,"Du hast noch die ClassicKhorinis.mod in deinem Data Ordner!");
		end	
	elseif  pathFile == "data\\RP_Strafkolonie.mod" then
		if hash ~= "NULL" then
			SendPlayerMessage(playerid,255,255,0,"Netter Versuch, Gringo. Loesche bitte die RP_Strafkolonie.mod!");
			SetTimerEx("Kick",5000,0,playerid);
		end
	end
end

function OnPlayerConnect(playerid)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerConnect(playerid)")
	-- print("function OnPlayerConnect(playerid)", playerid)

	AI_OnPlayerConnect(playerid)

	if IsNPC(playerid) == 0 then
		if PlayerBanStatus(GetPlayerName(playerid), playerid) == true then --PlayerBanStatus true, wenn IP nicht in Bannliste der DB
			local msg = string.format("Spieler wird verbunden.\t%s\t\t%s\t%s", GetPlayerName(playerid), GetPlayerIP(playerid), GetMacAddress(playerid))
			ServerLog("CONNECTION", msg)
			ShowClock(playerid);
			SetPlayerEnable_OnPlayerKey(playerid,1);
			ClearPlayerObject(playerid); -- Meatbug :)
			--ClearGMPAChat(playerid); -- Chatmuell wird geloescht (nur die Information das man zum Server xyz verbunden ist) -- Fye
			--Shift unterdruecken
			GetMD5File(playerid,"data\\GothicDM.mod");
			GetMD5File(playerid,"data\\ClassicKhorinis.mod");
			GetMD5File(playerid,"data\\RP_Strafkolonie.mod");

			SetPlayerColor(playerid,255,255,255);
		else 
			local msg = string.format("Spieler ist gebannt und wurde gekickt.\t%s\t\t%s\t%s", GetPlayerName(playerid), GetPlayerIP(playerid), GetMacAddress(playerid))
			ServerLog("CONNECTION", msg)
			SendPlayerMessage(playerid,255,255,0,"Du bist gebannt. Warte bis du entbannt wurdest oder melde dich bei einem Admin auf Discord.");
			Kick(playerid);
		end
	end
end

function OnPlayerDisconnect(playerid, reason)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerDisonnect(playerid)")
	-- print("function OnPlayerDisconnect(playerid, reason)", playerid, reason)

	AI_OnPlayerDisconnect(playerid)

	if IsNPC(playerid) == 0 then
		local Name = GetPlayerName(playerid);
		mysql_query(mysql_handler, "UPDATE user SET LogIn='" .. 0 .. "' WHERE name='" .. Name .. "'")	
		GetFocusstone(playerid)
		--Handelsmenu_Close(playerid)
		CMD_EinsteigerGuide_Off(playerid)
		if Player[playerid].nick ~= nil then
			savePlayerLocation(playerid);
			saveHpEpMana(playerid);
			Player[playerid].Killcount = "0";
			Player[playerid].Deathcount = "0";
			UpdateDraw(Player[playerid].Kills,200,5750,Player[playerid].Killcount,font_big,255,255,255);
			UpdateDraw(Player[playerid].Deaths,200,6000,Player[playerid].Deathcount,font_big,255,255,255);
			MinusPlayer(playerid);
		end
		
		-- Player[playerid].register = 0 -- Wird im ClearPlayerObject unten sowieso aufgerufen...
		-- Player[playerid].PM = 0; -- Wird im ClearPlayerObject unten sowieso aufgerufen...

		ClearPlayerObject(playerid); -- Meatbug :)

		if reason == 0 then --disconnect
			SendMessageToAll(200,200,50,string.format("%s %s",Name,LeftServer[Player[playerid].Language]))
			local msg = string.format("Spieler hat den Server verlassen.\t\t%s\t%s\t%s", GetPlayerName(playerid), GetPlayerIP(playerid), GetMacAddress(playerid))
			ServerLog("CONNECTION", msg)
		elseif reason == 1 then --lost, crash
			SendMessageToAll(200,200,50,string.format("%s %s",Name,LostServer[Player[playerid].Language]))
			local msg = string.format("Spieler hat die Verbindung verloren.\t\t%s\t%s\t%s", GetPlayerName(playerid), GetPlayerIP(playerid), GetMacAddress(playerid))
			ServerLog("CONNECTION", msg)
		end
	
		hideScoreCounter(playerid)
		hideMultiList(playerid)
		hideFocusList(playerid)
		hidePlayerList(playerid)
		
		-- Hier f�r die Map die PlayerId entfernen.
		MapPlayerLagerDelete(playerid)
		PlayerWithOpenMapDelete(playerid)
	else
		-- Hier f�r die Map die NpcId (hei�t playerid) entfernen.
		MapLagerNpcListeDelete(playerid)
		MapBossListeDelete(playerid)
		MapMonsterListeDelete(playerid)
	end
end

function OnPlayerSpawn(playerid, classid)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerSpawn("..playerid..", "..classid..")")
	-- print("function OnPlayerSpawn(playerid, classid)", playerid, classid)

    if IsNPC(playerid) == 1 then
		Slot[playerid].Deathcountstoper = 0;
    else
		resetPlayer(playerid);
		CMD_EinsteigerGuide_On(playerid);
    end
end

function PlayerBanStatus(name, playerid)
	local name_esc = mysql_escape_string(mysql_handler, name)
	local result = mysql_query(mysql_handler, "SELECT `IP` FROM `Bannliste` WHERE `name`='".. name_esc .."' OR `IP`='" .. GetPlayerIP(playerid) .. "' OR `MAC`='" .. GetMacAddress(playerid) .. "'");
	if mysql_num_rows(result) ~= 0 then --Wenn die IP der eingehenden Verbindung auf der Bannliste steht...
		return false; --gib false zur�ck
	else 
		return true; --sonst true
	end
	mysql_free_result(result);
end

print("Loaded LUA file   " .. debug.getinfo(1).source)