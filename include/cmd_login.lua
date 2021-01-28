function loginPlayer(playerid, name_, password_)
	-- print("function loginPlayer(playerid, name_ ...)", playerid, name_)
	local msg = string.format("Spieler versucht sich einzuloggen.\t%s\t%s\t%s\t%s", GetPlayerName(playerid), name_, GetPlayerIP(playerid), GetMacAddress(playerid))
	ServerLog("CONNECTION", msg)

	if IsNPC(playerid) == 0 and PlayerBanStatus(name_, playerid) == false then --PlayerBanStatus true, wenn IP nicht in Bannliste der DB
		Kick(playerid) -- Spieler mit name ist gebannt. Weg.
		local msg = string.format("Spieler ist gebannt und wurde gekickt.\t%s\t%s\t%s\t%s", GetPlayerName(playerid), name_, GetPlayerIP(playerid), GetMacAddress(playerid))
		ServerLog("CONNECTION", msg)
		return
	end

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
				local msg = string.format("Spieler loggte sich erfolgreich ein.\t%s\t%s\t%s\t%s", GetPlayerName(playerid), name_, GetPlayerIP(playerid), GetMacAddress(playerid))
				ServerLog("CONNECTION", msg)
				SetPlayerName(playerid, name);
				Player[playerid].nick = name;
				local world = GetPlayerWorld(playerid);
				if world == "NEWWORLD\\NEWWORLD.ZEN" then
					if Map == "Kolonie" then
						SetPlayerWorld(playerid,"NEWWORLD\\KOLONIEDM.ZEN","OC1");
					elseif Map == "Jharkendar" then
						SetPlayerWorld(playerid,"NEWWORLD\\JHARKENDARDM.ZEN","PORTALTEMPEL")
					elseif Map == "Khorinis" then
						SetPlayerWorld(playerid,"NEWWORLD\\KHORINISDM.ZEN","FP_STAND_LARES")
					end
				end
				Killmode(playerid)
				loadPlayerLocation(playerid);
				loadPlayerCharW(playerid);
				loadPlayerCharskin (playerid);
				loadItems (playerid);
				PlusPlayer(playerid);
				Player[playerid].isOnline = 1;
				Player[playerid].LogIn = 1;
				FreezePlayer(playerid,0);
				--Player[playerid].aniblock = false;
				sendOKMessage(playerid, "Du hast dich als " .. name .. " angemeldet.");
				ShowPlayerkilltextsAfterLogin(playerid);
				-----------Neustart der runde----------
				SetTimerEx("Loginnachreset", 1000,0,playerid)

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
end

function loadPlayerLocation(playerid)
	-- print("function loadPlayerLocation(playerid)", playerid)

	local result = mysql_query(mysql_handler, "SELECT x,y,z,angle FROM user WHERE name='" .. GetPlayerName(playerid) .. "'");
	if mysql_num_rows(result) == 1 then

		--------------------------- Todesscript - Jey
		if 	Player[playerid].resurrect == 1 then --Spieler wird wiederbelebt
			mysql_query(mysql_handler, "UPDATE `user` SET `death_reason` = 'Nichts' WHERE `name` = '"..Player[playerid].nick.."'");
			SetPlayerPos(playerid,Player[playerid].respawn_x,Player[playerid].respawn_y,Player[playerid].respawn_z);
		else
			Player[playerid].x,Player[playerid].y,Player[playerid].z, 
			Player[playerid].angle = mysql_result(result,1,1), mysql_result(result,1,2), mysql_result(result,1,3), mysql_result(result,1,4);
			SetPlayerPos(playerid, tonumber(Player[playerid].x), tonumber(Player[playerid].y), tonumber(Player[playerid].z));
			SetPlayerAngle(playerid, tonumber(Player[playerid].angle));
		end
		-------------------------- ENDE Todesscript
	end
	mysql_free_result(result);
end

