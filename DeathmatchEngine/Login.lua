
function ClearGMPAChat(playerid) -- Kann ausgeklammert werden da dies bereits nativ im GMP Client vorhanden ist!
	for i = 0, 10 do
		SendPlayerMessage(playerid, 255, 255, 255, "");
	end
end

function resetPlayer(playerid)
	-- print("function resetPlayer(playerid)", playerid)

	Player[playerid].isOnline = 0;
	SetPlayerPos(playerid, 3963.209717, 848.204163, 4924.096680);
	SetPlayerAngle(playerid, 355);
	SendPlayerMessage(playerid, 130, 250, 0, JoinServer1[Player[playerid].Language])
	SendPlayerMessage(playerid, 130, 250, 0, JoinServer2[Player[playerid].Language])
	SendPlayerMessage(playerid, 130, 250, 0, JoinServer3[Player[playerid].Language])
	SendPlayerMessage(playerid, 130, 250, 0, JoinServer4[Player[playerid].Language])
	sendERRMessage(playerid, JoinServer5[Player[playerid].Language]);
	sendERRMessage(playerid, JoinServer6[Player[playerid].Language]);
	sendERRMessage(playerid, JoinServer7[Player[playerid].Language]);
	sendERRMessage(playerid, JoinServer8[Player[playerid].Language]);
end

function switchPlayer(playerid, name_, password_)
	-- print("function switchPlayer(playerid, name_ ...)", playerid, name_)

	--if (Player[playerid].LogIn == 1) then
	--	sendERRMessage(playerid, "Is bereits eingeloggt.");
	--	return;
	--end

	savePlayerLocation(playerid);
	saveHpEpMana(playerid);
	ClearPlayerObject(playerid);

	if (mysql_check_connection() == true) then
		local name = mysql_escape_string(mysql_handler, name_);
		local password = mysql_escape_string(mysql_handler, password_);
		local result = mysql_query(mysql_handler, "SELECT * FROM `user` WHERE `name`='" .. name .. "' AND `passwort`='" .. MD5(password) .. "'");
		if result then
			local rowsCount = mysql_num_rows(result);
			if (rowsCount == 1) then
				--login successful
				SetPlayerName(playerid, name);
				Player[playerid].nick = name;
				local world = GetPlayerWorld(playerid);
				if world == "NEWWORLD\\NEWWORLD.ZEN" then
					SetPlayerWorld(playerid,"NEWWORLD\\KOLONIEDM.ZEN","OC1");
				end
				loadPlayerLocation(playerid);
				loadPlayerCharW(playerid);
				loadPlayerCharskin(playerid);
				loadItems(playerid);
				Player[playerid].isOnline = 1;
				sendOKMessage(playerid, "Du hast dich als " .. name .. " angemeldet.");

				---------------Todesscript---------------
				if Player[playerid].deathreason ~= "Nichts" then
					PlayAnimation(playerid,"S_DEAD");
					FreezePlayer(playerid,1); 
					Player[playerid].aniblock = true;
				end
				-------------ENDETodesscript-------------

			else
				sendERRMessage(playerid, "Switch fehlgeschlagen. Nutzername und Passwort sind vergeben oder nicht vorhanden.");
			end
		end
		mysql_free_result(result);
	end
end

--[[function loginPlayer(playerid, name_, password_)

	if (Player[playerid].isOnline == 1) then
		sendERRMessage(playerid, "Du bist bereits als " .. GetPlayerName(playerid) .. " eingeloggt.");
		return;
	end

	if (Player[playerid].Tier == 1) then
		sendERRMessage(playerid, "Du bist ein Tier! Du musst dich vorher ausloggen!");
		return
	end

	if (mysql_check_connection() == true) then
		local name = mysql_escape_string(mysql_handler, name_);
		local password = mysql_escape_string(mysql_handler, password_);
		local result = mysql_query(mysql_handler, "SELECT * FROM `user` WHERE `name`='" .. name .. "' AND `passwort`='" .. MD5(password) .. "'");
		if result then
			local rowsCount = mysql_num_rows(result);
			if (rowsCount == 1) then
				--login successful
				SetPlayerName(playerid, name);
				Player[playerid].nick = name;
				local world = GetPlayerWorld(playerid);
				if world == "NEWWORLD\\NEWWORLD.ZEN" then
					SetPlayerWorld(playerid,"NEWWORLD\\KOLONIEDM.ZEN","OC1");
				end
				loadPlayerLocation(playerid);
				loadPlayerCharW(playerid);
				loadPlayerCharskin (playerid);
				loadItems (playerid);
				Player[playerid].isOnline = 1;
				FreezePlayer(playerid,0);
				Player[playerid].aniblock = false;
				sendOKMessage(playerid, "Du hast dich als " .. name .. " angemeldet.");

				--------------------------- Todesscript - Jey
				if Player[playerid].deathreason ~= "Nichts" then
					PlayAnimation(playerid,"S_DEAD");
					FreezePlayer(playerid,1); --spieler liegt unbeweglich auf dem Boden bis er wiederbelebt wird
					Player[playerid].aniblock = true;
				end
				-------------------------- ENDE Todesscript

			else
				sendERRMessage(playerid, "Login fehlgeschlagen. Nutzername und Passwort sind falsch oder nicht vorhanden.");
			end
		else
			sendERRMessage(playerid, "Login fehlgeschlagen. Nutzername und Passwort sind falsch oder nicht vorhanden.");
		end
		mysql_free_result(result);
	end
end]]

function CMD_Logout(playerid)
	-- print("function CMD_Logout(playerid)", playerid)

	-- Pfeile und Bolzen hier in der DB speichern.
	HasItem(playerid,"ITRW_ARROW",120)
	HasItem(playerid,"ITRW_BOLT",121)

	if Mode == "KilltheKing" and Player[playerid].isOnline == 1 then
		GuildMembersCount[Player[playerid].Lager] = GuildMembersCount[Player[playerid].Lager] - 1
		if KingAlive[Player[playerid].Lager] == 0 then
			CheckTeamDeath(playerid)
		end
	end

	if Player[playerid].Tier == 0 then
		--savePlayerLocation(playerid);
		--saveHpEpMana(playerid);
		FreezePlayer(playerid,1)
		Player[playerid].aniblock = true;
		--Player[playerid].nick = nil;
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
		Player[playerid].LogIn = 0;
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
		Player[playerid].gang = nil;
		Player[playerid].AFK = 0
		Player[playerid].PM = 0;

		Player[playerid].deathreason = "Nichts"
		Player[playerid].respawn_x = 0;
		Player[playerid].respawn_y = 0;
		Player[playerid].respawn_z = 0;
		Player[playerid].resurrect = 0;

		local msec = (logout_time*1000);
		SendPlayerMessage(playerid,255,255,255,"Logout in "..logout_time.." Sekunden.");
		if Player[playerid].isAdmin == 0 then
			SetTimerEx("ende",msec,0,playerid); --5000ms = 5 seconds, execute function only once.
		else
			ExitGame(playerid);
			Player[playerid].isAdmin = 0
		end
	else
		Player[playerid].nick = nil
		Player[playerid].Tier = 0
		ExitGame(playerid);
	end
