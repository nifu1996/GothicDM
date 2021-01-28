-------------------------------------------------------------------------------
-- WorldMap
-------------------------------------------------------------------------------
-- Verwendete Externe Globale Variablen:
--   Map, Mode (In Deathmatch.lua hei�en die Map und Mode)
--
-- Funktionen, die von Extern verwendet werden:
--   WorldMapAnzeigeUmschalten, CMD_WorldMapShowAll, WorldMapCloseAll,
--   MapPlayerLagerSet, MapPlayerLagerDelete,
--   MapLagerNpcListeAdd, MapLagerNpcListeDelete
--   MapBossListeAdd, MapBossListeDelete,
--   MapMonsterListeAdd, MapMonsterListeDelete
-------------------------------------------------------------------------------


-- Map Konstanten und Variablen BEGINN ----------------------------------------

	-- Globale Icon Konstanten BEGINN -------------------------------------------------

		--Punkteicons--
		WeissesSpielerIcon = "Mappiconplayer_Weiss.TGA"
		RotesSpielerIcon = "Mappiconplayer_Rot.TGA"
		BlauesSpielerIcon = "Mappiconplayer_Blau.TGA"
		GruenesSpielerIcon = "Mappiconplayer_Gruen.TGA"
		GelbesSpielerIcon = "Mapfokus_Gelb.TGA" -- "Mappiconplayer_Gelb.TGA" fehlt noch in der MOD. TODO: In die MOD einf�gen und hier verwenden.
		OrangesSpielerIcon = "Mappiconplayer_Orange.TGA"
		LilaSpielerIcon = "Mappiconplayer_Lila.TGA"

		LagerSpielerIcons = { RotesSpielerIcon, BlauesSpielerIcon, GruenesSpielerIcon, GelbesSpielerIcon, OrangesSpielerIcon, LilaSpielerIcon }

		Playericonsize = 150;

		--Bossicons--
		Trollicon = "Maptaze_Braun.TGA"
		Schattenlaeufericon = "Maptaze_Weiß.TGA"	-- TODO: Umbenennen (�->ss) und auch Datei f�r MOD umbenennen.
		DemonWolficon = "Maptaze_Rot.TGA"
		SkelettLordicon = "Maptaze_Lila.TGA"
		ErzGolemicon = "Maptaze_Blau.TGA"
		DemonDarkicon = "Maptaze_Grau.TGA"

		--Fokiicons--
		RoterWargicon = "Mapfokus_Rot.TGA"
		Blauerscavengericon = "Mapfokus_Blau.TGA"
		Gelbersnappericon = "Mapfokus_Gelb.TGA"
		Gruenerlurkericon = "Mapfokus_Gruen.TGA"
		Lilacrawlericon = "Mapfokus_Lila.TGA"
		GrauerRazoricon = "Mapfokus_Grau.TGA"

		--Kingicons--
		Raymondicon = "Mapkrone_Rot.TGA"
		Goraxicon = "Mapkrone_Blau.TGA"
		Grandicon = "Mapkrone_Gruen.TGA"
		Falksonicon = "Mapkrone_Gelb.TGA"
		Garicon = "Mapkrone_Orange.TGA"
		Allanicon = "Mapkrone_Lila.TGA"

		Bossiconsize = 200;
		
		Monstericonsize = 80;
		
		LagerNpciconsize = 110;

	-- Globale Icon Konstanten ENDE ---------------------------------------------------

	-- Lokale MapKoordinatenUmrechnung BEGINN ----------------------------------------

		--Kolonie--
		local WorldMapKolonie = CreateTexture(500,300,8000,7500,"Map_Kolonie.TGA");

		local KolonieFixPunktX1 = 2230; --Ost
		local KolonieFixPunktY1 = 3215; -- Nord

		local KolonieRealFixPunktX1 = 52868; -- Ost
		local KolonieRealFixPunktZ1 = 12609; -- Norden

		local KolonieFixPunktX2 = 4300; --West
		local KolonieFixPunktY2 = 3950; --Sued

		local KolonieRealFixPunktX2 = 2100; --West  
		local KolonieRealFixPunktZ2 = -650; --Sueden

		local MapKoloniewertX = math.abs( KolonieFixPunktX1 - KolonieFixPunktX2)
		local MapKoloniewertY = math.abs( KolonieFixPunktY1 - KolonieFixPunktY2)

		local RealKoloniewertX = math.abs( KolonieRealFixPunktX1 - KolonieRealFixPunktX2)
		local RealKoloniewertY = math.abs( KolonieRealFixPunktZ1 - KolonieRealFixPunktZ2)

		local KolonieVerhaeltnisX = MapKoloniewertX / RealKoloniewertX
		local KolonieVerhaeltnisY = MapKoloniewertY / RealKoloniewertY

		--Jharkendar--
		local WorldMapJharkendar = CreateTexture(500,300,8000,7500,"Map_AddonWorld.TGA");

		local JharkendarFixPunktX1 = 6700; --Ost
		local JharkendarFixPunktY1 = 2650; -- Nord

		local JharkendarRealFixPunktX1 = 28136; -- Ost
		local JharkendarRealFixPunktZ1 = 13880; -- Norden

		local JharkendarFixPunktX2 = 4375; --West
		local JharkendarFixPunktY2 = 4600; --Sued

		local JharkendarRealFixPunktX2 = -24; --West  
		local JharkendarRealFixPunktZ2 = -5169; --Sueden

		local MapJharkendarwertX = math.abs( JharkendarFixPunktX1 - JharkendarFixPunktX2)
		local MapJharkendarwertY = math.abs( JharkendarFixPunktY1 - JharkendarFixPunktY2)

		local RealJharkendarwertX = math.abs( JharkendarRealFixPunktX1 - JharkendarRealFixPunktX2)
		local RealJharkendarwertY = math.abs( JharkendarRealFixPunktZ1 - JharkendarRealFixPunktZ2)

		local JharkendarVerhaeltnisX = MapJharkendarwertX / RealJharkendarwertX
		local JharkendarVerhaeltnisY = MapJharkendarwertY / RealJharkendarwertY

		--Khorinis--
		local WorldMapKhorinis = CreateTexture(500,300,8000,7500,"Map_NewWorld.TGA");

		local KhorinisFixPunktX1 = 2050; --Ost
		local KhorinisFixPunktY1 = 2900; -- Nord

		local KhorinisRealFixPunktX1 = -714; -- Ost
		local KhorinisRealFixPunktZ1 = 15812; -- Norden

		local KhorinisFixPunktX2 = 5900; --West
		local KhorinisFixPunktY2 = 5100; --Sued

		local KhorinisRealFixPunktX2 = 61167; --West  
		local KhorinisRealFixPunktZ2 = -11827; --Sueden

		local MapKhoriniswertX = math.abs( KhorinisFixPunktX1 - KhorinisFixPunktX2)
		local MapKhoriniswertY = math.abs( KhorinisFixPunktY1 - KhorinisFixPunktY2)

		local RealKhoriniswertX = math.abs( KhorinisRealFixPunktX1 - KhorinisRealFixPunktX2)
		local RealKhoriniswertY = math.abs( KhorinisRealFixPunktZ1 - KhorinisRealFixPunktZ2)

		local KhorinisVerhaeltnisX = MapKhoriniswertX / RealKhoriniswertX
		local KhorinisVerhaeltnisY = MapKhoriniswertY / RealKhoriniswertY

		--KolonieKTK--
		local WorldMapKolonieKTK = CreateTexture(500,300,8000,7500,"Map_OldCamp.TGA");

		local KolonieKTKFixPunktX1 = 2500; --Ost
		local KolonieKTKFixPunktY1 = 2500; -- Nord

		local KolonieKTKRealFixPunktX1 = -5766; -- Ost
		local KolonieKTKRealFixPunktZ1 = 2645; -- Norden

		local KolonieKTKFixPunktX2 = 5500; --West
		local KolonieKTKFixPunktY2 = 5500; --Sued

		local KolonieKTKRealFixPunktX2 = 3640; --West  
		local KolonieKTKRealFixPunktZ2 = -4625; --Sueden

		local MapKolonieKTKwertX = math.abs( KolonieKTKFixPunktX1 - KolonieKTKFixPunktX2)
		local MapKolonieKTKwertY = math.abs( KolonieKTKFixPunktY1 - KolonieKTKFixPunktY2)

		local RealKolonieKTKwertX = math.abs( KolonieKTKRealFixPunktX1 - KolonieKTKRealFixPunktX2)
		local RealKolonieKTKwertY = math.abs( KolonieKTKRealFixPunktZ1 - KolonieKTKRealFixPunktZ2)

		local KolonieKTKVerhaeltnisX = MapKolonieKTKwertX / RealKolonieKTKwertX
		local KolonieKTKVerhaeltnisY = MapKolonieKTKwertY / RealKolonieKTKwertY

		--KhorinisKTK--
		local WorldMapKhorinisKTK = CreateTexture(500,300,8000,7500,"Map_NewWorld_City.TGA");

		local KhorinisKTKFixPunktX1 = 5580; --Ost
		local KhorinisKTKFixPunktY1 = 5260; -- Nord

		local KhorinisKTKRealFixPunktX1 = 12597; -- Ost
		local KhorinisKTKRealFixPunktZ1 = -2961; -- Norden

		local KhorinisKTKFixPunktX2 = 2100; --West
		local KhorinisKTKFixPunktY2 = 3000; --Sued

		local KhorinisKTKRealFixPunktX2 = -556; --West  
		local KhorinisKTKRealFixPunktZ2 = 3638; --Sueden

		local MapKhorinisKTKwertX = math.abs( KhorinisKTKFixPunktX1 - KhorinisKTKFixPunktX2)
		local MapKhorinisKTKwertY = math.abs( KhorinisKTKFixPunktY1 - KhorinisKTKFixPunktY2)

		local RealKhorinisKTKwertX = math.abs( KhorinisKTKRealFixPunktX1 - KhorinisKTKRealFixPunktX2)
		local RealKhorinisKTKwertY = math.abs( KhorinisKTKRealFixPunktZ1 - KhorinisKTKRealFixPunktZ2)

		local KhorinisKTKVerhaeltnisX = MapKhorinisKTKwertX / RealKhorinisKTKwertX
		local KhorinisKTKVerhaeltnisY = MapKhorinisKTKwertY / RealKhorinisKTKwertY

		--MapUmrechnungsKonstanten--
		local MapUmrechnungsKonstanten = { Deathmatch = { Kolonie = {}, Jharkendar = {}, Khorinis = {} }, KilltheKing = { Kolonie = {}, Khorinis = {} } }

			MapUmrechnungsKonstanten.Deathmatch.Kolonie.verhaeltnis_x 		= KolonieVerhaeltnisX
			MapUmrechnungsKonstanten.Deathmatch.Kolonie.verhaeltnis_y 		= KolonieVerhaeltnisY
			MapUmrechnungsKonstanten.Deathmatch.Kolonie.summand_x 			= KolonieRealFixPunktX2 * KolonieVerhaeltnisX - KolonieFixPunktX2
			MapUmrechnungsKonstanten.Deathmatch.Kolonie.summand_y 			= KolonieRealFixPunktZ2 * KolonieVerhaeltnisY + KolonieFixPunktY2

			MapUmrechnungsKonstanten.Deathmatch.Khorinis.verhaeltnis_x 		= KhorinisVerhaeltnisX
			MapUmrechnungsKonstanten.Deathmatch.Khorinis.verhaeltnis_y 		= KhorinisVerhaeltnisY
			MapUmrechnungsKonstanten.Deathmatch.Khorinis.summand_x 			= KhorinisRealFixPunktX2 * KhorinisVerhaeltnisX - KhorinisFixPunktX2
			MapUmrechnungsKonstanten.Deathmatch.Khorinis.summand_y 			= KhorinisRealFixPunktZ2 * KhorinisVerhaeltnisY + KhorinisFixPunktY2

			MapUmrechnungsKonstanten.Deathmatch.Jharkendar.verhaeltnis_x 	= JharkendarVerhaeltnisX
			MapUmrechnungsKonstanten.Deathmatch.Jharkendar.verhaeltnis_y 	= JharkendarVerhaeltnisY
			MapUmrechnungsKonstanten.Deathmatch.Jharkendar.summand_x 		= JharkendarRealFixPunktX2 * JharkendarVerhaeltnisX - JharkendarFixPunktX2
			MapUmrechnungsKonstanten.Deathmatch.Jharkendar.summand_y 		= JharkendarRealFixPunktZ2 * JharkendarVerhaeltnisY + JharkendarFixPunktY2

			MapUmrechnungsKonstanten.KilltheKing.Kolonie.verhaeltnis_x 		= KolonieKTKVerhaeltnisX
			MapUmrechnungsKonstanten.KilltheKing.Kolonie.verhaeltnis_y 		= KolonieKTKVerhaeltnisY
			MapUmrechnungsKonstanten.KilltheKing.Kolonie.summand_x 			= KolonieKTKRealFixPunktX2 * KolonieKTKVerhaeltnisX - KolonieKTKFixPunktX2
			MapUmrechnungsKonstanten.KilltheKing.Kolonie.summand_y 			= KolonieKTKRealFixPunktZ2 * KolonieKTKVerhaeltnisY + KolonieKTKFixPunktY2

			MapUmrechnungsKonstanten.KilltheKing.Khorinis.verhaeltnis_x 	= KhorinisKTKVerhaeltnisX
			MapUmrechnungsKonstanten.KilltheKing.Khorinis.verhaeltnis_y 	= KhorinisKTKVerhaeltnisY
			MapUmrechnungsKonstanten.KilltheKing.Khorinis.summand_x 		= KhorinisKTKRealFixPunktX2 * KhorinisKTKVerhaeltnisX - KhorinisKTKFixPunktX2
			MapUmrechnungsKonstanten.KilltheKing.Khorinis.summand_y 		= KhorinisKTKRealFixPunktZ2 * KhorinisKTKVerhaeltnisY + KhorinisKTKFixPunktY2

	-- Lokale MapKoordinatenUmrechnung ENDE ------------------------------------------

	-- Lokale Variablen BEGINN -------------------------------------------------------

		--MapTexture--
		-- Performantere Alternative: Einfache Variable CurrentMapTexture: Aendern bei Serverstart, Gamemode Umschaltung, Map Umschaltung
		local MapTexture = { Deathmatch = { Kolonie = {}, Jharkendar = {}, Khorinis = {} }, KilltheKing = { Kolonie = {}, Khorinis = {} } }
			MapTexture.Deathmatch.Kolonie		= WorldMapKolonie
			MapTexture.Deathmatch.Khorinis		= WorldMapKhorinis
			MapTexture.Deathmatch.Jharkendar	= WorldMapJharkendar
			MapTexture.KilltheKing.Kolonie		= WorldMapKolonieKTK
			MapTexture.KilltheKing.Khorinis		= WorldMapKhorinisKTK

		local PlayerWithOpenMap = {} -- Liste der PlayerIds, die die Karte offen haben.
		-- Sollte in WorldMapAnzeigeUmschalten gepflegt werden, was aufgerufen wird wenn ein Spieler die Taste 'm' dr�ckt.
		-- Muss zus�tzlich aktualisiert werden, wenn der Spieler disconnected.
		
		local PlayerData = {} -- F�r zus�tzliche ben�tigte Daten f�r einen Spieler.
		-- Wird gepflegt, wenn neue Spieler hinzukommen oder gehen. Oder wenn WorldMapShowAll aufgerufen wird.
		-- Speichert Objekte mit Lager, ShowAll. (.Lager=1..6, .ShowAll=true/false )

		local LagerPlayerListe = { {}, {}, {}, {}, {}, {} } -- Listet f�r ein Lager alle PlayerIds. ( LagerPlayerListe[LagerNr] )
		-- Muss aktualisiert werden bei PlayerMachtLagerwahl, PlayerReLogin, /change, /lager
		
		local LagerNpcListe = { {}, {}, {}, {}, {}, {} } -- Liste der zu einem Lager geh�renden Npc IDs, die angezeigt werden sollen.
		-- Hier kommen die K�nige und oder die H�ndler / Lehrer rein.
		-- Muss aktualisiert werden bei Monster Create Function, Kill_NPC_KTK, NPC disconnect
		-- Speichert Objekte mit Indices id, icon, iconsize.

		
		local BossListe = {} -- Liste der Boss Monster IDs die angezeigt werden sollen.
		-- Muss aktualisiert werden bei Monster Create Function, KillNPCDeathmatch, NPC disconnect
		-- Speichert Objekte mit Indices id, icon, iconsize.

		local MonsterListe = {} -- Liste sonstiger Monster IDs die angezeigt werden sollen.
		-- Muss aktualisiert werden bei Monster Create Function, KillNPCDeathmatch, NPC disconnect

		-- MapTimer Angaben. MapTimerId = nil bedeutet, der Timer l�uft nicht.
		local MapTimerId = nil
		local MapTimerIntervall = 1000

		-- PlayerIcons f�r jeden Player (Spieler, Npc, Monster) wird das MapIcon (Textur Id) gespeichert. (Default ist -1 f�r kein Icon)
		local PlayerIcons = {}
			for i = 0, GetMaxSlots() do
				PlayerIcons[i] = -1
			end
		
		-- Hier werden die PlayerIcons gespeichert, die nach der Aktualisierung gel�scht werden m�ssen.
		-- Werden nicht direkt gel�scht, damit Flackern vermindert werden kann.
		local PlayerIconsForDestroy = {}
		
	-- Lokale Variablen EDNE ---------------------------------------------------------

