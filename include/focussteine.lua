function GetFocusstone(playerid) --Focus drop bei tot.
	local instance = GetPlayerInstance(playerid);
	local x,y,z = GetPlayerPos(playerid);
	local world = GetPlayerWorld(playerid);

	for count = 1,6 do
		if IsNPC(playerid) == 0 then 
			if Roterfocus == Player[playerid].nick then
				ReRed = CreateItem("Red_focus",1,x,y+100,z,world);
				SendMessageToAll(200,200,50,string.format("%s %s",Roterfocus, "hat den Roten Focusstein fallen gelassen!"));
				Roterfocus = "Niemand"
				UpdateDraw(Rot,300,4500,Roterfocus,font_big,Farbe1x,Farbe1y,Farbe1z);
				SetPlayerMaxHealth(playerid,Player[playerid].hpmax - 50);
				mysql_query(mysql_handler, "DELETE FROM `inventar` WHERE `item` = 'Red_focus'");
			elseif Blauerfocus == Player[playerid].nick then
				ReBlue = CreateItem("Blue_focus",1,x,y+100,z,world);
				SendMessageToAll(200,200,50,string.format("%s %s",Blauerfocus, "hat den Blauen Focusstein fallen gelassen!"));
				Blauerfocus = "Niemand"
				UpdateDraw(Blau,300,4750,Blauerfocus,font_big,Farbe2x,Farbe2y,Farbe2z);
				SetPlayerMaxMana(playerid,Player[playerid].manamax - 20);
				mysql_query(mysql_handler, "DELETE FROM `inventar` WHERE `item` = 'Blue_focus'");
			elseif Gelberfocus == Player[playerid].nick then
				ReYellow = CreateItem("Yellow_focus",1,x,y+100,z,world);
				SendMessageToAll(200,200,50,string.format("%s %s",Gelberfocus, "hat den Gelben Focusstein fallen gelassen!"));
				Gelberfocus = "Niemand"
				UpdateDraw(Gelb,300,5250,Gelberfocus,font_big,Farbe1x,Farbe3y,Farbe3z);
				SetPlayerStrength(playerid,Player[playerid].stk - 10);
				mysql_query(mysql_handler, "DELETE FROM `inventar` WHERE `item` = 'Yellow_focus'");
			elseif Gruenerfocus == Player[playerid].nick then
				ReGreen = CreateItem("Green_focus",1,x,y+100,z,world);
				SendMessageToAll(200,200,50,string.format("%s %s",Gruenerfocus, "hat den Gruenen Focusstein fallen gelassen!"));
				Gruenerfocus = "Niemand"
				UpdateDraw(Gruen,300,5000,Gruenerfocus,font_big,Farbe3x,Farbe3y,Farbe3z);
				SetPlayerDexterity(playerid,Player[playerid].dex - 10);
				mysql_query(mysql_handler, "DELETE FROM `inventar` WHERE `item` = 'Green_focus'");				
			elseif Lilafocus == Player[playerid].nick then
				RePurple = CreateItem("Purple_focus",1,x,y+100,z,world);
				SendMessageToAll(200,200,50,string.format("%s %s",Lilafocus, "hat den Lila Focusstein fallen gelassen!"));
				Lilafocus = "Niemand"
				UpdateDraw(Lila,300,5500,Lilafocus,font_big,Farbe1x,Farbe1y,Farbe2z);
				mysql_query(mysql_handler, "DELETE FROM `inventar` WHERE `item` = 'Purple_focus'");
			elseif Grauerfocus == Player[playerid].nick then
				ReGray = CreateItem("Gray_focus",1,x,y+100,z,world);
				SendMessageToAll(200,200,50,string.format("%s %s",Grauerfocus, "hat den Grauen Focusstein fallen gelassen!"));
				Grauerfocus = "Niemand"
				UpdateDraw(Grau,300,5750,Grauerfocus,font_big,Farbe3x,Farbe1y,Farbe3z);
				mysql_query(mysql_handler, "DELETE FROM `inventar` WHERE `item` = 'Gray_focus'");
			end
		elseif IsNPC(playerid) == 1 then 
			if Roterfocus == instance then
				ReRed = CreateItem("Red_focus",1,x,y,z,world);
				SendMessageToAll(200,200,50,string.format("%s %s",Roterfocus, "hat den Roten Focusstein fallen gelassen!"));
				Roterfocus = "Niemand"
				UpdateDraw(Rot,300,4500,Roterfocus,font_big,Farbe1x,Farbe1y,Farbe1z);
			elseif Blauerfocus == instance then
				ReBlue = CreateItem("Blue_focus",1,x,y,z,world);
				SendMessageToAll(200,200,50,string.format("%s %s",Blauerfocus, "hat den Blauen Focusstein fallen gelassen!"));
				Blauerfocus = "Niemand"
				UpdateDraw(Blau,300,4750,Blauerfocus,font_big,Farbe2x,Farbe2y,Farbe2z);
				-- Minus Bonus --
			elseif Gelberfocus == instance then
				ReYellow = CreateItem("Yellow_focus",1,x,y,z,world);
				SendMessageToAll(200,200,50,string.format("%s %s",Gelberfocus, "hat den Gelben Focusstein fallen gelassen!"));
				Gelberfocus = "Niemand"
				UpdateDraw(Gelb,300,5250,Gelberfocus,font_big,Farbe1x,Farbe3y,Farbe3z);
				-- Minus Bonus --
			elseif Gruenerfocus == instance then
				ReGreen	= CreateItem("Green_focus",1,x,y,z,world);
				SendMessageToAll(200,200,50,string.format("%s %s",Gruenerfocus, "hat den Gruenen Focusstein fallen gelassen!"));
				Gruenerfocus = "Niemand"
				UpdateDraw(Gruen,300,5000,Gruenerfocus,font_big,Farbe3x,Farbe3y,Farbe3z);
				-- Minus Bonus --
			elseif Lilafocus == instance then
				RePurple = CreateItem("Purple_focus",1,x,y+100,z,world);
				SendMessageToAll(200,200,50,string.format("%s %s",Lilafocus, "hat den Lila Focusstein fallen gelassen!"));
				Lilafocus = "Niemand"
				UpdateDraw(Lila,300,5500,Lilafocus,font_big,Farbe1x,Farbe1y,Farbe2z);
				-- Minus Bonus -- Sollte Sich mit dem Respawn erledigen --
			elseif Grauerfocus == instance then
				ReGray = CreateItem("Gray_focus",1,x,y,z,world);
				SendMessageToAll(200,200,50,string.format("%s %s",Grauerfocus, "hat den Grauen Focusstein fallen gelassen!"));
				Grauerfocus = "Niemand"
				UpdateDraw(Grau,300,5750,Grauerfocus,font_big,Farbe3x,Farbe1y,Farbe3z);
				-- Minus Bonus -- Sollte Sich mit dem Respawn erledigen --
			end
		end
	end
