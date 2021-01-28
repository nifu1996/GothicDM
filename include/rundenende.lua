--Deathmatch

function Rundenendecheck(playerid,Points)
	-- print("function Rundenendecheck(playerid, Points)", playerid, Points)
	
    local Lagercheck = mysql_query(mysql_handler, "SELECT `Point` FROM `Score` WHERE `Lager` = '"..Player[playerid].Lager.."'");
    if mysql_num_rows(Lagercheck) == 1 then
		local rows = mysql_fetch_row(Lagercheck)
        local Points = tonumber(rows[1]);
        if ScoreEND <= Points then
            for i = 0,GetMaxPlayers() - 1 do
                FreezePlayer(i, 1);
                if Player[playerid].Lager == Player[i].Lager then
                ShowDraw(i,Win);
                else
                ShowDraw(i,Lose);
                end
            end
            SetTimerEx("RundenEnde",5000,0,playerid)
        end
    end
    mysql_free_result(Lagercheck);
end

--KilltheKing

function CheckTeamDeath(playerid)
	-- print("function CheckTeamDeath(playerid)", playerid)
	
    if GuildMembersCount[Player[playerid].Lager] == 0 then
        SendMessageToAll(200,200,50,string.format("%s %s %s","Team",Team[Player[playerid].Lager],"ist Ausgeschieden!"));
        TeamOut[Player[playerid].Lager] = 0
    end

    if TeamOut[2] == 0 and TeamOut[3] == 0 and TeamOut[4] == 0 and TeamOut[5] == 0 and TeamOut[6] == 0 then
        for i = 0,GetMaxPlayers() - 1 do
            FreezePlayer(i, 1);
            if Player[1].Lager == Player[i].Lager then
            ShowDraw(i,Win);
            else
            ShowDraw(i,Lose);
            end
        end
        SetTimerEx("RundenEnde",5000,0,1)
    elseif TeamOut[1] == 0 and TeamOut[3] == 0 and TeamOut[4] == 0 and TeamOut[5] == 0 and TeamOut[6] == 0 then
        for i = 0,GetMaxPlayers() - 1 do
            FreezePlayer(i, 1);
            if Player[2].Lager == Player[i].Lager then
            ShowDraw(i,Win);
            else
            ShowDraw(i,Lose);
            end
        end
        SetTimerEx("RundenEnde",5000,0,2)
    elseif TeamOut[1] == 0 and TeamOut[2] == 0 and TeamOut[4] == 0 and TeamOut[5] == 0 and TeamOut[6] == 0 then
        for i = 0,GetMaxPlayers() - 1 do
            FreezePlayer(i, 1);
            if Player[3].Lager == Player[i].Lager then
            ShowDraw(i,Win);
            else
            ShowDraw(i,Lose);
            end
        end
        SetTimerEx("RundenEnde",5000,0,3)
    elseif TeamOut[1] == 0 and TeamOut[2] == 0 and TeamOut[3] == 0 and TeamOut[5] == 0 and TeamOut[6] == 0 then
        for i = 0,GetMaxPlayers() - 1 do
            FreezePlayer(i, 1);
            if Player[4].Lager == Player[i].Lager then
            ShowDraw(i,Win);
            else
            ShowDraw(i,Lose);
            end
        end
        SetTimerEx("RundenEnde",5000,0,4)
    elseif TeamOut[1] == 0 and TeamOut[2] == 0 and TeamOut[3] == 0 and TeamOut[4] == 0 and TeamOut[6] == 0 then
        for i = 0,GetMaxPlayers() - 1 do
            FreezePlayer(i, 1);
            if Player[5].Lager == Player[i].Lager then
            ShowDraw(i,Win);
            else
            ShowDraw(i,Lose);
            end
        end
        SetTimerEx("RundenEnde",5000,0,5)
    elseif TeamOut[1] == 0 and TeamOut[2] == 0 and TeamOut[3] == 0 and TeamOut[4] == 0 and TeamOut[5] == 0 then
        for i = 0,GetMaxPlayers() - 1 do
            FreezePlayer(i, 1);
            if Player[6].Lager == Player[i].Lager then
            ShowDraw(i,Win);
            else
            ShowDraw(i,Lose);
            end
        end
        SetTimerEx("RundenEnde",5000,0,6)
    end
end

function RundeAktivcheck(ScoreEND)
	-- print("function RundeAktivcheck(ScoreEND)", ScoreEND)
	
    local Lagercheck = mysql_query(mysql_handler, "SELECT `Point` FROM `Score`");
    if mysql_num_rows(Lagercheck) == 1 then
		local rows = mysql_fetch_row(Lagercheck)
        local PointsEnd = tonumber(rows[1]);
        local Points1 = tonumber(rows[1]);
        local Points2 = tonumber(rows[1]);
        local Points3 = tonumber(rows[1]);
        if PointsEnd <= Points1 or PointsEnd <= Points2 or PointsEnd <= Points3 then
            RundeAktiv = 0;
        end
    end
    mysql_free_result(Lagercheck);
