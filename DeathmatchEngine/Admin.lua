-------------------------------------------------------------------------------
-- Admin Command Funktionen
-------------------------------------------------------------------------------
-- D�rfen nur aufgerufen werden, wenn der Spieler Admin ist.
-- Hier wird das nicht mehr �berpr�ft.
-------------------------------------------------------------------------------

function CMD_Kick(playerid, params)
	local result,id,reason = sscanf(params,"ds");
	if result == 1 then
		if IsPlayerConnected(id) == 1 then
			local idAdmin = mysql_query(mysql_handler, "SELECT `Admin` FROM `user` WHERE `name`='" .. GetPlayerName(id) .. "'");
			if mysql_num_rows(idAdmin) == 1 then
				local row = mysql_fetch_row(idAdmin)
				local AdminNr = tonumber(row[1]);
				mysql_free_result(idAdmin)
				local Admin = Player[playerid].isAdmin
				if Admin >= AdminNr then
					for i = 0, GetMaxPlayers() - 1 do
						SendPlayerMessage(i,255,0,0,string.format("%s %s %s %s %s %s %s","(Server):",GetPlayerName(id),"wurde von",GetPlayerName(playerid),"gekickt.","Grund:",reason));
					end
					Kick(id);
					ServerLog("ADMIN","Spieler "..Player[playerid].nick.." hat "..Player[id].nick.." wegen :"..reason.." gekickt");
				else
					SendPlayerMessage(playerid,255,0,0,"Du hast nicht das Recht diesen Spieler zu kicken!");
				end
			else
				for i = 0, GetMaxPlayers() - 1 do
					SendPlayerMessage(i,255,0,0,string.format("%s %s %s %s %s %s %s","(Server):",GetPlayerName(id),"wurde von",GetPlayerName(playerid),"gekickt.","Grund:",reason));
				end
				Kick(id);
				ServerLog("ADMIN","Spieler "..Player[playerid].nick.." hat "..Player[id].nick.." wegen :"..reason.." gekickt");
			end
		else
			SendPlayerMessage(playerid,255,250,200,string.format("%s %d %s","(Server): Player ID",id,"ist nicht mit dem Server verbunden."));
		end
	else
		SendPlayerMessage(playerid,255,250,200,"Use: /kick (playerid) (reason)");
	end
end

function CMD_Ban(playerid, params)
	local result,id,reason = sscanf(params,"ds")
	
	if result ~= 1 then
		SendPlayerMessage(playerid,255,250,200,"Use: /ban (playerid) (reason)")
		return
	end
	
	if IsPlayerConnected(id) ~= 1 then
		SendPlayerMessage(playerid,255,250,200,string.format("%s %d %s","(Server): Player ID",id,"ist nicht mit dem Server verbunden."))
		return
	end

	local bannerAdminNr = Player[playerid].isAdmin
	local toBeBannedAdminNr = Player[id].isAdmin
	local bannerName = Player[playerid].nick
	local toBeBannedName = Player[id].nick
	if bannerAdminNr >= toBeBannedAdminNr then
		local result = mysql_query(mysql_handler, "INSERT INTO Bannliste SET IP='" .. GetPlayerIP(id) .. "', MAC ='" .. GetMacAddress(id) .. "', Name='" .. toBeBannedName .. "', Grund='" ..reason.."'")
		mysql_free_result(result)
		-- Ban(id)
		Kick(id)
		SendMessageToAll(255,0,0,string.format("%s %s %s %s %s %s %s", "(Server):", toBeBannedName, "wurde von", bannerName, "gebannt.", "Grund:", reason))
		ServerLog("ADMIN","Spieler "..bannerName.." hat "..toBeBannedName.." gebannt wegen :"..reason);
	else
		SendPlayerMessage(playerid,255,0,0,"Du hast nicht das Recht Spieler "..toBeBannedName.." zu bannen!");
	end
end


