--[[
	Haendler-Script
--]]
menu_ui = {}
menu_ui[1] = {130,6150,150}
menu_ui[2] = {1950,1000,150}
menu_ui[3] = {4000,1000,150}
menu_ui[4] = {5000,1000,150}

local Rahmen = CreateTexture(1800,800,1800+4200,800+6400,"Menu_Ingame.tga"); -- RAHMEN

local lx, ly, ls = menu_ui[2][1], menu_ui[2][2], menu_ui[2][3]; -- links
local mx, my, ms = menu_ui[3][1], menu_ui[3][2], menu_ui[3][3]; -- mitte
local rx, ry, rs = menu_ui[4][1], menu_ui[4][2], menu_ui[4][3]; -- rechts

local Item = CreateDraw(lx,ly,"Item",font_small,255,255,255)
local Anzahl = CreateDraw(mx,my,"Anforderung",font_small,255,255,255)
local Preis = CreateDraw(rx,ry,"Preis",font_small,255,255,255)
local Seite = CreateDraw(mx-300,my+(ms * (39)),"Seite:",font_small,255,255,255)

local Attribut = CreateDraw(lx,ly,"Attribut",font_small,255,255,255)

local AnzLunselected = CreateTexture(mx,my+(ms * (4)),mx+100,my+(ms * (4))+150,"L.tga"); -- Linkszeiger
local AnzRunselected = CreateTexture(mx+350,my+(ms * (4)),mx+450,my+(ms * (4))+150,"R.tga"); -- Rechtszeiger
local AnzLselected = CreateTexture(mx,my+(ms * (4)),mx+100,my+(ms * (4))+150,"Lselected.tga"); -- Linkszeiger
local AnzRselected = CreateTexture(mx+350,my+(ms * (4)),mx+450,my+(ms * (4))+150,"Rselected.tga"); -- Rechtszeiger

local lowerunselected = CreateTexture(3500,3700,3600,3850,"L.tga"); -- Linkszeiger Lernen
local higherunselected = CreateTexture(3800,3700,3900,3850,"R.tga"); -- Rechtszeiger Lernen
local lowerselected = CreateTexture(3500,3700,3600,3850,"Lselected.tga"); -- Linkszeiger Lernen
local higherselected = CreateTexture(3800,3700,3900,3850,"Rselected.tga"); -- Rechtszeiger Lernen

local PreisLunselected = CreateTexture(mx,my+(ms * (7)),mx+100,my+(ms * (7))+150,"L.tga"); -- Linkszeiger
local PreisRunselected = CreateTexture(mx+350,my+(ms * (7)),mx+450,my+(ms * (7))+150,"R.tga"); -- Rechtszeiger
local PreisLselected = CreateTexture(mx,my+(ms * (7)),mx+100,my+(ms * (7))+150,"Lselected.tga"); -- Linkszeiger
local PreisRselected = CreateTexture(mx+350,my+(ms * (7)),mx+450,my+(ms * (7))+150,"Rselected.tga"); -- Rechtszeiger

local BotTyp_Haendler = 1
local BotTyp_Lehrer = 2
local BotTyp_ArtNamen = {
	Alchemie = BotTyp_Haendler,
	Armbrust = BotTyp_Haendler,
	Bogen = BotTyp_Haendler,
	Ruestung = BotTyp_Haendler,
	Rune = BotTyp_Haendler,
	Waffen = BotTyp_Haendler,
	Lehrer = BotTyp_Lehrer }

-- Handelsmenu �ffnen
function Handelsmenu_Open(playerid)
	-- print("function Handelsmenu_Open(playerid)", playerid)

	if Player[playerid].handelsmenu.active then
		GameTextForPlayer(playerid,3000,4000,"Du handelst schon!","Font_Old_10_White_Hi.TGA",255,0,0,3000)
		return
	end
	
	-- Man kann nur mit einem Bot im Focus handeln.
	local focusid = GetFocus(playerid)
	if focusid < 0 then return end
	if IsNPC(focusid) ~= 1 then return end
	
	-- Haendler/Lehrer werden durch ihren Namensprefix definiert.
	local Fokusname = GetPlayerName(focusid)
	local Art, Klasse = Fokusname:match("([^:]+)_([^;]+)")
	local BotTyp = BotTyp_ArtNamen[Art]
	if BotTyp == nil then return end
	
	if BotTyp == BotTyp_Haendler then
		CMD_Handel(playerid)
	elseif BotTyp == BotTyp_Lehrer then
		CMD_Lernen(playerid)
	end
end

function CMD_Handel(playerid)
	-- print("function CMD_Handel(playerid)", playerid)

	Handelsmenu_PlayerFreeze(playerid)
	menuKaufen(playerid)
end

function CMD_Lernen(playerid)
	-- print("function CMD_Lernen(playerid)", playerid)
	
	if Player[playerid].lernp == 0 then
		GameTextForPlayer(playerid,3000,4000,"Komm wieder wenn du mehr Erfahrung hast","Font_Old_10_White_Hi.TGA",255,0,0,3000)
		return
	end
	Handelsmenu_PlayerFreeze(playerid)
	menuLernen(playerid)
end

function Handelsmenu_PlayerFreeze(playerid)
	-- print("function Handelsmenu_PlayerFreeze(playerid)", playerid)

	FreezePlayer(playerid,1)
	Player[playerid].aniblock = true
	WorldMapClose(playerid)
	CloseInventory(playerid)
	HidePlayerKilltexts(playerid)
	ShowChat(playerid,0)
end

function Handelsmenu_PlayerUnfreeze(playerid)
	-- print("function Handelsmenu_PlayerUnfreeze(playerid)", playerid)

	ShowPlayerkilltextsAfterLogin(playerid)
	ShowChat(playerid,1)
	Handelsmenu_Hide(playerid)
	Player[playerid].handelsmenu.active = false
	Player[playerid].handelsmenu.menu = nil
	FreezePlayer(playerid,0)
	Player[playerid].aniblock = false
end

function Handelsmenu_Hide(playerid)
	-- print("function Handelsmenu_Hide(playerid)", playerid)

	local plHaMenu = Player[playerid].handelsmenu
	HideTexture(playerid,Rahmen); -- RAHMEN
	HideDraw(playerid,Item)
	HideDraw(playerid,Anzahl)
	HideDraw(playerid,Preis)
	HideDraw(playerid,Attribut)

	HideTexture(playerid,lowerunselected)
	HideTexture(playerid,higherunselected)
	HideTexture(playerid,lowerselected)
	HideTexture(playerid,higherselected)

	HideTexture(playerid,AnzRunselected)
	HideTexture(playerid,AnzRselected)
	HideTexture(playerid,AnzLunselected)
	HideTexture(playerid,AnzLselected)

	HideTexture(playerid,PreisRunselected)
	HideTexture(playerid,PreisRselected)
	HideTexture(playerid,PreisLunselected)
	HideTexture(playerid,PreisLselected)
	if plHaMenu.iende > 36 then
		HideDraw(playerid, Seite)
		DestroyPlayerDraw(playerid, plHaMenu.seite)
	end
end

-- Handelsmenu schlie�en
function Handelsmenu_Close(playerid)
	-- print("function Handelsmenu_Close(playerid)", playerid)

	local plHaMenu = Player[playerid].handelsmenu
	if not(plHaMenu.active) then return end
	
	if plHaMenu.menu == "Kaufliste" or plHaMenu.menu == "Verkaufsliste" or plHaMenu.menu == "Verwaltungsliste" or plHaMenu.menu == "Lernliste" then
		for i=1,36 do
			if plHaMenu.selected[i] == nil then break; end
			DestroyPlayerDraw(playerid,plHaMenu.selected[i])
			DestroyPlayerDraw(playerid,plHaMenu.unselected[i])
			if plHaMenu.anz[i] then DestroyPlayerDraw(playerid,plHaMenu.anz[i]); end
			if plHaMenu.preis[i] then DestroyPlayerDraw(playerid,plHaMenu.preis[i]); end
		end
	elseif plHaMenu.menu == "Transaktion" then
		for i=1, 4 do
			DestroyPlayerDraw(playerid,plHaMenu.anz[i])
			DestroyPlayerDraw(playerid,plHaMenu.preis[i])
			DestroyPlayerDraw(playerid,plHaMenu.selected[i])
			DestroyPlayerDraw(playerid,plHaMenu.unselected[i])
		end
		DestroyPlayerDraw(playerid,plHaMenu.selected[5])
		DestroyPlayerDraw(playerid,plHaMenu.unselected[5])
		DestroyPlayerDraw(playerid,plHaMenu.anz[5])
		DestroyPlayerDraw(playerid,plHaMenu.preis[5])
	elseif plHaMenu.menu == "Lerntransaktion" then
		for i=1, 2 do
			DestroyPlayerDraw(playerid,plHaMenu.anz[i])
			DestroyPlayerDraw(playerid,plHaMenu.selected[i])
			DestroyPlayerDraw(playerid,plHaMenu.unselected[i])
		end
		plHaMenu.Skillcounter = 1
	elseif plHaMenu.menu == "VerkaufTransaktion" then
		for i=1, 6 do
			DestroyPlayerDraw(playerid,plHaMenu.anz[i])
			DestroyPlayerDraw(playerid,plHaMenu.preis[i])
			DestroyPlayerDraw(playerid,plHaMenu.selected[i])
			DestroyPlayerDraw(playerid,plHaMenu.unselected[i])
		end
		for i=7, 9 do
			DestroyPlayerDraw(playerid,plHaMenu.unselected[i])
			DestroyPlayerDraw(playerid,plHaMenu.selected[i])
		end
	end
	Handelsmenu_PlayerUnfreeze(playerid)
end

-- Handelsmen� Tastendr�cke behandeln
function Handelsmenu_OnKey(playerid, keyDown)
	-- print("function Handelsmenu_OnKey(playerid, keyDown)", playerid, keyDown)

	if keyDown == KEY_UP then
		handelsmenuUP(playerid)
	elseif keyDown == KEY_DOWN then
		handelsmenuDOWN(playerid)
	elseif keyDown == KEY_LEFT then
		handelsmenuLEFT(playerid)
	elseif keyDown == KEY_RIGHT then
		handelsmenuRIGHT(playerid)
	elseif keyDown == KEY_RETURN then
		handelsmenuENTER(playerid)
	elseif keyDown == KEY_BACK then
		Handelsmenu_Close(playerid)
	elseif keyDown == KEY_F7 then
		Handelsmenu_Close(playerid)
	end
end

-- Verwalten
function verwaltungTransaktion(playerid)
	-- print("function verwaltungTransaktion(playerid)", playerid)

	local plHaMenu = Player[playerid].handelsmenu
	local i = plHaMenu.i
	local item = plHaMenu.data[i][1] -- {item, anz, preis}
	local botname = plHaMenu.botname
	if item == "Steuern eintreiben" then
		local betrag = plHaMenu.data[i][2]
		if betrag > 0 then
			-- {item, steuer, preis}
			local delete = mysql_query(mysql_handler, "DELETE FROM `Verkaufstruhe` WHERE `user` = 'Steuer' AND `Bot` = '".. botname .."'")
			mysql_free_result(delete)

			GiveItem(playerid,"itmi_nugget",betrag)

			GameTextForPlayer(playerid,3000,4000,"Steuern erfolgreich eingetrieben.","Font_Old_10_White_Hi.TGA",50,255,50,3000)
			ServerLog("HANDEL","Spieler "..Player[playerid].nick.." hat bei "..botname.." Steuern eingetrieben: "..betrag.." Erz")
		else
			GameTextForPlayer(playerid,3000,4000,"Ich habe nichts!","Font_Old_10_White_Hi.TGA",255,50,50,3000)
		end
		Handelsmenu_Close(playerid)
	elseif item == "Verdienste abholen" then
		local betrag = plHaMenu.data[i][2]
		if betrag > 0 then
			-- {item, goldabholen, preis}
			local delete = mysql_query(mysql_handler, "DELETE FROM `Verkaufstruhe` WHERE `user` = '"..Player[playerid].nick.."' AND `Bot` = '".. botname .."'")
			mysql_free_result(delete)

			GiveItem(playerid,"itmi_nugget",betrag)

			GameTextForPlayer(playerid,3000,4000,"Verdienste erfolgreich abgeholt.","Font_Old_10_White_Hi.TGA",50,255,50,3000)
			ServerLog("HANDEL","Spieler "..Player[playerid].nick.." hat bei "..botname.." seine Verdienste abgeholt: "..betrag.." Erz")
		else
			GameTextForPlayer(playerid,3000,4000,"Ich habe nichts!","Font_Old_10_White_Hi.TGA",255,50,50,3000)
		end
		Handelsmenu_Close(playerid)
	else
		local getinvianz = mysql_query(mysql_handler, "SELECT `anzahl` FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `item` = (SELECT `iteminstance` FROM `itemlist` WHERE `item` = '".. item .."')")
		if getinvianz and mysql_num_rows(getinvianz) >= 1 then
			local row = mysql_fetch_row(getinvianz)
			plHaMenu.data[i][2] = tonumber(row[1]); -- Anzahl aktualisieren
		else
			plHaMenu.data[i][2] = 0; -- nix da = 0
		end
		mysql_free_result(getinvianz)

		verkaufTransaktion(playerid)
	end
end

