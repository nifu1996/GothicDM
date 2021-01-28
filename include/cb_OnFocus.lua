function OnPlayerFocus(playerid, focusid)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerFocus(playerid, focusid)")

    if Mode == "Deathmatch" then    
        if focusid >= 0 then
            if IsNPC(focusid) == 0 then
                if Player[playerid].Lager == Player[focusid].Lager then
                    HideDraw(playerid,Focuswarn);
                    --HideDraw(playerid,Focuswarn2);
                else
                    if Player[focusid].level < 3 then
                        ShowDraw(playerid,Focuswarn);
                    else
                        HideDraw(playerid,Focuswarn);
                    ---    if Player[playerid].level - Player[focusid].level <= 2 and Player[playerid].level - Player[focusid].level >= -2 then
                    --        HideDraw(playerid,Focuswarn2);
                    --    else
                    --        ShowDraw(playerid,Focuswarn2);
                    --    end
                    end
                end
            else
                HideDraw(playerid,Focuswarn);
                --HideDraw(playerid,Focuswarn2);
            end
        else 
            HideDraw(playerid,Focuswarn);
            --HideDraw(playerid,Focuswarn2);
        end
    end
end

print("Loaded LUA file   " .. debug.getinfo(1).source)