function CMD_Kill(playerid, params)

	local result,id = sscanf(params,"d");	
    
    if result == 1 then 
			
		if IsPlayerConnected(id) == 1 then

			if Player[playerid].isAdmin == 1 then

				local Lagercheck = mysql_query(mysql_handler, "SELECT `Point` FROM `Score` WHERE `Lager` = '"..Player[id].Lager.."'");
								
				if mysql_num_rows(Lagercheck) == 1 then
					if RundeAktiv == 1 then		
						
						local rows = mysql_fetch_row(Lagercheck)
						local Points = tonumber(rows[1]);
						mysql_free_result(Lagercheck);
					
									
						Multiplikatorcheck(id,Points)
						SetPlayerHealth(id,0);
						SendPlayerMessage(playerid,255,250,200,string.format("%s %s","Du toetest",GetPlayerName(id)));
						SendPlayerMessage(id,238,154,0, "Du wurdest wegen eines Regelbruchs von " ..Player[playerid].nick.. " get�tet! ");
						ServerLog("ADMIN","Spieler "..Player[playerid].nick.." hat "..Player[id].nick.." get�tet");

						if Points > 0 then
							local Killabzug = mysql_query(mysql_handler, "UPDATE `Score` SET `Point` = Point - 1 WHERE `Lager` = '" .. Player[id].Lager .. "'");
							mysql_free_result(Killabzug);
							local Lagercheck = mysql_query(mysql_handler, "SELECT `Point` FROM `Score` WHERE `Lager` = '"..Player[id].Lager.."'");
							if mysql_num_rows(Lagercheck) == 1 then
								if RundeAktiv == 1 then		
									local rows = mysql_fetch_row(Lagercheck)
									local Points = tonumber(rows[1]);
									mysql_free_result(Lagercheck);
																				
									if Player[id].Lager == 1 then
										UpdateDraw(Lagerpoints1,200,4500,tostring(Points),font_big,Farbe1x,Farbe1y,Farbe1z);
									elseif Player[id].Lager == 2 then
										UpdateDraw(Lagerpoints2,200,4750,tostring(Points),font_big,Farbe2x,Farbe2y,Farbe2z);
									elseif Player[id].Lager == 3 then
										UpdateDraw(Lagerpoints3,200,5000,tostring(Points),font_big,Farbe3x,Farbe3y,Farbe3z);
									end
								end
							end
							SendMessageToAll(238,154,0, "Der Spieler " ..Player[id].nick.. " wurde wegen eines Regelbruchs von " ..Player[playerid].nick.. " get�tet und sein Team hat dadurch einen Kill verloren! ");
						else 
							SendMessageToAll(238,154,0, "Der Spieler " ..Player[id].nick.. " wurde wegen eines Regelbruchs von " ..Player[playerid].nick.. " get�tet!");
						end
					end
				end					
			else
				SendPlayerMessage(playerid,255,250,200,"(Server): Du bist kein Admin!");
			end
		else
			SendPlayerMessage(playerid,255,250,200,string.format("%s %d %s","(Server): Player ID",id,"ist nicht mit dem Server verbunden."));
		end
	else
		SendPlayerMessage(playerid,255,250,200,"Use: /kill (playerid)");
	end
end

function CMD_Teleport(playerid, params)
	local result,from_id,to_id = sscanf(params,"dd");
	if result == 1 then
		if IsPlayerConnected(from_id) == 1 then
			if IsPlayerConnected(to_id) == 1 then
				SendPlayerMessage(from_id,255,250,200,string.format("%s %s","Teleportiert zu:",GetPlayerName(to_id)));
				ServerLog("ADMIN","Spieler "..Player[playerid].nick.." hat "..GetPlayerName(from_id).." zu "..GetPlayerName(to_id).." Teleportiert.");
				local x,y,z = GetPlayerPos(to_id);
				SetPlayerPos(from_id,x + 50,y,z);
			else
				SendPlayerMessage(playerid,255,250,200,string.format("%s %d %s","(Server): Player ID",to_id,"ist nicht mit dem Server verbunden."));
			end
		else
			SendPlayerMessage(playerid,255,250,200,string.format("%s %d %s","(Server): Player ID",from_id,"ist nicht mit dem Server verbunden."));
		end
	else
		SendPlayerMessage(playerid,255,250,200,"Befehl: /tp (fromplayerid) (toplayerid)");
	end
end

function CMD_GiveItem(playerid, params)
	local result, id, amount, item = sscanf(params,"dds")
	-- print("CMD_GiveItem(playerid, params)", playerid, params)
	-- print("result, id, amount, item", result, id, amount, item)
	if result == 1 then
		if IsPlayerConnected(id) == 1 then
			local getitemfromdb = mysql_query(mysql_handler, "SELECT * FROM `itemlist` WHERE `item` = '"..item.."'")
			local row = mysql_fetch_assoc(getitemfromdb)
			if getitemfromdb then
				if(mysql_num_rows(getitemfromdb) ~= 0) then
					SendPlayerMessage(id,255,250,200,string.format("%s %d %s %s %s","Du erhaelst",amount,row.item,"von",GetPlayerName(playerid)))
					SendPlayerMessage(playerid,255,250,200,string.format("%s %d %s %s %s","Du gibst",amount,row.item,"zu",GetPlayerName(id)))
					GiveItem(id,row.iteminstance,amount);
					ServerLog("ADMIN","Spieler "..Player[playerid].nick.." hat "..Player[id].nick.." "..row.item..":"..amount.." gegeben.")
				end
			end
			mysql_free_result (getitemfromdb)
		else
			SendPlayerMessage(playerid,255,250,200,string.format("%s %d %s","(Server): Player ID",id,"ist nicht mit dem Server verbunden."))
		end
	else
		SendPlayerMessage(playerid,255,250,200,"Befehl: /giveitem (playerid) (iteminstance) (Anzahl)")
	end
end