-- Map Konstanten und Variablen ENDE ------------------------------------------
	
-- Hint: DestroyTexture(textureId) -- F�r alle Spieler, die diese Textur angezeigt haben, wird sie auch ausgeblendet.
-- Hint: F�r die *Texture() Funktionen wird -1 als Parameter auch angenommen. Es wird nur nix gemacht.




-- Funktion um die Map Anzeige f�r einen Spieler umzuschalten.
function WorldMapAnzeigeUmschalten(playerid)
	if PlayerData[playerid] == nil then -- Wenn ein Spieler noch nicht ordnungsgem�� hinzugef�gt wurde
		return							-- Z.B. wenn einer aus der Loginzelle ausloggt, ist der noch nicht in PlayerData mit Lager drin.
	end									-- Dann darf die Map nicht angezeigt werden.
	if table.contains(PlayerWithOpenMap, playerid) then
		PlayerWithOpenMapDelete(playerid)
		HideMapIconsForPlayer(playerid)
		HideTexture(playerid, MapTexture[Mode][Map])	
	else
		ShowTexture(playerid, MapTexture[Mode][Map])
		PlayerWithOpenMapAdd(playerid)
    end
end

-- Funktion zum Umschalten der ShowAll funktionalit�t f�r einen Spieler. (Sollte nur von Admins aufgerufen werden.)
function CMD_WorldMapShowAll(playerid)
	if (PlayerData[playerid].ShowAll) then
		PlayerData[playerid].ShowAll = false
		SendPlayerMessage(playerid,255,255,0,"Map zeigt nun normal An!")
	else
		PlayerData[playerid].ShowAll = true
		SendPlayerMessage(playerid,255,255,0,"Map zeigt nun alles An!")
	end
