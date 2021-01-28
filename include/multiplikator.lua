function Multiplikatorcheck(killerid,Points)
	-- print("function Multiplikatorcheck(killerid,Points)", playerid, Points)

    if Points == "25" or Points == "50" or Points == "75" then
        for i = 1,3 do
            if i ~= Player[killerid].Lager then
                LagerMulti[i] = LagerMulti[i] + 1
                LMND[i] = "" .. LagerMulti[i] .. ""
                UpdateDraw(LagerMultiDraw[i],1000,LMDpos[i],LMND[i],font_big,255,255,255);
            end
        end
    end
end

function Killstreak(killerid)
	-- print("function Killstreak(killerid)", killerid)

    Player[killerid].Killstreak = Player[killerid].Killstreak + 1
    Player[killerid].Killstreakcount = "" .. Player[killerid].Killstreak .. "";
    UpdateDraw(Player[killerid].KillstreakDraw,200,5750,Player[killerid].Killstreakcount,font_big,255,255,255);
    if Player[killerid].Killstreak == 5 or Player[killerid].Killstreak == 10 or Player[killerid].Killstreak == 15 or Player[killerid].Killstreak == 20 then
        SendMessageToAll(255,255,255,"" .. Player[killerid].nick .." hat eine Killstreak von " .. Player[killerid].Killstreak .. "!");
    end
end

function TierKillstreak(killerid)
	-- print("function TierKillstreak(killerid)", killerid)

    Player[killerid].TierKillstreak = Player[killerid].TierKillstreak + 1
    Player[killerid].TierKillstreakcount = "" .. Player[killerid].TierKillstreak .. "";
    UpdateDraw(Player[killerid].TierKillstreakDraw,200,6000,Player[killerid].TierKillstreakcount,font_big,255,255,255);
    if Player[killerid].TierKillstreak == 100 then
        SendMessageToAll(255,255,255,"" .. Player[killerid].nick .." hat eine Tierkillstreak von " .. Player[killerid].TierKillstreak .. "!");
    end
    if Player[killerid].TierKillstreak == 200 then
        SendMessageToAll(255,255,255,"" .. Player[killerid].nick .." hat eine Tierkillstreak von " .. Player[killerid].TierKillstreak .. "!");
    end
    if Player[killerid].TierKillstreak == 250 then
        SendMessageToAll(255,255,255,"" .. Player[killerid].nick .." hat eine Tierkillstreak von " .. Player[killerid].TierKillstreak .. "!");
    end
end

function Killstreakbreak(playerid)
	-- print("function Killstreakbreak(playerid)", playerid)

    Player[playerid].TierKillstreak = 0;
    Player[playerid].Killstreak = 0;

    Player[playerid].TierKillstreakcount = "" .. Player[playerid].TierKillstreak .. "";
    UpdateDraw(Player[playerid].TierKillstreakDraw,200,6000,Player[playerid].TierKillstreakcount,font_big,255,255,255);

    Player[playerid].Killstreakcount = "" .. Player[playerid].Killstreak .. "";
    UpdateDraw(Player[playerid].KillstreakDraw,200,5750,Player[playerid].Killstreakcount,font_big,255,255,255);
end

function Killbreaker(playerid,killerid)
	-- print("function Killbreaker(playerid, killerid)", playerid, killerid)

    if Player[playerid].Killstreak > 2 then
        Player[killerid].ep = Player[killerid].ep + Player[playerid].Killstreak * 100
		SetPlayerExperience(killerid,Player[killerid].ep);
		GiveItem(killerid, "ITMI_NUGGET", 500);
        SendMessageToAll(255,255,255,"" .. Player[killerid].nick .." hat die Killstreak von " .. Player[playerid].nick .. " unterbrochen und 500 Erz, sowie " .. Player[playerid].Killstreak * 200 .. " Exp erhalten!. ");
		GetLVL(killerid)
    end
end

function showMultiList(playerid)
	-- print("function showMultiList(playerid)", playerid)

	ShowDraw(playerid,LagerMultiDrawAL);
	ShowDraw(playerid,LagerMultiDrawNL);
    ShowDraw(playerid,LagerMultiDrawSL);
    ShowDraw(playerid,LagerMultiDraw[1]);
	ShowDraw(playerid,LagerMultiDraw[2]);
    ShowDraw(playerid,LagerMultiDraw[3]);
    ShowDraw(playerid,KillstreakDraw);
    ShowDraw(playerid,TierkillstreakDraw);
    ShowDraw(playerid,Player[playerid].TierKillstreakDraw);
    ShowDraw(playerid,Player[playerid].KillstreakDraw);
end

function hideMultiList(playerid)
	-- print("function hideMultiList(playerid)", playerid)

	HideDraw(playerid,LagerMultiDrawAL);
	HideDraw(playerid,LagerMultiDrawNL);
    HideDraw(playerid,LagerMultiDrawSL);
    HideDraw(playerid,LagerMultiDraw[1]);
	HideDraw(playerid,LagerMultiDraw[2]);
    HideDraw(playerid,LagerMultiDraw[3]);
    HideDraw(playerid,KillstreakDraw);
    HideDraw(playerid,TierkillstreakDraw);
    HideDraw(playerid,Player[playerid].TierKillstreakDraw);
    HideDraw(playerid,Player[playerid].KillstreakDraw);
end

print("Loaded LUA file   " .. debug.getinfo(1).source)