function CMD_Tierfocus(playerid, params)
	local result,tier = sscanf(params, "s");
	if result == 1 then
	local focusid = GetFocus(playerid)
		if focusid >= 0 and (focusid <= GetMaxPlayers()) then
			savePlayerLocation(focusid);
			Player[focusid].stk = 0;
			Player[focusid].dex = 0;
			Player[focusid].einhand = 0;
			Player[focusid].zweihand = 0;
			Player[focusid].bogen = 0;
			Player[focusid].armbrust = 0;
			Player[focusid].lernp = 0;
			Player[focusid].hp = 0;
			Player[focusid].hpmax = 0;
			Player[focusid].mana = 0;
			Player[focusid].manamax = 0;
			Player[focusid].magiekreis = 0;
			Player[focusid].level = 0;
			Player[focusid].ep = 0;
			Player[focusid].isOnline = 0;
			Player[focusid].x = 0;
			Player[focusid].y = 0;
			Player[focusid].z = 0;
			Player[focusid].angle = 0;
			Player[focusid].kopf = nil;
			Player[focusid].kopfskin = 0;
			Player[focusid].torso = nil;
			Player[focusid].torsoskin = 0;
			Player[focusid].fatness = 0;
			Player[focusid].xscale = 1;
			Player[focusid].selectedOption = 0;
			Player[focusid].Tier = 1
			SendPlayerMessage(focusid,255,255,0,"Du wurdest in ein Tier verwandelt: "..tier..".");
			SendPlayerMessage(playerid,255,255,0,"Erfolgreich verwandelt: "..tier..".");
			SetPlayerInstance(focusid,tier);
		end
	else
		SendPlayerMessage(playerid,255,255,0,"/tierfocus Tiername (in Englisch)");
	end
end

function CMD_Tier(playerid, params)
	local result,tier = sscanf(params, "s");
	if result == 1 then
		savePlayerLocation(playerid);
		Player[playerid].stk = 0;
		Player[playerid].dex = 0;
		Player[playerid].einhand = 0;
		Player[playerid].zweihand = 0;
		Player[playerid].bogen = 0;
		Player[playerid].armbrust = 0;
		Player[playerid].lernp = 0;
		Player[playerid].hp = 0;
		Player[playerid].hpmax = 0;
		Player[playerid].mana = 0;
		Player[playerid].manamax = 0;
		Player[playerid].magiekreis = 0;
		Player[playerid].level = 0;
		Player[playerid].ep = 0;
		Player[playerid].isOnline = 0;
		Player[playerid].x = 0;
		Player[playerid].y = 0;
		Player[playerid].z = 0;
		Player[playerid].angle = 0;
		Player[playerid].kopf = nil;
		Player[playerid].kopfskin = 0;
		Player[playerid].torso = nil;
		Player[playerid].torsoskin = 0;
		Player[playerid].fatness = 0;
		Player[playerid].xscale = 1;
		Player[playerid].selectedOption = 0;
		Player[playerid].Tier = 1
		SendPlayerMessage(playerid,255,255,0,"Du bist nun das Tier: "..tier..".");
		SetPlayerInstance(playerid,tier);
	else
		SendPlayerMessage(playerid,255,255,0,"/tier Tiername (in Englisch)");
	end
end

function CMD_Rundereseten(playerid, params)
	if Mode == "Deathmatch" then
		local result,Score = sscanf(params,"d");
		if result == 1 then
			ScoreEND = Score
			Pointstowincounter = CreateDraw(200,5500,tostring(Score),font_big,255,255,255)
		end
		local score = mysql_query(mysql_handler, "UPDATE `Score` SET `Point` = 0")
		mysql_free_result(score)
	elseif Mode == "KilltheKing" then
	
	end
	SetTimerEx("Rundeneustarten", 5000,0,playerid)
	SendMessageToAll(255,255,255,"Das Spiel wurde von einem Admin beendet. Neue Runde startet in 5 Sekunden.")
end

function CMD_Change(playerid, params)
	local result,id,Lager = sscanf(params,"ds");
	if result == 1 then
		if Player[id].isOnline == 1 then
			if Map == "Kolonie" then	
				if Lager == "AlteLager" or Lager == "altelager" then
					MinusPlayer(id);
					Player[id].Lager = 1
				elseif Lager == "NeueLager" or Lager == "neuelager" then
					MinusPlayer(id);
					Player[id].Lager = 2
				elseif Lager == "SumpfLager" or Lager == "sumpflager" then
					MinusPlayer(id);
					Player[id].Lager = 3
				else
					return
				end
			elseif Map == "Jharkendar" then
				if Lager == "Piraten" or Lager == "piraten" then
					MinusPlayer(id);
					Player[id].Lager = 1
				elseif Lager == "Banditen" or Lager == "banditen" then
						MinusPlayer(id);
						Player[id].Lager = 2
				else 
					return
				end
			elseif Map == "Khorinis" then
				if Lager == "Feuermagier" or Lager == "feuermagier" then
					MinusPlayer(id);
					Player[id].Lager = 1
				elseif Lager == "Schwarzmagier" or Lager == "schwarzmagier" then
						MinusPlayer(id);
						Player[id].Lager = 2
				else 
					return
				end
			else
				return
			end
			PlusPlayer(id);
			UnequipArmor(id);
			Player[playerid].dontbreakkillstreak = 1;
			SetTimerEx("RespawnAfterDeathTimer",2000,0,id);
			if Map == "Kolonie" then
				SendMessageToAll(200,200,50,string.format("%s %s %s %s",Player[id].nick, "Kaempft nun fuer das",Lager,"!"));
			elseif Map == "Jharkendar" or Map == "Khorinis" then
				SendMessageToAll(200,200,50,string.format("%s %s %s %s",Player[id].nick, "Kaempft nun fuer die",Lager,"!"));
			else
				return
			end
			mysql_query(mysql_handler, "UPDATE user SET Lager='" .. Player[id].Lager .. "' WHERE name='" .. Player[id].nick .. "'");
			
			-- Hier f�r die Map den geswitchten Spieler ins aktuelle Lager setzen.
			MapPlayerLagerSet(id, Player[id].Lager)
		else
			SendPlayerMessage(playerid,255,255,255,"ID nicht Online!");
		end
	else
		SendPlayerMessage(playerid,255,255,255,"/change (id) (Lagername). (AlteLager,NeueLager,SumpfLager)");
	end