end

function RundenEnde(playerid)
	-- print("function RundenEnde(playerid)", playerid)
	
    for i = 0,GetMaxPlayers() - 1 do
        FreezePlayer(i, 0);
        if Player[playerid].Lager == Player[i].Lager then
            HideDraw(i,Win);
        else
            HideDraw(i,Lose);
        end
    end

    if Mode == "Deathmatch" then
        RundeAktiv = 0;
        local Winpoint = mysql_query(mysql_handler, "UPDATE `user` SET `Wins` = 'Wins' + 1  WHERE `Lager` = '"..Player[playerid].Lager.."'");
    elseif Mode == "KilltheKing" then
		SetTimerEx("Rundeneustarten", 5000,0,playerid)
		SendMessageToAll(255,255,255,"Neue Runde startet in 5 Sekunden.")
    end
end

function CMD_RundeAktivieren(playerid,params)
	print("CMD_RundeAktivieren(playerid, params)", playerid, params)
	
    local result,Status = sscanf(params,"s");
    if result == 1 then
        if Status == "starten" then
            RundeAktiv = 1;
            SendMessageToAll(200,200,50,string.format("%s","Diese Runde wurde von einem Admin Gestartet"));
        elseif Status == "ende" then
            RundeAktiv = 0;
            SendMessageToAll(200,200,50,string.format("%s","Diese Runde wurde von einem Admin Beendet"));
        end
    else
        if RundeAktiv == 0 then
            SendPlayerMessage(playerid,255,255,255,"Runde ist Deaktiviert");
        else
            SendPlayerMessage(playerid,255,255,255,"Runde ist Aktiv");
        end
    SendPlayerMessage(playerid,255,255,255,"/runde starten oder /runde ende");
    end
end

