function OnPlayerKey(playerid, keyDown, keyUp)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerKey(playerid, keyDown, keyUp)")
	
	-- Alle keyUp Aufrufe sollen nicht behandelt werden.
	-- (Dann ist keyDown == 255 und in keyUp steht die Taste)
	-- (Es werden nur Tastendrücke zwischen 13 und 96 verwendet, also die anderen auch nicht berücksichtigen)
	if (keyDown < 13) or (keyDown > 96) then return end
	--print("OnPlayerKey(playerid, keyDown, keyUp)", playerid, keyDown, keyUp)

	if Player[playerid].EinsteigerGuide_Aktiv > 0 then
		EinsteigerGuide_OnKey(playerid, keyDown)
	elseif Player[playerid].register == 1 then
		if keyDown == KEY_UP then
			switchUP(playerid)

		elseif keyDown == KEY_DOWN then
			switchDOWN(playerid)

		elseif keyDown == KEY_RIGHT then
			switchRIGHT(playerid)

		elseif keyDown == KEY_LEFT then
			switchLEFT(playerid)

		elseif keyDown == KEY_RETURN then
			if Player[playerid].selectedOption == table.getn(animationDraw) then
				HideRegistrationList(playerid);
				Player[playerid].register = 2;
				createBackgroundStory(playerid);
				showBackgroundStory(playerid);
				SetPlayerPos(playerid, 3963.209717, 848.204163, 4924.096680);
			end
		end
	elseif Player[playerid].register == 2 then -- Char BG Story
		if Mode == "Deathmatch" then
			if keyDown == KEY_RIGHT then
				storySwitchRIGHT(playerid)

			elseif keyDown == KEY_LEFT then
				storySwitchLEFT(playerid)

			elseif keyDown == KEY_RETURN then
				destroyBackgroundStory(playerid);
				-- Diese globale Variable wird nirgends gelesen !?! Weg ! -- Register = 1;
				SetDefaultCamera(playerid);
				Finalize_Registration(playerid);
				print("Es wurde ein neuer Account erstellt.");
			end	
		elseif Mode == "KilltheKing" then
			if keyDown == KEY_DOWN then
				storySwitchDOWN(playerid)

			elseif keyDown == KEY_UP then
				storySwitchUP(playerid)

			elseif keyDown == KEY_RETURN then
				if GuildMembers[Player[playerid].bstoryselect] ~= 0 and KingAlive[Player[playerid].bstoryselect] ~= 0 then
					GuildMembers[Player[playerid].bstoryselect] = GuildMembers[Player[playerid].bstoryselect] - 1
					destroyBackgroundStory(playerid);
					-- Diese globale Variable wird nirgends gelesen !?! Weg ! -- Register = 1;
					SetDefaultCamera(playerid);
					Finalize_Registration(playerid);
					print("Es wurde ein neuer Account erstellt.");
				else
					SendPlayerMessage(playerid,255,250,200,string.format("%s","(Server): Dieses Team ist voll oder bereits ausgeschieden!"));
				end
			end	
		end
	elseif Player[playerid].handelsmenu.active then
		Handelsmenu_OnKey(playerid, keyDown)
	elseif keyDown == KEY_F7 then
		Handelsmenu_Open(playerid)
	elseif keyDown == KEY_M then
		WorldMapAnzeigeUmschalten(playerid);
	elseif keyDown == KEY_H then
		CMD_EinsteigerGuide_On(playerid)
	elseif keyDown == KEY_F9 then
		ClearGMPAChat(playerid);
	elseif keyDown == KEY_NUMPAD1 then
		if Mode == "Deathmatch" then	
			if Player[playerid].numpad == 0 then
				Player[playerid].numpad = 1;
				hideScoreCounter(playerid)
				showFocusList(playerid)
			elseif Player[playerid].numpad == 1 then 
				Player[playerid].numpad = 0;
				hideMultiList(playerid)
				hideFocusList(playerid)
				hidePlayerList(playerid)
				showScoreCounter(playerid)
			end
		end
	elseif keyDown == KEY_NUMPAD2 then
		if Mode == "Deathmatch" then		
			if Player[playerid].numpad == 0 then
				Player[playerid].numpad = 1;
				hideScoreCounter(playerid)
				showMultiList(playerid)
			elseif Player[playerid].numpad == 1 then 
				Player[playerid].numpad = 0;
				hideMultiList(playerid)
				hideFocusList(playerid)
				hidePlayerList(playerid)
				showScoreCounter(playerid)
			end
		end
	elseif keyDown == KEY_NUMPAD3 then
		if Mode == "Deathmatch" then		
			if Player[playerid].numpad == 0 then
				Player[playerid].numpad = 1;
				hideScoreCounter(playerid)
				showPlayerList(playerid)
			elseif Player[playerid].numpad == 1 then 
				Player[playerid].numpad = 0;
				hideMultiList(playerid)
				hideFocusList(playerid)
				hidePlayerList(playerid)
				showScoreCounter(playerid)
			end
		end
	elseif keyDown == KEY_NUMPAD4 then
		if Mode == "Deathmatch" or Mode == "CTF" then
			if poll.enable == 1 and Player[playerid].pollcount == 0 then
				poll.yes = poll.yes + 1;
				Player[playerid].pollcount = 1;
				Player[playerid].pollyes = 1;
			end
		end
	elseif keyDown == KEY_NUMPAD5 then
		if Mode == "Deathmatch" or Mode == "CTF" then
			if poll.enable == 1 and Player[playerid].pollcount == 0 then
				poll.no = poll.no + 1;
				Player[playerid].pollcount = 1;
				Player[playerid].pollno = 1;
			end
		end
	elseif keyDown == KEY_NUMPAD6 then
		SoundPlay_Hilfe(playerid)
	elseif keyDown == KEY_NUMPAD7 then
		SoundPlay_Alarm(playerid)
	elseif keyDown == KEY_NUMPAD8 then
		SoundPlay_BleibStehen(playerid)
	elseif keyDown == KEY_NUMPAD9 then
		SoundPlay_Rueckzug(playerid)
	elseif keyDown == KEY_F1 or keyDown == KEY_F2 or keyDown == KEY_F3 or keyDown == KEY_F4 then
		Player[playerid].F1234count = Player[playerid].F1234count + 1;
		if Player[playerid].F1234count >= 10 then
			for i = 0, GetMaxPlayers() - 1 do
				SendPlayerMessage(i,255,0,0,string.format("%s %s %s" ,"(Server):",GetPlayerName(playerid),"wurde von Server gekickt. Grund: F1,F4 bug"));
			end
			Kick(playerid);
		end
	end
	
	if Mode == "KilltheKing" then
		if keyDown == KEY_Z then
			local NRLager = Player[playerid].Lager
			if NRLager == 1 then
				local px, py, pz = GetPlayerPos(1199);
				AI_NPCList[1199].LASTWP = AI_WayNets[AI_NPCList[1199].GP_World]:GetNearestWPPos(px, py, pz).name;
				AI_FOLLOW(1199, playerid, AI_NPCList[1199].LASTWP);
			elseif NRLager == 2 then
				local px, py, pz = GetPlayerPos(1198);
				AI_NPCList[1198].LASTWP = AI_WayNets[AI_NPCList[1198].GP_World]:GetNearestWPPos(px, py, pz).name;
				AI_FOLLOW(1198, playerid, AI_NPCList[1198].LASTWP);
			elseif NRLager == 3 then
				local px, py, pz = GetPlayerPos(1197);
				AI_NPCList[1197].LASTWP = AI_WayNets[AI_NPCList[1197].GP_World]:GetNearestWPPos(px, py, pz).name;
				AI_FOLLOW(1197, playerid, AI_NPCList[1197].LASTWP);
			elseif NRLager == 4 then
				local px, py, pz = GetPlayerPos(1196);
				AI_NPCList[1196].LASTWP = AI_WayNets[AI_NPCList[1196].GP_World]:GetNearestWPPos(px, py, pz).name;
				AI_FOLLOW(1196, playerid, AI_NPCList[1196].LASTWP);
			elseif NRLager == 5 then
				local px, py, pz = GetPlayerPos(1195);
				AI_NPCList[1195].LASTWP = AI_WayNets[AI_NPCList[1195].GP_World]:GetNearestWPPos(px, py, pz).name;
				AI_FOLLOW(1195, playerid, AI_NPCList[1195].LASTWP);
			elseif NRLager == 6 then
				local px, py, pz = GetPlayerPos(1194);
				AI_NPCList[1194].LASTWP = AI_WayNets[AI_NPCList[1194].GP_World]:GetNearestWPPos(px, py, pz).name;
				AI_FOLLOW(1194, playerid, AI_NPCList[1194].LASTWP);
			end
			return
		elseif keyDown == KEY_X then
			local NRLager = Player[playerid].Lager
			if NRLager == 1 then
				AI_STOP_NOW(1199, 10);
			elseif NRLager == 2 then
				AI_STOP_NOW(1198, 10);
			elseif NRLager == 3 then
				AI_STOP_NOW(1197, 10);
			elseif NRLager == 4 then
				AI_STOP_NOW(1196, 10);
			elseif NRLager == 5 then
				AI_STOP_NOW(1195, 10);
			elseif NRLager == 6 then
				AI_STOP_NOW(1194, 10);
			end
			return
		end
	end
	
end

print("Loaded LUA file   " .. debug.getinfo(1).source)