function loadPlayerCharW(playerid)
	-- print("function loadPlayerCharW(playerid)", playerid)

	local result = mysql_query(mysql_handler, "SELECT stk,dex,1h,2h,bogen,armbrust,HP,HPMAX,Mana,ManaMAX,EP,Level,magiekreis,LP,Lager,Admin,New,Kills,Deaths,Assist,Sprache FROM user WHERE name='" .. GetPlayerName(playerid) .. "'");
	if mysql_num_rows(result) == 1 then
		local row = mysql_fetch_row(result)
		Player[playerid].stk = tonumber(row[1]);
		Player[playerid].dex = tonumber(row[2]);
		Player[playerid].einhand = tonumber(row[3]);
		Player[playerid].zweihand = tonumber(row[4]);
		Player[playerid].bogen = tonumber(row[5]);
		Player[playerid].armbrust = tonumber(row[6]);
		Player[playerid].hp = tonumber(row[7]);
		Player[playerid].hpmax = tonumber(row[8]);
		Player[playerid].mana = tonumber(row[9]);
		Player[playerid].manamax = tonumber(row[10]);
		Player[playerid].ep = tonumber(row[11]);
		Player[playerid].level = tonumber(row[12]);
		Player[playerid].magiekreis = tonumber(row[13]);
		Player[playerid].lernp = tonumber(row[14]);
		Player[playerid].Lager = tonumber(row[15]);
		Player[playerid].isAdmin = tonumber(row[16]);
		Player[playerid].new = tonumber(row[17]);
		Player[playerid].Killcount = (row[18]);
		Player[playerid].Deathcount = (row[19]);
		Player[playerid].Assistcount = (row[20]);
		Player[playerid].Language = tonumber(row[21]);
		GetLVL(playerid)
		Player[playerid].login_tick = GetTickCount()
		SetPlayerStrength(playerid,Player[playerid].stk);
		SetPlayerDexterity(playerid,Player[playerid].dex);
		SetPlayerMagicLevel(playerid,Player[playerid].magiekreis);
		SetPlayerHealth(playerid,Player[playerid].hp);
		SetPlayerMaxHealth(playerid,Player[playerid].hpmax);
		SetPlayerMana(playerid,Player[playerid].mana);
		SetPlayerMaxMana(playerid,Player[playerid].manamax);
		SetPlayerLearnPoints(playerid,Player[playerid].lernp);
		SetPlayerLevel(playerid,(Player[playerid].level));
		SetPlayerSkillWeapon(playerid,SKILL_1H,Player[playerid].einhand);
		SetPlayerSkillWeapon(playerid,SKILL_2H,Player[playerid].zweihand);
		SetPlayerSkillWeapon(playerid,SKILL_BOW,Player[playerid].bogen);
		SetPlayerSkillWeapon(playerid,3,Player[playerid].armbrust);
		SetPlayerExperience(playerid,Player[playerid].ep);
		UpdateDraw(Player[playerid].Kills,200,5750,Player[playerid].Killcount,font_big,255,255,255);
		UpdateDraw(Player[playerid].Deaths,200,6000,Player[playerid].Deathcount,font_big,255,255,255);
		UpdateDraw(Player[playerid].Assist,200,6250,Player[playerid].Assistcount,font_big,255,255,255);
		Slot[playerid].Deathcountstoper = 0;

		
		if Player[playerid].level > 2 or Mode == "KilltheKing" then
			if Player[playerid].Lager == 1 then
				SetPlayerColor(playerid,Farbe1x,Farbe1y,Farbe1z);
				--SetNicknameFont(font_al);
			elseif Player[playerid].Lager == 2 then
				SetPlayerColor(playerid,Farbe2x,Farbe2y,Farbe2z);
				--SetNicknameFont(font_nl);
			elseif Player[playerid].Lager == 3 then
				SetPlayerColor(playerid,Farbe3x,Farbe3y,Farbe3z);
				--SetNicknameFont(font_sl);
			elseif Player[playerid].Lager == 4 then
				SetPlayerColor(playerid,Farbe4x,Farbe4y,Farbe4z);
			elseif Player[playerid].Lager == 5 then
				SetPlayerColor(playerid,Farbe5x,Farbe5y,Farbe5z);
			elseif Player[playerid].Lager == 6 then
				SetPlayerColor(playerid,Farbe6x,Farbe6y,Farbe6z);
			end
		else
			if Player[playerid].Lager == 1 then
				SetPlayerColor(playerid,Farbe1x + 50,Farbe1y + 50,Farbe1z + 50);
				--SetNicknameFont(font_al);
			elseif Player[playerid].Lager == 2 then
				SetPlayerColor(playerid,Farbe2x + 50,Farbe2y + 50,Farbe2z + 50);
				--SetNicknameFont(font_nl);
			elseif Player[playerid].Lager == 3 then
				SetPlayerColor(playerid,Farbe3x + 50,Farbe3y + 50,Farbe3z + 50);
				--SetNicknameFont(font_sl);
			end
		end
		
	--[[local result2 = mysql_query(mysql_handler, "SELECT `today_logintick` FROM `user` WHERE `name` = '"..GetPlayerName(playerid).."' AND `lastlogin` = CURDATE()");
		if mysql_num_rows(result2) == 1 then
			local row2 = mysql_fetch_assoc(result2)
			Player[playerid].today_login_tick = tonumber(row2.today_logintick)
		else
			mysql_query(mysql_handler, "UPDATE `user` SET `lastlogin` = CURDATE(), `today_logintick` = '0' WHERE `name` = '"..GetPlayerName(playerid).."'");
		end
		mysql_free_result(result2);]]
	end
	mysql_free_result(result);