end

function GetDropFocusstone(playerid,itemInstance) --Focus droppen
	if itemInstance == "RED_FOCUS" then
		SendMessageToAll(200,200,50,string.format("%s %s",Roterfocus, "hat den Roten Focusstein fallen gelassen!"));
		Roterfocus = "Niemand"
		UpdateDraw(Rot,300,4500,Roterfocus,font_big,Farbe1x,Farbe1y,Farbe1z);
		SetPlayerMaxHealth(playerid,Player[playerid].hpmax);
	elseif itemInstance == "BLUE_FOCUS" then
		SendMessageToAll(200,200,50,string.format("%s %s",Blauerfocus, "hat den Blauen Focusstein fallen gelassen!"));
		Blauerfocus = "Niemand"
		UpdateDraw(Blau,300,4750,Blauerfocus,font_big,Farbe2x,Farbe2y,Farbe2z);
		SetPlayerMaxMana(playerid,Player[playerid].manamax);
	elseif itemInstance == "YELLOW_FOCUS" then
		SendMessageToAll(200,200,50,string.format("%s %s",Gelberfocus, "hat den Gelben Focusstein fallen gelassen!"));
		Gelberfocus = "Niemand"
		UpdateDraw(Gelb,300,5250,Gelberfocus,font_big,Farbe1x,Farbe3y,Farbe3z);
		SetPlayerStrength(playerid,Player[playerid].stk);
	elseif itemInstance == "GREEN_FOCUS" then
		SendMessageToAll(200,200,50,string.format("%s %s",Gruenerfocus, "hat den Gruenen Focusstein fallen gelassen!"));
		Gruenerfocus = "Niemand"
		UpdateDraw(Gruen,300,5000,Gruenerfocus,font_big,Farbe3x,Farbe3y,Farbe3z);
		SetPlayerDexterity(playerid,Player[playerid].dex);
	elseif itemInstance == "PURPLE_FOCUS" then
		SendMessageToAll(200,200,50,string.format("%s %s",Lilafocus, "hat den Lila Focusstein fallen gelassen!"));
		Lilafocus = "Niemand"
		UpdateDraw(Lila,300,5500,Lilafocus,font_big,Farbe1x,Farbe1y,Farbe2z);
	elseif itemInstance == "GRAY_FOCUS" then
		SendMessageToAll(200,200,50,string.format("%s %s",Grauerfocus, "hat den Grauen Focusstein fallen gelassen!"));
		Grauerfocus = "Niemand"
		UpdateDraw(Grau,300,5750,Grauerfocus,font_big,Farbe3x,Farbe1y,Farbe3z);
	end	
