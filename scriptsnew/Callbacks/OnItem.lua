function OnPlayerHasItem(playerid, item_instance, amount, equipped, checkid)
	AI_OnPlayerHasItem(playerid, item_instance, amount, equipped, checkid);
end;

function OnPlayerResponseItem(playerid, slot, item_instance, amount, equipped)
	AI_OnPlayerResponseItem(playerid, slot, item_instance, amount, equipped);
end;

print(debug.getinfo(1).source .. "has been loaded")