-- Verkaufen
function verkaufTransaktion(playerid)
	-- print("function verkaufTransaktion(playerid)", playerid)

	local plHaMenu = Player[playerid].handelsmenu
	plHaMenu.menu = "VerkaufTransaktion"

	for i=1,36 do
		if plHaMenu.selected[i] == nil then break; end
		DestroyPlayerDraw(playerid, plHaMenu.selected[i])
		DestroyPlayerDraw(playerid, plHaMenu.unselected[i])
		if plHaMenu.anz[i] then DestroyPlayerDraw(playerid, plHaMenu.anz[i]); end
		if plHaMenu.preis[i] then DestroyPlayerDraw(playerid, plHaMenu.preis[i]); end
	end
	HideDraw(playerid,Item)
	HideDraw(playerid,Anzahl)
	HideDraw(playerid,Preis)
	if plHaMenu.iende > 36 then
		HideDraw(playerid,Seite)
		DestroyPlayerDraw(playerid, plHaMenu.seite)
	end

	local botname = plHaMenu.botname
	local i = plHaMenu.i
	local item = plHaMenu.data[i][1]; -- Itemname
	local anz = plHaMenu.data[i][2]; -- InventarAnz
	local preis = 1.0; -- Standard
	local haendleranz = 0; -- Standard

	-- ueberpruefe, ob das item schon verkauft wird
	local inventar = mysql_query(mysql_handler, "SELECT `Anzahl`, `Preis` FROM `Verkaufsliste` WHERE `user` = '".. Player[playerid].nick .."' AND `Bot` = '".. botname .."' AND `item` = '".. item .."'")
	if inventar and mysql_num_rows(inventar) >= 1 then
		local row = mysql_fetch_row(inventar)
		haendleranz = tonumber(row[1]); --update
		preis = tonumber(row[2]); --update
	end
	mysql_free_result(inventar)

	local Steuersatz = plHaMenu.Steuersatz
	local Haendleranteil = plHaMenu.Haendleranteil

	local steuern = mysql_query(mysql_handler, "SELECT `Steuern`, `Haendleranteil` FROM `Steuern` LEFT JOIN `Verkaeufer` ON `Steuern`.`Ort` = `Verkaeufer`.`Ort` WHERE `Verkaeufer`.`Bot` = '".. botname .."'")
	if steuern and mysql_num_rows(steuern) >= 1 then
		local row = mysql_fetch_row(steuern)
		Steuersatz = tonumber(row[1])
		Haendleranteil = tonumber(row[2])
		plHaMenu.Steuersatz = Steuersatz
		plHaMenu.Haendleranteil = Haendleranteil
	end
	mysql_free_result(steuern)

	-- links
	plHaMenu.preis[1] = CreatePlayerDraw(playerid,lx,ly+(ls * (3)),item,font_small,255,255,255)
	plHaMenu.preis[2] = CreatePlayerDraw(playerid,lx,ly+(ls * (4)),"Inventar: "..anz.."x",font_small,255,255,255)
	plHaMenu.preis[3] = CreatePlayerDraw(playerid,lx,ly+(ls * (5)),"Steuern: ".. Steuersatz .." Prozent",font_small,255,255,255)
	plHaMenu.preis[4] = CreatePlayerDraw(playerid,lx,ly+(ls * (6)),"Haendleranteil: ".. Haendleranteil .." Prozent",font_small,255,255,255)
	plHaMenu.preis[5] = CreatePlayerDraw(playerid,lx,ly+(ls * (7)),"Gesamtpreis (x1): ".. tostring(math.ceil(preis) + math.ceil(preis * (Steuersatz/100)) + math.ceil(preis * (Haendleranteil/100))) .." Erz",font_small,255,50,50)
	plHaMenu.preis[6] = CreatePlayerDraw(playerid,lx,ly+(ls * (8)),"Gesamtpreis (x10): ".. tostring(math.ceil(preis*10) + math.ceil(preis*10 * (Steuersatz/100)) + math.ceil(preis*10 * (Haendleranteil/100))) .." Erz",font_small,255,50,50)
	-- mitte
	plHaMenu.anz[1] = CreatePlayerDraw(playerid,mx,my+(ms * (3)),"Haendler:",font_small,255,255,255)
	plHaMenu.anz[2] = CreatePlayerDraw(playerid,mx+200,my+(ms * (4)),tostring(haendleranz),font_small,255,255,255); -- Anzahl
	plHaMenu.selected[1] = CreatePlayerDraw(playerid,mx,my+(ms * (5)),"x1",font_small,255,0,0); -- MengeneinstellungA
	plHaMenu.unselected[1] = CreatePlayerDraw(playerid,mx,my+(ms * (5)),"x1",font_small,255,255,255)
	plHaMenu.selected[2] = CreatePlayerDraw(playerid,mx+150,my+(ms * (5)),"x10",font_small,255,0,0)
	plHaMenu.unselected[2] = CreatePlayerDraw(playerid,mx+150,my+(ms * (5)),"x10",font_small,255,255,255)
	plHaMenu.selected[3] = CreatePlayerDraw(playerid,mx+360,my+(ms * (5)),"x100",font_small,255,0,0)
	plHaMenu.unselected[3] = CreatePlayerDraw(playerid,mx+360,my+(ms * (5)),"x100",font_small,255,255,255); -- MengeneinstellungA

	plHaMenu.anz[3] = CreatePlayerDraw(playerid,mx,my+(ms * (6)),"eigener Anteil:",font_small,255,255,255)
	plHaMenu.anz[4] = CreatePlayerDraw(playerid,mx+200,my+(ms * (7)),tostring(preis),font_small,255,255,255); -- Preis
	plHaMenu.selected[4] = CreatePlayerDraw(playerid,mx,my+(ms * (8)),"x0.1",font_small,255,0,0); -- MengeneinstellungB
	plHaMenu.unselected[4] = CreatePlayerDraw(playerid,mx,my+(ms * (8)),"x0.1",font_small,255,255,255)
	plHaMenu.selected[5] = CreatePlayerDraw(playerid,mx+250,my+(ms * (8)),"x1",font_small,255,0,0)
	plHaMenu.unselected[5] = CreatePlayerDraw(playerid,mx+250,my+(ms * (8)),"x1",font_small,255,255,255)
	plHaMenu.selected[6] = CreatePlayerDraw(playerid,mx+400,my+(ms * (8)),"x10",font_small,255,0,0)
	plHaMenu.unselected[6] = CreatePlayerDraw(playerid,mx+400,my+(ms * (8)),"x10",font_small,255,255,255)
	plHaMenu.selected[7] = CreatePlayerDraw(playerid,mx+610,my+(ms * (8)),"x100",font_small,255,0,0)
	plHaMenu.unselected[7] = CreatePlayerDraw(playerid,mx+610,my+(ms * (8)),"x100",font_small,255,255,255); -- MengeneinstellungB

	plHaMenu.selected[8] = CreatePlayerDraw(playerid,mx,my+(ms * (9)),"Annehmen",font_small,255,0,0)
	plHaMenu.unselected[8] = CreatePlayerDraw(playerid,mx,my+(ms * (9)),"Annehmen",font_small,255,255,255)
	-- rechts
	plHaMenu.selected[9] = CreatePlayerDraw(playerid,rx,ry+(rs * (9)),"Abbrechen",font_small,255,0,0)
	plHaMenu.unselected[9] = CreatePlayerDraw(playerid,rx,ry+(rs * (9)),"Abbrechen",font_small,255,255,255)
	plHaMenu.anz[5] = CreatePlayerDraw(playerid,rx-400,ry+(rs * (4)),"x1",font_small,255,255,255); -- Anzahl Mengeneinstellung
	plHaMenu.anz[6] = CreatePlayerDraw(playerid,rx-400,ry+(rs * (7)),"x1",font_small,255,255,255); -- Anzahl Mengeneinstellung
	-- show
	for i=1, 6 do
		ShowPlayerDraw(playerid, plHaMenu.anz[i])
		ShowPlayerDraw(playerid, plHaMenu.preis[i])
		ShowPlayerDraw(playerid, plHaMenu.unselected[i])
	end
	for i=7, 9 do ShowPlayerDraw(playerid, plHaMenu.unselected[i]); end

	ShowTexture(playerid,AnzLselected)
	ShowTexture(playerid,AnzRunselected)
	ShowTexture(playerid,PreisLunselected)
	ShowTexture(playerid,PreisRunselected)

	plHaMenu.i = 1

	plHaMenu.data = {anz, haendleranz, 1, 1, item, preis}; -- AnzahlInv(1), AnzahlHaendler(2), MengeneinstellungA(3), MengeneinstellungB(4), item(5), preis(6)
end

function verkaufTransaktionENTER(playerid)
	-- print("function verkaufTransaktionENTER(playerid)", playerid)

	local plHaMenu = Player[playerid].handelsmenu
	local i = plHaMenu.i
	if i == 1 then -- Linkszeiger
		local anz = tonumber(plHaMenu.data[1])
		local haendleranz = tonumber(plHaMenu.data[2])
		local menge = tonumber(plHaMenu.data[3])
		if haendleranz - menge >= 0 then
			plHaMenu.data[2] = haendleranz - menge
			plHaMenu.data[1] = anz + menge
			UpdatePlayerDraw(playerid, plHaMenu.preis[2],lx,ly+(ls * (4)),"Inventar: "..tostring(anz + menge).."x",font_small,255,255,255); -- AnzahlInv
			UpdatePlayerDraw(playerid, plHaMenu.anz[2],mx+200,my+(ms * (4)),tostring(haendleranz - menge),font_small,255,255,255); -- AnzahlHaendler
		elseif haendleranz > 0 then
			plHaMenu.data[2] = 0
			plHaMenu.data[1] = anz + haendleranz
			UpdatePlayerDraw(playerid, plHaMenu.preis[2],lx,ly+(ls * (4)),"Inventar: "..tostring(anz + haendleranz).."x",font_small,255,255,255); -- AnzahlInv
			UpdatePlayerDraw(playerid, plHaMenu.anz[2],mx+200,my+(ms * (4)),"0",font_small,255,255,255); -- AnzahlHaendler
		end
	elseif i == 2 then -- Rechtszeiger
		local anz = tonumber(plHaMenu.data[1])
		local haendleranz = tonumber(plHaMenu.data[2])
		local menge = tonumber(plHaMenu.data[3])
		if anz - menge >= 0 then
			plHaMenu.data[2] = haendleranz + menge
			plHaMenu.data[1] = anz - menge
			UpdatePlayerDraw(playerid, plHaMenu.preis[2],lx,ly+(ls * (4)),"Inventar: "..tostring(anz - menge).."x",font_small,255,255,255); -- AnzahlInv
			UpdatePlayerDraw(playerid, plHaMenu.anz[2],mx+200,my+(ms * (4)),tostring(haendleranz + menge),font_small,255,255,255); -- AnzahlHaendler
		elseif anz > 0 then
			plHaMenu.data[1] = 0
			plHaMenu.data[2] = anz + haendleranz
			UpdatePlayerDraw(playerid, plHaMenu.preis[2],lx,ly+(ls * (4)),"Inventar: 0x",font_small,255,255,255); -- AnzahlInv
			UpdatePlayerDraw(playerid, plHaMenu.anz[2],mx+200,my+(ms * (4)),tostring(anz + haendleranz),font_small,255,255,255); -- AnzahlHaendler
		end
	elseif i == 3 then -- +1
		if plHaMenu.data[3] ~= 1 then
			plHaMenu.data[3] = 1
			UpdatePlayerDraw(playerid, plHaMenu.anz[5],rx-400,ry+(rs * (4)),"x1",font_small,255,255,255); -- Anzahl
		end
	elseif i == 4 then -- +10
		if plHaMenu.data[3] ~= 10 then
			plHaMenu.data[3] = 10
			UpdatePlayerDraw(playerid, plHaMenu.anz[5],rx-400,ry+(rs * (4)),"x10",font_small,255,255,255); -- Anzahl
		end
	elseif i == 5 then -- +100
		if plHaMenu.data[3] ~= 100 then
			plHaMenu.data[3] = 100
			UpdatePlayerDraw(playerid, plHaMenu.anz[5],rx-400,ry+(rs * (4)),"x100",font_small,255,255,255); -- Anzahl
		end

	elseif i == 6 then -- Linkszeiger Preis
		local menge = tonumber(plHaMenu.data[4])
		local preis = tonumber(plHaMenu.data[6])
		local Steuersatz = plHaMenu.Steuersatz
		local Haendleranteil = plHaMenu.Haendleranteil
		if preis - menge >= 0.1 then
			preis = preis - menge
			plHaMenu.data[6] = preis

			UpdatePlayerDraw(playerid, plHaMenu.anz[4],mx+200,my+(ms * (7)),tostring(preis),font_small,255,255,255); -- Preis
			UpdatePlayerDraw(playerid, plHaMenu.preis[5],lx,ly+(ls * (7)),"Gesamtpreis (x1): ".. tostring(math.ceil(preis) + math.ceil(preis * (Steuersatz/100)) + math.ceil(preis * (Haendleranteil/100))) .." Erz",font_small,255,50,50)
			UpdatePlayerDraw(playerid, plHaMenu.preis[6],lx,ly+(ls * (8)),"Gesamtpreis (x10): ".. tostring(math.ceil(preis*10) + math.ceil(preis*10 * (Steuersatz/100)) + math.ceil(preis*10 * (Haendleranteil/100))) .." Erz",font_small,255,50,50)
		elseif preis > 0.1 then
			preis = 0.1
			plHaMenu.data[6] = preis

			UpdatePlayerDraw(playerid, plHaMenu.anz[4],mx+200,my+(ms * (7)),tostring(preis),font_small,255,255,255); -- Preis
			UpdatePlayerDraw(playerid, plHaMenu.preis[5],lx,ly+(ls * (7)),"Gesamtpreis (x1): ".. tostring(math.ceil(preis) + math.ceil(preis * (Steuersatz/100)) + math.ceil(preis * (Haendleranteil/100))) .." Erz",font_small,255,50,50)
			UpdatePlayerDraw(playerid, plHaMenu.preis[6],lx,ly+(ls * (8)),"Gesamtpreis (x10): ".. tostring(math.ceil(preis*10) + math.ceil(preis*10 * (Steuersatz/100)) + math.ceil(preis*10 * (Haendleranteil/100))) .." Erz",font_small,255,50,50)
		end
	elseif i == 7 then -- Rechtszeiger Preis
		local menge = tonumber(plHaMenu.data[4])
		local preis = tonumber(plHaMenu.data[6])
		local Steuersatz = plHaMenu.Steuersatz
		local Haendleranteil = plHaMenu.Haendleranteil
		if preis + menge <= 2000 then
			preis = preis + menge
			plHaMenu.data[6] = preis

			UpdatePlayerDraw(playerid, plHaMenu.anz[4],mx+200,my+(ms * (7)),tostring(preis),font_small,255,255,255); -- Preis
			UpdatePlayerDraw(playerid, plHaMenu.preis[5],lx,ly+(ls * (7)),"Gesamtpreis (x1): ".. tostring(math.ceil(preis) + math.ceil(preis * (Steuersatz/100)) + math.ceil(preis * (Haendleranteil/100))) .." Erz",font_small,255,50,50)
			UpdatePlayerDraw(playerid, plHaMenu.preis[6],lx,ly+(ls * (8)),"Gesamtpreis (x10): ".. tostring(math.ceil(preis*10) + math.ceil(preis*10 * (Steuersatz/100)) + math.ceil(preis*10 * (Haendleranteil/100))) .." Erz",font_small,255,50,50)
		elseif preis < 2000 then
			preis = 2000
			plHaMenu.data[6] = preis

			UpdatePlayerDraw(playerid, plHaMenu.anz[4],mx+200,my+(ms * (7)),tostring(preis),font_small,255,255,255); -- Preis
			UpdatePlayerDraw(playerid, plHaMenu.preis[5],lx,ly+(ls * (7)),"Gesamtpreis (x1): ".. tostring(math.ceil(preis) + math.ceil(preis * (Steuersatz/100)) + math.ceil(preis * (Haendleranteil/100))) .." Erz",font_small,255,50,50)
			UpdatePlayerDraw(playerid, plHaMenu.preis[6],lx,ly+(ls * (8)),"Gesamtpreis (x10): ".. tostring(math.ceil(preis*10) + math.ceil(preis*10 * (Steuersatz/100)) + math.ceil(preis*10 * (Haendleranteil/100))) .." Erz",font_small,255,50,50)
		end
	elseif i == 8 then -- +0.1
		if plHaMenu.data[4] ~= 0.1 then
			plHaMenu.data[4] = 0.1
			UpdatePlayerDraw(playerid, plHaMenu.anz[6],rx-400,ry+(rs * (7)),"x0.1",font_small,255,255,255); -- Anzahl
		end
	elseif i == 9 then -- +1
		if plHaMenu.data[4] ~= 1 then
			plHaMenu.data[4] = 1
			UpdatePlayerDraw(playerid, plHaMenu.anz[6],rx-400,ry+(rs * (7)),"x1",font_small,255,255,255); -- Anzahl
		end
	elseif i == 10 then -- +10
		if plHaMenu.data[4] ~= 10 then
			plHaMenu.data[4] = 10
			UpdatePlayerDraw(playerid, plHaMenu.anz[6],rx-400,ry+(rs * (7)),"x10",font_small,255,255,255); -- Anzahl
		end
	elseif i == 11 then -- +100
		if plHaMenu.data[4] ~= 100 then
			plHaMenu.data[4] = 100
			UpdatePlayerDraw(playerid, plHaMenu.anz[6],rx-400,ry+(rs * (7)),"x100",font_small,255,255,255); -- Anzahl
		end

	elseif i == 12 then -- Annehmen
		-- AnzahlInv(1), AnzahlHaendler(2), MengeneinstellungA(3), MengeneinstellungB(4), item(5), preis(6)
		local botname = plHaMenu.botname
		local anz = tonumber(plHaMenu.data[1])
		local haendleranz = tonumber(plHaMenu.data[2])
		local item = plHaMenu.data[5]
		local preis = tonumber(plHaMenu.data[6])
		local iteminstance = ""
		local invianz = 0

		--print("anz: "..anz)
		--print("haendleranz: "..haendleranz)
		--print("invianz: "..invianz)

		local getiteminstance = mysql_query(mysql_handler, "SELECT `iteminstance` FROM `itemlist` WHERE `item` = '".. item .."'")
		if getiteminstance and mysql_num_rows(getiteminstance) >= 1 then
			local row = mysql_fetch_row(getiteminstance)
			iteminstance = tostring(row[1])
		end
		mysql_free_result(getiteminstance)

		local getinvianz = mysql_query(mysql_handler, "SELECT `anzahl` FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '".. iteminstance .."'")
		if getinvianz and mysql_num_rows(getinvianz) >= 1 then
			local row = mysql_fetch_row(getinvianz)
			invianz = tonumber(row[1])
		end
		mysql_free_result(getinvianz)

		if invianz > anz then -- loesche items
			DB_RemoveItem(playerid, iteminstance, (invianz - anz))
		else -- kriege items
			-- ueberpruefe auf Beschiss
			local gethaendleranz = mysql_query(mysql_handler, "SELECT `Anzahl` FROM `Verkaufsliste` WHERE `user` = '"..Player[playerid].nick.."' AND `Bot` = '"..botname.."' AND `item` = '"..item.."'")
			if gethaendleranz and mysql_num_rows(gethaendleranz) == 1 then
				local row = mysql_fetch_row(gethaendleranz)
				if (haendleranz + tonumber(row[1])) ~= (anz - invianz) then
					-- TODO: jemand anderes hat sich ein item gekauft, was der Verkauufer gerade abbuchen will -> neue anzahl ausrechnen
					GameTextForPlayer(playerid,3000,4000,"Da war jemand anderes schneller!","Font_Old_10_White_Hi.TGA",255,50,50,3000)
					mysql_free_result(gethaendleranz)
					Handelsmenu_Close(playerid)
					return
				end
			else
				GameTextForPlayer(playerid,3000,4000,"Da war jemand anderes schneller!","Font_Old_10_White_Hi.TGA",255,50,50,3000)
				mysql_free_result(gethaendleranz)
				Handelsmenu_Close(playerid)
				return
			end
			mysql_free_result(gethaendleranz)

			GiveItem(playerid,iteminstance,(anz - invianz))
		end

		if haendleranz > 0 then
			local insertorupdate = mysql_query(mysql_handler, "SELECT * FROM `Verkaufsliste` WHERE `Bot` = '".. botname .."' AND `user` = '"..Player[playerid].nick.."' AND `item` = '".. item .."'")
			if insertorupdate and mysql_num_rows(insertorupdate) >= 1 then
				local update = mysql_query(mysql_handler, "UPDATE `Verkaufsliste` SET `Anzahl`= "..haendleranz..",`Preis`= "..preis.." WHERE `Bot` = '".. botname .."' AND `user` = '"..Player[playerid].nick.."' AND `item` = '".. item .."'")
				mysql_free_result(update)
				ServerLog("HANDEL","Spieler "..Player[playerid].nick.." updated sein Verkaufsangebot bei "..botname..". Item: "..item.." Preis: "..preis.." Anzahl: "..haendleranz)
			else
				local insert = mysql_query(mysql_handler, "INSERT INTO `Verkaufsliste`(`user`, `Bot`, `item`, `Anzahl`, `Preis`) VALUES ('"..Player[playerid].nick.."', '".. botname .."', '".. item .."', "..haendleranz..", "..preis..")")
				mysql_free_result(insert)
				ServerLog("HANDEL","Spieler "..Player[playerid].nick.." stellt ein neues Verkaufsangebot bei "..botname.." ein. Item: "..item.." Preis: "..preis.." Anzahl: "..haendleranz)
			end
			mysql_free_result(insertorupdate)
		else -- item rausgenommen
			local delete = mysql_query(mysql_handler, "DELETE FROM `Verkaufsliste` WHERE `user` = '"..Player[playerid].nick.."' AND `Bot` = '".. botname .."' AND `item` = '".. item .."'")
			mysql_free_result(delete)
			ServerLog("HANDEL","Spieler "..Player[playerid].nick.." nimmt sein Verkaufsangebot bei "..botname.." zurueck. Item: "..item)
		end
		GameTextForPlayer(playerid,3000,4000,"Transaktion erfolgreich.","Font_Old_10_White_Hi.TGA",50,255,50,3000)
		Handelsmenu_Close(playerid)
	else -- Abbrechen
		Handelsmenu_Close(playerid)
	end