end

function saveHpEpMana(playerid)
	-- print("function saveHpEpMana(playerid)", playerid)

	local hp = GetPlayerHealth(playerid)
	if hp < 2 then
		hp = 2;
	end
	--print("Login.lua saveHpEpMana(playerid) Datenbank Update HP EP MANA.")
	local result = mysql_query(mysql_handler, "UPDATE user SET hp='"..hp.."' , EP='"..GetPlayerExperience(playerid).."' , mana='"..GetPlayerMana(playerid).."' WHERE name='" ..GetPlayerName(playerid).. "'");
	mysql_free_result(result);
end

function ende(playerid)
	-- print("function ende(playerid)", playerid)

    ExitGame(playerid);
end

function savePlayerLocation(playerid)
	-- print("function savePlayerLocation(playerid)", playerid)

	local world = GetPlayerWorld(playerid);
	local x,y,z = GetPlayerPos(playerid);
	mysql_query(mysql_handler, "UPDATE user SET x='" .. x .. "', y='" .. y .. "', z='" .. z .. "', angle='" .. GetPlayerAngle(playerid) .. "' WHERE name='" .. GetPlayerName(playerid) .. "'");
end

function savePlayerCwerte(playerid)
	-- print("function savePlayerCwerte(playerid)", playerid)

	local str = GetPlayerStrength(playerid);
	local dex = GetPlayerDexterity(playerid);
	local magiekreis = GetPlayerMagicLevel(playerid);
	local hp = GetPlayerHealth(playerid);
	local hpmax = GetPlayerMaxHealth(playerid);
	local mana = GetPlayerMana(playerid);
	local manamax = GetPlayerMaxMana(playerid);
	local lernp = GetPlayerLearnPoints(playerid);
	local level = GetPlayerLevel(playerid);
	local einhand = GetPlayerSkillWeapon(playerid,SKILL_1H);
	local zweihand = GetPlayerSkillWeapon(playerid,SKILL_2H);
	local bogen = GetPlayerSkillWeapon(playerid,SKILL_BOW);
	local armbrust = GetPlayerSkillWeapon(playerid,3);
 	local name = GetPlayerName(playerid);
	local ep = GetPlayerExperience(playerid);
	mysql_query(mysql_handler, "UPDATE user SET stk='" .. str .. "', dex='" .. dex .. "', magiekreis='" .. magiekreis .. "', hp='" .. hp .. "', hpmax='" .. hpmax .. "', mana='" .. mana .. "', manamax='" .. manamax .. "', lp='" .. lernp .. "', level='" .. level .. "', EP='" .. ep .. "', 1h='" .. einhand .. "', 2h='" .. zweihand .. "', bogen='" .. bogen .. "', armbrust='" .. armbrust .. "' WHERE name='" .. name .. "'");
	print(mysql_error(mysql_handler));
end


-- Ersetzt die Tabelle Level in der Datenbank.
--                 Level:  0    1     2     3     4    5      6     7     8     9     10
--                 index:  1    2     3     4     5    6      7     8     9    10     11      (ist Level +1)
local NextLevelPunkte = { 250, 500, 1000, 1500, 2000, 2500, 3000, 3500, 4000, 5000, 999999 }

-- Gibt f�r ein Level die NextLevelPunkte zur�ck.
function GetNextLevelPunkte(level)
	if level == nil then
		return NextLevelPunkte[11]
	end
	if (level >= 0) and (level <= 10) then
		return NextLevelPunkte[level + 1]
	end
	return NextLevelPunkte[11]
end

function GetLVL(playerid)
	-- print("function GetLVL(playerid)", playerid)

	local player = Player[playerid]
	if player == nil then
		print("GetLVL(playerid) Fehler: playerid ist nil.")
		return
	end
	
	local EpNaechstesLevel = GetNextLevelPunkte(player.level)

	if player.ep >= EpNaechstesLevel then
		player.ep = player.ep - EpNaechstesLevel
		player.level = player.level + 1
		player.hpmax = player.hpmax + 10
		player.lernp = player.lernp + 20
		SetPlayerExperience(playerid, player.ep)
		SetPlayerLevel(playerid, player.level)
		SetPlayerLearnPoints(playerid, player.lernp)
		if Roterfocus == player.nick then
			SetPlayerMaxHealth(playerid, player.hpmax + 50)
		else
			SetPlayerMaxHealth(playerid, player.hpmax)
		end
		SetPlayerExperienceNextLevel(playerid, GetNextLevelPunkte(player.level))
		
		mysql_query(mysql_handler, "UPDATE user SET EP ='" .. player.ep .. "', level='" .. player.level .. "', lp='" .. player.lernp .. "', hpmax='" .. player.hpmax .. "' WHERE name='" .. player.nick .. "'")
		
		GameTextForPlayer(playerid,3000,4100,"Level " .. player.level .. " erreicht!","Font_Old_10_White_Hi.TGA",255,255,255,3000)

		if player.level == 3 then
			if Mode ~= "KilltheKing" then
				SendMessageToAll(255,255,255,"" .. player.nick .." hat Level 3 erreicht und ist nun Aktiv im PVP.")
			end

			if player.Lager == 1 then
				SetPlayerColor(playerid,Farbe1x,Farbe1y,Farbe1z)
			elseif player.Lager == 2 then
				SetPlayerColor(playerid,Farbe2x,Farbe2y,Farbe2z)
			elseif player.Lager == 3 then
				SetPlayerColor(playerid,Farbe3x,Farbe3y,Farbe3z)
			elseif player.Lager == 4 then
				SetPlayerColor(playerid,Farbe4x,Farbe4y,Farbe4z)
			elseif player.Lager == 5 then
				SetPlayerColor(playerid,Farbe5x,Farbe5y,Farbe5z)
			elseif player.Lager == 6 then
				SetPlayerColor(playerid,Farbe6x,Farbe6y,Farbe6z)
			end
		end
		
	else
		SetPlayerExperienceNextLevel(playerid,EpNaechstesLevel) -- H� warum next level ???
	end
end

function playerExists(name)
	if (mysql_check_connection() == true) then
		local result = mysql_query(mysql_handler, "SELECT * FROM user WHERE user.name='" .. name .. "'");
		return (mysql_num_rows(result) > 0);
	end
end

function sendOKMessage(playerid, text)
	SendPlayerMessage(playerid, 0, 255, 0, text);
end

function sendERRMessage(playerid, text)
	SendPlayerMessage(playerid, 255, 0, 0, text);
end