end

function loadPlayerCharskin(playerid)
	-- print("function loadPlayerCharskin(playerid)", playerid)

	local result = mysql_query(mysql_handler, "SELECT Torso,Torsoskin,Kopf,Kopfskin,Fett,Scale FROM user WHERE name='" .. GetPlayerName(playerid) .. "'");
	if mysql_num_rows(result) == 1 then
		local row = mysql_fetch_row(result)
		Player[playerid].torso = (row[1]);
		Player[playerid].torsoskin = tonumber(row[2]);
		Player[playerid].kopf = (row[3]);
		Player[playerid].kopfskin = tonumber(row[4]);
		Player[playerid].fatness = tonumber(row[5]);
		Player[playerid].xscale = tonumber(row[6]);
		SetPlayerAdditionalVisual(playerid,Player[playerid].torso,Player[playerid].torsoskin,Player[playerid].kopf,Player[playerid].kopfskin);
		SetPlayerScale(playerid,Player[playerid].xscale,1,1);
		SetPlayerFatness(playerid, Player[playerid].fatness);

		if Mode == "KilltheKing" and Player[playerid].new == 0 then
			GuildMembersCount[Player[playerid].Lager] = GuildMembersCount[Player[playerid].Lager] + 1
			print(GuildMembersCount[Player[playerid].Lager])
			print("PLus wegen charskin")
		end
	end
	mysql_free_result(result);
end