end

-- Kaufen
function kaufTransaktion(playerid)
	-- print("function kaufTransaktion(playerid)", playerid)

	local plHaMenu = Player[playerid].handelsmenu
	plHaMenu.menu = "Transaktion"

	for i=1,36 do
		if plHaMenu.selected[i] == nil then break; end
		DestroyPlayerDraw(playerid, plHaMenu.selected[i])
		DestroyPlayerDraw(playerid, plHaMenu.unselected[i])
		if plHaMenu.anz[i] then DestroyPlayerDraw(playerid, plHaMenu.anz[i]); end
		if plHaMenu.preis[i] then DestroyPlayerDraw(playerid, plHaMenu.preis[i]); end
	end
	HideDraw(playerid,Item)
	HideDraw(playerid,Anzahl)
	HideDraw(playerid,Preis)
	if plHaMenu.iende > 36 then
		HideDraw(playerid,Seite)
		DestroyPlayerDraw(playerid, plHaMenu.seite)
	end

	local botname = plHaMenu.botname
	local i = plHaMenu.i
	local item = plHaMenu.data[i][1]
	local preis = tonumber(plHaMenu.data[i][3])
	local inventar = mysql_query(mysql_handler, "SELECT SUM(Anzahl) AS Anzahl FROM `Verkaufsliste` WHERE `Bot` = '".. botname .."' AND `item` = '".. item .."' AND `Preis` = ".. tostring(preis) .." GROUP BY `Preis`, `item`")
	if inventar and mysql_num_rows(inventar) >= 1 then
		local row = mysql_fetch_row(inventar)
		local anz = tonumber(row[1])

		--local Steuersatz = plHaMenu.Steuersatz
		--local Haendleranteil = plHaMenu.Haendleranteil
		--local steuern = mysql_query(mysql_handler, "SELECT `Steuern`, `Haendleranteil` FROM `Steuern` LEFT JOIN `Verkaeufer` ON `Steuern`.`Ort` = `Verkaeufer`.`Ort` WHERE `Verkaeufer`.`Bot` = '".. botname .."'")
		--if steuern and mysql_num_rows(steuern) >= 1 then
		--	local row = mysql_fetch_row(steuern)
		--	Steuersatz = tonumber(row[1])
		--	Haendleranteil = tonumber(row[2])
		--	plHaMenu.Steuersatz = Steuersatz
		--	plHaMenu.Haendleranteil = Haendleranteil
		--end
		--mysql_free_result(steuern)
        --
		--local Verkaeufer = "Anonymous"
		--local seller = mysql_query(mysql_handler, "SELECT user FROM `Verkaufsliste` WHERE `Bot` = '".. botname .."' AND `item` = '".. item .."' AND `Preis` = ".. tostring(preis))
		--if seller and mysql_num_rows(seller) >= 1 then
		--	for i=1, mysql_num_rows(seller) do
		--		local row = mysql_fetch_assoc(seller)
		--		if i == 1 then
		--			Verkaeufer = row.user
		--		else
		--			Verkaeufer = Verkaeufer ..", ".. row.user
		--		end
		--	end
		--end
		--mysql_free_result(seller)

		-- links
		plHaMenu.anz[1] = CreatePlayerDraw(playerid,lx,ly+(ls * (2)),"Auf Lager: ".. anz .."x",font_small,255,255,255)
		plHaMenu.preis[1] = CreatePlayerDraw(playerid,lx,ly+(ls * (3)),"Kosten: ".. preis .." Erz",font_small,255,255,255)
		--plHaMenu.preis[2] = CreatePlayerDraw(playerid,lx,ly+(ls * (4)),"Steuern: ".. Steuersatz .." Prozent",font_small,255,255,255)
		--plHaMenu.preis[3] = CreatePlayerDraw(playerid,lx,ly+(ls * (5)),"Haendleranteil: ".. Haendleranteil .." Prozent",font_small,255,255,255)
		plHaMenu.preis[4] = CreatePlayerDraw(playerid,lx,ly+(ls * (6)),"Gesamtpreis: ".. tostring(math.ceil(preis)) .." Erz",font_small,255,50,50)
		--plHaMenu.preis[5] = CreatePlayerDraw(playerid,lx,ly+(ls * (8)),"Verkaeufer: ".. Verkaeufer,font_small,255,255,255)

		plHaMenu.preis[1] = CreatePlayerDraw(playerid,lx,ly+(ls * (3)),"Kosten: ".. preis .." Gold",font_small,255,255,255)

		--plHaMenu.preis[2] = CreatePlayerDraw(playerid,lx,ly+(ls * (4)),"Steuern: ".. Steuersatz .." Prozent",font_small,255,255,255)
		--plHaMenu.preis[3] = CreatePlayerDraw(playerid,lx,ly+(ls * (5)),"Haendleranteil: ".. Haendleranteil .." Prozent",font_small,255,255,255)
		plHaMenu.preis[4] = CreatePlayerDraw(playerid,lx,ly+(ls * (6)),"Gesamtpreis: ".. preis .." Gold",font_small,255,50,50)
		--plHaMenu.preis[5] = CreatePlayerDraw(playerid,lx,ly+(ls * (8)),"Verkaeufer: ".. Verkaeufer,font_small,255,255,255)

		-- mitte
		plHaMenu.anz[2] = CreatePlayerDraw(playerid,mx,my+(ms * (2)),item,font_small,255,255,255); -- Ueberschrift
		plHaMenu.anz[3] = CreatePlayerDraw(playerid,mx,my+(ms * (3)),"Anzahl:",font_small,255,255,255)
		plHaMenu.anz[4] = CreatePlayerDraw(playerid,mx+200,my+(ms * (4)),"1",font_small,255,255,255); -- Anzahl
		plHaMenu.selected[1] = CreatePlayerDraw(playerid,mx,my+(ms * (5)),"x1",font_small,255,0,0); -- Mengeneinstellung
		plHaMenu.unselected[1] = CreatePlayerDraw(playerid,mx,my+(ms * (5)),"x1",font_small,255,255,255)
		plHaMenu.selected[2] = CreatePlayerDraw(playerid,mx+150,my+(ms * (5)),"x10",font_small,255,0,0)
		plHaMenu.unselected[2] = CreatePlayerDraw(playerid,mx+150,my+(ms * (5)),"x10",font_small,255,255,255)
		plHaMenu.selected[3] = CreatePlayerDraw(playerid,mx+360,my+(ms * (5)),"x100",font_small,255,0,0)
		plHaMenu.unselected[3] = CreatePlayerDraw(playerid,mx+360,my+(ms * (5)),"x100",font_small,255,255,255); -- Mengeneinstellung
		plHaMenu.selected[4] = CreatePlayerDraw(playerid,mx,my+(ms * (6)),"Annehmen",font_small,255,0,0)
		plHaMenu.unselected[4] = CreatePlayerDraw(playerid,mx,my+(ms * (6)),"Annehmen",font_small,255,255,255)
		-- rechts
		plHaMenu.selected[5] = CreatePlayerDraw(playerid,rx,ry+(rs * (6)),"Abbrechen",font_small,255,0,0)
		plHaMenu.unselected[5] = CreatePlayerDraw(playerid,rx,ry+(rs * (6)),"Abbrechen",font_small,255,255,255)
		plHaMenu.anz[5] = CreatePlayerDraw(playerid,rx-400,ry+(rs * (4)),"x1",font_small,255,255,255); -- Anzahl Mengeneinstellung
		-- show
		for i=1, 4 do
			ShowPlayerDraw(playerid, plHaMenu.anz[i])
			ShowPlayerDraw(playerid, plHaMenu.preis[i])
			ShowPlayerDraw(playerid, plHaMenu.unselected[i])
		end
		ShowPlayerDraw(playerid, plHaMenu.unselected[5])
		ShowPlayerDraw(playerid, plHaMenu.anz[5])
		--ShowPlayerDraw(playerid, plHaMenu.preis[5])
		ShowTexture(playerid,AnzLselected)
		ShowTexture(playerid,AnzRunselected)
		plHaMenu.i = 1
		plHaMenu.data = {1, 1, item, preis, anz}; -- Anzahl, Mengeneinstellung, item, preis, Max Anzahl
	else
		GameTextForPlayerCentered(playerid,3000,4000,"Tut mir leid, da war jemand anderes schneller.","Font_Old_10_White_Hi.TGA",255,50,50,3000)
		Handelsmenu_Close(playerid)
	end
	mysql_free_result(inventar)