end

function CMD_MonsterDropFocus(playerid)
	local instance = GetPlayerInstance(playerid);
	if instance ~= "PC_HERO" and instance ~= "PC_DMHERO" then
		--HasItem(playerid,"ITRW_ARROW",120);
		--HasItem(playerid,"ITRW_BOLT",121);
		saveHpEpMana(playerid);
		ClearInventory(playerid);
		Killmode(playerid);
		loadPlayerCharW(playerid);
		loadPlayerCharskin (playerid);
		loadItems(playerid);
	end
end

function Takefocus(playerid,itemInstance) -- Focus aufheben
	if itemInstance == "Red_focus" or itemInstance == "RED_FOCUS" then
		ReRed = nil
		Roterfocus = Player[playerid].nick
		SendMessageToAll(200,200,50,string.format("%s %s",Roterfocus, "hat nun den Roten Focusstein!"));
		SendPlayerMessage(playerid,255,250,200,string.format("%s","Du erhaeltst 50 HP."));
		SetPlayerMaxHealth(playerid,Player[playerid].hpmax + 50);
		SetPlayerHealth(playerid,Player[playerid].hp + 50);
		UpdateDraw(Rot,300,4500,Roterfocus,font_big,Farbe1x,Farbe1y,Farbe1z);
		-- Plus Bonus--
	elseif itemInstance == "Blue_focus" or itemInstance == "BLUE_FOCUS" then
		ReBlue = nil
		Blauerfocus = Player[playerid].nick
		SendMessageToAll(200,200,50,string.format("%s %s",Blauerfocus, "hat nun den Blauen Focusstein!"));
		SendPlayerMessage(playerid,255,250,200,string.format("%s","Du erhaeltst 20 MP."));
		SetPlayerMaxMana(playerid,Player[playerid].manamax + 20);
		SetPlayerMana(playerid,Player[playerid].mana + 20);
		UpdateDraw(Blau,300,4750,Blauerfocus,font_big,Farbe2x,Farbe2y,Farbe2z);
		-- Plus Bonus--
	elseif itemInstance == "Yellow_focus" or itemInstance == "YELLOW_FOCUS" then
		ReYellow = nil
		Gelberfocus = Player[playerid].nick
		SendMessageToAll(200,200,50,string.format("%s %s",Gelberfocus, "hat nun den Gelben Focusstein!"));
		SendPlayerMessage(playerid,255,250,200,string.format("%s","Du erhaeltst 10 Staerke."));
		SetPlayerStrength(playerid,Player[playerid].stk + 10);
		UpdateDraw(Gelb,300,5250,Gelberfocus,font_big,Farbe1x,Farbe3y,Farbe3z);
		-- Plus Bonus--
	elseif itemInstance == "Green_focus" or itemInstance == "GREEN_FOCUS" then
		ReGreen = nil
		Gruenerfocus = Player[playerid].nick
		SendMessageToAll(200,200,50,string.format("%s %s",Gruenerfocus, "hat nun den Gruenen Focusstein!"));
		SendPlayerMessage(playerid,255,250,200,string.format("%s","Du erhaeltst 10 Geschick."));
		SetPlayerDexterity(playerid,Player[playerid].dex + 10);
		UpdateDraw(Gruen,300,5000,Gruenerfocus,font_big,Farbe3x,Farbe3y,Farbe3z);
		-- Plus Bonus--
	elseif itemInstance == "Purple_focus" or itemInstance == "PURPLE_FOCUS" then
		RePurple = nil
		Lilafocus = Player[playerid].nick
		SendMessageToAll(200,200,50,string.format("%s %s",Lilafocus, "hat nun den Lila Focusstein!"));
		SendPlayerMessage(playerid,255,250,200,string.format("%s","Du bist nun ein Crawler. /dropfocus um dich zurueckzuverwandeln."));
		local x,y,z = GetPlayerPos(playerid);
		Player[playerid].respawn_x = x;
		Player[playerid].respawn_y = y;
		Player[playerid].respawn_z = z;
		SetTimerEx("verwandlungslilafocus",1000,0,playerid);
		UpdateDraw(Lila,300,5500,Lilafocus,font_big,Farbe1x,Farbe1y,Farbe2z);
		-- Plus Bonus--
	elseif itemInstance == "Gray_focus" or itemInstance == "GRAY_FOCUS" then
		ReGray = nil
		Grauerfocus = Player[playerid].nick
		SendMessageToAll(200,200,50,string.format("%s %s",Grauerfocus, "hat nun den Grauen Focusstein! "));
		SendPlayerMessage(playerid,255,250,200,string.format("%s","Du bist nun ein Razor./dropfocus um dich zurueckzuverwandeln."));
		local x,y,z = GetPlayerPos(playerid);
		Player[playerid].respawn_x = x;
		Player[playerid].respawn_y = y;
		Player[playerid].respawn_z = z;
		SetTimerEx("verwandlungsgrayfocus",1000,0,playerid);
		UpdateDraw(Grau,300,5750,Grauerfocus,font_big,Farbe3x,Farbe1y,Farbe3z);
		-- Plus Bonus--
	end
