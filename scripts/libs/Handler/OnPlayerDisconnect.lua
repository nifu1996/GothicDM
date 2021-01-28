function AI_OnPlayerDisconnect(playerid)
	if(IsNPC(playerid) == 0)then
		AI_PlayerList[playerid] = nil;

		for npckey,npcval in pairs(AI_NPCList) do
			for diakey,diaval in pairs(npcval.Dialogs) do
				diaval["listener"][playerid] = nil;
			end
			npcval["TARGETS"][playerid] = nil;
			npcval["DIA_TARGETLIST"][playerid] = nil;

			for enemykey,enemyval in ipairs(npcval["ENEMY"]) do
				if(enemyval == playerid)then
					table.remove(npcval["ENEMY"], enemykey);

					-- Kill player if he tries to logout while in fight.
					if GetDistancePlayers(playerid, npcval.ID) < 800 and GetPlayerHealth(playerid) > 0 and IsGUARDIAN(npcval.ID) == false then
						-- TODO: use Player[playerid].nick!!!
						--[[local check = mysql_query(mysql_handler, "SELECT `Admin` FROM `user` WHERE `name` = '"..mysql_escape_string(mysql_handler, GetPlayerName(playerid)).."'")
												
						if mysql_num_rows(check) == 1 then
							local row = mysql_fetch_row(check)
							if row.Admin == 0 then
								-- Killer player in DB and set HP to 0
								local updateDB = mysql_query(mysql_handler, "UPDATE `user` SET `HP` = 0, `death_time` = NOW(),  `death_counter` = death_counter + 1, `death_reason` = 'Monster', `death_resurrection` = DATE_ADD(`death_time`, INTERVAL death_counter * 30 MINUTE) WHERE `name` = '"..mysql_escape_string(mysql_handler, GetPlayerName(playerid)).."'")
								if updateDB ~= nil then
									mysql_free_result(updateDB)
								else
									print("Couldn't kill id: "..playerid)
								end
							end
						end
						mysql_free_result(check)]]
					end
				end
			end
		end
	end
	AI_FullPList[playerid] = nil;
	SetPlayerOrNPC(playerid, nil);
	AI_NPCList[playerid] = nil;
end