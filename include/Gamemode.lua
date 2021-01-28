function CMD_GameMode(playerid,params)
    local result,mode = sscanf(params,"s");
    if result == 1 then
		WorldMapCloseAll()
        if mode == "dm" or mode == "deathmatch" then
            for i = 0,GetMaxPlayers() - 1 do
                showScoreCounter(i)
                hideKings(i)
            end
            Mode = "Deathmatch"
            SendMessageToAll(255,255,255,"Der Spielmodus wurden von einem Admin zu Deathmatch geaendert.");
        elseif mode == "ktk" or mode == "killtheking" then
            if  Map == "Kolonie" or Map == "Khorinis" then
                for i = 0,GetMaxPlayers() - 1 do
                    hideScoreCounter(i)
                    showKings(i)
                end
            Mode = "KilltheKing";
            SendMessageToAll(255,255,255,"Der Spielmodus wurden von einem Admin zu Kill the King geaendert.");

            else
                SendPlayerMessage(playerid,255,250,200,"Dieser Spielmodus ist derzeit nur in der Kolonie oder in Khorinis moeglich.")
            end
        elseif mode == "ctf" or mode == "capturetheflag" then
            for i = 0,GetMaxPlayers() - 1 do
                showScoreCounter(i)
                hideKings(i)
            end
            Mode = "CTF"
            SendMessageToAll(255,255,255,"Der Spielmodus wurden von einem Admin zu Capture the Flag geaendert.");
        end
        mysql_query(mysql_handler, "UPDATE `Score` SET `Gamemode` = '"..Mode.."' WHERE `Lager` = '0'");
    end  
end

function CMD_MapChange(playerid,params)
    local result,karte = sscanf(params,"s");
    if result == 1 then
		WorldMapCloseAll()
        if karte == "jha" or karte == "jharkendar" then
            for i = 0,GetMaxPlayers() - 1 do
                HideDraw(i,Lager3);
                HideDraw(i,Lagerpoints3);
                SetPlayerWorld(i, "NEWWORLD\\JHARKENDARDM.ZEN","PORTALTEMPEL")
            end
            Map = "Jharkendar"
            UpdateDraw(Lager1,400,4500,"Piraten",font_big,Farbe1x,Farbe1y,Farbe1z);
            UpdateDraw(Lager2,400,4750,"Banditen",font_big,Farbe2x,Farbe2y,Farbe2z);
        elseif karte == "kol" or karte == "kolonie" then
            for i = 0,GetMaxPlayers() - 1 do
                if Mode == "Deathmatch" then
                    ShowDraw(i,Lager3);
                    ShowDraw(i,Lagerpoints3);
                end
                SetPlayerWorld(i, "NEWWORLD\\KOLONIEDM.ZEN","OC1")
            end
            Map = "Kolonie"
            UpdateDraw(Lager1,400,4500,"Altes Lager",font_big,Farbe1x,Farbe1y,Farbe1z);
            UpdateDraw(Lager2,400,4750,"Neues Lager",font_big,Farbe2x,Farbe2y,Farbe2z);
        elseif karte == "kho" or karte == "khorinis" then
            for i = 0,GetMaxPlayers() - 1 do
                HideDraw(i,Lager3);
                HideDraw(i,Lagerpoints3);
                SetPlayerWorld(i, "NEWWORLD\\KHORINISDM.ZEN","FP_STAND_LARES")
            end
            Map = "Khorinis"
            UpdateDraw(Lager1,400,4500,"Feuermagier",font_big,Farbe1x,Farbe1y,Farbe1z);
            UpdateDraw(Lager2,400,4750,"Schwarzmagier",font_big,Farbe2x,Farbe2y,Farbe2z);
        end
        mysql_query(mysql_handler, "UPDATE `Score` SET `Map` = '"..Map.."' WHERE `Lager` = '0'");
    end
end

function CMD_Instakill(playerid,params)
    local result,on_off = sscanf(params,"s");
    if result == 1 then
        if on_off == "On" or on_off == "on" then
            InstaKill = 1
            for i = 0,GetMaxPlayers() - 1 do
                CMD_FixChar(i)
                SendMessageToAll(255,255,255,"Der Instakill wurde von einem Admin eingeschaltet!");
            end
        elseif on_off == "Off" or on_off == "off" then
            InstaKill = 0
            for i = 0,GetMaxPlayers() - 1 do
                CMD_FixChar(i)
                SendMessageToAll(255,255,255,"Der Instakill wurde von einem Admin ausgeschaltet!");
            end
        end
        mysql_query(mysql_handler, "UPDATE `Score` SET `InstaKill` = '"..InstaKill.."' WHERE `Lager` = '0'");
    end
end

print("Loaded LUA file   " .. debug.getinfo(1).source)