end

function CMD_EndScore(playerid, params)
	local result,Score = sscanf(params,"d")
	if result == 1 then
		ScoreEND = Score
		local ScorePointende = mysql_query(mysql_handler, "UPDATE `Score` SET `Point` = '"..ScoreEND.."' WHERE `Lager` = 0");
		SendMessageToAll(200,200,50,string.format("%s %s %s","Ein Admin hat denn Score auf",ScoreEND,"gesetzt!"));
		UpdateDraw(Pointstowincounter,200,5500,tostring(Score),font_big,255,255,255);
	else
		SendPlayerMessage(playerid,255,255,255,"/endstand (punkte).");
	end
end

function CMD_Full(playerid,params)
    local result,id = sscanf(params,"d");	
    if Mode == "Deathmatch" then
	
        if result == 1 then 
        
            if IsPlayerConnected(id) == 1 then			
			
                if Player[playerid].isAdmin == 1 then	
				
					local charreset = mysql_query(mysql_handler, "UPDATE `user` SET `stk`= 100 ,`dex`= 100 ,`1h`= 100,`2h`= 100,`Bogen`= 100,`Armbrust`= 100,`Magiekreis`= 6,`HP`= 300,`HPMAX`= 300,`Mana`= 250,`ManaMAX`= 250,`EP`= 0,`Level`= 10,`LP`= 0 WHERE `name`='" .. GetPlayerName(id) .. "'" );
					GiveItem(id, "ITMI_NUGGET", 20000);
			        CMD_FixChar(id);
				else
					SendPlayerMessage(playerid,255,250,200,"(Server): Du bist kein Admin!");
				end
				
			else 
                SendPlayerMessage(playerid,255,250,200,string.format("%d","(Server): Player ID", id, "ist nicht mit dem Server verbunden."));
			end
			
		else 
            SendPlayerMessage(playerid,255,250,200,"Befehl: /full (playerid)");
		end
		
    end
end

function CMD_Poll(playerid, params)
	local result,points = sscanf(params,"d");
	if result == 1 then
		if (Mode == "Deathmatch" or Mode == "CTF") then
			GameTextForAll(poll.pollx,poll.polly,"Poll: Punkte zum Sieg auf "..points.." setzen?",font_small,255,255,255,15000);
			SendMessageToAll(poll.color[1],poll.color[2],poll.color[3],"Poll: Punkte zum Sieg auf "..points.." setzen?");
			SendMessageToAll(poll.color[1],poll.color[2],poll.color[3],"30 Sekunden bis zum Ende des Polls. Ja/Numpad4 - Nein/Numpad5");
			poll.enable = 1;
			pollscore = points;
			SetTimerEx("Pollresult",30000,0,pollscore);
		else
			SendPlayerMessage(playerid,255,0,0,"Nur in Deathmatch oder CTF verfuegbar");
		end
	else 
		SendPlayerMessage(playerid,255,0,0,"Befehl: /pollrequest Scoreanzahl");
	end
end

function Pollresult(pollscore)
	if poll.yes >= poll.no then
		ScoreEND = pollscore;
		local ScorePointende = mysql_query(mysql_handler, "UPDATE `Score` SET `Point` = '"..ScoreEND.."' WHERE `Lager` = 0");
		SendMessageToAll(200,200,50,string.format("%s %s %s","Der Poll wurde akzeptiert. Der Score wird auf",ScoreEND,"gesetzt!"));
		UpdateDraw(Pointstowincounter,200,5500,tostring(pollscore),font_big,255,255,255);
	else
		SendMessageToAll(200,200,50,"Der Poll wurde abgelehnt!");
	end

	poll.enable = 0;
	poll.yes = 0;
	poll.no = 0;
	
	local i;
	for i = 0, GetMaxPlayers() - 1 do
		if Player[i].pollyes == 1 then
			SendPlayerMessage(i,255,255,255,"Du hast fuer Ja gestimmt.")
			Player[i].pollcount = 0;
			Player[i].pollyes = 0;
		elseif Player[i].pollno == 1 then
			SendPlayerMessage(i,255,255,255,"Du hast fuer Nein gestimmt.")
			Player[i].pollcount = 0;
			Player[i].pollno = 0;
		else
			SendPlayerMessage(i,255,255,255,"Du hast nicht abgestimmt.")
		end
	end