function Rundeneustarten(playerid)
	-- print("function Rundeneustarten(playerid)", playerid)
		
    local ClearInventar = mysql_query(mysql_handler, "TRUNCATE TABLE `inventar`") -- Setzt auch den Autoincremnt Wert der Tabelle zur�ck.
	mysql_free_result(ClearInventar)

    if Mode == "Deathmatch" then

	    local charreset = mysql_query(mysql_handler, "UPDATE `user` SET `stk`= 10 ,`dex`= 10 ,`1h`= 0,`2h`= 0,`Bogen`= 0,`Armbrust`= 0,`Magiekreis`= 0,`HP`= 200,`HPMAX`= 200,`Mana`= 10,`ManaMAX`= 10,`EP`= 0,`Level`= 0,`LP`= 0,`Lager`= 0,`New` = 1,`Kills` = 0,`Deaths` = 0,`Assist` = 0");
		mysql_free_result(charreset)
		
        UpdateDraw(Lagerpoints1,200,4500,"0",font_big,Farbe1x,Farbe1y,Farbe1z);
        UpdateDraw(Lagerpoints2,200,4750,"0",font_big,Farbe2x,Farbe2y,Farbe2z);
        UpdateDraw(Lagerpoints3,200,5000,"0",font_big,Farbe3x,Farbe3y,Farbe3z);

        LagerMulti[1] = 1
        LagerMulti[2] = 1
        LagerMulti[3] = 1

        local i;
	    for i = 0, GetMaxPlayers() - 1 do
            HideDraw(i, killtexts[1].draw);
            HideDraw(i, killtexts[2].draw);
            HideDraw(i, killtexts[3].draw);
            HideDraw(i, killtexts[4].draw);
            HideDraw(i, killtexts[5].draw);
        end
        
        killtextcount = 0;
        
        Resetkilltext()

        LMND[1] = "1";
        LMND[2] = "1";
        LMND[3] = "1";

        UpdateDraw(LagerMultiDraw[1],1000,LMDpos[1],LMND[1],font_big,255,255,255);
        UpdateDraw(LagerMultiDraw[2],1000,LMDpos[2],LMND[2],font_big,255,255,255);
        UpdateDraw(LagerMultiDraw[3],1000,LMDpos[3],LMND[3],font_big,255,255,255);

        UpdateDraw(Playercount1,200,4500,"0",font_big,Farbe1x,Farbe1y,Farbe1z);
        UpdateDraw(Playercount2,200,4750,"0",font_big,Farbe2x,Farbe2y,Farbe2z);
        UpdateDraw(Playercount3,200,5000,"0",font_big,Farbe3x,Farbe3y,Farbe3z);

        PC1 = 0
        PC2 = 0
        PC3 = 0

        local ScorePointende = mysql_query(mysql_handler, "UPDATE `Score` SET `Point` = '"..ScoreEND.."' WHERE `Lager` = 0");
        mysql_free_result(ScorePointende);
        SendMessageToAll(200,200,50,string.format("%s %s",ScoreEND, "Punkte bis zum sieg!"));
        RestartFocus()

    elseif Mode == "KilltheKing" then
	    local charreset = mysql_query(mysql_handler, "UPDATE `user` SET `stk`= 100 ,`dex`= 100 ,`1h`= 100,`2h`= 100,`Bogen`= 100,`Armbrust`= 100,`Magiekreis`= 0,`HP`= 500,`HPMAX`= 500,`Mana`= 10,`ManaMAX`= 10,`EP`= 0,`Level`= 0,`LP`= 0,`Lager`= 0,`New` = 1,`Kills` = 0,`Deaths` = 0");
		mysql_free_result(charreset)
		
        GuildMembers[1] = 4;
        GuildMembers[2] = 4;
        GuildMembers[3] = 4;
        GuildMembers[4] = 4;
        GuildMembers[5] = 4;
        GuildMembers[6] = 4;

        KingAlive[1] = 1;
        KingAlive[2] = 1;
        KingAlive[3] = 1;
        KingAlive[4] = 1;
        KingAlive[5] = 1;
        KingAlive[6] = 1;

        GuildMembersCount[1] = 0;
        GuildMembersCount[2] = 0;
        GuildMembersCount[3] = 0;
        GuildMembersCount[4] = 0;
        GuildMembersCount[5] = 0;
        GuildMembersCount[6] = 0;

        UpdateDraw(KingRot,400,4500,"Raymond",font_big,Farbe1x,Farbe1y,Farbe1z);
		UpdateDraw(KingBlau,400,4750,"Gorax",font_big,Farbe2x,Farbe2y,Farbe2z);
		UpdateDraw(KingGruen,400,5000,"Grand",font_big,Farbe3x,Farbe3y,Farbe3z);
		UpdateDraw(KingGelb,400,5250,"Falkson",font_big,Farbe4x,Farbe4y,Farbe4z);
		UpdateDraw(KingOrange,400,5500,"Gar",font_big,Farbe5x,Farbe5y,Farbe5z);
        UpdateDraw(KingLila,400,5750,"Allan",font_big,Farbe6x,Farbe6y,Farbe6z);
        
        TeamOut[1] = 1;
        TeamOut[2] = 1;
        TeamOut[3] = 1;
        TeamOut[4] = 1;
        TeamOut[5] = 1;
        TeamOut[6] = 1;
    end

    for i = 0, GetMaxWorldItems() - 1 do
        if DoesWorldItemExist(i) then
            DestroyItem(i)
        end
    end
	
	WorldMapCloseAll()
	for i = 0,GetMaxPlayers() - 1 do
        if Player[i].isOnline == 1 then
			--Handelsmenu_Close(i)
			CMD_EinsteigerGuide_Off(i)
			ClearPlayerObject(i)
			Player[i].nick = GetPlayerName(i)
			Player[i].isOnline = 1
			Player[i].LogIn = 1
			Player[i].new = 1
			Killmode(i)
			loadPlayerCharW(i)
			loadPlayerCharskin(i)
			Killstreakbreak(i)
			ShowPlayerkilltextsAfterLogin(i)		
			Loginnachreset(i)
		else
			ClearPlayerObject(i)
		end
    end
    
    RundeAktiv = 1;
end

function CMD_Statistiken(playerid)
    local Lagercheck = mysql_query(mysql_handler, "SELECT `Wins`,`TotalKills`,`TotalDeaths` FROM `user` WHERE  name='" .. Player[playerid].nick .. "'");
    if mysql_num_rows(Lagercheck) == 1 then
		local rows = mysql_fetch_row(Lagercheck)
        local Win = tonumber(rows[1]);
        local Kill = tonumber(rows[2]);
        local Death = tonumber(rows[3]);
        local KD = 0;
        sendOKMessage(playerid, "Du hast " .. Win .. " mal die Runde gewonnen.");
        sendOKMessage(playerid, "Deine Kills sind : " .. Kill .. " und deine Deaths: " .. Death .. ".");
        if Kill ~= 0 and Death ~= 0 then
            KD = Kill / Death;
        end
        sendOKMessage(playerid, "Deine K/D ist : " .. KD .. ".");
    end
    mysql_free_result(Lagercheck);
end

print("Loaded LUA file   " .. debug.getinfo(1).source)