end

-- Funktion zum Schlie�en der Map f�r playerid.
function WorldMapClose(playerid)
	if table.contains(PlayerWithOpenMap, playerid) then
		PlayerWithOpenMapDelete(playerid)
		HideMapIconsForPlayer(playerid)
		HideTexture(playerid, MapTexture[Mode][Map])	
    end
end

-- Funktion zum Schlie�en aller offenen Map.
function WorldMapCloseAll()
	local pids = {} -- Kopie der PlayerWithOpenMap erstellen, damit sie nicht in pairs() durcheinander kommt.
	for index, playerid in pairs(PlayerWithOpenMap) do
		table.insert(pids, playerid)
	end
	for index, playerid in pairs(pids) do
		PlayerWithOpenMapDelete(playerid)
		HideMapIconsForPlayer(playerid)
		HideTexture(playerid, MapTexture[Mode][Map])
	end
end




-- MapPlayerLager Funktionen zum Speichern der Spieler eines Lagers BEGINN ----

	-- F�gt die playerid in die entsprechende Lagerliste ein.
	-- (playerid wird dabei voher aus den Lagerlisten gel�scht, damit playerid nur einmal vorkommt.)
	function MapPlayerLagerSet(playerid, lager)
		local pdata = PlayerData[playerid]
		if (pdata ~= nil) then
			table.removeElement(LagerPlayerListe[pdata.Lager], playerid)
			pdata.Lager = lager
		else
			PlayerData[playerid] = {}
			PlayerData[playerid].Lager = lager
			PlayerData[playerid].ShowAll = false
		
		end
		table.insert(LagerPlayerListe[lager], playerid)
	end

	-- L�scht die playerid aus den LagerPlayerListen.
	function MapPlayerLagerDelete(playerid)
		local player = PlayerData[playerid]
		if (player ~= nil) then
			table.removeElement(LagerPlayerListe[player.Lager], playerid)
		end
		DestroyTexture(PlayerIcons[playerid])
		PlayerIcons[playerid] = -1
		PlayerData[playerid] = nil
	end

	-- Spieler Lagerlisten:
	-- Spieler Lager 1 = 12 1 23
	-- Spieler Lager 2 = 
	-- Spieler Lager 3 = 4 5 8 11
	-- ...
	function DebugPrintLagerPlayerListe()
		print("\nSpieler Lagerlisten:")
		for lagerNr, lagerListe in ipairs(LagerPlayerListe)
		do
			local zeile = "Spieler Lager " .. lagerNr .. " ("..#lagerListe..") ="
			for key, val in ipairs(lagerListe)
			do
				zeile = zeile .. " " .. val
			end
			print(zeile)
		end
		print()
	end

