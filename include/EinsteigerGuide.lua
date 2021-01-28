-- EinsteigerGuide --

local EinsteigerGuide_Bilder = {"EG_01.tga","EG_02.tga","EG_03.tga","EG_04.tga","EG_05.tga","EG_06.tga","EG_07.tga","EG_08.tga","EG_09.tga","EG_10.tga","EG_11.tga","EG_12.tga","EG_13.tga","EG_14.tga","EG_15.tga","EG_16.tga","EG_17.tga","EG_18.tga"};
local EinsteigerGuide_Count = #EinsteigerGuide_Bilder

local EinsteigerGuide_Textures = {}
for i = 1, EinsteigerGuide_Count do
    EinsteigerGuide_Textures[i] = CreateTexture(500,500,7700,7700,EinsteigerGuide_Bilder[i])
end

function CMD_EinsteigerGuide_On(playerid)
	-- -- print("function CMD_EinsteigerGuide_On(playerid)", playerid)
	
	-- Wenn der EinsteigerGuide schon angezeigt wird nix machen.
	if Player[playerid].EinsteigerGuide_Aktiv > 0 then return end

	-- Inventar schlie�en.
	CloseInventory(playerid)

	-- Map schlie�en.
	WorldMapClose(playerid)
	
	-- Scoreanzeigen ausblenden.
	if Mode == "Deathmatch" then		
		Player[playerid].numpad = 1
		hideMultiList(playerid)
		hideFocusList(playerid)
		hidePlayerList(playerid)
		hideScoreCounter(playerid)
	else	
		hideKings(playerid)
	end
	
	-- Killtexts ausblenden
	HidePlayerKilltexts(playerid)
	
	-- Chat ausblenden. (Dann ist auch die Chat Eingabe deaktiviert und es gibt ein OnKey f�r "T".)
	ShowChat(playerid,0)
	
	-- Spieler freezen.
	FreezePlayer(playerid, 1)
	Player[playerid].aniblock = true
	PlayAnimation(playerid, "S_LGUARD")

	-- EinsteigerGuide einblenden.
	Player[playerid].EinsteigerGuide_Aktiv = 1
	ShowTexture(playerid, EinsteigerGuide_Textures[Player[playerid].EinsteigerGuide_Folie])
end

function CMD_EinsteigerGuide_Off(playerid)
	-- -- print("function CMD_EinsteigerGuide_Off(playerid)", playerid)
	
	-- Wenn der EinsteigerGuide schon ausgeblendet ist, nix machen.
	if Player[playerid].EinsteigerGuide_Aktiv < 1 then return end

	-- Den EinsteigerGuide ausblenden.
	HideTexture(playerid, EinsteigerGuide_Textures[Player[playerid].EinsteigerGuide_Folie])
	Player[playerid].EinsteigerGuide_Aktiv = 0
	
	-- Spieler entfreezen.
	PlayAnimation(playerid,"S_RUN")
	Player[playerid].aniblock = false
	FreezePlayer(playerid, 0)
	
	-- Killtexts wieder anzeigen
	ShowPlayerkilltextsAfterLogin(playerid)
	
	-- Chat wieder anzeigen.
	ShowChat(playerid,1)
	
	-- Scoreanzeigen wieder einblenden
	if Player[playerid].isOnline == 1 then	
		if Mode == "Deathmatch" then		
			Player[playerid].numpad = 0
			hideMultiList(playerid)
			hideFocusList(playerid)
			hidePlayerList(playerid)
			showScoreCounter(playerid)
		else
			showKings(playerid)
		end
	end
end 

function EinsteigerGuide_FolieUmschalten(playerid, aktuelleFolie, naechsteFolie)
	HideTexture(playerid, EinsteigerGuide_Textures[aktuelleFolie])
	Player[playerid].EinsteigerGuide_Folie = naechsteFolie
	ShowTexture(playerid, EinsteigerGuide_Textures[naechsteFolie])
end

function EinsteigerGuide_FolieVor(playerid)
	local aktuelleFolie = Player[playerid].EinsteigerGuide_Folie
	local naechsteFolie = aktuelleFolie + 1
	if naechsteFolie > EinsteigerGuide_Count then
		naechsteFolie = 1
	end
	EinsteigerGuide_FolieUmschalten(playerid, aktuelleFolie, naechsteFolie)
end

function EinsteigerGuide_FolieZurueck(playerid)
	local aktuelleFolie = Player[playerid].EinsteigerGuide_Folie
	local naechsteFolie = aktuelleFolie - 1
	if naechsteFolie < 1 then
		naechsteFolie = EinsteigerGuide_Count
	end
	EinsteigerGuide_FolieUmschalten(playerid, aktuelleFolie, naechsteFolie)
end

function EinsteigerGuide_SwitchToMap(playerid)
	CMD_EinsteigerGuide_Off(playerid)
	WorldMapAnzeigeUmschalten(playerid)
end

-- Behandelt die Tastendr�cke wenn der EinsteigerGuide f�r den Spieler aktiviert ist.
function EinsteigerGuide_OnKey(playerid, keyDown)
	if keyDown == KEY_H then
		CMD_EinsteigerGuide_Off(playerid)
	elseif keyDown == KEY_M then
		EinsteigerGuide_SwitchToMap(playerid)
	elseif keyDown == KEY_T then
		CMD_EinsteigerGuide_Off(playerid)
	elseif keyDown == KEY_F12 then
		CMD_EinsteigerGuide_Off(playerid)
    elseif keyDown == KEY_RIGHT then
		EinsteigerGuide_FolieVor(playerid)
    elseif keyDown == KEY_LEFT then
		EinsteigerGuide_FolieZurueck(playerid)
    end
end

print("Loaded LUA file   " .. debug.getinfo(1).source)