end


-------------------------------------------------------------------------------
-- Spawn und Despawn Command Funktionen

function CMD_DespawnAll(playerid, params)
	-- Liste der von Spielern gespawnten Viecher auf leer setzen.
	AI_PlayerSpawnedNPC = {}
	-- Alle Viecher despawnen (DestroyNPC)
	for id = GetMaxPlayers(),GetMaxSlots() - 1 do
		if IsNPC(id) == 1 then
			DestroyNPC(id)
		end
	end
	-- KillTheKing Tore despawnen
	if Mode == "KilltheKing" and Map == "Kolonie" then
		CMD_DespawnKolonietore(playerid, params)
	elseif Mode == "KilltheKing" and Map == "Khorinis" then
		CMD_DespawnKhorinistore(playerid, params)
	end
	SendPlayerMessage(playerid,255,250,200,"Du hast die alle NPCS despawned.")
end

function CMD_DespawnKolonietore(playerid, params)
	ALTor1:Destroy();
	ALTor2:Destroy();
	SendPlayerMessage(playerid,255,250,200,"Du hast die Kolonietore despawned.")
end

function CMD_DespawnKhorinistore(playerid, params)
	aVob:Destroy();
	bVob:Destroy();
	SendPlayerMessage(playerid,255,250,200,"Du hast die Khorinistore despawned.")
end

function CMD_SpawnAll(playerid, params)
	if Mode == "Deathmatch" then
		if Map == "Kolonie" then
			CMD_SpawnKolonie(playerid, params)
		elseif Map == "Jharkendar" then
			CMD_SpawnJharkendar(playerid, params)
		elseif Map == "Khorinis" then
			CMD_SpawnKhorinis(playerid, params)
		end
	elseif Mode == "KilltheKing" then
		CMD_SpawnKings(playerid, params)
	end
end

function CMD_SpawnKolonie(playerid, params)
	InitColonyNpc()
	SendPlayerMessage(playerid,255,250,200,"Du hast die Kolonie NPCs gespawnt.")
end

function CMD_SpawnJharkendar(playerid, params)
	InitJhakendarNPC()
	SendPlayerMessage(playerid,255,250,200,"Du hast die Jharkendar NPCs gespawnt.")
end

function CMD_SpawnKhorinis(playerid, params)
	InitKhorinisNpc()
	SendPlayerMessage(playerid,255,250,200,"Du hast die Khorinis NPCs gespawnt.")
end

function CMD_SpawnKings(playerid, params)
	if Map == "Kolonie" then
		InitKingsNpc()
		SendPlayerMessage(playerid,255,250,200,"Du hast die Kolonie K�nige gespawnt.")
	elseif Map == "Jharkendar" then
		print("Jharkendar KillTheKing gibts noch nicht.")
		SendPlayerMessage(playerid,255,250,200,"Jharkendar KillTheKing gibts noch nicht.")
	elseif Map == "Khorinis" then
		InitKhorinisKTKNPC()
		SendPlayerMessage(playerid,255,250,200,"Du hast die Khorinis K�nige gespawnt.")
	end
end

function CMD_SpawnNPCINDB(playerid, params)
	local result, animal = sscanf(params,"s")
	if result == 1 then
		if Monster[animal] ~= nil then
			local world = GetPlayerWorld(playerid)
			local wp = AI_WayNets[world]:GetNearestWP(playerid).name
			print(animal,wp,world)
			SpawnNPC(Spawn_NPC(animal),wp,world)
			SQLinsertNPC = mysql_query(mysql_handler, "INSERT INTO `NPCSpawn` (`Instance`, `Waypoint`, `World`, `IGID`) VALUES ('"..animal.."', '"..wp.."', '"..mysql_escape_string(mysql_handler,world).."', '"..npcarr.id.."')")
		elseif mysql_num_rows(npcQuery) == 0 then
			SendPlayerMessage(playerid,255,250,200,"(Server): Du hast einen falschen Tiernamen angegeben: "..animal)
		end
	else
		SendPlayerMessage(playerid,255,250,200,"(Server): Du hast keinen Tiernamen angegeben.")
	end
end

function CMD_DespawnNPCINDB(playerid, params)
	local i, id = sscanf(params, "d")
	if i == 0 then
		id = GetFocus(playerid)
	end
	
	if id and id ~= -1 and IsNPC(id) == 1 then
		local world = GetPlayerWorld(id)
		local wp = AI_NPCList[id].StartWP
		SQLdeleteNPC = mysql_query(mysql_handler, "DELETE FROM `NPCSpawn` WHERE `Waypoint` = '"..wp.."' and `World` = '"..mysql_escape_string(mysql_handler,world).."' and `IGID` = '"..id.."'")
		DestroyNPC(id)
		SendPlayerMessage(playerid,255,250,200,"(Despawn) NPC "..id.." wurde despawned.")
	else
		SendPlayerMessage(playerid,255,250,200,"(Despawn) Falsche ID, kein Ziel als Fokus und/oder ID ist kein NPC.")
	end