end

function kaufTransaktionENTER(playerid)
	-- print("function kaufTransaktionENTER(playerid)", playerid)

	local plHaMenu = Player[playerid].handelsmenu
	local i = plHaMenu.i
	if i == 1 then -- Linkszeiger
		local anz = plHaMenu.data[1]
		local menge = plHaMenu.data[2]
		local preis = plHaMenu.data[4]
		local Steuersatz = plHaMenu.Steuersatz
		local Haendleranteil = plHaMenu.Haendleranteil
		if anz - menge >= 1 then
			plHaMenu.data[1] = anz - menge
			UpdatePlayerDraw(playerid, plHaMenu.anz[4],mx+200,my+(ms * (4)),tostring(anz - menge),font_small,255,255,255); -- Anzahl
			preis = preis * (anz - menge)
			UpdatePlayerDraw(playerid, plHaMenu.preis[4],lx,ly+(ls * (6)),"Gesamtpreis: ".. tostring(math.ceil(preis) + math.ceil(preis * (Steuersatz/100)) + math.ceil(preis * (Haendleranteil/100))) .." Erz",font_small,255,50,50)
		elseif anz > 1 then
			plHaMenu.data[1] = 1
			UpdatePlayerDraw(playerid, plHaMenu.anz[4],mx+200,my+(ms * (4)),"1",font_small,255,255,255); -- Anzahl
			UpdatePlayerDraw(playerid, plHaMenu.preis[4],lx,ly+(ls * (6)),"Gesamtpreis: ".. tostring(math.ceil(preis) + math.ceil(preis * (Steuersatz/100)) + math.ceil(preis * (Haendleranteil/100))) .." Erz",font_small,255,50,50)
		end
	elseif i == 2 then -- Rechtszeiger
		local anz = plHaMenu.data[1]
		local menge = plHaMenu.data[2]
		local maxanz = 10000;--plHaMenu.data[5]
		local preis = plHaMenu.data[4]
		local Steuersatz = plHaMenu.Steuersatz
		local Haendleranteil = plHaMenu.Haendleranteil
		if anz + menge <= maxanz then
			plHaMenu.data[1] = anz + menge
			UpdatePlayerDraw(playerid, plHaMenu.anz[4],mx+200,my+(ms * (4)),tostring(anz + menge),font_small,255,255,255); -- Anzahl
			preis = preis * (anz + menge)
			UpdatePlayerDraw(playerid, plHaMenu.preis[4],lx,ly+(ls * (6)),"Gesamtpreis: ".. tostring(math.ceil(preis) + math.ceil(preis * (Steuersatz/100)) + math.ceil(preis * (Haendleranteil/100))) .." Erz",font_small,255,50,50)
		elseif anz < maxanz then
			plHaMenu.data[1] = maxanz
			UpdatePlayerDraw(playerid, plHaMenu.anz[4],mx+200,my+(ms * (4)),tostring(maxanz),font_small,255,255,255); -- Anzahl
			preis = preis * maxanz
			UpdatePlayerDraw(playerid, plHaMenu.preis[4],lx,ly+(ls * (6)),"Gesamtpreis: ".. tostring(math.ceil(preis) + math.ceil(preis * (Steuersatz/100)) + math.ceil(preis * (Haendleranteil/100))) .." Erz",font_small,255,50,50)
		end
	elseif i == 3 then -- +1
		if plHaMenu.data[2] ~= 1 then
			plHaMenu.data[2] = 1
			UpdatePlayerDraw(playerid, plHaMenu.anz[5],rx-400,ry+(rs * (4)),"x1",font_small,255,255,255); -- Anzahl
		end
	elseif i == 4 then -- +10
		if plHaMenu.data[2] ~= 10 then
			plHaMenu.data[2] = 10
			UpdatePlayerDraw(playerid, plHaMenu.anz[5],rx-400,ry+(rs * (4)),"x10",font_small,255,255,255); -- Anzahl
		end
	elseif i == 5 then -- +100
		if plHaMenu.data[2] ~= 100 then
			plHaMenu.data[2] = 100
			UpdatePlayerDraw(playerid, plHaMenu.anz[5],rx-400,ry+(rs * (4)),"x100",font_small,255,255,255); -- Anzahl
		end
	elseif i == 6 then -- Annehmen
		local botname = plHaMenu.botname
		local item = plHaMenu.data[3]
		local preis = plHaMenu.data[4]
		local inventar = mysql_query(mysql_handler, "SELECT SUM(Anzahl) AS Anzahl FROM `Verkaufsliste` WHERE `Bot` = '".. botname .."' AND `item` = '".. item .."' AND `Preis` = '".. tostring(preis) .."' GROUP BY `Preis`, `item`")
		if inventar and mysql_num_rows(inventar) >= 1 then -- Check, ob noch iwas auf Lager ist
			local row = mysql_fetch_row(inventar)
			local anz = tonumber(row[1])

			local Steuersatz = plHaMenu.Steuersatz
			local Haendleranteil = plHaMenu.Haendleranteil
			--if anz >= plHaMenu.data[1] then -- Check, ob noch genug auf Lager ist
				local kosten = math.ceil(preis * plHaMenu.data[1]) + math.ceil(preis * (Steuersatz/100)) + math.ceil(preis * (Haendleranteil/100))
				local goldcheck = mysql_query(mysql_handler, "SELECT `anzahl` FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `item` = 'itmi_nugget' AND `anzahl` >= ".. tostring(kosten))
				if goldcheck and mysql_num_rows(goldcheck) == 1 then -- Check ob Kaeufer genug Erz hat
					local getitemid = mysql_query(mysql_handler, "SELECT `id` FROM `itemlist` WHERE `item` = '".. item .."'")
					if getitemid and mysql_num_rows(getitemid) == 1 then -- get item code von Verkaufsitem
						local row = mysql_fetch_row(getitemid)
						local itemid = tonumber(row[1])
						--local selectVerkaeufer = mysql_query(mysql_handler, "SELECT `user` FROM `Verkaufsliste` WHERE `Bot` = '"..botname.."' AND `item` = '"..item.."' AND `Preis` = "..preis.." LIMIT 1")
						--if selectVerkaeufer and mysql_num_rows(selectVerkaeufer) == 1 then -- get Verkaeufer
							--local row = mysql_fetch_row(selectVerkaeufer)
							--local verkaeufer = row[1]
							-- Entferne Erz
							DB_RemoveItem(playerid, "itmi_nugget", kosten)
							-- Update Verkaufsliste vom Bot
							--updateVerkaufsliste(botname,item,preis, plHaMenu.data[1])
							-- Steuern
							--gewinnTruhe("Steuer", botname, (math.ceil(preis * (Steuersatz/100))))
							-- verteile Haendleranteil
							--verteileHaendleranteil(math.ceil(preis * (Haendleranteil/100)))
							-- Fuege Kaufsgegenstand hinzu
							DB_AddItem(playerid, itemid, plHaMenu.data[1])
							-- Erfolg
							GameTextForPlayer(playerid,3000,4000,"Handel erfolgreich.","Font_Old_10_White_Hi.TGA",50,255,50,3000)
							-- schliesse Menu
							Handelsmenu_Close(playerid)
							ServerLog("HANDEL","Spieler "..Player[playerid].nick.." kauft bei "..botname.." folgendes Item: "..item.." Preis: "..preis.." Anzahl: "..plHaMenu.data[1])
						--else
						--	GameTextForPlayer(playerid,3000,4000,"Datenbankfehler.","Font_Old_10_White_Hi.TGA",255,50,50,3000)
						--end
						--mysql_free_result (selectVerkaeufer)
					else
						GameTextForPlayer(playerid,3000,4000,"Datenbankfehler.","Font_Old_10_White_Hi.TGA",255,50,50,3000)
					end
					mysql_free_result(getitemid)
				else
					GameTextForPlayer(playerid,3000,4000,"Dafuer habe ich nicht genug Erz.","Font_Old_10_White_Hi.TGA",255,50,50,3000)
				end
				mysql_free_result(goldcheck)
			--else -- Update MaxAnz, da nicht mehr genug verfuegbar ist
			--	GameTextForPlayer(playerid,3000,4000,"Tut mir leid, so viel habe ich nicht mehr.","Font_Old_10_White_Hi.TGA",255,50,50,3000)
			--	UpdatePlayerDraw(playerid, plHaMenu.anz[1],lx,ly+(ls * (2)),"Auf Lager: ".. anz .."x",font_small,255,255,255)
			--	plHaMenu.data[5] = anz
			--end
		else
			GameTextForPlayer(playerid,3000,4000,"Tut mir leid, da war jemand anderes schneller.","Font_Old_10_White_Hi.TGA",255,50,50,3000)
			Handelsmenu_Close(playerid)
		end
		mysql_free_result(inventar)
	else -- Abbrechen
		Handelsmenu_Close(playerid)
	end
end

-- Lernen
function lernTransaktion(playerid)
	-- print("function lernTransaktion(playerid)", playerid)

	local plHaMenu = Player[playerid].handelsmenu
	HideTexture(playerid,Rahmen)
	plHaMenu.menu = "Lerntransaktion"
	local skill = Attribute[plHaMenu.i]
	for i=1,8 do
		if plHaMenu.selected[i] == nil then break; end
		DestroyPlayerDraw(playerid, plHaMenu.selected[i])
		DestroyPlayerDraw(playerid, plHaMenu.unselected[i])
	end
	plHaMenu.anz[1] = CreatePlayerDraw(playerid,2300,4000,"-"..tostring(Skillstep[1]).." LP",font_big,255,255,255); --Skillschritt
	plHaMenu.anz[2] = CreatePlayerDraw(playerid,2000,3000,"Wie viel " ..skill .. " moechtest du lernen?",font_big,255,255,255); --Begr��ungsnachricht :)
	HideDraw(playerid,Attribut)
	ShowPlayerDraw(playerid, plHaMenu.anz[2])
	
	plHaMenu.selected[1] = CreatePlayerDraw(playerid,3000,4000,"Lernen",font_big,255,0,0)
	plHaMenu.unselected[1] = CreatePlayerDraw(playerid,3000,4000,"Lernen",font_big,255,255,255)
	plHaMenu.selected[2] = CreatePlayerDraw(playerid,3800,4000,"Abbrechen",font_big,255,0,0)
	plHaMenu.unselected[2] = CreatePlayerDraw(playerid,3800,4000,"Abbrechen",font_big,255,255,255)

	ShowPlayerDraw(playerid, plHaMenu.unselected[1])
	ShowPlayerDraw(playerid, plHaMenu.unselected[2])
	ShowPlayerDraw(playerid, plHaMenu.anz[1])

	ShowTexture(playerid,lowerselected)
	ShowTexture(playerid,higherunselected)
	plHaMenu.data[1] = Skillstep[1]
	plHaMenu.data[2] = Attribute[plHaMenu.i]
	plHaMenu.i = 1
end

function lernTransaktionENTER(playerid)
	-- print("function lernTransaktionENTER(playerid)", playerid)

	local plHaMenu = Player[playerid].handelsmenu
	local i = plHaMenu.i
	if i == 1 then
		if plHaMenu.data[1] ~= Skillstep[1] then
			plHaMenu.data[1] = Skillstep[plHaMenu.Skillcounter - 1]; --Skillschritt in data[1]
			plHaMenu.Skillcounter = plHaMenu.Skillcounter - 1; --Skillcounter runter
			UpdatePlayerDraw(playerid, plHaMenu.anz[1],2300,4000,"-"..tostring(plHaMenu.data[1]).." LP",font_big,255,255,255)
		end
	elseif i == 2 then
		if plHaMenu.data[1] ~= Skillstep[6] then
			plHaMenu.data[1] = Skillstep[plHaMenu.Skillcounter + 1]
			plHaMenu.Skillcounter = plHaMenu.Skillcounter + 1; --Skillcounter hoch
			UpdatePlayerDraw(playerid, plHaMenu.anz[1],2300,4000,"-"..tostring(plHaMenu.data[1]).." LP",font_big,255,255,255)
			--print("Step: "..plHaMenu.data[1])
		end
	elseif i == 3 then
		lernTransaktionAUSFUEHREN(playerid)
		for j = 1, 2 do
			DestroyPlayerDraw(playerid, plHaMenu.selected[j])
			DestroyPlayerDraw(playerid, plHaMenu.unselected[j])
			DestroyPlayerDraw(playerid, plHaMenu.anz[j])
		end
		plHaMenu.i = 1
		HideTexture(playerid,lowerunselected)
		HideTexture(playerid,higherunselected)
		plHaMenu.Skillcounter = 1
		Handelsmenu_Close(playerid)
	elseif i == 4 then
		for j = 1, 2 do
			DestroyPlayerDraw(playerid, plHaMenu.selected[j])
			DestroyPlayerDraw(playerid, plHaMenu.unselected[j])
			DestroyPlayerDraw(playerid, plHaMenu.anz[j])
		end
		plHaMenu.Skillcounter = 1
		Handelsmenu_Close(playerid)
	end	
end