function ClearPlayerObject(playerid)
	-- print("function ClearPlayerObject(playerid)", playerid)

	ClearInventory(playerid); -- muss hier stehen: Meatbug

	Player[playerid].nick = nil;
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
	Player[playerid].isAdmin = 0; --gehoert noch zusaetlich eingefuegt
	Player[playerid].isOnline = 0;
	Player[playerid].x = 0;
	Player[playerid].y = 0;
	Player[playerid].z = 0;
	Player[playerid].angle = 0;
	Player[playerid].LogIn = 0;
	Player[playerid].schleichen = 0;
	Player[playerid].Lager = 0;
	Player[playerid].EinsteigerGuide_Aktiv = 0;
	Player[playerid].EinsteigerGuide_Folie = 1;

	Player[playerid].kopf = nil;
	Player[playerid].kopfskin = 0;
	Player[playerid].torso = nil;
	Player[playerid].torsoskin = 0;
	Player[playerid].fatness = 0;
	Player[playerid].xscale = 1;
	Player[playerid].selectedOption = 0;
	Player[playerid].Tier = 0;
	Player[playerid].AFK = 0;
	Player[playerid].register = 0;
	Player[playerid].PM = 0;

	Player[playerid].deathreason = "Nichts"
    Player[playerid].respawn_x = 0;
    Player[playerid].respawn_y = 0;
    Player[playerid].respawn_z = 0;
    Player[playerid].resurrect = 0;

	Player[playerid].login_tick = 0;
	Player[playerid].AFK_tick = 0;
	Player[playerid].AFK_start = 0;
	Player[playerid].got_lp = 0;
	Player[playerid].today_login_tick = 0;
end

function CMD_Login(playerid, params)
	local result, name, password = sscanf(params,"ss")
	if result == 1 then
		if Player[playerid].LogIn == 0 then
			if (mysql_check_connection() == true) then
				CMD_EinsteigerGuide_Off(playerid)
				local LO = mysql_query(mysql_handler, "SELECT `LogIn` FROM `user` WHERE `name`='" .. name .. "' AND `passwort`='" .. MD5(password) .. "'");
				if LO then
					local rowsCount = mysql_num_rows(LO);
					if (rowsCount == 1) then
						local row = mysql_fetch_row(LO)
						Log = tonumber(row[1]);
						if Log == 0 then
							loginPlayer(playerid, name, password);
							local loginupdate = mysql_query(mysql_handler, "UPDATE user SET LogIn='" .. 1 .. "' WHERE name='" .. name .. "'");
						elseif Log == 1 then
							sendERRMessage(playerid, "Spieler ist eingeloggt");
						end
					end
				end
				mysql_free_result(LO);
			end
		elseif Player[playerid].LogIn == 1 then
			sendERRMessage(playerid, "Du bist bereits eingeloggt");
		end
	else
		sendERRMessage(playerid, "Benutze /login <Name> <Passwort>");
	end
end

function CMD_Register(playerid, params)
	if Player[playerid].LogIn == 1 or Player[playerid].isOnline == 1 then
	sendERRMessage(playerid, "Du kannst keinen neuen Charakter anlegen wenn du bereits eingeloggt bist!");
	elseif Player[playerid].LogIn == 0 then
		local result, name, password = sscanf(params,"ss");
		if result == 1 then
			if (mysql_check_connection() == true) then
				CMD_EinsteigerGuide_Off(playerid)
				local LO = mysql_query(mysql_handler, "SELECT `LogIn` FROM `user` WHERE `name`='" .. name .. "'");
				if LO then
					local rowsCount = mysql_num_rows(LO);
					if (rowsCount == 0) then
						createChar(playerid);
						registerPlayer(playerid, name, password);
						local loginupdate = mysql_query(mysql_handler, "UPDATE user SET LogIn='" .. 1 .. "' WHERE name='" .. name .. "'");
						Player[playerid].LogIn = 1
					elseif (rowsCount == 1) then
						sendERRMessage(playerid, "Name bereits vergeben");
					end
				end
				mysql_free_result(LO);
			end
		else
			sendERRMessage(playerid, "Benutze /register <Name> <Passwort>");
		end
	end
end