end

function hideFocusList(playerid)
	HideDraw(playerid,Rot);
	HideDraw(playerid,Blau);
	HideDraw(playerid,Gelb);
	HideDraw(playerid,Gruen);
	HideDraw(playerid,Lila);
	HideDraw(playerid,Grau);
end

function showFocusList(playerid)
	ShowDraw(playerid,Rot);
	ShowDraw(playerid,Blau);
	ShowDraw(playerid,Gelb);
	ShowDraw(playerid,Gruen);
	ShowDraw(playerid,Lila);
	ShowDraw(playerid,Grau);
end

function verwandlungslilafocus(playerid,itemInstance)
	if Player[playerid].level < 3 then
		SendPlayerMessage(playerid,255,250,200,string.format("%s","Die macht des fokis toetet dich!"));
		SetPlayerHealth(playerid,0);
	elseif Player[playerid].level >= 3 and Player[playerid].level < 5 then
		local health = GetPlayerHealth(playerid);
		local maxhealth = GetPlayerMaxHealth(playerid);
		
		SetPlayerInstance(playerid,"Crawler_Hero_LV3"); --125HP
		local newhealth = (health / (maxhealth / 100)) * (125 / 100) 
	elseif Player[playerid].level >= 5 and Player[playerid].level < 7 then
		local health = GetPlayerHealth(playerid);
		local maxhealth = GetPlayerMaxHealth(playerid);
		
		SetPlayerInstance(playerid,"Crawler_Hero_LV5"); --250HP
		local newhealth = (health / (maxhealth / 100)) * (250 / 100) 
	elseif Player[playerid].level >= 7 then
		local health = GetPlayerHealth(playerid);
		local maxhealth = GetPlayerMaxHealth(playerid);
		
		SetPlayerInstance(playerid,"Crawler_Hero_LV7"); --500HP
		local newhealth = (health / (maxhealth / 100)) * (500 / 100) 
	end
end

function verwandlungsgrayfocus(playerid,itemInstance)
	if Player[playerid].level < 3 then
		SendPlayerMessage(playerid,255,250,200,string.format("%s","Die macht des fokis toetet dich!"));
		SetPlayerHealth(playerid,0);
	elseif Player[playerid].level >= 3 and Player[playerid].level < 5 then
		local health = GetPlayerHealth(playerid);
		local maxhealth = GetPlayerMaxHealth(playerid);
		
		SetPlayerInstance(playerid,"Razor_Hero_LV3"); --125HP
		local newhealth = (health / (maxhealth / 100)) * (125 / 100) 
	elseif Player[playerid].level >= 5 and Player[playerid].level < 7 then
		local health = GetPlayerHealth(playerid);
		local maxhealth = GetPlayerMaxHealth(playerid);
		
		SetPlayerInstance(playerid,"Razor_Hero_LV5"); --250HP
		local newhealth = (health / (maxhealth / 100)) * (250 / 100) 
	elseif Player[playerid].level >= 7 then
		local health = GetPlayerHealth(playerid);
		local maxhealth = GetPlayerMaxHealth(playerid);
		
		SetPlayerInstance(playerid,"Razor_Hero_LV7"); --500HP
		local newhealth = (health / (maxhealth / 100)) * (500 / 100) 
	end
end