function loadItems(playerid)
	-- print("function loadItems(playerid)", playerid)

	-- ClearInventory(playerid); -- HIER NIEMALS BENUTZEN!!
	-------------------------
	local inventar = mysql_query(mysql_handler, "SELECT * FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `anzahl` != '0' AND `equipped` = '0' ");
	if inventar and (mysql_num_rows(inventar) > 0) then
		for result,item in mysql_rows_assoc(inventar) do
			if result then
				local getitemfromdb = mysql_query(mysql_handler, "SELECT * FROM `itemlist` WHERE `iteminstance` = '"..item.item.."'");
				local row_inventory = mysql_fetch_assoc(getitemfromdb);
				if getitemfromdb and (mysql_num_rows(getitemfromdb) > 0) then
					CMD_GiveItems(playerid,item.item,tonumber(item.anzahl));
				else
					ServerLog("ITEMS","Spieler "..Player[playerid].nick.." spawnt mit nicht zugelassenen Items.");
				end
				mysql_free_result (getitemfromdb);
			end
		end
		mysql_free_result (inventar);
	end
	-------------------------
	local inventar = mysql_query(mysql_handler, "SELECT * FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `anzahl` >= '2' AND `equipped` = '1' ");
	if inventar and (mysql_num_rows(inventar) > 0) then
		for result,item in mysql_rows_assoc(inventar) do
			if result then
				local getitemfromdb = mysql_query(mysql_handler, "SELECT * FROM `itemlist` WHERE `iteminstance` = '"..item.item.."'");
				local row_inventory = mysql_fetch_assoc(getitemfromdb);
				if getitemfromdb and (mysql_num_rows(getitemfromdb) > 0) then
					CMD_GiveItems(playerid,item.item,tonumber(item.anzahl)-1);
				else
					ServerLog("ITEMS","Spieler "..Player[playerid].nick.." spawnt mit nicht zugelassenen Items.");
				end
				mysql_free_result (getitemfromdb);
			end
		end
		mysql_free_result (inventar);
	end
	-------------------------
	local inventory_equip = mysql_query(mysql_handler, "SELECT `item` FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `anzahl` != '0' AND `equipped` = '1' ");
	if inventory_equip and (mysql_num_rows(inventory_equip) > 0) then
		for equip,item in mysql_rows_assoc(inventory_equip) do
			EquipItem(playerid,item.item);
		end
		mysql_free_result (inventory_equip);
	end
	-------------------------
--	local inventory_equip_wear = mysql_query(mysql_handler, "SELECT `item`, `anzahl` FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `anzahl` >= '2' AND `equipped` = '1' ");
--	if inventory_equip_wear and (mysql_num_rows(inventory_equip_wear) > 0) then
--		for equip2,eqitem in mysql_rows_assoc(inventory_equip_wear) do
--			local getitemfromdb = mysql_query(mysql_handler, "SELECT * FROM `itemlist` WHERE `iteminstance` = '"..item.item.."'");
--			local row_equip = mysql_fetch_assoc(getitemfromdb);
--			if getitemfromdb and (mysql_num_rows(getitemfromdb) > 0) then
--				CMD_GiveItems(playerid,row_equip.name,tonumber(item.anzahl) - 1);
--			else
--				ServerLog("ITEMS","Spieler "..Player[playerid].nick.." spawnt mit nicht zugelassenen Items.");
--			end
--			mysql_free_result (getitemfromdb);
--		end
--		mysql_free_result (inventory_equip_wear);
--	end
--	-------------------------
end


function Loginnachreset(playerid)
	-- print("function Loginnachreset(playerid)", playerid)

	if Player[playerid].new == 1 then
		FreezePlayer(playerid, 1);
		ClearInventory(playerid); 
		Player[playerid].register = 2;
		createBackgroundStory(playerid);
		showBackgroundStory(playerid);
		if Map == "Kolonie" then
			SetPlayerPos(playerid, 7063.6669921875,6618.748046875,39756.73828125);
		elseif Map == "Jharkendar" then
			SetPlayerPos(playerid, 16773.8,-3133.56,24425.7);
		elseif Map == "Khorinis" then
			SetPlayerPos(playerid, -9996.912109, -14.756372, -14681.572266);
		end
		mysql_query(mysql_handler, "UPDATE `user` SET `New` = 0 WHERE name='" .. GetPlayerName(playerid) .. "'");
	else
		if Mode == "Deathmatch" then	
			showScoreCounter(playerid);
		elseif Mode == "KilltheKing" then
			showKings(playerid);	
		end
		
		-- Hier f�r die Map die PlayerId und das Lager hinzuf�gen.
		MapPlayerLagerSet(playerid, Player[playerid].Lager)
	end
end