function lernTransaktionAUSFUEHREN(playerid)
	-- print("function lernTransaktionAUSFUEHREN(playerid)", playerid)

	local plHaMenu = Player[playerid].handelsmenu
	Player[playerid].lernp = GetPlayerLearnPoints(playerid)
	local skill = plHaMenu.data[2]
	if Player[playerid].lernp ~= 0 and Player[playerid].lernp >= plHaMenu.data[1] then
		if skill == Attribute[1] then --Staerke?
			Player[playerid].stk = GetPlayerStrength(playerid)
			Player[playerid].stk = Player[playerid].stk + plHaMenu.data[1]; --Momentaner Skillevel + ausgew�hlter Skillschritt
			if Player[playerid].stk > 100 then
				sendERRMessage(playerid, "Maximale Staerke erreicht.")
				return
			else
				Player[playerid].lernp = Player[playerid].lernp - plHaMenu.data[1]
				SetPlayerLearnPoints(playerid,Player[playerid].lernp)
				SetPlayerStrength(playerid,Player[playerid].stk)
			end
			sendOKMessage(playerid, "Deine " .. skill .. " ist um " .. plHaMenu.data[1] .. " gestiegen!")
		elseif skill == Attribute[2] then --Geschick?
			Player[playerid].dex = GetPlayerDexterity(playerid)
			Player[playerid].dex = Player[playerid].dex + plHaMenu.data[1]; --Momentaner Skillevel + ausgew�hlter Skillschritt
			if Player[playerid].dex > 100 then
				sendERRMessage(playerid, "Maximales Geschick erreicht.")
				return
			else
				Player[playerid].lernp = Player[playerid].lernp - plHaMenu.data[1]
				SetPlayerLearnPoints(playerid,Player[playerid].lernp)
				SetPlayerDexterity(playerid,Player[playerid].dex)
			end
			sendOKMessage(playerid, "Dein " .. skill .. " ist um " .. plHaMenu.data[1] .. " gestiegen!")
		elseif skill == Attribute[3] then --Mana?
			Player[playerid].manamax = GetPlayerMaxMana(playerid)
			Player[playerid].manamax = Player[playerid].manamax + plHaMenu.data[1]; --Momentaner Skillevel + ausgew�hlter Skillschritt
			Player[playerid].lernp = Player[playerid].lernp - plHaMenu.data[1]
			SetPlayerLearnPoints(playerid,Player[playerid].lernp)
			SetPlayerMaxMana(playerid,Player[playerid].manamax)
			sendOKMessage(playerid, "Dein " .. skill .. " ist um " .. plHaMenu.data[1] .. " gestiegen!")
		elseif skill == Attribute[4] then --Kreise? 
			Player[playerid].magiekreis = GetPlayerMagicLevel(playerid)
			Player[playerid].magiekreis = Player[playerid].magiekreis + (plHaMenu.data[1]/10); --Momentaner Skillevel + ausgew�hlter Skillschritt
			if Player[playerid].magiekreis > 6 then
				sendERRMessage(playerid, "Maximaler Magiekreis erreicht.")
				return
			else
				Player[playerid].lernp = Player[playerid].lernp - plHaMenu.data[1]
				SetPlayerLearnPoints(playerid,Player[playerid].lernp)
				SetPlayerMagicLevel(playerid,Player[playerid].magiekreis)
			end
			sendOKMessage(playerid, "Dein " .. skill .. " ist um " .. (plHaMenu.data[1]/10) .. " gestiegen!")
		elseif skill == Attribute[5] then --Einhand? 
			Player[playerid].einhand = GetPlayerSkillWeapon(playerid,0)
			Player[playerid].einhand = Player[playerid].einhand + plHaMenu.data[1]; --Momentaner Skillevel + ausgew�hlter Skillschritt
			if Player[playerid].einhand > 100 then
				sendERRMessage(playerid, "Maximal Einhand erreicht.")
				return
			else
				Player[playerid].lernp = Player[playerid].lernp - plHaMenu.data[1]
				SetPlayerLearnPoints(playerid,Player[playerid].lernp)
				SetPlayerSkillWeapon(playerid,0,Player[playerid].einhand)
			end
			sendOKMessage(playerid, "Dein Umgang mit " .. skill .. "-Waffen ist um " .. plHaMenu.data[1] .. " gestiegen!")
		elseif skill == Attribute[6] then --Zweihand? 
			Player[playerid].zweihand = GetPlayerSkillWeapon(playerid,1)
			Player[playerid].zweihand = Player[playerid].zweihand + plHaMenu.data[1]; --Momentaner Skillevel + ausgew�hlter Skillschritt
			if Player[playerid].zweihand > 100 then
				sendERRMessage(playerid, "Maximal Zweihand erreicht.")
				return
			else
				Player[playerid].lernp = Player[playerid].lernp - plHaMenu.data[1]
				SetPlayerLearnPoints(playerid,Player[playerid].lernp)
				SetPlayerSkillWeapon(playerid,1,Player[playerid].zweihand)
			end
			sendOKMessage(playerid, "Dein Umgang mit " .. skill .. "-Waffen ist um " .. plHaMenu.data[1] .. " gestiegen!")
		elseif skill == Attribute[7] then --Bogen? 
			Player[playerid].bogen = GetPlayerSkillWeapon(playerid,2)
			Player[playerid].bogen = Player[playerid].bogen + plHaMenu.data[1]; --Momentaner Skillevel + ausgew�hlter Skillschritt
			if Player[playerid].bogen > 100 then
				sendERRMessage(playerid, "Maximal Bogen erreicht.")
				return
			else
				Player[playerid].lernp = Player[playerid].lernp - plHaMenu.data[1]
				SetPlayerLearnPoints(playerid,Player[playerid].lernp)
				SetPlayerSkillWeapon(playerid,2,Player[playerid].bogen)
			end
			sendOKMessage(playerid, "Dein Umgang mit dem " .. skill .. " ist um " .. plHaMenu.data[1] .. " gestiegen!")
		elseif skill == Attribute[8] then --Armbrust? 
			Player[playerid].armbrust = GetPlayerSkillWeapon(playerid,3)
			Player[playerid].armbrust = Player[playerid].armbrust + plHaMenu.data[1]; --Momentaner Skillevel + ausgew�hlter Skillschritt
			if Player[playerid].armbrust > 100 then
				sendERRMessage(playerid, "Maximal Armbrust erreicht.")
				return
			else
				Player[playerid].lernp = Player[playerid].lernp - plHaMenu.data[1]
				SetPlayerLearnPoints(playerid,Player[playerid].lernp)
				SetPlayerSkillWeapon(playerid,3,Player[playerid].armbrust)
			end
			sendOKMessage(playerid, "Dein Umgang mit der " .. skill .. " ist um " .. plHaMenu.data[1] .. " gestiegen!")
		end	
	else
		GameTextForPlayer(playerid,3000,4000,"Du hast nicht genuegend Erfahrung. Komm spaeter wieder.","Font_Old_10_White_Hi.TGA",255,0,0,3000)
	end
	local result = mysql_query(mysql_handler, "UPDATE user SET stk='" .. Player[playerid].stk .. "', dex='" .. Player[playerid].dex .. "', ManaMAX='" .. Player[playerid].manamax .. "', Magiekreis='" .. Player[playerid].magiekreis .. "', 1h='" .. Player[playerid].einhand .. "', 2h='" .. Player[playerid].zweihand .. "', Bogen='" .. Player[playerid].bogen .. "', Armbrust='" .. Player[playerid].armbrust .. "', lp='" .. Player[playerid].lernp .. "' WHERE name='" .. GetPlayerName(playerid) .. "'")
	mysql_free_result(result)
end

-- Verschiedenes
function updateVerkaufsliste(botname,item,preis,anz)
	-- print("function updateVerkaufsliste(botname, item, preis, anz)", botname, item, preis, anz)

	while anz > 0 do
		local selectAnzahl = mysql_query(mysql_handler, "SELECT `user`, `Anzahl` FROM `Verkaufsliste` WHERE `Bot` = '"..botname.."' AND `item` = '"..item.."' AND `Preis` = "..preis.." LIMIT 1")
		if selectAnzahl and mysql_num_rows(selectAnzahl) == 1 then -- get Anzahl
			local row = mysql_fetch_row(selectAnzahl)
			local verkaeufer = row[1]
			local anzahl = tonumber(row[2])

			if anz > anzahl then
				anz = anz - anzahl
				local update = mysql_query(mysql_handler, "UPDATE `Verkaufsliste` SET `Anzahl`= `Anzahl` - ".. anzahl .." WHERE `Bot` = '"..botname.."' AND `item` = '"..item.."' AND `Preis` = "..preis.." AND `user` = '"..verkaeufer.."'")
				mysql_free_result (update)
				local delete = mysql_query(mysql_handler, "DELETE FROM `Verkaufsliste` WHERE `Anzahl` = 0")
				mysql_free_result (delete)
				-- uebertrage Gewinn in Abhol-Truhe
				gewinnTruhe(verkaeufer,botname,math.ceil(preis * anzahl))
			else
				local update = mysql_query(mysql_handler, "UPDATE `Verkaufsliste` SET `Anzahl`= `Anzahl` - ".. anz .." WHERE `Bot` = '"..botname.."' AND `item` = '"..item.."' AND `Preis` = "..preis.." AND `user` = '"..verkaeufer.."'")
				mysql_free_result (update)
				local delete = mysql_query(mysql_handler, "DELETE FROM `Verkaufsliste` WHERE `Anzahl` = 0")
				mysql_free_result (delete)
				-- uebertrage Gewinn in Abhol-Truhe
				gewinnTruhe(verkaeufer,botname,math.ceil(preis * anz))
				anz = 0
			end
		end
		mysql_free_result(selectAnzahl)
	end
end

function gewinnTruhe(user, botname, betrag)
	-- print("function gewinnTruhe(user, botname, betrag)", user, botname, betrag)

	local insertorupdate = mysql_query(mysql_handler, "SELECT `user` FROM `Verkaufstruhe` WHERE `user` = '"..user.."' AND `Bot` = '"..botname.."'")
	if insertorupdate and mysql_num_rows(insertorupdate) == 1 then
		update = mysql_query(mysql_handler, "UPDATE `Verkaufstruhe` SET `Erz`=`Erz` + "..betrag.." WHERE `user`='"..user.."' AND `Bot`='".. botname .."'")
		mysql_free_result (update)
	else
		local insert = mysql_query(mysql_handler, "INSERT INTO `Verkaufstruhe`(`user`, `Bot`, `Erz`) VALUES ('".. user .."', '".. botname .."', ".. betrag ..")")
		mysql_free_result (insert)
	end
	mysql_free_result (insertorupdate)
end

function verteileHaendleranteil(betrag)
	-- print("function verteileHaendleranteil(betrag)", betrag)

	local ober, handwerk, hafen = 0, 0, 0
	local names = "`name` = '"..OberesViertel[1].."'"
	for i=2, #OberesViertel do
		names = names .. " OR `name` = '"..OberesViertel[i].."'"
	end
	local checkOberesViertel = mysql_query(mysql_handler, "SELECT SUM(`anzahl`) AS Anzahl FROM `inventar` WHERE `item` = 'itmi_nugget' AND (".. names .. ")")
	if checkOberesViertel and mysql_num_rows(checkOberesViertel) == 1 then
		local row = mysql_fetch_row(checkOberesViertel)
		ober = tonumber(row[1])
		--print(ober)
	end
	mysql_free_result (checkOberesViertel)

	names = "`name` = '"..Handwerksviertel[1].."'"
	for i=2, #Handwerksviertel do
		names = names .. " OR `name` = '"..Handwerksviertel[i].."'"
	end
	local checkHandwerksviertel = mysql_query(mysql_handler, "SELECT SUM(`anzahl`) AS Anzahl FROM `inventar` WHERE `item` = 'itmi_nugget' AND (".. names .. ")")
	if checkHandwerksviertel and mysql_num_rows(checkHandwerksviertel) == 1 then
		local row = mysql_fetch_row(checkHandwerksviertel)
		handwerk = tonumber(row[1])
		--print(handwerk)
	end
	mysql_free_result (checkHandwerksviertel)

	names = "`name` = '"..Hafenviertel[1].."'"
	for i=2, #Hafenviertel do
		names = names .. " OR `name` = '"..Hafenviertel[i].."'"
	end
	local checkHafenviertel = mysql_query(mysql_handler, "SELECT SUM(`anzahl`) AS Anzahl FROM `inventar` WHERE `item` = 'itmi_nugget' AND (".. names .. ")")
	if checkHafenviertel and mysql_num_rows(checkHafenviertel) == 1 then
		local row = mysql_fetch_row(checkHafenviertel)
		hafen = tonumber(row[1])
		--print(hafen)
	end
	mysql_free_result (checkHafenviertel)

	local anteil = 0
	anteil = ober / (ober + handwerk + hafen)
	if anteil < Verteilungsschluessel[1] then -- OberesViertel kriegt das Erz
		local lotto = randomGen(#OberesViertel)
		--print("Ober: "..OberesViertel[lotto])
		local insertorupdate = mysql_query(mysql_handler, "SELECT `anzahl` FROM `inventar` WHERE `name` = '".. OberesViertel[lotto] .."' AND `item` = 'itmi_nugget'")
		if insertorupdate and mysql_num_rows(insertorupdate) == 1 then
			update = mysql_query(mysql_handler, "UPDATE `inventar` SET `anzahl`= `anzahl` + ".. betrag.." WHERE `name` = '".. OberesViertel[lotto] .."' AND `item` = 'itmi_nugget'")
			mysql_free_result (update)
		else
			local insert = mysql_query(mysql_handler, "INSERT INTO `inventar`(`name`, `item`, `anzahl`, `id`) VALUES ('".. OberesViertel[lotto] .."', 'itmi_nugget', ".. betrag ..", 118)")
			mysql_free_result (insert)
		end
		mysql_free_result (insertorupdate)
		return
	end

	anteil = handwerk / (ober + handwerk + hafen)
	if anteil < Verteilungsschluessel[2] then -- handwerksViertel kriegt das Erz
		local lotto = randomGen(#Handwerksviertel)
		--print("Handwerk: "..Handwerksviertel[lotto])
		local insertorupdate = mysql_query(mysql_handler, "SELECT `anzahl` FROM `inventar` WHERE `name` = '".. Handwerksviertel[lotto] .."' AND `item` = 'itmi_nugget'")
		if insertorupdate and mysql_num_rows(insertorupdate) == 1 then
			update = mysql_query(mysql_handler, "UPDATE `inventar` SET `anzahl`= `anzahl` + ".. betrag.." WHERE `name` = '".. Handwerksviertel[lotto] .."' AND `item` = 'itmi_nugget'")
			mysql_free_result (update)
		else
			local insert = mysql_query(mysql_handler, "INSERT INTO `inventar`(`name`, `item`, `anzahl`, `id`) VALUES ('".. Handwerksviertel[lotto] .."', 'itmi_nugget', ".. betrag ..", 118)")
			mysql_free_result (insert)
		end
		mysql_free_result (insertorupdate)
		return
	end

	-- ansonsten kriegt das Hafenviertel das Erz
	local lotto = randomGen(#Hafenviertel)
	--print("Hafen: "..Hafenviertel[lotto])
	local insertorupdate = mysql_query(mysql_handler, "SELECT `anzahl` FROM `inventar` WHERE `name` = '".. Hafenviertel[lotto] .."' AND `item` = 'itmi_nugget'")
	if insertorupdate and mysql_num_rows(insertorupdate) == 1 then
		update = mysql_query(mysql_handler, "UPDATE `inventar` SET `anzahl`= `anzahl` + ".. betrag.." WHERE `name` = '".. Hafenviertel[lotto] .."' AND `item` = 'itmi_nugget'")
		mysql_free_result (update)
	else
		local insert = mysql_query(mysql_handler, "INSERT INTO `inventar`(`name`, `item`, `anzahl`, `id`) VALUES ('".. Hafenviertel[lotto] .."', 'itmi_nugget', ".. betrag ..", 118)")
		mysql_free_result (insert)
	end
	mysql_free_result (insertorupdate)

end

-- Menu Tastendruck Funktionen
function handelsmenuUP(playerid)
	-- print("function handelsmenuUP(playerid)", playerid)

	local plHaMenu = Player[playerid].handelsmenu
	if plHaMenu.menu == "Kaufliste" or plHaMenu.menu == "Verkaufsliste" or plHaMenu.menu == "Verwaltungsliste" or plHaMenu.menu == "Lernliste" then
		if plHaMenu.i > 1 then
			local i = plHaMenu.i
			local seite = math.ceil(i/36)
			local j = i - ((seite-1) * 36)
			HidePlayerDraw(playerid, plHaMenu.selected[j])
			ShowPlayerDraw(playerid, plHaMenu.unselected[j])
			i = i - 1
			if math.ceil(i/36) == seite then
				j = i - ((seite-1) * 36)
				HidePlayerDraw(playerid, plHaMenu.unselected[j])
				ShowPlayerDraw(playerid, plHaMenu.selected[j])
			else
				handelsmenuLEFT(playerid)
				HidePlayerDraw(playerid, plHaMenu.selected[1])
				ShowPlayerDraw(playerid, plHaMenu.unselected[1])
				HidePlayerDraw(playerid, plHaMenu.unselected[36])
				ShowPlayerDraw(playerid, plHaMenu.selected[36])
				i = 36 * math.ceil(i/36)
			end
			plHaMenu.i = i
		end
	elseif plHaMenu.menu == "Transaktion" then
		if plHaMenu.i > 2 then
			local i = plHaMenu.i
			if i > 5 then --Annehmen -> Mengeneinstellung
				HidePlayerDraw(playerid, plHaMenu.selected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-2])
				i = 3
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.selected[i-2])
			else -- Mengeneinstellung -> Pfeile
				HidePlayerDraw(playerid, plHaMenu.selected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-2])
				i = 1
				plHaMenu.i = i
				HideTexture(playerid,AnzLunselected)
				ShowTexture(playerid,AnzLselected)
			end
		end
	elseif plHaMenu.menu == "Lerntransaktion" then
		if plHaMenu.i > 2 then
			local i = plHaMenu.i
			if i > 2 then --Lernen -> Lernpfeile
				HidePlayerDraw(playerid, plHaMenu.selected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-2])
				i = 1
				plHaMenu.i = i
				HideTexture(playerid,lowerunselected)
				ShowTexture(playerid,lowerselected)
			end
		end
	elseif plHaMenu.menu == "VerkaufTransaktion" then
		if plHaMenu.i > 2 then
			local i = plHaMenu.i
			if i > 11 then -- Annehmen (12, 13) -> MengeneinstellungB
				HidePlayerDraw(playerid, plHaMenu.selected[i-4]); -- Annehmen
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-4])
				i = 8
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-4]); -- MengeneinstellungB
				ShowPlayerDraw(playerid, plHaMenu.selected[i-4])
			elseif i > 7 then -- MengeneinstellungB (8,9,10,11) -> Preispfeile
				HidePlayerDraw(playerid, plHaMenu.selected[i-4]); -- MengeneinstellungB
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-4])
				i = 6
				plHaMenu.i = i
				HideTexture(playerid,PreisLunselected); -- Preispfeile
				ShowTexture(playerid,PreisLselected)
			elseif i > 5 then -- Preispfeile (6,7) -> MengeneinstellungA
				if i == 6 then
					HideTexture(playerid,PreisLselected); -- Preispfeile
					ShowTexture(playerid,PreisLunselected)
				else
					HideTexture(playerid,PreisRselected)
					ShowTexture(playerid,PreisRunselected)
				end
				i = 3
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-2]); -- MengeneinstellungA
				ShowPlayerDraw(playerid, plHaMenu.selected[i-2])
			else -- MengeneinstellungA (3,4,5) -> AnzPfeile (1,2)
				HidePlayerDraw(playerid, plHaMenu.selected[i-2]); -- MengeneinstellungA
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-2])
				i = 1
				plHaMenu.i = i
				HideTexture(playerid,AnzLunselected); -- AnzPfeile
				ShowTexture(playerid,AnzLselected)
			end
		end
	end