end

function CMD_CWP(playerid, params)
	local result, waypoint = sscanf(params,"s")
	
	if result == 1 then
		local npcQuery = mysql_query(mysql_handler, "SELECT `Name` FROM `Waypoints` WHERE `Name` = '"..waypoint.."'")
		if mysql_num_rows(npcQuery) == 1 then
			SendPlayerMessage(playerid,255,250,200,"(Waypoint) Waypoints wird bereits benutzt : "..waypoint.." ")
		else
			local x,y,z = GetPlayerPos(playerid)
			local world = GetPlayerWorld(playerid)
			InsWaypoint = mysql_query(mysql_handler, "INSERT INTO `Waypoints` (`Name`,`x`,`y`,`z`,`dirx`,`dirz`,`World`) VALUES ('"..waypoint.."', '"..x.."', '"..y.."', '"..z.."', '0', '1', '"..mysql_escape_string(mysql_handler,world).."')")
			SendPlayerMessage(playerid,255,250,200,"(Waypoint) Waypoint wurde gesetzt : "..waypoint.." ")
			Player[playerid].WPStore = waypoint;
			Player[playerid].WPStore2 = waypoint;
			Player[playerid].WPCounterid = 0;
		end
	elseif Player[playerid].WPStore ~= nil then
		local NEWWaypoint = Player[playerid].WPStore.."_"..tostring(Player[playerid].WPCounterid)..""
		Player[playerid].WPCounterid = Player[playerid].WPCounterid + 1
		local x,y,z = GetPlayerPos(playerid)
		local world = GetPlayerWorld(playerid)
		InsWaypoint = mysql_query(mysql_handler, "INSERT INTO `Waypoints` (`Name`,`x`,`y`,`z`,`dirx`,`dirz`,`World`) VALUES ('"..NEWWaypoint.."', '"..x.."', '"..y.."', '"..z.."', '0', '1', '"..mysql_escape_string(mysql_handler,world).."')")
		SendPlayerMessage(playerid,255,250,200,"(Waypoint) Waypoint wurde gesetzt : "..NEWWaypoint.." ")
		InsWaypoint = mysql_query(mysql_handler, "INSERT INTO `WPVerbindung` (`Waypoint`, `WPVerbindung`) VALUES ('"..Player[playerid].WPStore2.."', '"..NEWWaypoint.."')")
		InsWaypoint2 = mysql_query(mysql_handler, "INSERT INTO `WPVerbindung` (`Waypoint`, `WPVerbindung`) VALUES ('"..NEWWaypoint.."', '"..Player[playerid].WPStore2.."')")
		Player[playerid].WPStore2 = NEWWaypoint;
	else
		SendPlayerMessage(playerid,255,250,200,"(Waypoint) Kein Waypoint im Store.")
	end
end

function CMD_LWP(playerid, params)
	local result, waypoint,waypoint2 = sscanf(params,"ss")
	local DBwaypoint = mysql_query(mysql_handler, "SELECT `Name` FROM `Waypoints` WHERE `Name` = '"..waypoint.."'")
	local DBwaypoint2 = mysql_query(mysql_handler, "SELECT `Name` FROM `Waypoints` WHERE `Name` = '"..waypoint2.."'")
	if mysql_num_rows(DBwaypoint) == 1 and mysql_num_rows(DBwaypoint2) == 1 then
		InsWaypoint = mysql_query(mysql_handler, "INSERT INTO `WPVerbindung` (`Waypoint`, `WPVerbindung`) VALUES ('"..waypoint.."', '"..waypoint2.."')")
		InsWaypoint2 = mysql_query(mysql_handler, "INSERT INTO `WPVerbindung` (`Waypoint`, `WPVerbindung`) VALUES ('"..waypoint2.."', '"..waypoint.."')")
		SendPlayerMessage(playerid,255,250,200,"(Waypoint) "..waypoint.." mit "..waypoint2.." verbunden.")
	else
		SendPlayerMessage(playerid,255,250,200,"(Waypoint) Mindestens einer der beiden Waypoints ist nicht vorhanden.")
	end	
end

function CMD_DWP(playerid, params)
	Player[playerid].WPStore = nil;
	Player[playerid].WPCounterid = 0;
	SendPlayerMessage(playerid,255,250,200,"(Waypoint) Waypoint store wurde zurück gesetzt.")
end



-------------------------------------------------------------------------------
-- Agenten Modus Command Funktionen

