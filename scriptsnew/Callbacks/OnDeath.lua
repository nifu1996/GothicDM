function OnPlayerDeath(playerid, p_classid, killerid, k_classid)
	--[[if IsNPC(playerid) == 1 then
        for _, v in ipairs(playerSpawnedNPC) do
			if v == playerid then
				SetTimerEx("DestroyNPC",900000,0,v);
				table.remove(playerSpawnedNPC,v);
			end;
        end
	end;]]
end;

function OnPlayerChangeAdditionalVisual(playerid, currBodyModel, currBodyTexture, currHeadModel, currHeadTexture, oldBodyModel, oldBodyTexture, oldHeadModel, oldHeadTexture) --Workarround zu Jays Totesscript
	--[[if IsNPC(playerid) == 0 then
		local deathreason = "Nichts";
		local deathcheck = mysql_query(mysql_handler, "SELECT `death_reason` FROM `user` WHERE `name` = '"..GetPlayerName(playerid).."' AND (`death_resurrection` > NOW() OR (`death_reason` != 'Nichts' AND `death_reason` != 'Monster' AND `death_reason` != 'Suizid'))");
		if deathcheck then
			if mysql_num_rows(deathcheck) ~= 0 then --Spieler ist Tod
				local death = mysql_fetch_assoc(deathcheck);
				deathreason = death.death_reason;
			end
			mysql_free_result(deathcheck);
		end;
		if deathreason ~= "Nichts" then
			AI_PlayerList[playerid].Invisible = true;
			SetPlayerAcrobatic(playerid,1);
		end

		AI_PlayerList[playerid].Guild = AI_GUILD_GuildLess;

		local result = mysql_query(mysql_handler, "SELECT gilde FROM Gilden_user WHERE name ='" .. GetPlayerName(playerid) .. "'");
		if result then
			if mysql_num_rows(result) == 1 then
				AI_PlayerList[playerid].Guild = AI_GUILD_GuildLess;
			else
				AI_PlayerList[playerid].Guild = AI_GUILD_GuildLess;
			end;
			mysql_free_result(result);
		end;
		
	end;]]
end;

function OnPlayerChangeAcrobatic(playerid, currAcrobatic, oldAcrobatic) --Workarround zu Jays Totesscript
	--[[
	if IsNPC(playerid) == 0 then
		if currAcrobatic == 0 then
			local deathreason = "Nichts";
			local deathcheck = mysql_query(mysql_handler, "SELECT `death_reason` FROM `user` WHERE `name` = '"..GetPlayerName(playerid).."'");
			if deathcheck and mysql_num_rows(deathcheck) ~= 0 then --Spieler ist Tod
				local death = mysql_fetch_assoc(deathcheck);
				deathreason = death.death_reason;
			end
			mysql_free_result(deathcheck);
			if deathreason == "Nichts" then
				AI_PlayerList[playerid].Invisible = false;
			end;
		end;
	end;
	]]
end;

function OnPlayerHit(playerid, killerid)
	AI_OnPlayerHit(playerid, killerid);
end;

print(debug.getinfo(1).source .. "has been loaded")