end

function handelsmenuDOWN(playerid)
	-- print("function handelsmenuDOWN(playerid)", playerid)

	local plHaMenu = Player[playerid].handelsmenu
	if plHaMenu.menu == "Kaufliste" or plHaMenu.menu == "Verkaufsliste" or plHaMenu.menu == "Verwaltungsliste" or plHaMenu.menu == "Lernliste" then
		if plHaMenu.i < plHaMenu.iende then
			local i = plHaMenu.i
			local seite = math.ceil(i/36)
			local j = i - ((seite-1) * 36)
			HidePlayerDraw(playerid, plHaMenu.selected[j])
			ShowPlayerDraw(playerid, plHaMenu.unselected[j])
			i = i + 1
			if math.ceil(i/36) == seite then
				j = i - ((seite-1) * 36)
				HidePlayerDraw(playerid, plHaMenu.unselected[j])
				ShowPlayerDraw(playerid, plHaMenu.selected[j])
			else
				handelsmenuRIGHT(playerid)
				if math.ceil(i/36) * 36 < plHaMenu.iende then -- check ob zB Seite 3 existiert -> Seite 2 hat 36 Eintraege
					HidePlayerDraw(playerid, plHaMenu.selected[36])
					ShowPlayerDraw(playerid, plHaMenu.unselected[36])
				else -- nehme letzten Eintrag
					local e = plHaMenu.iende - seite * 36
					HidePlayerDraw(playerid, plHaMenu.selected[e])
					ShowPlayerDraw(playerid, plHaMenu.unselected[e])
				end
				HidePlayerDraw(playerid, plHaMenu.unselected[1])
				ShowPlayerDraw(playerid, plHaMenu.selected[1])
			end
			plHaMenu.i = i
		end
	elseif plHaMenu.menu == "Transaktion" then
		if plHaMenu.i < 6 then
			local i = plHaMenu.i
			if i < 3 then -- Pfeile -> Mengeneinstellung
				if i == 1 then
					HideTexture(playerid,AnzLselected)
					ShowTexture(playerid,AnzLunselected)
				else
					HideTexture(playerid,AnzRselected)
					ShowTexture(playerid,AnzRunselected)
				end
				i = 3
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.selected[i-2])
			else -- Mengeneinstellung -> Annehmen
				HidePlayerDraw(playerid, plHaMenu.selected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-2])
				i = 6
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.selected[i-2])
			end
		end
	elseif plHaMenu.menu == "Lerntransaktion" then 
		if plHaMenu.i < 3 then
			local i = plHaMenu.i
			if i < 3 then
				if i == 1 then
					HideTexture(playerid,lowerselected)
					ShowTexture(playerid,lowerunselected)
				else
					HideTexture(playerid,higherselected)
					ShowTexture(playerid,higherunselected)
				end
				i = 3
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.selected[i-2])
			end
		end
	elseif plHaMenu.menu == "VerkaufTransaktion" then
		if plHaMenu.i < 12 then
			local i = plHaMenu.i
			if i < 3 then -- AnzPfeile (1,2) -> MengeneinstellungA (3,4,5)
				if i == 1 then
					HideTexture(playerid,AnzLselected); -- AnzPfeile
					ShowTexture(playerid,AnzLunselected)
				else
					HideTexture(playerid,AnzRselected)
					ShowTexture(playerid,AnzRunselected)
				end
				i = 3
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-2]); -- MengeneinstellungA
				ShowPlayerDraw(playerid, plHaMenu.selected[i-2])
			elseif i < 6 then --  MengeneinstellungA (3,4,5) -> Preispfeile (6,7)
				HidePlayerDraw(playerid, plHaMenu.selected[i-2]); -- MengeneinstellungA
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-2])
				i = 6
				plHaMenu.i = i
				HideTexture(playerid,PreisLunselected); -- Preispfeile
				ShowTexture(playerid,PreisLselected)
			elseif i < 8 then -- Preispfeile (6,7) -> MengeneinstellungB (8,9,10,11)
				if i == 6 then
					HideTexture(playerid,PreisLselected); -- Preispfeile
					ShowTexture(playerid,PreisLunselected)
				else
					HideTexture(playerid,PreisRselected)
					ShowTexture(playerid,PreisRunselected)
				end
				i = 8
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-4]); -- MengeneinstellungB
				ShowPlayerDraw(playerid, plHaMenu.selected[i-4])
			else -- MengeneinstellungB (8,9,10,11) -> Annehmen (12, 13)
				HidePlayerDraw(playerid, plHaMenu.selected[i-4]); -- MengeneinstellungB
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-4])
				i = 12
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-4]); -- Annehmen
				ShowPlayerDraw(playerid, plHaMenu.selected[i-4])
			end
		end
	end
end

function handelsmenuLEFT(playerid)
	-- print("function handelsmenuLEFT(playerid)", playerid)

	local plHaMenu = Player[playerid].handelsmenu
	if plHaMenu.menu == "Transaktion" then
		if plHaMenu.i > 1 then
			local i = plHaMenu.i
			if i == 7 then -- Abbrechen -> Annehmen
				HidePlayerDraw(playerid, plHaMenu.selected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-2])
				i = 6
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.selected[i-2])
			elseif i > 3 and i < 6 then -- Mengeneinstellung
				HidePlayerDraw(playerid, plHaMenu.selected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-2])
				i = i - 1
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.selected[i-2])
			elseif i == 2 then -- Pfeile
				HideTexture(playerid,AnzRselected)
				ShowTexture(playerid,AnzRunselected)
				i = 1
				plHaMenu.i = i
				HideTexture(playerid,AnzLunselected)
				ShowTexture(playerid,AnzLselected)
			end
		end
	elseif  plHaMenu.menu == "Lerntransaktion" then
		if plHaMenu.i > 1 then
			local i = plHaMenu.i
			if i == 4 then --Abbrechen -> Lernen
				HidePlayerDraw(playerid, plHaMenu.selected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-2])
				i = 3
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.selected[i-2])
			elseif i == 2 then --Lernpfeile
				HideTexture(playerid,higherselected)
				ShowTexture(playerid,higherunselected)
				i = 1
				plHaMenu.i = i
				HideTexture(playerid,lowerunselected)
				ShowTexture(playerid,lowerselected)
			end
		end
	elseif plHaMenu.menu == "VerkaufTransaktion" then
		if plHaMenu.i > 1 then
			local i = plHaMenu.i
			if i == 13 then -- Abbrechen -> Annehmen
				HidePlayerDraw(playerid, plHaMenu.selected[i-4])
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-4])
				i = 12
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-4])
				ShowPlayerDraw(playerid, plHaMenu.selected[i-4])
			elseif i > 8 and i < 12 then -- MengeneinstellungB
				HidePlayerDraw(playerid, plHaMenu.selected[i-4])
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-4])
				i = i - 1
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-4])
				ShowPlayerDraw(playerid, plHaMenu.selected[i-4])
			elseif i == 7 then -- Preispfeile
				HideTexture(playerid,PreisRselected)
				ShowTexture(playerid,PreisRunselected)
				i = 6
				plHaMenu.i = i
				HideTexture(playerid,PreisLunselected)
				ShowTexture(playerid,PreisLselected)
			elseif i > 3 and i < 6 then -- MengeneinstellungA
				HidePlayerDraw(playerid, plHaMenu.selected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-2])
				i = i - 1
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.selected[i-2])
			elseif i == 2 then -- AnzPfeile
				HideTexture(playerid,AnzRselected)
				ShowTexture(playerid,AnzRunselected)
				i = 1
				plHaMenu.i = i
				HideTexture(playerid,AnzLunselected)
				ShowTexture(playerid,AnzLselected)
			end
		end
	elseif plHaMenu.menu == "Kaufliste" or plHaMenu.menu == "Verkaufsliste" or plHaMenu.menu == "Verwaltungsliste" then
		-- Seite zurueck
		if plHaMenu.i > 36 then
			local i = plHaMenu.i
			i = i - 36
			plHaMenu.i = i
			local seite = math.ceil(i/36)
			for draw=1, 36 do
				local i = draw + ((seite-1)*36)
				local item = plHaMenu.data[i][1]
				local anz = plHaMenu.data[i][2]
				local preis = nil
				if plHaMenu.data[i][3] then preis = plHaMenu.data[i][3];end

				UpdatePlayerDraw(playerid, plHaMenu.selected[draw],lx,ly+(ls * (draw+1)),item,font_small,255,0,0)
				UpdatePlayerDraw(playerid, plHaMenu.unselected[draw],lx,ly+(ls * (draw+1)),item,font_small,255,255,255)
				if type(anz) == "number" then
					UpdatePlayerDraw(playerid, plHaMenu.anz[draw],mx,my+(ms * (draw+1)),tostring(anz).. "x",font_small,255,255,255)
				else
					UpdatePlayerDraw(playerid, plHaMenu.anz[draw],mx,my+(ms * (draw+1)),anz,font_small,255,255,255)
				end
				if preis then UpdatePlayerDraw(playerid, plHaMenu.preis[draw],rx,ry+(rs * (draw+1)),tostring(preis) .. " Erz",font_small,255,255,255); end
			end

			if (seite+1) * 36 > plHaMenu.iende then
				for i = (seite+1) * 36, plHaMenu.iende+1, -1 do
					local j = i - (seite * 36)
					ShowPlayerDraw(playerid, plHaMenu.unselected[j])
					ShowPlayerDraw(playerid, plHaMenu.anz[j])
					if plHaMenu.preis[j] then ShowPlayerDraw(playerid, plHaMenu.preis[j]); end
				end
			end

			UpdatePlayerDraw(playerid, plHaMenu.seite,mx,my+(ms * (39)),seite.."/"..math.ceil(plHaMenu.iende/36),font_small,255,255,255)
		end
	end
end

