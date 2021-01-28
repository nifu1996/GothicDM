--Spint

function ZeitmesserMinus(playerid)
	Player[playerid].Ausdauer = Player[playerid].Ausdauer - 100
	if Player[playerid].Ausdauer <= 0 then
		print(Player[playerid].Ausdauer)
	KillTimer(Player[playerid].SprintOn)
	SetPlayerWalk(playerid,"S_RUN");
	end
end

function ZeitmesserPlus(playerid)
	Player[playerid].Ausdauer = Player[playerid].Ausdauer + 100
	if Player[playerid].Ausdauer > 5000 then
		print(Player[playerid].Ausdauer)
		Player[playerid].Ausdauer = 5000
	end
end

print("Loaded LUA file   " .. debug.getinfo(1).source)