function CMD_FixChar(playerid)
	-- print("function CMD_FixChar(playerid)", playerid)

	if IsUnconscious(playerid) ~= 1 and IsDead(playerid) ~= 1 then
		local instance = GetPlayerInstance(playerid);
		if instance == "PC_HERO" or instance == "PC_DMHERO" then
			if Player[playerid].register == 0 and Player[playerid].bewusstlos == false then
				HasItem(playerid,"ITRW_ARROW",120);
				HasItem(playerid,"ITRW_BOLT",121);
				saveHpEpMana(playerid);
				SetTimerEx("FixChar_Timer", 1000, 0, playerid) -- Zeitversetzt aufrufen damit �ber HasItem() die Pfeile und Bolzen Anzahl in der DB gespeichert werden kann.
			end
		end
	end
end

function FixChar_Timer(playerid)
	-- print("function FixChar_Timer(playerid)", playerid)

	ClearInventory(playerid);
	Killmode(playerid);
	loadPlayerCharW(playerid);
	loadItems(playerid);
	ServerLog("COMMAND","Spieler "..Player[playerid].nick.." wurde gefixt. (/fixme)");
end

function showScoreCounter(playerid)
	if Player[playerid].Language == 1 then
		ShowDraw(playerid,Lager1);
		ShowDraw(playerid,Lager2);
	elseif Player[playerid].Language == 2 then
		ShowDraw(playerid,LagerENG1);
		ShowDraw(playerid,LagerENG2);
	end

	ShowDraw(playerid,Lagerpoints1);
	ShowDraw(playerid,Lagerpoints2);

	if Map == "Kolonie" then
		if Player[playerid].Language == 1 then
			ShowDraw(playerid,Lager3);
		elseif Player[playerid].Language == 2 then
			ShowDraw(playerid,LagerENG3);
		end
		ShowDraw(playerid,Lagerpoints3);
	end
	ShowDraw(playerid,Kills);
	ShowDraw(playerid,Deaths);
	ShowDraw(playerid,Assists);
	ShowDraw(playerid,Player[playerid].Kills);
	ShowDraw(playerid,Player[playerid].Deaths)
	ShowDraw(playerid,Player[playerid].Assist)
end

function hideScoreCounter(playerid)
	if Player[playerid].Language == 1 then
		HideDraw(playerid,Lager1);
		HideDraw(playerid,Lager2);
	elseif Player[playerid].Language == 2 then
		HideDraw(playerid,LagerENG1);
		HideDraw(playerid,LagerENG2);
	end
	HideDraw(playerid,Lagerpoints1);
	HideDraw(playerid,Lagerpoints2);
	if Map == "Kolonie" then
		if Player[playerid].Language == 1 then
			HideDraw(playerid,Lager3);
		elseif Player[playerid].Language == 2 then
			HideDraw(playerid,LagerENG3);
		end
		HideDraw(playerid,Lagerpoints3);
	end
	HideDraw(playerid,Kills);
	HideDraw(playerid,Deaths);
	HideDraw(playerid,Assists)
	HideDraw(playerid,Player[playerid].Kills)
	HideDraw(playerid,Player[playerid].Deaths)
	HideDraw(playerid,Player[playerid].Assist)
end

function showKings(playerid)
	ShowDraw(playerid,KingRot);
	ShowDraw(playerid,KingBlau);
	ShowDraw(playerid,KingGruen);
	ShowDraw(playerid,KingGelb);
	ShowDraw(playerid,KingOrange);
	ShowDraw(playerid,KingLila);
end

function hideKings(playerid)
	HideDraw(playerid,KingRot);
	HideDraw(playerid,KingBlau);
	HideDraw(playerid,KingGruen);
	HideDraw(playerid,KingGelb);
	HideDraw(playerid,KingOrange);
	HideDraw(playerid,KingLila);
end