function handelsmenuRIGHT(playerid)
	-- print("function handelsmenuRIGHT(playerid)", playerid)

	local plHaMenu = Player[playerid].handelsmenu
	if plHaMenu.menu == "Transaktion" then
		if plHaMenu.i < 7 then
			local i = plHaMenu.i
			if i == 6 then -- Annehmen -> Abbrechen
				HidePlayerDraw(playerid, plHaMenu.selected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-2])
				i = 7
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.selected[i-2])
			elseif i > 2 and i < 5 then -- Mengeneinstellung
				HidePlayerDraw(playerid, plHaMenu.selected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-2])
				i = i + 1
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.selected[i-2])
			elseif i == 1 then -- Pfeile
				HideTexture(playerid,AnzLselected)
				ShowTexture(playerid,AnzLunselected)
				i = 2
				plHaMenu.i = i
				HideTexture(playerid,AnzRunselected)
				ShowTexture(playerid,AnzRselected)
			end
		end
	elseif  plHaMenu.menu == "Lerntransaktion" then
		if plHaMenu.i < 5 then 
			local i = plHaMenu.i
			if i == 1 then  --Pfeile Lernskript
				HideTexture(playerid,lowerselected)
				ShowTexture(playerid,lowerunselected)
				i = 2
				plHaMenu.i = i
				HideTexture(playerid,higherunselected)
				ShowTexture(playerid,higherselected)
			elseif i == 3 then --Lernen -> Abbrechen
				HidePlayerDraw(playerid, plHaMenu.selected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-2])
				i = 4
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.selected[i-2])
			end
		end
	elseif plHaMenu.menu == "VerkaufTransaktion" then
		if plHaMenu.i < 13 then
			local i = plHaMenu.i
			if i == 12 then -- Annehmen -> Abbrechen
				HidePlayerDraw(playerid, plHaMenu.selected[i-4])
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-4])
				i = 13
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-4])
				ShowPlayerDraw(playerid, plHaMenu.selected[i-4])
			elseif i > 7 and i < 11 then -- MengeneinstellungB
				HidePlayerDraw(playerid, plHaMenu.selected[i-4])
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-4])
				i = i + 1
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-4])
				ShowPlayerDraw(playerid, plHaMenu.selected[i-4])
			elseif i == 6 then -- Preispfeile
				HideTexture(playerid,PreisLselected)
				ShowTexture(playerid,PreisLunselected)
				i = 7
				plHaMenu.i = i
				HideTexture(playerid,PreisRunselected)
				ShowTexture(playerid,PreisRselected)
			elseif i > 2 and i < 5 then -- MengeneinstellungA
				HidePlayerDraw(playerid, plHaMenu.selected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.unselected[i-2])
				i = i + 1
				plHaMenu.i = i
				HidePlayerDraw(playerid, plHaMenu.unselected[i-2])
				ShowPlayerDraw(playerid, plHaMenu.selected[i-2])
			elseif i == 1 then -- AnzPfeile
				HideTexture(playerid,AnzLselected)
				ShowTexture(playerid,AnzLunselected)
				i = 2
				plHaMenu.i = i
				HideTexture(playerid,AnzRunselected)
				ShowTexture(playerid,AnzRselected)
			end
		end
	elseif plHaMenu.menu == "Kaufliste" or plHaMenu.menu == "Verkaufsliste" or plHaMenu.menu == "Verwaltungsliste" then
		-- Seite weiter
		if plHaMenu.iende > 36 then
			local i = plHaMenu.i
			if i + 36 <= plHaMenu.iende then
				i = i + 36
				plHaMenu.i = i
			else
				plHaMenu.i = plHaMenu.iende

				i = i + 36; i = i - ((math.ceil(i/36)-1) * 36)
				local j = plHaMenu.i - (math.floor(plHaMenu.i/36) * 36)

				HidePlayerDraw(playerid, plHaMenu.selected[i])

				HidePlayerDraw(playerid, plHaMenu.unselected[j])
				ShowPlayerDraw(playerid, plHaMenu.selected[j])

				i = plHaMenu.iende
			end

			local seite = math.ceil(i/36)
			for draw=1, 36 do
				local i = draw + ((seite-1)*36)
				--print("i: "..i)
				if i > plHaMenu.iende then break; end
				local item = plHaMenu.data[i][1]
				local anz = plHaMenu.data[i][2]
				local preis = nil
				if plHaMenu.data[i][3] then preis = plHaMenu.data[i][3];end

				UpdatePlayerDraw(playerid, plHaMenu.selected[draw],lx,ly+(ls * (draw+1)),item,font_small,255,0,0)
				UpdatePlayerDraw(playerid, plHaMenu.unselected[draw],lx,ly+(ls * (draw+1)),item,font_small,255,255,255)
				UpdatePlayerDraw(playerid, plHaMenu.anz[draw],mx,my+(ms * (draw+1)),tostring(anz).. "x",font_small,255,255,255); -- if type(anz) == "number" then
				if preis then UpdatePlayerDraw(playerid, plHaMenu.preis[draw],rx,ry+(rs * (draw+1)),tostring(preis) .. " Erz",font_small,255,255,255); end
			end

			if seite * 36 > plHaMenu.iende then
				for i = seite * 36, plHaMenu.iende+1, -1 do
					local j = i - ((seite-1) * 36)
					HidePlayerDraw(playerid, plHaMenu.unselected[j])
					HidePlayerDraw(playerid, plHaMenu.anz[j])
					if plHaMenu.preis[j] then HidePlayerDraw(playerid, plHaMenu.preis[j]); end
				end
			end

			UpdatePlayerDraw(playerid, plHaMenu.seite,mx,my+(ms * (39)),seite.."/"..math.ceil(plHaMenu.iende/36),font_small,255,255,255)
		end
	end
end

function handelsmenuENTER(playerid)
	if Player[playerid].handelsmenu.menu == "Kaufliste" then
		kaufTransaktion(playerid)
	elseif Player[playerid].handelsmenu.menu == "Transaktion" then
		kaufTransaktionENTER(playerid)
	elseif Player[playerid].handelsmenu.menu == "Verkaufsliste" then
		verkaufTransaktion(playerid)
	elseif Player[playerid].handelsmenu.menu == "VerkaufTransaktion" then
		verkaufTransaktionENTER(playerid)
	elseif Player[playerid].handelsmenu.menu == "Verwaltungsliste" then
		verwaltungTransaktion(playerid)
	elseif Player[playerid].handelsmenu.menu == "Lernliste" then
		lernTransaktion(playerid)
	elseif Player[playerid].handelsmenu.menu == "Lerntransaktion" then
		lernTransaktionENTER(playerid)
	end
end

-- Menu Verwalten aufbauen
function menuVerwalten(playerid)
	-- print("function menuVerwalten(playerid)", playerid)

	local plHaMenu = Player[playerid].handelsmenu
	plHaMenu.active = true
	plHaMenu.menu = "Verwaltungsliste"

	local focusid = GetFocus(playerid)
	local botname = GetPlayerName(focusid)
	local steuern = false
	local goldabholen = nil
	-- Steuereintreiber
	local Steuereintreiber = mysql_query(mysql_handler, "SELECT `Ort` FROM `Verkaeufer` WHERE `Bot` = '".. botname .."'")
	if Steuereintreiber and mysql_num_rows(Steuereintreiber) >= 1 then
		local row = mysql_fetch_row(Steuereintreiber)
		local Ort = tostring(row[1])
		if Ort == "Khorinis" and (string.lower(Player[playerid].Gildenrang) == "statthalter" or string.lower(Player[playerid].Gildenrang) == "kaemmerer") then
			steuern = true
		elseif Ort == "Untergrund" and (string.lower(Player[playerid].Gildenrang) == "boss" or string.lower(Player[playerid].Gildenrang) == "rechtehand") then
			steuern = true
		end
	end
	mysql_free_result(Steuereintreiber)
	-- Erz abholen
	local Erzstand = mysql_query(mysql_handler, "SELECT `Erz` FROM `Verkaufstruhe` WHERE `user` = '".. Player[playerid].nick .."' AND `Bot` = '".. botname .."'")
	if Erzstand and mysql_num_rows(Erzstand) >= 1 then
		local row = mysql_fetch_row(Erzstand)
		goldabholen = tonumber(row[1])
		--print("Erz: "..goldabholen)
	end
	-- botinventar
	local botinventar = mysql_query(mysql_handler, "SELECT `item`, `Anzahl`, `Preis` FROM `Verkaufsliste` WHERE `user` = '".. Player[playerid].nick .."' AND `Bot` = '".. botname .."'")
	if (botinventar and mysql_num_rows(botinventar) >= 1) or steuern or goldabholen then
		ShowTexture(playerid,Rahmen); -- RAHMEN
		ShowDraw(playerid,Item)
		ShowDraw(playerid,Anzahl)
		ShowDraw(playerid,Preis)
		plHaMenu.iende = mysql_num_rows(botinventar)
		plHaMenu.i = 1
		plHaMenu.botname = botname

		if steuern then plHaMenu.iende = plHaMenu.iende + 1; end
		if goldabholen then plHaMenu.iende = plHaMenu.iende + 1; end
		for i=1, plHaMenu.iende do
			if i == 1 and steuern then
				local steuer = 0
				local Erzstand = mysql_query(mysql_handler, "SELECT `Erz` FROM `Verkaufstruhe` WHERE `user` = 'Steuer' AND `Bot` = '".. botname .."'")
				if Erzstand and mysql_num_rows(Erzstand) >= 1 then
					local row = mysql_fetch_row(Erzstand)
					steuer = tonumber(row[1])
				end
				local item = "Steuern eintreiben"
				local anz = steuer .. " Erz"
				local preis = "-"

				plHaMenu.selected[i] = CreatePlayerDraw(playerid,lx,ly+(ls * (i+1)),item,font_small,255,0,0)
				plHaMenu.unselected[i] = CreatePlayerDraw(playerid,lx,ly+(ls * (i+1)),item,font_small,255,255,255)
				plHaMenu.anz[i] = CreatePlayerDraw(playerid,mx,my+(ms * (i+1)),anz,font_small,255,255,255)
				plHaMenu.preis[i] = CreatePlayerDraw(playerid,rx,ry+(rs * (i+1)),preis,font_small,255,255,255)

				plHaMenu.data[i] = {item, steuer, preis}
			elseif (i == 1 and goldabholen) or (i == 2 and goldabholen and steuern) then
				local item = "Verdienste abholen"
				local anz = goldabholen .. " Erz"
				local preis = "-"

				plHaMenu.selected[i] = CreatePlayerDraw(playerid,lx,ly+(ls * (i+1)),item,font_small,255,0,0)
				plHaMenu.unselected[i] = CreatePlayerDraw(playerid,lx,ly+(ls * (i+1)),item,font_small,255,255,255)
				plHaMenu.anz[i] = CreatePlayerDraw(playerid,mx,my+(ms * (i+1)),anz,font_small,255,255,255)
				plHaMenu.preis[i] = CreatePlayerDraw(playerid,rx,ry+(rs * (i+1)),preis,font_small,255,255,255)

				plHaMenu.data[i] = {item, goldabholen, preis}
			else
				local invi = mysql_fetch_assoc(botinventar)
				local item = invi.item
				local anz = tonumber(invi.Anzahl)
				local preis = tonumber(invi.Preis)

				plHaMenu.data[i] = {item, anz, preis}

				if i <= 36 then
					plHaMenu.selected[i] = CreatePlayerDraw(playerid,lx,ly+(ls * (i+1)),item,font_small,255,0,0)
					plHaMenu.unselected[i] = CreatePlayerDraw(playerid,lx,ly+(ls * (i+1)),item,font_small,255,255,255)
					plHaMenu.anz[i] = CreatePlayerDraw(playerid,mx,my+(ms * (i+1)),tostring(anz).. "x",font_small,255,255,255)
					plHaMenu.preis[i] = CreatePlayerDraw(playerid,rx,ry+(rs * (i+1)),tostring(preis) .. ""..ErzHaendler[Player[playerid].Language].."",font_small,255,255,255)
				end
			end

			if i <= 36 then
				if i == 1 then ShowPlayerDraw(playerid, plHaMenu.selected[i]); else ShowPlayerDraw(playerid, plHaMenu.unselected[i]); end
				ShowPlayerDraw(playerid, plHaMenu.anz[i])
				ShowPlayerDraw(playerid, plHaMenu.preis[i])
			end

		end

		if plHaMenu.iende > 36 then
			ShowDraw(playerid,Seite)
			plHaMenu.seite = CreatePlayerDraw(playerid,mx,my+(ms * (39)),"1/"..math.ceil(plHaMenu.iende/36),font_small,255,255,255)
			ShowPlayerDraw(playerid, plHaMenu.seite)
		end
	else
		GameTextForPlayer(playerid,3000,4000,"Fehler.","Font_Old_10_White_Hi.TGA",255,50,50,3000)
		Handelsmenu_Close(playerid)
	end
	mysql_free_result(botinventar)
end

-- Menu Verkaufen aufbauen
function menuVerkaufen(playerid)
	-- print("function menuVerkaufen(playerid)", playerid)

	local plHaMenu = Player[playerid].handelsmenu
	plHaMenu.active = true
	plHaMenu.menu = "Verkaufsliste"

	local focusid = GetFocus(playerid)
	local botname = GetPlayerName(focusid)
	local haendlerart = "itemlist.Verkauf = ''"
	local haendler = mysql_query(mysql_handler, "SELECT Haendler FROM Verkaeufer WHERE Bot = '".. botname .."'")
	if haendler and mysql_num_rows(haendler) >= 1 then
		local row = mysql_fetch_row(haendler)
		local art = tostring(row[1])
		if art == "Hehler" then
			haendlerart = "(itemlist.Verkauf = 'Kleidungen' OR itemlist.Verkauf = 'Holzwaren' OR itemlist.Verkauf = 'Ruestungen' OR itemlist.Verkauf = 'Alchemie' OR itemlist.Verkauf = 'Luxuswaren' OR itemlist.Verkauf = 'Hehler')"
		elseif art == "Schmuggler" then
			haendlerart = "(itemlist.Verkauf = 'Lebensmittel' OR itemlist.Verkauf = 'Fische' OR itemlist.Verkauf = 'Getraenke' OR itemlist.Verkauf = 'Schmuggler')"
		elseif art == "Waffen" then
			haendlerart = "(itemlist.Verkauf = 'Nahkampfwaffen' OR itemlist.Verkauf = 'Boegen' OR itemlist.Verkauf = 'Waffen')"
		else
			haendlerart = "itemlist.Verkauf = '"..art.."'"
		end
	else
		haendlerart = "itemlist.Verkauf = (SELECT Haendler FROM Verkaeufer WHERE Bot = '".. botname .."')"
	end
	mysql_free_result(haendler)

	local inventar = mysql_query(mysql_handler, "SELECT itemlist.item, inventar.anzahl FROM inventar LEFT JOIN itemlist ON inventar.item = itemlist.iteminstance WHERE ".. haendlerart .." AND inventar.name = '".. Player[playerid].nick .."' AND inventar.equipped = 0")
	if inventar and mysql_num_rows(inventar) >= 1 then
		ShowTexture(playerid,Rahmen); -- RAHMEN
		ShowDraw(playerid,Item)
		ShowDraw(playerid,Anzahl)
		--ShowDraw(playerid,Preis)
		plHaMenu.iende = mysql_num_rows(inventar)
		plHaMenu.i = 1
		plHaMenu.botname = botname

		for i=1, plHaMenu.iende do
			local invi = mysql_fetch_assoc(inventar)
			local item = invi.item
			local anz = tonumber(invi.anzahl)

			plHaMenu.data[i] = {item, anz}

			if i <= 36 then
				plHaMenu.selected[i] = CreatePlayerDraw(playerid,lx,ly+(ls * (i+1)),item,font_small,255,0,0)
				plHaMenu.unselected[i] = CreatePlayerDraw(playerid,lx,ly+(ls * (i+1)),item,font_small,255,255,255)
				plHaMenu.anz[i] = CreatePlayerDraw(playerid,mx,my+(ms * (i+1)),tostring(anz).. "x",font_small,255,255,255)

				if i == 1 then ShowPlayerDraw(playerid, plHaMenu.selected[i]); else ShowPlayerDraw(playerid, plHaMenu.unselected[i]); end
				ShowPlayerDraw(playerid, plHaMenu.anz[i])
			end
		end

		if plHaMenu.iende > 36 then
			ShowDraw(playerid,Seite)
			plHaMenu.seite = CreatePlayerDraw(playerid,mx,my+(ms * (39)),"1/"..math.ceil(plHaMenu.iende/36),font_small,255,255,255)
			ShowPlayerDraw(playerid, plHaMenu.seite)
		end
	else
		GameTextForPlayer(playerid,3000,4000,"Fehler.","Font_Old_10_White_Hi.TGA",255,50,50,3000)
		Handelsmenu_Close(playerid)
	end
	mysql_free_result(inventar)