function RestartFocus()
	Roterfocus = "Roterwarg"
	Blauerfocus = "Blauerscavenger"
	Gelberfocus = "Gelbersnapper"
	Gruenerfocus = "Gruenerlurker"
	Lilafocus = "Lilacrawler"
	Grauerfocus = "GrauerRazor"
	
	if ReRed ~= nil then
		DestroyItem(ReRed)
	end
	
	if ReBlue ~= nil then
		DestroyItem(ReBlue) 
	end
	
	if ReYellow ~= nil then
		DestroyItem(ReYellow) 
	end
	
	if ReGreen ~= nil then
		DestroyItem(ReGreen) 
	end
	
	if RePurple ~= nil then
		DestroyItem(RePurple) 
	end

	if ReGray ~= nil then
		DestroyItem(ReGray)
	end

	UpdateDraw(Rot,300,4500,Roterfocus,font_big,Farbe1x,Farbe1y,Farbe1z);
	UpdateDraw(Blau,300,4750,Blauerfocus,font_big,Farbe2x,Farbe2y,Farbe2z);
	UpdateDraw(Gelb,300,5250,Gelberfocus,font_big,Farbe1x,Farbe3y,Farbe3z);
	UpdateDraw(Gruen,300,5000,Gruenerfocus,font_big,Farbe3x,Farbe3y,Farbe3z);
	UpdateDraw(Lila,300,5500,Lilafocus,font_big,Farbe1x,Farbe1y,Farbe2z);	
	UpdateDraw(Grau,300,5750,Grauerfocus,font_big,Farbe3x,Farbe1y,Farbe3z);
end

function FocusTimer()
	if ReRed ~= nil then
		CountRed = CountRed + 1
		if CountRed == 10 then
			DestroyItem(ReRed)
			Roterfocus = "Roterwarg"
			SendMessageToAll(200,200,50,string.format("%s %s",Roterfocus, "hat nun den Roten Focusstein!"));
			UpdateDraw(Rot,300,4500,Roterfocus,font_big,Farbe1x,Farbe1y,Farbe1z);
			ReRed = nil
		end
	else
		CountRed = 0
	end

	if ReBlue ~= nil then
		CountBlue = CountBlue + 1
		if CountBlue == 10 then
			DestroyItem(ReBlue)
			Blauerfocus = "Blauerscavenger"
			SendMessageToAll(200,200,50,string.format("%s %s",Blauerfocus, "hat nun den Blauen Focusstein!"));
			UpdateDraw(Blau,300,4750,Blauerfocus,font_big,Farbe2x,Farbe2y,Farbe2z);
			ReBlue = nil
		end
	else
		CountBlue = 0
	end

	if ReYellow ~= nil then
		CountYellow = CountYellow + 1
		if CountYellow == 10 then
			DestroyItem(ReYellow)
			Gelberfocus = "Gelbersnapper"
			SendMessageToAll(200,200,50,string.format("%s %s",Gelberfocus, "hat nun den Gelben Focusstein!"));
			UpdateDraw(Gelb,300,5250,Gelberfocus,font_big,Farbe1x,Farbe3y,Farbe3z);
			ReYellow = nil
		end
	else	
		CountYellow = 0
	end

	if ReGreen ~= nil then
		CountGreen = CountGreen + 1
		if CountGreen == 10 then
			DestroyItem(ReGreen)
			Gruenerfocus = "Gruenerlurker"
			SendMessageToAll(200,200,50,string.format("%s %s",Gruenerfocus, "hat nun denn Gruenen Focusstein!"));
			UpdateDraw(Gruen,300,5000,Gruenerfocus,font_big,Farbe3x,Farbe3y,Farbe3z);
			ReGreen = nil
		end
	else
		CountGreen = 0
	end

	if RePurple ~= nil then
		CountPurple = CountPurple + 1
		if CountPurple == 10 then
			DestroyItem(RePurple)
			Lilafocus = "Lilacrawler"
			SendMessageToAll(200,200,50,string.format("%s %s",Lilafocus, "hat nun den Lila Focusstein!"));
			UpdateDraw(Lila,300,5500,Lilafocus,font_big,Farbe1x,Farbe1y,Farbe2z);
			RePurple = nil
		end
	else
		CountPurple = 0
	end
	
	if ReGray ~= nil then
		CountGray = CountGray + 1
		if CountGray == 10 then
			DestroyItem(ReGray)
			Grauerfocus = "GrauerRazor"
			SendMessageToAll(200,200,50,string.format("%s %s",Grauerfocus, "hat nun den Grauen Focusstein!"));
			UpdateDraw(Grau,300,5750,Grauerfocus,font_big,Farbe3x,Farbe1y,Farbe3z);
			ReGray = nil
		end
	else
		CountGray = 0
	end
	SetTimerEx("FocusTimer",60000,0,0);
end

print("Loaded LUA file   " .. debug.getinfo(1).source)