-- MapPlayerLager Funktionen zum Speichern der Spieler eines Lagers ENDE ------



-- LagerNpcListe Funktionen zum Speichern der Npcs eines Lagers BEGINN --------

	function MapLagerNpcListeAdd(npcid, lager)
		if Mode ~= "KilltheKing" then return end -- Wenn nicht KTK dann sollen die LagerNpcs nicht auf die Map. Aufh�ren.
	
		for lagerNr, lagerListe in ipairs(LagerNpcListe) do
			for index, val in pairs(lagerListe) do
				if (val.id == npcid) then
					if (lagerNr == lager) then
						return -- npcid ist schon im richtigen Lager, aufh�ren.
					else
						table.remove(lagerListe, index) -- npcid ist im falchen Lager, l�schen und weitermachen.
						break
					end
				end
			end
		end
		local npc = {}
		npc.id = npcid
		npc.icon, npc.iconsize = GetLagerNpcIconData(npcid, lager)
		table.insert(LagerNpcListe[lager], npc)
	end

	-- L�scht die npcid aus den LagerNpcListen.
	function MapLagerNpcListeDelete(npcid)
		if Mode ~= "KilltheKing" then return end -- Wenn nicht KTK dann sind auch keine LagerNpcs auf der Map. Aufh�ren.

		for lagerNr, lagerListe in ipairs(LagerNpcListe) do
			for index, val in pairs(lagerListe) do
				if (val.id == npcid) then
					table.remove(lagerListe, index)
					break
				end
			end
		end
		DestroyTexture(PlayerIcons[npcid])
		PlayerIcons[npcid] = -1
	end

	-- Gibt den Iconnamen und die Iconsize f�r Lagerabh�ngige NPCs zur�ck.
	-- Icon und ggf. Gr��e k�nnte auch direkt von der Create Monster Funkion mit angegeben werden,
	-- dann muss hier nicht �ber den Namen gesucht werden.
	function GetLagerNpcIconData(npcid, lager)
		local name = GetPlayerName(npcid)
		if name == "Raymond" then
			return Raymondicon, Bossiconsize
		elseif name == "Gorax" then
			return Goraxicon, Bossiconsize
		elseif name == "Grand" then
			return Grandicon, Bossiconsize
		elseif name == "Falkson" then
			return Falksonicon, Bossiconsize
		elseif name == "Gar" then
			return Garicon, Bossiconsize
		elseif name == "Allan" then
			return Allanicon, Bossiconsize
		else
			return LagerSpielerIcons[lager], LagerNpciconsize
		end
	end

	-- Npc Lagerlisten:
	-- Npc Lager 1 = 12 1 23
	-- Npc Lager 2 = 
	-- Npc Lager 3 = 4 5 8 11
	-- ...
	function DebugPrintLagerNpcListe()
		print("\nNpc Lagerlisten:")
		for lagerNr, lagerListe in ipairs(LagerNpcListe)
		do
			local zeile = "Npc Lager " .. lagerNr .. " ("..#lagerListe..") ="
			for key, val in ipairs(lagerListe)
			do
				zeile = zeile .. " " .. val.id
			end
			print(zeile)
		end
		print()
	end