end

-- Menu Kaufen aufbauen
function menuKaufen(playerid)
	-- print("function menuKaufen(playerid)", playerid)

	local plHaMenu = Player[playerid].handelsmenu
	plHaMenu.active = true
	plHaMenu.menu = "Kaufliste"

	local focusid = GetFocus(playerid)
	local botname = GetPlayerName(focusid)
	
	local inventar = mysql_query(mysql_handler, "SELECT `item`, SUM(Anzahl) AS Anzahl, `Preis` FROM `Verkaufsliste` WHERE `Bot` = '".. botname .."' GROUP BY `Preis`, `item` ORDER BY `Anzahl` , `Preis` ")
	if inventar and mysql_num_rows(inventar) >= 1 then
		ShowTexture(playerid,Rahmen) -- RAHMEN
		ShowDraw(playerid,Item)
		ShowDraw(playerid,Anzahl)
		ShowDraw(playerid,Preis)
		plHaMenu.iende = mysql_num_rows(inventar)
		plHaMenu.i = 1
		plHaMenu.botname = botname

		local art = ""				
		local haendler = mysql_query(mysql_handler, "SELECT Haendler FROM Verkaeufer WHERE Bot = '".. botname .."'")
		if haendler and mysql_num_rows(haendler) >= 1 then
			local row = mysql_fetch_row(haendler)
			art = tostring(row[1])
			mysql_free_result(haendler)
		else
			mysql_free_result(haendler)
		end
		
		for i=1, plHaMenu.iende do
			local invi = mysql_fetch_assoc(inventar)
			local item = invi.item
			local anz = tonumber(invi.Anzahl)
			local preis = tonumber(invi.Preis)

			plHaMenu.data[i] = {item, anz, preis}

			if i <= 36 then
				plHaMenu.selected[i] = CreatePlayerDraw(playerid,lx,ly+(ls * (i+1)),item,font_small,255,0,0)
				plHaMenu.unselected[i] = CreatePlayerDraw(playerid,lx,ly+(ls * (i+1)),item,font_small,255,255,255)
				
				if art == "Ruestung" then
					plHaMenu.anz[i] = CreatePlayerDraw(playerid,mx,my+(ms * (i+1)),tostring(anz).. STKWerttext[Player[playerid].Language],font_small,255,255,255)
				elseif art == "Bogen" then
					plHaMenu.anz[i] = CreatePlayerDraw(playerid,mx,my+(ms * (i+1)),tostring(anz).. DEXWerttext[Player[playerid].Language],font_small,255,255,255)
				elseif art == "Waffen" then
					plHaMenu.anz[i] = CreatePlayerDraw(playerid,mx,my+(ms * (i+1)),tostring(anz).. STKWerttext[Player[playerid].Language],font_small,255,255,255)
				elseif art == "Rune" then
					plHaMenu.anz[i] = CreatePlayerDraw(playerid,mx,my+(ms * (i+1)),tostring(anz).. KreisWerttext[Player[playerid].Language],font_small,255,255,255)
				else
					plHaMenu.anz[i] = CreatePlayerDraw(playerid,mx,my+(ms * (i+1)),tostring(anz).. "x",font_small,255,255,255)
				end
					
				plHaMenu.preis[i] = CreatePlayerDraw(playerid,rx,ry+(rs * (i+1)),tostring(preis) .. Geld,font_small,255,255,255)

				if i == 1 then ShowPlayerDraw(playerid, plHaMenu.selected[i]); else ShowPlayerDraw(playerid, plHaMenu.unselected[i]); end
				
				if anz ~= 0 and anz ~= 1000 then
				ShowPlayerDraw(playerid, plHaMenu.anz[i])
				end
				ShowPlayerDraw(playerid, plHaMenu.preis[i])
			end
		end

		if plHaMenu.iende > 36 then
			ShowDraw(playerid,Seite)
			plHaMenu.seite = CreatePlayerDraw(playerid,mx,my+(ms * (39)),"1/"..math.ceil(plHaMenu.iende/36),font_small,255,255,255)
			ShowPlayerDraw(playerid, plHaMenu.seite)
		end
	else
		GameTextForPlayer(playerid,3000,4000,"Tut mir leid, ich habe nichts mehr auf Lager.","Font_Old_10_White_Hi.TGA",255,50,50,3000)
		Handelsmenu_Close(playerid)
	end
	mysql_free_result(inventar)
end

-- Menu Lernen aufbauen
function menuLernen(playerid)
	-- print("function menuLernen(playerid)", playerid)

	local plHaMenu = Player[playerid].handelsmenu
	plHaMenu.active = true
	plHaMenu.menu = "Lernliste"

	ShowTexture(playerid,Rahmen); -- RAHMEN
	plHaMenu.iende = 8
	plHaMenu.i = 1
	ShowDraw(playerid, Attribut)
	for i = 1, plHaMenu.iende do
		plHaMenu.selected[i] = CreatePlayerDraw(playerid,lx,ly+(ls * (i+1)),Attribute[i],font_small,255,0,0)
		plHaMenu.unselected[i] = CreatePlayerDraw(playerid,lx,ly+(ls * (i+1)),Attribute[i],font_small,255,255,255)
		if i == 1 then ShowPlayerDraw(playerid, plHaMenu.selected[i]); else ShowPlayerDraw(playerid, plHaMenu.unselected[i]); end
	end	
end

-- Was willst du machen? Kaufen oder Verkaufen?
function menuKaufenVerkaufen(playerid)
	-- print("function menuKaufenVerkaufen(playerid)", playerid)

	local plHaMenu = Player[playerid].handelsmenu
	-- ueberpruefung ob du ueberhaupt items dabei hast, die man verkaufen kann.
	local focusid = GetFocus(playerid)
	local botname = GetPlayerName(focusid)
	local verkaufen = false
	local verwalten = false

	local haendlerart = "itemlist.Verkauf = ''"
	local haendler = mysql_query(mysql_handler, "SELECT Haendler FROM Verkaeufer WHERE Bot = '".. botname .."'")
	if haendler and mysql_num_rows(haendler) >= 1 then
		local row = mysql_fetch_row(haendler)
		local art = tostring(row[1])
		if art == "Hehler" then
			haendlerart = "(itemlist.Verkauf = 'Kleidungen' OR itemlist.Verkauf = 'Holzwaren' OR itemlist.Verkauf = 'Ruestungen' OR itemlist.Verkauf = 'Alchemie' OR itemlist.Verkauf = 'Luxuswaren' OR itemlist.Verkauf = 'Hehler')"
		elseif art == "Schmuggler" then
			haendlerart = "(itemlist.Verkauf = 'Lebensmittel' OR itemlist.Verkauf = 'Fische' OR itemlist.Verkauf = 'Getraenke' OR itemlist.Verkauf = 'Schmuggler')"
		elseif art == "Waffen" then
			haendlerart = "(itemlist.Verkauf = 'Nahkampfwaffen' OR itemlist.Verkauf = 'Boegen' OR itemlist.Verkauf = 'Waffen')"
		else
			haendlerart = "itemlist.Verkauf = '"..art.."'"
		end
	else
		haendlerart = "itemlist.Verkauf = (SELECT Haendler FROM Verkaeufer WHERE Bot = '".. botname .."')"
	end
	mysql_free_result(haendler)

	local inventar = mysql_query(mysql_handler, "SELECT itemlist.item, inventar.anzahl FROM inventar LEFT JOIN itemlist ON inventar.item = itemlist.iteminstance WHERE "..haendlerart.." AND inventar.name = '".. Player[playerid].nick .."' AND inventar.equipped = 0")
	if inventar and mysql_num_rows(inventar) >= 1 then -- Wenn true hast du verkaufbare items - else: menuKaufen(playerid)
		verkaufen = true
		--print("verkaufen true")
	end
	mysql_free_result(inventar)

	local botinventar = mysql_query(mysql_handler, "SELECT `item`, `Anzahl`, `Preis` FROM `Verkaufsliste` WHERE `user` = '".. Player[playerid].nick .."' AND `Bot` = '".. botname .."'")
	if botinventar and mysql_num_rows(botinventar) >= 1 then
		verwalten = true
		--print("verwalten true")
	end
	mysql_free_result(botinventar)

	local bottruhe = mysql_query(mysql_handler, "SELECT `Erz` FROM `Verkaufstruhe` WHERE `user` = '".. Player[playerid].nick .."' AND `Bot` = '".. botname .."'")
	if bottruhe and mysql_num_rows(bottruhe) >= 1 then
		verwalten = true
		--print("gold abholen true")
	end
	mysql_free_result(bottruhe)

	-- Steuereintreiber
	local Steuereintreiber = mysql_query(mysql_handler, "SELECT `Ort` FROM `Verkaeufer` WHERE `Bot` = '".. botname .."'")
	if Steuereintreiber and mysql_num_rows(Steuereintreiber) >= 1 then
		local row = mysql_fetch_row(Steuereintreiber)
		local Ort = tostring(row[1])

		if Ort == "Khorinis" and (string.lower(Player[playerid].Gildenrang) == "statthalter" or string.lower(Player[playerid].Gildenrang) == "kaemmerer") then
			verwalten = true
		elseif Ort == "Untergrund" and (string.lower(Player[playerid].Gildenrang) == "boss" or string.lower(Player[playerid].Gildenrang) == "rechtehand") then
			verwalten = true
		end

		--print("Steuereintreiber true")
	end
	mysql_free_result(Steuereintreiber)

	if verkaufen and verwalten then
		Player[playerid].binary_selected = 1
		Player[playerid].binary_question = CreateCenteredPlayerDraw(playerid,3000,4000,"Was moechtest du tun?",font_big,255,255,255)
		Player[playerid].binary_option[1] = "Kaufen"
		Player[playerid].binary_option[2] = "Verkaufen"
		Player[playerid].binary_option[3] = "Verwalten"
		Player[playerid].binary_optiondraw[1] = CreatePlayerDraw(playerid,2400,4300,Player[playerid].binary_option[1],font_big,255,75,75)
		Player[playerid].binary_optiondraw[2] = CreateCenteredPlayerDraw(playerid,4000,4300,Player[playerid].binary_option[2],font_big,255,255,255)
		Player[playerid].binary_optiondraw[3] = CreatePlayerDraw(playerid,5400,4300,Player[playerid].binary_option[3],font_big,255,255,255)
		ShowPlayerDraw(playerid,Player[playerid].binary_question)
		ShowPlayerDraw(playerid,Player[playerid].binary_optiondraw[1])
		ShowPlayerDraw(playerid,Player[playerid].binary_optiondraw[2])
		ShowPlayerDraw(playerid,Player[playerid].binary_optiondraw[3])

		Player[playerid].binary_active = "KaufenVerkaufenVerwalten"
		SetTimerEx("SetMenuBinaryActive",1000,0,playerid)
	elseif verkaufen and not(verwalten) then
		Player[playerid].binary_selected = 1
		Player[playerid].binary_question = CreateCenteredPlayerDraw(playerid,3000,4000,"Was moechtest du tun?",font_big,255,255,255)
		Player[playerid].binary_option[1] = "Kaufen"
		Player[playerid].binary_option[2] = "Verkaufen"
		Player[playerid].binary_optiondraw[1] = CreatePlayerDraw(playerid,2400,4300,Player[playerid].binary_option[1],font_big,255,75,75)
		Player[playerid].binary_optiondraw[2] = CreatePlayerDraw(playerid,4400,4300,Player[playerid].binary_option[2],font_big,255,255,255)
		ShowPlayerDraw(playerid,Player[playerid].binary_question)
		ShowPlayerDraw(playerid,Player[playerid].binary_optiondraw[1])
		ShowPlayerDraw(playerid,Player[playerid].binary_optiondraw[2])

		Player[playerid].binary_active = "KaufenVerkaufen"
		SetTimerEx("SetMenuBinaryActive",1000,0,playerid)
	elseif not(verkaufen) and verwalten then
		Player[playerid].binary_selected = 1
		Player[playerid].binary_question = CreateCenteredPlayerDraw(playerid,3000,4000,"Was moechtest du tun?",font_big,255,255,255)
		Player[playerid].binary_option[1] = "Kaufen"
		Player[playerid].binary_option[2] = "Verwalten"
		Player[playerid].binary_optiondraw[1] = CreatePlayerDraw(playerid,2400,4300,Player[playerid].binary_option[1],font_big,255,75,75)
		Player[playerid].binary_optiondraw[2] = CreatePlayerDraw(playerid,4400,4300,Player[playerid].binary_option[2],font_big,255,255,255)
		ShowPlayerDraw(playerid,Player[playerid].binary_question)
		ShowPlayerDraw(playerid,Player[playerid].binary_optiondraw[1])
		ShowPlayerDraw(playerid,Player[playerid].binary_optiondraw[2])

		Player[playerid].binary_active = "KaufenVerwalten"
		SetTimerEx("SetMenuBinaryActive",1000,0,playerid)
	else
		menuKaufen(playerid)
	end
end

print("Loaded LUA file   " .. debug.getinfo(1).source)