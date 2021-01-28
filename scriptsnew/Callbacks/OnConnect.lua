function OnPlayerConnect(playerid)
	AI_OnPlayerConnect(playerid);
	if IsNPC(playerid) == 0 then
		ShowClock(playerid);
		SpawnPlayer( playerid,0,0,0,0)
		Superman(playerid)
	end;
end;

function OnPlayerDisconnect(playerid, reason)
	AI_OnPlayerDisconnect(playerid);
end;

function OnPlayerSpawn(playerid, classid)

end;

print(debug.getinfo(1).source .. "has been loaded")