-- LagerNpcListe Funktionen zum Speichern der Npcs eines Lagers ENDE ----------



-- BossListe Funktionen zum Speichern der Bossmonster BEGINN ------------------

	-- F�gt npcid zur BossListe hinzu, wenn npcid noch nicht enthalten ist.
	function MapBossListeAdd(npcid)
		for index, val in pairs(BossListe) do
			if val.id == npcid then
				return -- Wenn die npcid schon drin ist, aufh�ren.
			end
		end		
		local npc = {}
		npc.id = npcid
		npc.icon = GetBossIcon(npcid)
		npc.iconsize = Bossiconsize		
		table.insert(BossListe, npc)
	end

	-- L�scht npcid aus BossListe.
	function MapBossListeDelete(npcid)
		for index, val in pairs(BossListe) do
			if val.id == npcid then
				table.remove(BossListe, index)
				break
			end
		end
		DestroyTexture(PlayerIcons[npcid])
		PlayerIcons[npcid] = -1
	end

	-- Gibt den Namen der Textur f�r ein Bossmonster zur�ck.
	-- Icon und ggf. Gr��e k�nnte auch direkt von der Create Monster Funkion mit angegeben werden,
	-- dann muss hier nicht �ber den instace Namen gesucht werden.
	function GetBossIcon(npcid)
		local instance = GetPlayerInstance(npcid)
		if instance == "Troll_Black" then    
			return Trollicon
		elseif instance == "ShadowbeastBlond" then
			return Schattenlaeufericon
		elseif instance == "Demon_Wolf" then
			return DemonWolficon
		elseif instance == "Skeleton_Lord" then
			return SkelettLordicon
		elseif instance == "ErzGolem" then
			return ErzGolemicon
		elseif instance == "DemonDark" then
			return DemonDarkicon
		elseif instance == "Roterwarg" then
			return RoterWargicon
		elseif instance == "Blauerscavenger" then
			return Blauerscavengericon
		elseif instance == "Gelbersnapper" then
			return Gelbersnappericon
		elseif instance == "Gruenerlurker" then
			return Gruenerlurkericon
		elseif instance == "Lilacrawler" then
			return Lilacrawlericon
		elseif instance == "GrauerRazor" then
			return GrauerRazoricon
		else
			return nil
		end
	end

	-- Boss Monster Liste:
	-- Boss IDs : 570 571 512 714 576 723 ...
	function DebugPrintBossListe()
		print("\nBoss Monster Liste ("..#BossListe.."):")
		local zeile = "Boss IDs :"
		for key, val in ipairs(BossListe)
		do
			zeile = zeile .. " " .. val.id
		end
		print(zeile)
		print()
	end

-- BossListe Funktionen zum Speichern der Bossmonster ENDE --------------------
function MapNPCAddList(npc)
	if GetBossIcon(npc) ~= nil then
		MapBossListeAdd(npc)
	else
		MapMonsterListeAdd(npc)
	end
end

-- MonsterListe Funktionen zum Speichern sonstiger Npcs BEGINN ----------------

	-- F�gt npcid zur MonsterListe hinzu, wenn npcid noch nicht enthalten ist.
	function MapMonsterListeAdd(npcid)
		do return end -- Viecher sollen erst mal generell nicht auf die Map. Aufh�ren.
	
		if not table.contains(MonsterListe, npcid) then
			table.insert(MonsterListe, npcid)
		end
	end

	-- L�scht npcid aus MonsterListe.
	function MapMonsterListeDelete(npcid)
		do return end -- Viecher sind erst mal generell nicht auf der Map. Aufh�ren.

		table.removeElement(MonsterListe, npcid)
		DestroyTexture(PlayerIcons[npcid])
		PlayerIcons[npcid] = -1
	end

	-- Monster Liste:
	-- IDs : 570 571 512 714 576 723 ...
	function DebugPrintMonsterListe()
		print("\nMonster Liste ("..#MonsterListe..") :")
		local zeile = "IDs :"
		for key, val in ipairs(MonsterListe)
		do
			zeile = zeile .. " " .. val
		end
		print(zeile)
		print()
	end

-- MonsterListe Funktionen zum Speichern sonstiger Npcs ENDE ------------------
	



-- PlayerWithOpenMap Funktionen mit MapTimer start und ende BEGINN ------------

	-- F�gt playerid zur PlayerWithOpenMap hinzu und startet ggf. den MapTimer.
	function PlayerWithOpenMapAdd(playerid)
		if table.contains(PlayerWithOpenMap, playerid) then
			return
		end
		
		table.insert(PlayerWithOpenMap, playerid)
		if (MapTimerId == nil) then -- MapTimer starten und MapIcons anzeigen.
			PositionsTimer() -- Erst mal direkt aufrufen, damit nicht erst nach MapTimerIntervall ms die Position aktualisiert wird.
			MapTimerId = SetTimer("PositionsTimer", MapTimerIntervall, 1)
		else -- MapTimer l�uft schon, MapIcons f�r playerid sofort anzeigen.
			ShowMapIconsForPlayer(playerid)
		end
	end

	-- L�scht playerid aus PlayerWithOpenMap und beendet den MapTimer, wenn keiner mehr die Map offen hat.
	function PlayerWithOpenMapDelete(playerid)
		table.removeElement(PlayerWithOpenMap, playerid)
		
		if (#PlayerWithOpenMap < 1) and (MapTimerId ~= nil) then
			KillTimer(MapTimerId);
			MapTimerId = nil
		end
	end

	-- MapTImer Staus ist AN
	-- Spieler mit offener Karte (#Anz):
	-- IDs : 0 1 12 14 6 23 ...
	function DebugPrintPlayerWithOpenMap()
		local status = "AN"
		if MapTimerId == nil then
			status = "AUS"
		end
		print("\nMapTImer Staus ist "..status)
		print("Spieler mit offener Karte ("..#PlayerWithOpenMap.."):")
		local zeile = "IDs :"
		for key, val in ipairs(PlayerWithOpenMap)
		do
			zeile = zeile .. " " .. val
		end
		print(zeile)
		print()
	end
	
-- PlayerWithOpenMap Funktionen mit MapTimer start und ende ENDE --------------





-- Aktualisiert alle MapIcons und ruft die Aktualisierung aller offenen Map auf. (Wird vom Timer aufgerufen)
function PositionsTimer()
	for index, id in pairs(MonsterListe) do
		NpcMapFunc(id, WeissesSpielerIcon, Monstericonsize)
	end
	for lager, lagerListe in pairs(LagerNpcListe) do
		for index, val in pairs(lagerListe) do
			NpcMapFunc(val.id, val.icon, val.iconsize)
		end
	end
	for index, val in pairs(BossListe) do
		NpcMapFunc(val.id, val.icon, val.iconsize)
	end
	for lager, lagerListe in pairs(LagerPlayerListe) do
		for index, id in pairs(lagerListe) do
			if GetPlayerLevel(id) >= 3 or (Mode ~= "Deathmatch" and Mode ~= "CTF") then
				NpcMapFunc(id, LagerSpielerIcons[lager], Playericonsize)
			else
				NpcMapFunc(id, WeissesSpielerIcon, Playericonsize)
			end
		end
	end
	AktualisiereOffeneMaps()
end

-- Erstellt ein neues aktualisiertes MapIcon f�r den Npc id und speichert das alte in PlayerIconsForDestroy.
function NpcMapFunc(id, icon, iconsize)
	table.insert(PlayerIconsForDestroy, PlayerIcons[id])
	local posx, posy = CalcMapPos(id)
	PlayerIcons[id] = CreateTexture(posx, posy, posx + iconsize, posy + iconsize, icon)
end

-- Erstellt eine Liste der verwendeten Icons (TexturIds) von Spieler playerid und gibt sie zur�ck.
function GetPlayerUsedIcons(playerid)
	-- Bestimmen welche ids f�r den Spieler alle angezeigt werden m�ssen. Default: sich selbst.
	local ids = { PlayerIcons[playerid] }
	
	-- Monster immer anzeigen
	for index, id in pairs(MonsterListe) do
		table.insert(ids, PlayerIcons[id])
	end
	
	-- Lagerabh�ngige Player und NPCs oder Alle bei ShowAll
	if PlayerData[playerid].ShowAll then
		-- ShowAll ids.
		for lagerNr, lagerListe in pairs(LagerNpcListe) do
			for index, val in pairs(lagerListe) do
				table.insert(ids, PlayerIcons[val.id])
			end
		end
		for lagerNr, lagerListe in pairs(LagerPlayerListe) do
			for index, id in pairs(lagerListe) do
				table.insert(ids, PlayerIcons[id])
			end
		end
	else
		-- Lagerabh�ngige ids einf�gen.
		for index, val in pairs(LagerNpcListe[PlayerData[playerid].Lager]) do
			table.insert(ids, PlayerIcons[val.id])
		end
		for index, id in pairs(LagerPlayerListe[PlayerData[playerid].Lager]) do
			table.insert(ids, PlayerIcons[id])
		end
	end
	
	-- Bossmonster immer anzeigen
	for index, val in pairs(BossListe) do
		table.insert(ids, PlayerIcons[val.id])
	end
	
	return ids
end

-- Aktualisiert f�r alle Spieler mit offener Map die Icons
-- und l�scht die nicht mehr verwendeten aus PlayerIconsForDestroy.
function AktualisiereOffeneMaps()
	for index, playerid in ipairs(PlayerWithOpenMap) do
		ShowMapIconsForPlayer(playerid)
	end
	for i, id in pairs(PlayerIconsForDestroy) do
		DestroyTexture(id)
	end
	PlayerIconsForDestroy = {}
end

-- Funktion zum Anzeigen der Karte f�r einen Spieler.
function ShowMapIconsForPlayer(playerid)
	local icons = GetPlayerUsedIcons(playerid)
	for iconindex, iconid in pairs(icons) do
		ShowTexture(playerid, iconid)
	end
end

-- Funktion zum Ausblenden der Karte f�r einen Spieler.
function HideMapIconsForPlayer(playerid)
	local icons = GetPlayerUsedIcons(playerid)
	for iconindex, iconid in ipairs(icons) do
		HideTexture(playerid, iconid)
	end
end

-- Berechnet die aktuelle MapPosition f�r den Spieler oder NPC mit ID=id und gibt map_pos_y und map_pos_y zur�ck.
function CalcMapPos(id)
	local x, y, z = GetPlayerPos(id)
	local mukModeMap = MapUmrechnungsKonstanten[Mode][Map]
	local map_x = x * mukModeMap.verhaeltnis_x - mukModeMap.summand_x
	local map_y = mukModeMap.summand_y - z * mukModeMap.verhaeltnis_y
	return map_x, map_y
end

print("Loaded LUA file   " .. debug.getinfo(1).source)