function CMD_Aggro(playerid, params)
	local i, id = sscanf(params,"d")
	if i == 0 or id == playerid then
		-- Self invis
		if AI_PlayerList[playerid].Invisible then
			AI_PlayerList[playerid].Invisible = false
			SendPlayerMessage(playerid,193,70,230,"(Aggro: on) Monster greifen dich an.")
			ServerLog("ADMIN", GetPlayerName(playerid).." hat Aggro eingeschaltet. (Aggro: on)")
		else
			AI_PlayerList[playerid].Invisible = true;
			SendPlayerMessage(playerid,193,70,230,"(Aggro: off) Monster greifen dich nicht mehr an.")
			ServerLog("ADMIN", GetPlayerName(playerid).." hat Aggro ausgeschaltet. (Aggro: off)")
		end
	else
		-- Other invis
		if id and id ~= -1 and IsPlayerConnected(id) == 1 and IsNPC(id) == 0 then
			if AI_PlayerList[id].Invisible then
				AI_PlayerList[id].Invisible = false;
				SendPlayerMessage(id,193,70,230,"(Aggro: on) Monster greifen dich wieder an.")
				SendPlayerMessage(playerid,193,70,230,"(Aggro: on) Monster greifen "..GetPlayerName(id).." an.")
				ServerLog("ADMIN", GetPlayerName(playerid).." hat Aggro fuer "..GetPlayerName(id).." eingeschaltet. (Aggro: on)")
			else
				AI_PlayerList[id].Invisible = true;
				SendPlayerMessage(id,193,70,230,"(Aggro: off) Monster greifen dich nicht mehr an.")
				SendPlayerMessage(playerid,193,70,230,"(Aggro: off) Monster greifen "..GetPlayerName(id).." nicht mehr an.")
				ServerLog("ADMIN", GetPlayerName(playerid).." hat Aggro fuer "..GetPlayerName(id).." ausgeschalte1. (Aggro: off)")
			end
		else
			SendPlayerMessage(playerid,255,250,200,"(Aggro) Falsche ID. Nicht moeglich fuer NPCs.")
		end
	end
end

function CMD_Invisible(playerid, params)
	if GetPlayerStreamable(playerid) == 1 then
		SetPlayerStreamable(playerid,0,1)
		SendPlayerMessage(playerid,193,70,230,"(Invis: on) Spieler sehen dich nicht mehr.")
		ServerLog("ADMIN", GetPlayerName(playerid).." hat invis angeschalten. (Invis: on)")
	else
		SetPlayerStreamable(playerid,1,1)
		SendPlayerMessage(playerid,193,70,230,"(Invis: off) Spieler sehen dich wieder.")
		ServerLog("ADMIN", GetPlayerName(playerid).." hat invis ausgeschalten. (Invis: off)")
	end
end

function CMD_Agent(playerid, params)
	if GetPlayerStreamable(playerid) == 1 and AI_PlayerList[playerid].Invisible == false then
		SetPlayerStreamable(playerid, 0, 1)
		AI_PlayerList[playerid].Invisible = true
		SendPlayerMessage(playerid,193,70,230,"(Invis: on) Spieler sehen dich nicht mehr.")
		ServerLog("ADMIN", GetPlayerName(playerid).." hat invis angeschalten. (Invis: on)")
		SendPlayerMessage(playerid,193,70,230,"(Aggro: on) Monster greifen dich nicht mehr an.")
		ServerLog("ADMIN", GetPlayerName(playerid).." hat Aggro angeschalten. (Aggro: on)")
	else
		SetPlayerStreamable(playerid, 1, 1)
		AI_PlayerList[playerid].Invisible = false
		SendPlayerMessage(playerid,193,70,230,"(Invis: off) Spieler sehen dich wieder.")
		ServerLog("ADMIN", GetPlayerName(playerid).." hat invis ausgeschalten. (Invis: off)")
		SendPlayerMessage(playerid,193,70,230,"(Aggro: off) Monster greifen dich an.")
		ServerLog("ADMIN", GetPlayerName(playerid).." hat Aggro ausgeschalten. (Aggro: off)")
	end
end

function CMD_GetHealth(playerid, params)
	local i, id = sscanf(params,"d")
	if i == 0 then -- Keine ID in params, dann Focus versuchen.
		id = GetFocus(playerid)
	end
	if id and id == -1 then -- Keine ID im Focus, dann Health f�r sich selbst anzeigen.
		id = playerid
	end
	SendPlayerMessage(playerid,255,250,200,"(/gethealth) Player "..id.." "..GetPlayerName(id).." hat "..GetPlayerHealth(id).." von "..GetPlayerMaxHealth(id).." Leben")
end

function CMD_Spy(playerid, params)
	local i, id = sscanf(params,"d")
	if i == 0 then -- Wenn keine ID angegeben, dann sich selbst nehmen. (/spy schaltet dann den Modus aus.)
		id = playerid
	end
	
	if id == playerid then -- Spy Modus ausschalten.
		FreezePlayer(playerid, 0)
		SetDefaultCamera(playerid)
	else -- Spy Modus auf id anwenden.
		local result = SetCameraBehindPlayer(playerid, id)
		if result == 1 then
			FreezePlayer(playerid, 1)
			SendPlayerMessage(playerid,255,250,200,"(/spy) Du siehst Player "..id.." "..GetPlayerName(id))
		else
			SendPlayerMessage(playerid,255,250,200,"(/spy) Falsche ID oder kein Ziel als Fokus. Zumal Ziel auch in Streamreichweite sein muss.")
		end
	end