function showPlayerList(playerid)
	if Player[playerid].Language == 1 then
		ShowDraw(playerid,Playercount);
		ShowDraw(playerid,Lager1);
		ShowDraw(playerid,Lager2);
	elseif Player[playerid].Language == 2 then
		ShowDraw(playerid,Playercounteng);
		ShowDraw(playerid,LagerENG1);
		ShowDraw(playerid,LagerENG2);
	end

	ShowDraw(playerid,Playercount1);
	ShowDraw(playerid,Playercount2);

	if Map == "Kolonie" then
		if Player[playerid].Language == 1 then
			ShowDraw(playerid,Lager3);
		elseif Player[playerid].Language == 2 then
			ShowDraw(playerid,LagerENG3);
		end
		ShowDraw(playerid,Playercount3);
	end
	ShowDraw(playerid,Pointstowincounter);
	if Player[playerid].Language == 1 then
		ShowDraw(playerid,Pointstowin);
	elseif Player[playerid].Language == 2 then
		ShowDraw(playerid,Pointstowineng);
	end
end

function hidePlayerList(playerid)
	
	if Player[playerid].Language == 1 then
		HideDraw(playerid,Playercount);
		HideDraw(playerid,Lager1);
		HideDraw(playerid,Lager2);
	elseif Player[playerid].Language == 2 then
		HideDraw(playerid,Playercounteng);
		HideDraw(playerid,LagerENG1);
		HideDraw(playerid,LagerENG2);
	end
	HideDraw(playerid,Lager1);
	HideDraw(playerid,Lager2);
	HideDraw(playerid,Playercount1);
	HideDraw(playerid,Playercount2);
	if Map == "Kolonie" then
		if Player[playerid].Language == 1 then
			HideDraw(playerid,Lager3);
		elseif Player[playerid].Language == 2 then
			HideDraw(playerid,LagerENG3);
		end
		HideDraw(playerid,Playercount3);
	end

	HideDraw(playerid,Pointstowincounter)
	if Player[playerid].Language == 1 then
		HideDraw(playerid,Pointstowin);
	elseif Player[playerid].Language == 2 then
		HideDraw(playerid,Pointstowineng);
	end
end

function Killmode(playerid)
	-- print("function Killmode(playerid)", playerid)

	if InstaKill == 0 then
		SetPlayerInstance(playerid, "PC_Hero");
	else
		SetPlayerInstance(playerid, "PC_DMHero");
	end
end

function PlusPlayer(playerid)
	-- print("function PlusPlayer(playerid)", playerid)

	if 	Mode == "Deathmatch" then
		if Player[playerid].Lager == 1 then
			PC1 = PC1 + 1
			UpdateDraw(Playercount1,200,4500,tostring(PC1),font_big,Farbe1x,Farbe1y,Farbe1z);
		elseif Player[playerid].Lager == 2 then
			PC2 = PC2 + 1
			UpdateDraw(Playercount2,200,4750,tostring(PC2),font_big,Farbe2x,Farbe2y,Farbe2z);
		elseif Player[playerid].Lager == 3 then
			PC3 = PC3 + 1
			UpdateDraw(Playercount3,200,5000,tostring(PC3),font_big,Farbe3x,Farbe3y,Farbe3z);
		end
	end
end

function MinusPlayer(playerid)
	-- print("function MinusPlayer(playerid)", playerid)

	if 	Mode == "Deathmatch" then
		if Player[playerid].Lager == 1 then
			PC1 = PC1 - 1
			UpdateDraw(Playercount1,200,4500,tostring(PC1),font_big,Farbe1x,Farbe1y,Farbe1z);
		elseif Player[playerid].Lager == 2 then
			PC2 = PC2 - 1
			UpdateDraw(Playercount2,200,4750,tostring(PC2),font_big,Farbe2x,Farbe2y,Farbe2z);
		elseif Player[playerid].Lager == 3 then
			PC3 = PC3 - 1
			UpdateDraw(Playercount3,200,5000,tostring(PC3),font_big,Farbe3x,Farbe3y,Farbe3z);
		end
	end
end

print("Loaded LUA file   " .. debug.getinfo(1).source)