function OnPlayerDropItem(playerid, itemid, itemInstance, amount, x, y, z)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerDropItem(playerid, itemid, itemInstance, amount, x, y, z)")
	
	if (mysql_check_connection() == true) then
		local item_helper = mysql_query(mysql_handler, "SELECT `idinventar` FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..itemInstance.."' AND `anzahl` >= '"..amount.."'");
		if item_helper then
			local item_count = mysql_query(mysql_handler, "SELECT `anzahl`,`idinventar` FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..itemInstance.."'");
			if item_count then
				if(mysql_num_rows(item_count) ~= 0) then
					mysql_query(mysql_handler, "UPDATE `inventar` SET `anzahl` = `anzahl` - "..amount.." WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..itemInstance.."'");
					ServerLog("ITEMS", "Spieler "..Player[playerid].nick.." liess Item fallen: ("..itemInstance.." "..amount.."x).");
					local drop = mysql_fetch_assoc(item_count);
					drop.anzahl = drop.anzahl - amount;
					if tonumber(drop.anzahl) <= 0 then
						mysql_query(mysql_handler, "DELETE FROM `inventar` WHERE `idinventar` = '"..drop.idinventar.."'");
					end
				end
				mysql_free_result (item_count);
			end
		end
		mysql_free_result (item_helper);
	end

	GetDropFocusstone(playerid,itemInstance)
end

function CMD_GiveItems(playerid,item_name,count)
	if (mysql_check_connection() == true) then
		local getitemfromdb = mysql_query(mysql_handler, "SELECT * FROM `itemlist` WHERE `iteminstance` = '"..item_name.."'");
		local row = mysql_fetch_assoc(getitemfromdb);
		if getitemfromdb and (mysql_num_rows(getitemfromdb) ~= 0) then
			GiveItem(playerid,row.iteminstance,count);
			local item_test = mysql_query(mysql_handler, "SELECT `anzahl` FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..item_name.."'");
			if item_test then
				if(mysql_num_rows(item_test) ~= 0) then
					mysql_query(mysql_handler, "UPDATE `inventar` SET `anzahl` = `anzahl` - "..count.." WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..item_name.."'");
				end
			end
			return 1;
		end
		mysql_free_result (getitemfromdb);
	end
end

function DeleteItemFromDatabase(playerid, itemInstance, amount)
	if (mysql_check_connection() == true) then
		local item_helper = mysql_query(mysql_handler, "SELECT `idinventar` FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..itemInstance.."' AND `anzahl` >= '"..amount.."'");
		if item_helper then
			local item_count = mysql_query(mysql_handler, "SELECT `anzahl`,`idinventar` FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..itemInstance.."'");
			if item_count then
				if(mysql_num_rows(item_count) ~= 0) then
					mysql_query(mysql_handler, "UPDATE `inventar` SET `anzahl` = `anzahl` - "..amount.." WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..itemInstance.."'");
					ServerLog("ITEMS", "Dem Spieler "..Player[playerid].nick.." wurden "..amount.." "..itemInstance.." aus der Datenbank gel�scht.")
					local drop = mysql_fetch_assoc(item_count);
					drop.anzahl = drop.anzahl - amount;
					if tonumber(drop.anzahl) <= 0 then
						mysql_query(mysql_handler, "DELETE FROM `inventar` WHERE `idinventar` = '"..drop.idinventar.."'");
					end
				end
				mysql_free_result (item_count);
			end
		end
		mysql_free_result (item_helper);
	end
end

function CMD_Trade(playerid, params)
	local result, amount, item = sscanf(params, "ds")
	print("CMD_Trade(playerid, params)", playerid, params)
	print("result, amount, item", result, amount, item)
	
	if (result == 1) and (amount > 0) then -- Wenn die Parameter falsch rum sind oder keine Anzahl angegeben ist, Hilfetext anzeigen.
		local focusid = GetFocus(playerid)
		if focusid >= 0 and (focusid <= GetMaxPlayers()) then
			local itemlistresult = mysql_query(mysql_handler, "SELECT iteminstance, item FROM itemlist WHERE item = '"..item.."'")
			if mysql_num_rows(itemlistresult) == 1 then
				local row = mysql_fetch_row(itemlistresult)
				local itemInstance = row[1]
				local itemname = row[2]
				local vorhanden = mysql_query(mysql_handler, "SELECT anzahl FROM inventar WHERE item = '"..itemInstance.."' and name = '"..Player[playerid].nick.."'")
				if mysql_num_rows(vorhanden) == 1 then
					local rows = mysql_fetch_row(vorhanden)
					local anzahl = tonumber(rows[1])
					if anzahl >= amount then
						local focus_name = GetPlayerName(focusid)
						GiveItem(focusid, itemInstance, amount)
						RemoveItem(playerid, itemInstance, amount)
						DeleteItemFromDatabase(playerid, itemInstance, amount)
						SendPlayerMessage(playerid,255,255,0,"Du hast "..amount.."x "..itemname.." an "..focus_name.." gegeben.")
					else
						SendPlayerMessage(playerid,255,0,0,"Du hast nicht so viel.")
					end
				else
					SendPlayerMessage(playerid,255,0,0,"Du besitzt dieses Item nicht.")
				end
				mysql_free_result(vorhanden)
			end
			mysql_free_result(itemlistresult)
		else -- (focusid == -1)
			SendPlayerMessage(playerid,255,0,0,"Kein Spieler im Focus.")
		end
	else
		sendERRMessage(playerid, "/trade <ANZAHL> <Itemname>")
	end
end

function CMD_Drop(playerid, params)
	local result, amount, item = sscanf(params, "ds")
	print("CMD_Drop(playerid, params)", playerid, params)
	print("result, amount, item", result, amount, item)
	
	if (result == 1) and (amount > 0) then -- Wenn die Parameter falsch rum sind oder keine Anzahl angegeben ist, Hilfetext anzeigen.
		local resultitemlist = mysql_query(mysql_handler, "SELECT iteminstance, item FROM itemlist WHERE item = '"..item.."'")
		if mysql_num_rows(resultitemlist) == 1 then
			local row = mysql_fetch_row(resultitemlist)
			local itemInstance = row[1]
			local itemname = row[2]
			local vorhanden = mysql_query(mysql_handler, "SELECT anzahl FROM inventar WHERE item = '"..itemInstance.."' and name = '"..Player[playerid].nick.."'")
			if mysql_num_rows(vorhanden) == 1 then
				local rows = mysql_fetch_row(vorhanden)
				local anzahl = tonumber(rows[1])
				if anzahl >= amount	then
					DropItem(playerid, itemInstance, amount)
					SendPlayerMessage(playerid,255,0,0,DropItem1[Player[playerid].Language],amount.." x "..itemname,DropItem2[Player[playerid].Language])
				else
					SendPlayerMessage(playerid,255,0,0,DropItem3[Player[playerid].Language])
				end
			else
				SendPlayerMessage(playerid,255,0,0,"Du besitzt dieses Item nicht.")
			end
			mysql_free_result(vorhanden)
		end
		mysql_free_result(resultitemlist)
	else
		sendERRMessage(playerid, "/drop <ANZAHL> <Itemname>")
	end
end

function CMD_Delete(playerid, params)
	local result, amount, item = sscanf(params, "ds")
	print("CMD_Drop(playerid, params)", playerid, params)
	print("result, amount, item", result, amount, item)
	
	if (result ~= 1) or (amount == 0) then
		sendERRMessage(playerid, "/drop <ANZAHL> <Itemname>")
		return
	end
	
	if amount < 0 then
		SendPlayerMessage(playerid,255,0,0,"Netter Versuch ...")
		return
	end
	
	local itemInstance
	local itemname
	local resultitemlist = mysql_query(mysql_handler, "SELECT `iteminstance`, `item` FROM `itemlist` WHERE `item` = '"..item.."'")
	if mysql_num_rows(resultitemlist) == 1 then
		local row = mysql_fetch_row(resultitemlist)
		itemInstance = row[1]
		itemname = row[2]
		mysql_free_result(resultitemlist)
	else
		sendERRMessage(playerid, "(/drop <ANZAHL> <Itemname>) Unbekannter Itemname: "..item)
		mysql_free_result(resultitemlist)
		return
	end
	
	local anzahl
	local vorhanden = mysql_query(mysql_handler, "SELECT `anzahl` FROM `inventar` WHERE `item` = '"..itemInstance.."' and `name` = '"..Player[playerid].nick.."'")
	if mysql_num_rows(vorhanden) == 1 then
		local rows = mysql_fetch_row(vorhanden)
		anzahl = tonumber(rows[1])
		mysql_free_result(vorhanden)
	else
		SendPlayerMessage(playerid,255,0,0,"Du besitzt dieses Item nicht.")
		mysql_free_result(vorhanden)
		return
	end
		
	if anzahl >= amount	then
		RemoveItem(playerid, itemInstance, amount)
		DeleteItemFromDatabase(playerid, itemInstance, amount)
		SendPlayerMessage(playerid,255,0,0,"Du hast "..amount.." x "..itemname.." geloescht.");
	else
		SendPlayerMessage(playerid,255,0,0,"Du hast nicht so viel dabei.")
	end
end

-- Wird zur Zeit nicht verwendet.
function CMD_Kauf (playerid, params)
	local result, Anzahl, Item = sscanf(params,"ds");
	if result == 1 then
		if Anzahl == 0 then
		else
			local focusid = GetFocus(playerid)
			if focusid >= 0 then
				local Focusname = GetPlayerName(focusid)
				local Art, Klasse = Focusname:match("([^:]+)_([^;]+)");
				local result = mysql_query(mysql_handler, "SELECT cost, iteminstance, lager FROM itemlist WHERE item ='" .. Item .. "' AND `sell` ='" .. Art .. "'");
				if mysql_num_rows(result) == 1 then
					local row = mysql_fetch_row(result)
					local kosten = tonumber(row[1]);
					Player[playerid].Item = (row[2]);
					local lager = tonumber(row[3]);
					if lager ~= 0 then
						if lager ~= Player[playerid].Lager then
							sendERRMessage(playerid, "Dieses Item ist nicht fuer dieses Lager bestimmt.");
							return
						else
							Player[playerid].kosten = kosten * Anzahl
							Player[playerid].Anzahl = Anzahl
							HasItem(playerid,"ITMI_NUGGET",1);				
						end
					else
						Player[playerid].kosten = kosten * Anzahl
						Player[playerid].Anzahl = Anzahl
						HasItem(playerid,"ITMI_NUGGET",1);
					end
				else
					sendERRMessage(playerid, "Diese Person kann dir diesen gegenstand nicht verkaufen oder es ist nicht vorhanden.")
				end
			else
				sendERRMessage(playerid, "Niemand in focus.");
			end
		end
	else
		sendERRMessage(playerid, "/kaufe (Anzahl) (Item)");
	end
end

function CMD_Check (playerid, params)
	local result, Item = sscanf(params,"s");
	local focusid = GetFocus(playerid)
	if result == 1 then
		if focusid >= 0 then
			local Focusname = GetPlayerName(focusid)
			local Art, Klasse = Focusname:match("([^:]+)_([^;]+)");
			local result = mysql_query(mysql_handler, "SELECT cost,iteminstance,lager FROM itemlist WHERE item ='" .. Item .. "' AND `sell` ='" .. Art .. "'");
			if mysql_num_rows(result) == 1 then
				local row = mysql_fetch_row(result)
				local kosten = tonumber(row[1]);
				Player[playerid].Item = (row[2]);
				local lager = tonumber(row[3]);
				if lager ~= 0 then
					if lager ~= Player[playerid].Lager then
						sendERRMessage(playerid, "Dieses Item ist nicht fuer dieses Lager bestimmt.");
						return
					else
						Player[playerid].kosten = kosten
						sendOKMessage(playerid, "Ein  " .. Item .. " kostet " .. Player[playerid].kosten .. "");
					end
				else
					Player[playerid].kosten = kosten
					sendOKMessage(playerid, "Ein  " .. Item .. " kostet " .. Player[playerid].kosten .. "");
				end
			else
				sendERRMessage(playerid, "Diese Person kann dir diesen gegenstand nicht verkaufen oder es ist nicht vorhanden.");
			end
		else
			sendERRMessage(playerid, "Niemand in focus.");
		end
	else
		sendERRMessage(playerid, "/check (Item)");
	end
end

function CMD_Lehrer (playerid, params)
local result, skill , Anzahl = sscanf(params,"sd");
	if result == 1 then
		local focusid = GetFocus(playerid)
		if focusid >= 0 then
			Player[playerid].lernp = GetPlayerLearnPoints(playerid);				
			if Player[playerid].lernp ~= 0 and Player[playerid].lernp >= Anzahl then
				local Focusname = GetPlayerName(focusid)
				local Art, Klasse = Focusname:match("([^:]+)_([^;]+)");
				if Art == "Lehrer" then
					if skill == "mana" then
						Player[playerid].manamax = GetPlayerMaxMana(playerid);
						Player[playerid].manamax = Player[playerid].manamax + Anzahl;
						Player[playerid].lernp = Player[playerid].lernp - Anzahl;
						SetPlayerLearnPoints(playerid,Player[playerid].lernp);
						if Blauerfocus == Player[playerid].nick then
							SetPlayerMaxMana(playerid,Player[playerid].manamax + 20);
						else
							SetPlayerMaxMana(playerid,Player[playerid].manamax);
						end
						mysql_query(mysql_handler, "UPDATE user SET manamax='" .. Player[playerid].manamax .. "', lp='" .. Player[playerid].lernp .. "' WHERE name='" .. GetPlayerName(playerid) .. "'");
						sendOKMessage(playerid, "Dein " .. skill .. " ist um  " .. Anzahl .. " gestiegen!");
					elseif skill == "kreis" then
						Player[playerid].magiekreis = GetPlayerMagicLevel(playerid);
						if Anzahl == 1 then
							if Player[playerid].magiekreis < 6 then
								if Player[playerid].lernp >= 10 then
									Player[playerid].lernp = Player[playerid].lernp - 10;
									Player[playerid].magiekreis = Player[playerid].magiekreis + 1
									SetPlayerMagicLevel(playerid,Player[playerid].magiekreis);
									SetPlayerLearnPoints(playerid,Player[playerid].lernp);
									mysql_query(mysql_handler, "UPDATE user SET magiekreis='" .. Player[playerid].magiekreis .. "', lp='" .. Player[playerid].lernp .. "' WHERE name='" .. GetPlayerName(playerid) .. "'");
									sendOKMessage(playerid, "Dein " .. skill .. " ist um  " .. Anzahl .. " gestiegen!");
								else
									sendERRMessage(playerid, "Du brauchst 10 Lern Punkte pro Magier Kreis.");
								end
							else
								sendERRMessage(playerid, "Maximal Level erreicht.");	
							end
						else
							sendERRMessage(playerid, "Kreise koennen nur in 1er schritten geteacht werden.");
						end
					elseif skill == "staerke" then
						Player[playerid].stk = GetPlayerStrength(playerid);
						Player[playerid].stk = Player[playerid].stk + Anzahl;
						if Player[playerid].stk > 100 then
							sendERRMessage(playerid, "Maximal Staerke erreicht.")
							return;
						else
							Player[playerid].lernp = Player[playerid].lernp - Anzahl;
							SetPlayerLearnPoints(playerid,Player[playerid].lernp);
							if Gelberfocus == Player[playerid].nick then
							SetPlayerStrength(playerid,Player[playerid].stk + 10);
							else
							SetPlayerStrength(playerid,Player[playerid].stk);
							end
							mysql_query(mysql_handler, "UPDATE user SET stk='" .. Player[playerid].stk .. "', lp='" .. Player[playerid].lernp .. "' WHERE name='" .. GetPlayerName(playerid) .. "'");
							sendOKMessage(playerid, "Dein " .. skill .. " ist um  " .. Anzahl .. " gestiegen!");
						end
					elseif skill == "geschick" then
						Player[playerid].dex = GetPlayerDexterity(playerid);
						Player[playerid].dex = Player[playerid].dex + Anzahl;
						if Player[playerid].dex > 100 then
							sendERRMessage(playerid, "Maximal Geschick erreicht.")
							return;
						else
							Player[playerid].lernp = Player[playerid].lernp - Anzahl;
							SetPlayerLearnPoints(playerid,Player[playerid].lernp);
							if Gruenerfocus == Player[playerid].nick then
								SetPlayerDexterity(playerid,Player[playerid].dex + 10);
							else
								SetPlayerDexterity(playerid,Player[playerid].dex);
							end
							mysql_query(mysql_handler, "UPDATE user SET dex='" .. Player[playerid].dex .. "', lp='" .. Player[playerid].lernp .. "' WHERE name='" .. GetPlayerName(playerid) .. "'");
							sendOKMessage(playerid, "Dein " .. skill .. " ist um  " .. Anzahl .. " gestiegen!");
						end
					elseif skill == "einhand" then
						Player[playerid].einhand = GetPlayerSkillWeapon(playerid, 0)
						Player[playerid].einhand = Player[playerid].einhand + Anzahl
						if Player[playerid].einhand > 100 then
							sendERRMessage(playerid, "Maximal Einhand erreicht.")
							return;
						else
							Player[playerid].lernp = Player[playerid].lernp - Anzahl;
							SetPlayerLearnPoints(playerid,Player[playerid].lernp);
							SetPlayerSkillWeapon(playerid,0,Player[playerid].einhand);
							mysql_query(mysql_handler, "UPDATE user SET lp='" .. Player[playerid].lernp .. "', 1h='" .. Player[playerid].einhand .. "' WHERE name='" .. GetPlayerName(playerid) .. "'");
							sendOKMessage(playerid, "Dein " .. skill .. " ist um  " .. Anzahl .. " gestiegen!");
						end
					 elseif skill == "zweihand" then
						Player[playerid].zweihand = GetPlayerSkillWeapon(playerid, 1)
						Player[playerid].zweihand = Player[playerid].zweihand + Anzahl
						if Player[playerid].zweihand > 100 then
							sendERRMessage(playerid, "Maximal Zweihand erreicht.")
							return;
						else
							Player[playerid].lernp = Player[playerid].lernp - Anzahl;
							SetPlayerLearnPoints(playerid,Player[playerid].lernp);
							SetPlayerSkillWeapon(playerid,1,Player[playerid].zweihand);
							mysql_query(mysql_handler, "UPDATE user SET lp='" .. Player[playerid].lernp .. "', 2h='" .. Player[playerid].zweihand .. "' WHERE name='" .. GetPlayerName(playerid) .. "'");
							sendOKMessage(playerid, "Dein " .. skill .. " ist um  " .. Anzahl .. " gestiegen!")
						end
					elseif skill == "bogen" then
						Player[playerid].bogen = GetPlayerSkillWeapon(playerid, 2)
						Player[playerid].bogen = Player[playerid].bogen + Anzahl
						if Player[playerid].bogen > 100 then
							sendERRMessage(playerid, "Maximal Bogen erreicht.")
							return;
						else
							Player[playerid].lernp = Player[playerid].lernp - Anzahl;
							SetPlayerLearnPoints(playerid,Player[playerid].lernp);
							SetPlayerSkillWeapon(playerid,2,Player[playerid].bogen);
							mysql_query(mysql_handler, "UPDATE user SET lp='" .. Player[playerid].lernp .. "', Bogen='" .. Player[playerid].bogen .. "' WHERE name='" .. GetPlayerName(playerid) .. "'");
							sendOKMessage(playerid, "Dein " .. skill .. " ist um  " .. Anzahl .. " gestiegen!")	
						end
					elseif skill == "armbrust" then
						Player[playerid].armbrust = GetPlayerSkillWeapon(playerid, 3)
						Player[playerid].armbrust = Player[playerid].armbrust + Anzahl
						if Player[playerid].armbrust > 100 then
							sendERRMessage(playerid, "Maximal Armbrust erreicht.")
							return;
						else
							Player[playerid].lernp = Player[playerid].lernp - Anzahl;
							SetPlayerLearnPoints(playerid,Player[playerid].lernp);
							SetPlayerSkillWeapon(playerid,3,Player[playerid].armbrust);
							mysql_query(mysql_handler, "UPDATE user SET lp='" .. Player[playerid].lernp .. "', Armbrust='" .. Player[playerid].armbrust .. "' WHERE name='" .. GetPlayerName(playerid) .. "'");
							sendOKMessage(playerid, "Dein " .. skill .. " ist um  " .. Anzahl .. " gestiegen!")	
						end
					end
				else
					sendERRMessage(playerid, "Diese Person ist kein Lehrer.");
				end
			else
				sendERRMessage(playerid, "Keine oder zu wenig Lernpunkte!");
			end
		end
	else
		sendERRMessage(playerid, "/lern (Skill) (Anzahl)")
	end
end

function CMD_Heilung(playerid)
	local focusid = GetFocus(playerid)
	if focusid >= 0 then
		local Focusname = GetPlayerName(focusid)
		local Art, Klasse = Focusname:match("([^:]+)_([^;]+)");
		if Art == "Alchemie" then
			CompleteHeal(playerid)
			sendOKMessage(playerid, "Du wurdest geheilt!");
		elseif Mode == "KilltheKing" then
			if Focusname == "Raymond" and Player[playerid].Lager == 1 then    
				CompleteHeal(playerid)
				sendOKMessage(playerid, "Du wurdest geheilt!");
			elseif Focusname == "Gorax" and Player[playerid].Lager == 2 then    
				CompleteHeal(playerid)
				sendOKMessage(playerid, "Du wurdest geheilt!");
			elseif Focusname == "Grand" and Player[playerid].Lager == 3 then    
				CompleteHeal(playerid)
				sendOKMessage(playerid, "Du wurdest geheilt!");	
			elseif Focusname == "Falkson" and Player[playerid].Lager == 4 then    
				CompleteHeal(playerid)
				sendOKMessage(playerid, "Du wurdest geheilt!");	
			elseif Focusname == "Gar" and Player[playerid].Lager == 5 then    
				CompleteHeal(playerid)
				sendOKMessage(playerid, "Du wurdest geheilt!");	
			elseif Focusname == "Allan" and Player[playerid].Lager == 6 then    
				CompleteHeal(playerid)
				sendOKMessage(playerid, "Du wurdest geheilt!");	
			end
		else
			sendERRMessage(playerid, "Diese Person kann dich nicht heilen!");
		end
	else
		sendERRMessage(playerid, "Niemand im Focus")
	end	
end

function CMD_Afk(playerid)
	if Player[playerid].AFK == 0 then
		SetPlayerColor(playerid,80,80,80);
		SendPlayerMessage(playerid,255,255,0,"Du bist nun AFK.");
		Player[playerid].AFK = 1
	elseif Player[playerid].AFK == 1 then
		if Player[playerid].level < 3 then
			if Player[playerid].Lager == 1 then
				SetPlayerColor(playerid,Farbe1x,Farbe1y,Farbe1z);
			elseif Player[playerid].Lager == 2 then
				SetPlayerColor(playerid,Farbe2x,Farbe2y,Farbe2z);
			elseif Player[playerid].Lager == 3 then
				SetPlayerColor(playerid,Farbe3x,Farbe3y,Farbe3z);
			elseif Player[playerid].Lager == 4 then
				SetPlayerColor(playerid,Farbe4x,Farbe4y,Farbe4z);
			elseif Player[playerid].Lager == 5 then
				SetPlayerColor(playerid,Farbe5x,Farbe5y,Farbe5z);
			elseif Player[playerid].Lager == 6 then
				SetPlayerColor(playerid,Farbe6x,Farbe6y,Farbe6z);
			end
		else
			SetPlayerColor(playerid,255,255,255);
		end
		SendPlayerMessage(playerid,255,255,0,"Du bist nun nicht mehr AFK.");
		Player[playerid].AFK = 0
	end
end

function CMD_PrivateMessage(playerid, params)
	local result,sendid,message = sscanf(params,"ds");
	if result == 1 then
		if playerid == sendid then
			SendPlayerMessage(playerid,230,70,70,"(Server): Du kannst dir nicht selbst schreiben!");
		else
			if Player[sendid].PM == 1 then
				SendPlayerMessage(playerid,230,70,70,"(Server): Dieser Spieler hat die PM funktion deaktiviert.");
			else
				if IsPlayerConnected(sendid) == 1 then
					local format_playerid = string.format("%s %s %s%d%s %s %s","(( >>",GetPlayerName(sendid),"(",sendid,"):",message,"))");
					SendPlayerMessage(playerid,239,226,108,format_playerid);

					local format_id = string.format("%s %s %s%d%s %s %s","((",GetPlayerName(playerid),"(",playerid,"):",message,"))");
					SendPlayerMessage(sendid,255,140,0,format_id);
				else
					SendPlayerMessage(playerid,230,70,70,string.format("%s %d %s","(Server): Player ID ",sendid," ist nicht mit dem Server verbunden."));
				end
			end
		end
	else
		SendPlayerMessage(playerid,230,70,70,"Befehl: /pm (playerid) (message)");
	end
end

function CMD_PmDeaktivieren(playerid)
	if Player[playerid].PM == 0 then
		Player[playerid].PM = 1;
		SendPlayerMessage(playerid,230,70,70,"/pm deaktiviert");
	else
		Player[playerid].PM = 0;
		SendPlayerMessage(playerid,70,230,70,"/pm aktiviert");
	end
end

function OnPlayerText(playerid, text)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerText(playerid, text)")
	
	if chat_roleplay == true then
		local x,y,z = GetPlayerPos(playerid);
		if (x >= 600.0 and x <= 2000.0) and (y <= 100.0 and y >= -800.0) and (z <= -51000.0 and z >= -55000.0) then
			SendPlayerMessage(playerid,200,100,100,"(Server): Aus Sicherheitsgruenden wurde deine Nachricht nicht an umstehende Spieler uebermittelt.");
		else
			for i = 0, GetMaxSlots() - 1 do
				if IsPlayerConnected(i) == 1 then
					if IsNPC(i) == 0 then
						if Player[playerid].Lager == Player[i].Lager  then
							if playerid == i then
								if Player[playerid].Lager == 1 then
									SendPlayerMessage(i,Farbe1x,Farbe1y,Farbe1z,string.format("%s %s","Ich:",text));
								elseif Player[playerid].Lager == 2 then
									SendPlayerMessage(i,Farbe2x,Farbe2y,Farbe2z,string.format("%s %s","Ich:",text));
								elseif Player[playerid].Lager == 3 then
									SendPlayerMessage(i,Farbe3x,Farbe3y,Farbe3z,string.format("%s %s","Ich:",text));
								elseif Player[playerid].Lager == 4 then
									SendPlayerMessage(i,Farbe4x,Farbe4y,Farbe4z,string.format("%s %s","Ich:",text));
								elseif Player[playerid].Lager == 5 then
									SendPlayerMessage(i,Farbe5x,Farbe5y,Farbe5z,string.format("%s %s","Ich:",text));
								elseif Player[playerid].Lager == 6 then
									SendPlayerMessage(i,Farbe6x,Farbe6y,Farbe6z,string.format("%s %s","Ich:",text));
								end
							elseif playerid ~= i then 
								if Player[playerid].Lager == 1 then
									SendPlayerMessage(i,Farbe1x,Farbe1y,Farbe1z,string.format("%s %s %s",GetPlayerName(playerid),":",text));
								elseif Player[playerid].Lager == 2 then
									SendPlayerMessage(i,Farbe2x,Farbe2y,Farbe2z,string.format("%s %s %s",GetPlayerName(playerid),":",text));
								elseif Player[playerid].Lager == 3 then
									SendPlayerMessage(i,Farbe3x,Farbe3y,Farbe3z,string.format("%s %s %s",GetPlayerName(playerid),":",text));
								elseif Player[playerid].Lager == 4 then
									SendPlayerMessage(i,Farbe4x,Farbe4y,Farbe4z,string.format("%s %s %s",GetPlayerName(playerid),":",text));
								elseif Player[playerid].Lager == 5 then
									SendPlayerMessage(i,Farbe5x,Farbe5y,Farbe5z,string.format("%s %s %s",GetPlayerName(playerid),":",text));
								elseif Player[playerid].Lager == 6 then
									SendPlayerMessage(i,Farbe6x,Farbe6y,Farbe6z,string.format("%s %s %s",GetPlayerName(playerid),":",text));
								end
							end							
						end
					end
				end
			end
		end
	end
end

function CMD_Weltnachricht(playerid, params)
	local result, text = sscanf(params,"s");
	if result == 1 then
		for i = 0, GetMaxSlots() - 1 do
			if IsPlayerConnected(i) == 1 then
				if IsNPC(i) == 0 then
					if playerid == i then
						if Player[playerid].Lager == 1 then
							SendPlayerMessage(i,Farbe1x,Farbe1y,Farbe1z,string.format("%s %s","(Global) Ich:",text));
						elseif Player[playerid].Lager == 2 then
							SendPlayerMessage(i,Farbe2x,Farbe2y,Farbe2z,string.format("%s %s","(Global) Ich:",text));
						elseif Player[playerid].Lager == 3 then
							SendPlayerMessage(i,Farbe3x,Farbe3y,Farbe3z,string.format("%s %s","(Global) Ich:",text));
						elseif Player[playerid].Lager == 4 then
							SendPlayerMessage(i,Farbe4x,Farbe4y,Farbe4z,string.format("%s %s","(Global) Ich:",text));
						elseif Player[playerid].Lager == 5 then
							SendPlayerMessage(i,Farbe5x,Farbe5y,Farbe5z,string.format("%s %s","(Global) Ich:",text));
						elseif Player[playerid].Lager == 6 then
							SendPlayerMessage(i,Farbe6x,Farbe6y,Farbe6z,string.format("%s %s","(Global) Ich:",text));
						end
					else
						if Player[playerid].Lager == 1 then
							SendPlayerMessage(i,Farbe1x,Farbe1y,Farbe1z,string.format("%s %s %s %s","(Global)",GetPlayerName(playerid),":",text));
						elseif Player[playerid].Lager == 2 then
							SendPlayerMessage(i,Farbe2x,Farbe2y,Farbe2z,string.format("%s %s %s %s","(Global)",GetPlayerName(playerid),":",text));
						elseif Player[playerid].Lager == 3 then
							SendPlayerMessage(i,Farbe3x,Farbe3y,Farbe3z,string.format("%s %s %s %s","(Global)",GetPlayerName(playerid),":",text));
						elseif Player[playerid].Lager == 4 then
							SendPlayerMessage(i,Farbe4x,Farbe4y,Farbe4z,string.format("%s %s %s %s","(Global)",GetPlayerName(playerid),":",text));
						elseif Player[playerid].Lager == 5 then
							SendPlayerMessage(i,Farbe5x,Farbe5y,Farbe5z,string.format("%s %s %s %s","(Global)",GetPlayerName(playerid),":",text));
						elseif Player[playerid].Lager == 6 then
							SendPlayerMessage(i,Farbe6x,Farbe6y,Farbe6z,string.format("%s %s %s %s","(Global)",GetPlayerName(playerid),":",text));
						end
					end
				end
			end
		end
	else
		sendERRMessage(playerid, "/g (text)");
	end
end;

function DB_AddItem(playerid, item_id, amount)
	--print("start DB_AddItem")
	--print(item_id)
	--print(amount)
	if item_id ~= nil then
		item_id = mysql_escape_string(mysql_handler,item_id);
		local itemhelper1 = mysql_query(mysql_handler, "SELECT `iteminstance` FROM `itemlist` WHERE `id` = '"..item_id.."'");
		if mysql_num_rows(itemhelper1) == 1 then
			local item = mysql_fetch_assoc(itemhelper1)
			local item_id = item.iteminstance
			GiveItem(playerid,item_id,amount)
		end
		mysql_free_result (itemhelper1);
	end
	--print("end DB_AddItem")
end

function OnPlayerKillMessage(playerid, killerid)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerKillMessage(playerid, killerid)")
	
	local i;
	if Player[killerid].Lager ~= Player[playerid].Lager then
		if killtextcount < 5 then
			killtextcount = killtextcount + 1;
		else
			for i = 1, 4 do
				killtexts[i].text = killtexts[i+1].text;
				killtexts[i].rot = killtexts[i+1].rot;
				killtexts[i].gruen = killtexts[i+1].gruen;
				killtexts[i].blau = killtexts[i+1].blau;
				UpdateDraw(killtexts[i].draw,tx,ty + ((i-1) * 200), killtexts[i].text, font_small,killtexts[i].rot,killtexts[i].gruen,killtexts[i].blau);
			end
		end

		if Player[killerid].Lager == 1 then 
			killtexts[killtextcount].rot = Farbe1x;
			killtexts[killtextcount].gruen = Farbe1y;
			killtexts[killtextcount].blau = Farbe1z;
		elseif Player[killerid].Lager == 2 then 
			killtexts[killtextcount].rot = Farbe2x;
			killtexts[killtextcount].gruen = Farbe2y;
			killtexts[killtextcount].blau = Farbe2z;
		elseif Player[killerid].Lager == 3 then 
			killtexts[killtextcount].rot = Farbe3x;
			killtexts[killtextcount].gruen = Farbe3y;
			killtexts[killtextcount].blau = Farbe3z;
		elseif Player[killerid].Lager == 4 then 
			killtexts[killtextcount].rot = Farbe4x;
			killtexts[killtextcount].gruen = Farbe4y;
			killtexts[killtextcount].blau = Farbe4z;
		elseif Player[killerid].Lager == 5 then 
			killtexts[killtextcount].rot = Farbe5x;
			killtexts[killtextcount].gruen = Farbe5y;
			killtexts[killtextcount].blau = Farbe5z;
		elseif Player[killerid].Lager == 6 then 
			killtexts[killtextcount].rot = Farbe6x;
			killtexts[killtextcount].gruen = Farbe6y;
			killtexts[killtextcount].blau = Farbe6z;
		end
	
		killtexts[killtextcount].text = ""..Player[killerid].nick..""..Killmassage1[Player[playerid].Language]..""..Player[playerid].nick..""..Killmassage2[Player[playerid].Language].."";
		UpdateDraw(killtexts[killtextcount].draw,tx,ty + ((killtextcount - 1) * 200), killtexts[killtextcount].text, font_small, killtexts[killtextcount].rot, killtexts[killtextcount].gruen, killtexts[killtextcount].blau);

		ShowPlayerkilltexts();
	elseif Player[killerid].Lager == Player[playerid].Lager then
		if killtextcount < 5 then
			killtextcount = killtextcount + 1;
		else
			for i = 1, 4 do
				killtexts[i].text = killtexts[i+1].text;
				killtexts[i].rot = killtexts[i+1].rot;
				killtexts[i].gruen = killtexts[i+1].gruen;
				killtexts[i].blau = killtexts[i+1].blau;
				UpdateDraw(killtexts[i].draw,tx,ty + ((i-1) * 200), killtexts[i].text, font_small,killtexts[i].rot,killtexts[i].gruen,killtexts[i].blau);
			end
		end

		killtexts[killtextcount].rot = killtexts.teamkillcolor[1];
		killtexts[killtextcount].gruen = killtexts.teamkillcolor[2];
		killtexts[killtextcount].blau = killtexts.teamkillcolor[3];

		killtexts[killtextcount].text = ""..Player[killerid].nick..""..Killmassage3[Player[playerid].Language].."";
		UpdateDraw(killtexts[killtextcount].draw,tx,ty + ((killtextcount - 1) * 200), killtexts[killtextcount].text, font_small, killtexts[killtextcount].rot, killtexts[killtextcount].gruen, killtexts[killtextcount].blau);
		ShowPlayerkilltexts();
	else
		return;
	end
end

function Resetkilltext()
	local j;
		for j = 1, 5 do
			UpdateDraw(killtexts[j].draw,tx,ty + ((j - 1) * 200), "", font_small, 255, 255, 255);
		end
	ShowPlayerkilltexts()
end

function ShowPlayerkilltexts()
	local j;
	for j = 0, GetMaxPlayers() - 1 do
		ShowDraw(j, killtexts[1].draw);
		ShowDraw(j, killtexts[2].draw);
		ShowDraw(j, killtexts[3].draw);
		ShowDraw(j, killtexts[4].draw);
		ShowDraw(j, killtexts[5].draw);
	end
end

function ShowPlayerkilltextsAfterLogin(playerid)
	local j;
	for j = 1, 5 do
		ShowDraw(playerid, killtexts[j].draw);
	end
end

function HidePlayerKilltexts(playerid)
	local j;
	for j = 1, 5 do
		HideDraw(playerid, killtexts[j].draw);
	end
end

print("Loaded LUA file   " .. debug.getinfo(1).source)