end

function CMD_Follow(playerid, params)
	local focusid = GetFocus(playerid)
	if focusid >= 0 and IsNPC(focusid) == 1 then
		local px, py, pz = GetPlayerPos(focusid)
		AI_NPCList[focusid].LASTWP = AI_WayNets[AI_NPCList[focusid].GP_World]:GetNearestWPPos(px, py, pz).name --AI_WayNets[AI_NPCList[focusid].GP_World]:GetNearestWP(focusid);
		AI_FOLLOW(focusid, playerid, AI_NPCList[focusid].LASTWP)
		SendPlayerMessage(playerid,255,250,200,"(/follow) NPC "..focusid.." "..GetPlayerName(focusid).." folgt dir jetzt.")
	else
		SendPlayerMessage(playerid,255,250,200,"(/follow) Kein Ziel als Fokus.")
	end
end

function CMD_Unfollow(playerid, params)
	local focusid = GetFocus(playerid)
	if focusid >= 0 and IsNPC(focusid) == 1 then
		AI_STOP_NOW(focusid, 10)
		SendPlayerMessage(playerid,255,250,200,"(/unfollow) NPC "..focusid.." "..GetPlayerName(focusid).." folgt dir NICHT.")
	else
		SendPlayerMessage(playerid,255,250,200,"(/unfollow) Kein Ziel als Fokus.")
	end
end

-- Charakterwerte eines Spielers in den Chat schreiben
function CMD_Charakterwerte(playerid, params)
	local i, id = sscanf(params,"d")
	if i == 0 then id = playerid end -- Wenn keine ID angegeben, dann sich selbst nehmen.
 	local name = GetPlayerName(id)
	local str = GetPlayerStrength(id)
	local dex = GetPlayerDexterity(id)
	local einhand = GetPlayerSkillWeapon(id, SKILL_1H)
	local zweihand = GetPlayerSkillWeapon(id, SKILL_2H)
	local bogen = GetPlayerSkillWeapon(id, SKILL_BOW)
	local armbrust = GetPlayerSkillWeapon(id, 3)
	local hp = GetPlayerHealth(id)
	local hpmax = GetPlayerMaxHealth(id)
	local mana = GetPlayerMana(id)
	local manamax = GetPlayerMaxMana(id)
	local magiekreis = GetPlayerMagicLevel(id)
	local level = GetPlayerLevel(id)
	local ep = GetPlayerExperience(id)
	local lernp = GetPlayerLearnPoints(id)
	local t1 = string.format("Spieler %s hat str=%d, dex=%d, 1h=%d, 2h=%d, bogen=%d, armbrust=%d",
								name, str, dex, einhand, zweihand, bogen, armbrust )
	local t2 = string.format("Spieler %s hat hp=%d, hpmax=%d, mana=%d, manamax=%d, magiekreis=%d, level=%d, ep=%d, lernpunkte=%d",
								name, hp, hpmax, mana, manamax, magiekreis, level, ep, lernp )
	SendPlayerMessage(playerid, 255, 255, 255, t1)
	SendPlayerMessage(playerid, 255, 255, 255, t2)
end

local bodyModel, bodyTexture, headModel, headTexture

function CMD_Gesichtsdieb(playerid, params)
	-- print("CMD_Gesichtsdieb(playerid, params) :", playerid, params)
	
	if (GetPlayerName(playerid) ~= "DarkRaider") then return end -- Nur der echte Gesichtsdieb darf ...
	
	-- Gesichtsdiebzauber
	local focusid = GetFocus(playerid)
	if focusid < 0 then
		SendPlayerMessage(playerid,255,250,200,"(..........) Kein Ziel im Fokus.")
		return
	end
	
	PlayAnimation(playerid,"T_PRACTICEMAGIC3")
	
	bodyModel, bodyTexture, headModel, headTexture = GetPlayerAdditionalVisual(focusid)
	SetTimerEx("Gesichtsdieb_Timer", 5000, 0, playerid)
end

function Gesichtsdieb_Timer(playerid)
	SetPlayerAdditionalVisual(playerid, Player[playerid].torso, Player[playerid].torsoskin, headModel, headTexture)
end


-------------------------------------------------------------------------------
-- Test Command Funktion

function CMD_Test(playerid, params)
	-- print("CMD_Test(playerid, params) :", playerid, params)
		
	-- DebugPrintMonsterBelohnungen()

	-- Zum Testen einer Map, die im Spieleverzeichnis liegen muss.
	-- SetPlayerWorld(playerid, "NEWWORLD/KHORINISDM_TEST.ZEN" ,"START")
	
	DebugPrintPlayerWithOpenMap()
	DebugPrintLagerPlayerListe()
	DebugPrintLagerNpcListe()
	DebugPrintBossListe()
	DebugPrintMonsterListe()
end

print("Loaded LUA file   " .. debug.getinfo(1).source)