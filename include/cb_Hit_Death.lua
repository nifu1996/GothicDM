Trollhit = 0
Demon_Wolfhit = 0
Skeleton_Lordhit = 0
Shadowbeasthit = 0
Erzgolemhit = 0
Demondarkhit = 0


function Lasthit(playerid, killerid)
	for i = 1, 5 do
			
		if Slot[playerid].lasthit[i] == killerid then
			return
		end

		if Slot[playerid].lasthit[i] == nil then
			Slot[playerid].lasthit[i] = killerid;
			return
		end
	end
	
	Slot[playerid].lasthit[1] = Slot[playerid].lasthit[2] 
	Slot[playerid].lasthit[2] = Slot[playerid].lasthit[3] 
	Slot[playerid].lasthit[3] = Slot[playerid].lasthit[4] 
	Slot[playerid].lasthit[4] = Slot[playerid].lasthit[5] 
	Slot[playerid].lasthit[5] = killerid;
end

function LastHitTimer()
	for i = 0,GetMaxSlots() - 1 do	
		for id = 1, 5 do
			Slot[i].lasthit[id] = nil;
		end
	end

	for i = 0,GetMaxPlayers() - 1 do
		Player[i].F1234count = 0;
	end
end

function Lasthitcheck(playerid)

	for i = 1, 5 do
		if Slot[playerid].lasthit[i] ~= nil then
			killerid = Slot[playerid].lasthit[i]
		end
	end

	if killerid ~= nil then
		if IsNPC(killerid) == 0 then
			KillSpielerDeathmatch(playerid, killerid)
		end
	end
end

function AssistNpc(EP,ERZ,playerid,killerid)
	for i = 1, 5 do
		local slotLastHit = Slot[playerid].lasthit[i]
		local player = Player[slotLastHit]

		if slotLastHit ~= killerid and slotLastHit ~= nil then
			local mutli = LagerMulti[player.Lager]
			local epInc = EP * mutli / 10
			local erzInc = EP * mutli / 10
			GiveItem(slotLastHit, "ITMI_NUGGET", erzInc)
			player.ep = player.ep + epInc
			SetPlayerExperience(slotLastHit, player.ep)
			GameTextForPlayer(slotLastHit,3000,4000,"Erfahrung " .. epInc .. " und " .. erzInc .. " ERZ erhalten.","Font_Old_10_White_Hi.TGA",255,255,255,3000)
			GetLVL(slotLastHit)
		end
	end
end

function AssistPlayer(playerid,killerid)
	for i = 1, 5 do
		local slotLastHit = Slot[playerid].lasthit[i]
		local player = Player[slotLastHit]
		
		if slotLastHit ~= killerid and slotLastHit ~= nil then
			local ep = Player[playerid].level * 10
			local erz = Player[playerid].level * 10
			local mutli = LagerMulti[player.Lager]
			local epInc = (ep * mutli) + (ep / 5 * player.Killstreak)
			local erzInc = (erz / 5) * player.Killstreak
			player.ep = player.ep + epInc
			SetPlayerExperience(slotLastHit, player.ep)
			GiveItem(slotLastHit, "ITMI_NUGGET", erz + erzInc)
			GameTextForPlayer(slotLastHit,3000,4000,"Erfahrung " .. epInc .. " und " .. erz + erzInc .. " ERZ erhalten.","Font_Old_10_White_Hi.TGA",255,255,255,3000)
			player.Assistpoints = player.Assistpoints + 1
			mysql_query(mysql_handler, "UPDATE user SET `Assist` = Assist + 1, `TotalAssist` = TotalAssist + 1 WHERE name = '"..player.nick.."'")
			GetLVL(slotLastHit)
		end
	end
end

function OnPlayerHit(playerid, killerid)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerHit(playerid, killerid)")

	AI_OnPlayerHit(playerid, killerid)

	if IsNPC(killerid) == 0 then
		Lasthit(playerid,killerid)
	end

	if IsNPC(killerid) == 0 and IsNPC(playerid) == 0 then
		if killerid == -1 then
		else
			if Mode == "Deathmatch" then	
				if Player[killerid].Lager ~= Player[playerid].Lager then
					if Player[playerid].level < 3 then
						GameTextForPlayer(killerid,3000,4000,"Dieser Spieler ist noch nicht aktiv im PVP!","Font_Old_10_White_Hi.TGA",255,255,255,3000);
					elseif Player[killerid].level < 3 then
						GameTextForPlayer(killerid,3000,4000,"Du bist noch nicht aktiv im PVP!","Font_Old_10_White_Hi.TGA",255,255,255,3000);
					end
				else
					GameTextForPlayer(killerid,3000,4000,"Achtung du greifst jemanden aus deinem Team an!","Font_Old_10_White_Hi.TGA",255,255,255,3000);
				end
			end
		end
	elseif IsNPC(playerid) == 1 then
		local instance = GetPlayerInstance(playerid);
		if instance == "Troll_Black" and Trollhit == 0 then
			SendMessageToAll(238,154,0,string.format("%s %s",Player[killerid].nick, "greift gerade den Schwarzen Troll an!"));
			Trollhit = 5
		end

		if instance == "Demon_Wolf" and Demon_Wolfhit == 0 then
			SendMessageToAll(238,154,0,string.format("%s %s",Player[killerid].nick, "greift gerade den Daemonenwolf an!"));
			Demon_Wolfhit = 5	
		end
			
		if instance == "Skeleton_Lord" and Skeleton_Lordhit == 0 then
			SendMessageToAll(238,154,0,string.format("%s %s",Player[killerid].nick, "greift gerade den Skelettlord an!"));
			Skeleton_Lordhit = 5	
		end
			
		if instance == "ShadowbeastBlond" and Shadowbeasthit == 0 then
			SendMessageToAll(238,154,0,string.format("%s %s",Player[killerid].nick, "greift gerade den Weissen Schattenlaeufer an!"));
			Shadowbeasthit = 5	
		end

		if instance == "ErzGolem" and Erzgolemhit == 0 then
			SendMessageToAll(238,154,0,string.format("%s %s",Player[killerid].nick, "greift gerade den Erzgolem an!"));
			Erzgolemhit = 5	
		end

		if instance == "DemonDark" and Demondarkhit == 0 then
			SendMessageToAll(238,154,0,string.format("%s %s",Player[killerid].nick, "greift gerade den Dunklen Daemon an!"));
		Demondarkhit = 5	
		end
	end
end


function HitTimer()
	if Trollhit ~= 0 then
		Trollhit = Trollhit - 1
	end
	
	if Demon_Wolfhit ~= 0 then
		Demon_Wolfhit = Demon_Wolfhit - 1
	end
	
	if Skeleton_Lordhit ~= 0 then
		Skeleton_Lordhit = Skeleton_Lordhit - 1
	end
	
	if Shadowbeasthit ~= 0 then
		Shadowbeasthit = Shadowbeasthit - 1
	end

	if Erzgolemhit ~= 0 then
		Erzgolemhit = Erzgolemhit - 1
	end

	if Demondarkhit ~= 0 then
		Demondarkhit = Demondarkhit - 1
	end
	SetTimerEx("HitTimer",60000,0,0);
end	



function OnPlayerDeath(playerid, p_classid, killerid, k_classid)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerDeath(playerid, p_classid, killerid, k_classid)")
	
	if IsDead(killerid) ~= 1 then
		FreezePlayer(playerid,1);
		if playerid <= GetMaxPlayers() - 1 then
			Player[playerid].equipped = 1; --Waffe nach Tod bleibt ausgerüstet
		end
		PlayAnimation(playerid,"S_DEADB");
		if Mode == "Deathmatch" or Mode == "CTF" then
			if IsNPC(playerid) == 0 then 
				if Player[playerid].isOnline == 1 then
					--mysql_query(mysql_handler, "UPDATE user SET LogIn='" .. 0 .. "' WHERE name='" .. Player[playerid].nick .. "'");
					--local deathtime = os.date();
					--local deathreason = "Nichts";
					--local deathresurrection = 0;
					--local deathcounter = 0;
					if killerid == -1 then
						--deathreason = "Nichts";
						--Lasthitcheck(playerid)
						HasItem(playerid,"ITRW_ARROW",120);
						HasItem(playerid,"ITRW_BOLT",121);
						RespawnAfterDeath(playerid)
					else
						if IsNPC(killerid) == 1 then
							--deathreason = "Monster";
							--mysql_query(mysql_handler, "UPDATE `user` SET `death_reason` = '"..deathreason.."', `HP` = '2' WHERE `name` = '"..Player[playerid].nick.."'");
							--Lasthitcheck(playerid)
							HasItem(playerid,"ITRW_ARROW",120);
							HasItem(playerid,"ITRW_BOLT",121);
							RespawnAfterDeath(playerid)
						else
							if Player[killerid].isOnline ~= 1 and Player[killerid].Tier ~= 1 then -- Schutz, falls sich jemand ins Spiel gemogelt hat und andere toetet
								Kick(killerid);
								SetPlayerHealth(playerid,100);
								CMD_Logout(playerid);
								return; -- nicht geahndet
							else

							end
						end
					end
				end
			end
		
			if Mode == "Deathmatch" then	
				if IsNPC(killerid) == 0 and IsNPC(playerid) == 0 then
					if Slot[playerid].Deathcountstoper == 0 then
						Slot[playerid].Deathcountstoper = 1;
						KillSpielerDeathmatch(playerid, killerid)
					end
				end	
				
				--EP u ERZ--
				if IsNPC(playerid) == 1 and IsNPC(killerid) == 0 then
					if Slot[playerid].Deathcountstoper == 0 then
						Slot[playerid].Deathcountstoper = 1;
						KillNPCDeathmatch(playerid, killerid)
					end		
				end
			end
			
			GetFocusstone(playerid)

		elseif Mode == "KilltheKing" then
			if IsNPC(playerid) == 0 then
				KillSpieler_KTK(playerid, killerid)
			else
				Kill_NPC_KTK(playerid, killerid)
				CheckTeamDeath(killerid)		
			end
		end
	else
		if IsNPC(playerid) == 0 then
			RespawnAfterDeath(playerid)
		end
		print("Killer tot! BUG!")
	end
end

function KillNPCDeathmatch(playerid, killerid)
	
	-- Hier für die Map die NpcId (heißt playerid) entfernen.
	MapBossListeDelete(playerid)
	MapMonsterListeDelete(playerid)
	
	-- Wenn sich ein Viech selbst getötet hat, nix machen. (Wegen Bossmonster random spawn)
	if (killerid == -1) then
		return
	end
	
	local instance = GetPlayerInstance(playerid)
	if instance == "Troll_Black" then
		if Map == "Kolonie" then
			if Player[killerid].Lager == 1 then
				GiveItem(killerid,"ITAR_ERZB_E",1);
			elseif Player[killerid].Lager == 2 then
				GiveItem(killerid,"ITAR_SLD_E",1);
			elseif Player[killerid].Lager == 3 then
				GiveItem(killerid,"ITAR_PSIC_E",1);
			end
		elseif Map == "Jharkendar" then
			if Player[killerid].Lager == 1 then
				GiveItem(killerid,"ITAR_KAP_E",1);
			elseif Player[killerid].Lager == 2 then
				GiveItem(killerid,"ITAR_RAV_E",1);
			end
		elseif Map == "Khorinis" then
			if Player[killerid].Lager == 1 then
				GiveItem(killerid,"ITAR_PAL_E",1);
			elseif Player[killerid].Lager == 2 then
				GiveItem(killerid,"ITAR_BEl_E",1);
			end
		end
        SendPlayerMessage(killerid,255,215,0, "Du hast den Troll erledigt und eine starke Ruestung an dich genommen!");
        SendMessageToAll(238,154,0, "Der Troll ist durch " ..Player[killerid].nick.. " gefallen und dieser hat die Bossruestung an sich genommen!");
		Trollhit = 0
	elseif instance == "ShadowbeastBlond" then
		if Map == "Kolonie" then
			if Player[killerid].Lager == 1 then
				GiveItem(killerid,"ITAR_KF_E",1);
			elseif Player[killerid].Lager == 2 then
				GiveItem(killerid,"ITAR_KW_E",1);
			elseif Player[killerid].Lager == 3 then
				GiveItem(killerid,"ITAR_SM_E",1);
			end
		elseif Map == "Khorinis" then
			if Player[killerid].Lager == 1 then
				GiveItem(killerid,"ITAR_KF_E",1);
			elseif Player[killerid].Lager == 2 then
				GiveItem(killerid,"ITAR_SM_E",1);
			end
		end
        SendPlayerMessage(killerid,255,215,0, "Du hast den Schattenlaeufer erledigt und eine starke Robe an dich genommen!");
        SendMessageToAll(238,154,0, "Der Schattenlaeufer ist durch " ..Player[killerid].nick.. " gefallen und dieser hat die Bossrobe an sich genommen!");
		Shadowbeasthit = 0
	elseif instance == "Demon_Wolf" then
		GiveItem(killerid,"ITRW_C_MArmbrust",1)
        SendPlayerMessage(killerid,255,215,0, "Du hast den Wolf erledigt und eine magische Armbrust an dich genommen!");
        SendMessageToAll(238,154,0, "Der Wolf ist durch " ..Player[killerid].nick.. " gefallen und dieser hat die Magische Armbrust an sich genommen!");
		Demon_Wolfhit = 0
	elseif instance == "Skeleton_Lord" then
		GiveItem(killerid,"ITRW_B_MBogen",1)
        SendPlayerMessage(killerid,255,215,0, "Du hast den Lord erledigt und einen magischen Bogen an dich genommen!");
        SendMessageToAll(238,154,0, "Der Lord ist durch " ..Player[killerid].nick.. " gefallen und dieser hat den Magischen Bogen an sich genommen!");
		Skeleton_Lordhit = 0
	elseif instance == "ErzGolem" then
		GiveItem(killerid,"ItMw_uriziel",1)
        SendPlayerMessage(killerid,255,215,0, "Du hast den Golem erledigt und Uriziel an dich genommen!");
        SendMessageToAll(238,154,0, "Der Golem ist durch " ..Player[killerid].nick.. " gefallen und dieser hat Uriziel an sich genommen!");
		Erzgolemhit = 0
	elseif instance == "DemonDark" then
		GiveItem(killerid,"ItMw_BeliarWeapon_1H",1)
        SendPlayerMessage(killerid,255,215,0, "Du hast den Daemon erledigt und die Klaue Beliars an dich genommen!");
        SendMessageToAll(238,154,0, "Der Daemon ist durch " ..Player[killerid].nick.. " gefallen und dieser hat die Klaue Beliars an sich genommen!");
		Demondarkhit = 0
	end

	local EP, ERZ = GetMonsterEpErz(instance)
	AssistNpc(EP, ERZ, playerid, killerid)
	local killer = Player[killerid]
	local epInc = EP * LagerMulti[killer.Lager]
	local erzInc = ERZ + (ERZ / 50) * killer.TierKillstreak
	GiveItem(killerid, "ITMI_NUGGET", erzInc)
	killer.ep = killer.ep + epInc
	SetPlayerExperience(killerid, killer.ep)
	GetLVL(killerid)
	GameTextForPlayer(killerid,3000,4000,"Erfahrung " .. epInc .. " und " .. erzInc .. " ERZ erhalten.","Font_Old_10_White_Hi.TGA",255,255,255,3000)
	TierKillstreak(killerid)
end



function KillSpielerDeathmatch(playerid, killerid)
	if killerid == -1 then
	else
		if Player[playerid].level >= 3 and Player[killerid].level >= 3 then
			--if Player[playerid].level - Player[killerid].level <= 2 and Player[playerid].level - Player[killerid].level >= -2 then
				if Player[killerid].Lager ~= Player[playerid].Lager then
					mysql_query(mysql_handler, "UPDATE `Score` SET `Point` = Point + 1 WHERE `Lager` = '" .. Player[killerid].Lager .. "'");
					local Lagercheck = mysql_query(mysql_handler, "SELECT `Point` FROM `Score` WHERE `Lager` = '"..Player[killerid].Lager.."'");
					if mysql_num_rows(Lagercheck) == 1 then
						if RundeAktiv == 1 then
							local rows = mysql_fetch_row(Lagercheck)
							local Points = (rows[1]);
							
							Multiplikatorcheck(killerid,Points)

							if Player[killerid].Lager == 1 then
								UpdateDraw(Lagerpoints1,200,4500,Points,font_big,Farbe1x,Farbe1y,Farbe1z);
							elseif Player[killerid].Lager == 2 then
								UpdateDraw(Lagerpoints2,200,4750,Points,font_big,Farbe2x,Farbe2y,Farbe2z);
							elseif Player[killerid].Lager == 3 then
								UpdateDraw(Lagerpoints3,200,5000,Points,font_big,Farbe3x,Farbe3y,Farbe3z);
							end
							Rundenendecheck(killerid,Points)
						end
					mysql_free_result(Lagercheck);
					end	

					--LVL-und-ERZ--

					AssistPlayer(playerid,killerid)

					local ep = Player[playerid].level * 100
					Player[killerid].ep = Player[killerid].ep + (ep * LagerMulti[Player[killerid].Lager]) + (ep / 5 * Player[killerid].Killstreak)
					SetPlayerExperience(killerid,Player[killerid].ep);
					GetLVL(killerid)

					local erz = Player[playerid].level * 100
					GiveItem(killerid, "ITMI_NUGGET", erz + (erz / 5) * Player[killerid].Killstreak)

					GameTextForPlayer(killerid,3000,4000,"Erfahrung " .. (ep * LagerMulti[Player[killerid].Lager]) + (ep / 5) * Player[killerid].Killstreak .. " und " .. erz + (erz / 5) * Player[killerid].Killstreak .. " ERZ erhalten.","Font_Old_10_White_Hi.TGA",255,255,255,3000);

					Killbreaker(playerid,killerid)
					Killstreak(killerid)
					
					--SendMessageToAll(255,255,255,"" .. Player[killerid].nick .." hat " .. Player[playerid].nick .. " getoetet.");
					deathreason = Player[killerid].nick
					--mysql_query(mysql_handler, "UPDATE `user` SET `death_reason` = '"..deathreason.."', `HP` = '2' WHERE `name` = '"..Player[playerid].nick.."'");
					mysql_query(mysql_handler, "UPDATE user SET `Kills` = Kills + 1, `TotalKills` = TotalKills + 1 WHERE name = '"..Player[killerid].nick.."'");
					local Killcheck = mysql_query(mysql_handler, "SELECT `Kills` FROM `user` WHERE `name` = '"..Player[killerid].nick.."'");
					if mysql_num_rows(Killcheck) == 1 then
						local rows = mysql_fetch_row(Killcheck)
						local Kills = (rows[1]);
						Player[playerid].Killspoints = Kills
						UpdateDraw(Player[killerid].Kills,200,5750,Kills,font_big,255,255,255);
					end
					mysql_free_result(Killcheck);
					
					mysql_query(mysql_handler, "UPDATE user SET `Deaths` = Deaths + 1, `TotalDeaths` = TotalDeaths + 1 WHERE name = '"..Player[playerid].nick.."'");	
					local Deathcheck = mysql_query(mysql_handler, "SELECT `Deaths` FROM `user` WHERE `name` = '"..Player[playerid].nick.."'");
					if mysql_num_rows(Deathcheck) == 1 then
						local rowss = mysql_fetch_row(Deathcheck)
						local Deaths = (rowss[1]);
						Player[playerid].Deathpoints = Deaths 
						UpdateDraw(Player[playerid].Deaths,200,6000,Deaths,font_big,255,255,255);
					end
					mysql_free_result(Deathcheck);

					RespawnAfterDeath(playerid)
				else
					RespawnAfterDeath(playerid)
				end
				OnPlayerKillMessage(playerid, killerid);
			--else
			--	print("Von Spieler Getoetet aber durch lvl nicht gerechtfertigt.")
			--	Fail(killerid)
			--	RespawnAfterDeath(playerid)
			--end
		else
			print("Von Spieler Getoetet aber durch lvl nicht gerechtfertigt.")
			RespawnAfterDeath(playerid)
		end
	end
end

function Kill_NPC_KTK(playerid, killerid)
	NameNPC = GetPlayerName(playerid);
	if NameNPC == "Raymond" then
		UpdateDraw(KingRot,400,4500,"Raymond",font_big,125,125,125);
		KingAlive[1] = 0;
		if GuildMembersCount[1] == 0 then
			SendMessageToAll(200,200,50,string.format("%s %s %s","Team",Team[1],"ist Ausgeschieden!"));
			TeamOut[1] = 0
		end
		SendMessageToAll(200,200,50,string.format("%s %s",GetPlayerName(killerid), "hat Raymond getoetet! Das Rote Team hat den Koenig verloren!"));
	elseif NameNPC == "Gorax" then
		UpdateDraw(KingBlau,400,4750,"Gorax",font_big,125,125,125);
		KingAlive[2] = 0;
		if GuildMembersCount[2] == 0 then
			SendMessageToAll(200,200,50,string.format("%s %s %s","Team",Team[2],"ist Ausgeschieden!"));
			TeamOut[2] = 0
		end
		SendMessageToAll(200,200,50,string.format("%s %s",GetPlayerName(killerid), "hat Gorax getoetet! Das Blaue Team hat den Koenig verloren!"));
	elseif NameNPC == "Grand" then
		UpdateDraw(KingGruen,400,5000,"Grand",font_big,125,125,125);
		KingAlive[3] = 0;
		if GuildMembersCount[3] == 0 then
			SendMessageToAll(200,200,50,string.format("%s %s %s","Team",Team[3],"ist Ausgeschieden!"));
			TeamOut[3] = 0
		end
		SendMessageToAll(200,200,50,string.format("%s %s",GetPlayerName(killerid), "hat Grand getoetet! Das Gruene Team hat den Koenig verloren!"));
	elseif NameNPC == "Falkson" then
		UpdateDraw(KingGelb,400,5250,"Falkson",font_big,125,125,125);
		KingAlive[4] = 0;
		if GuildMembersCount[4] == 0 then
			SendMessageToAll(200,200,50,string.format("%s %s %s","Team",Team[4],"ist Ausgeschieden!"));
			TeamOut[4] = 0
		end
		SendMessageToAll(200,200,50,string.format("%s %s",GetPlayerName(killerid), "hat Falkson getoetet! Das Gelbe Team hat den Koenig verloren!"));
	elseif NameNPC == "Gar" then
		UpdateDraw(KingOrange,400,5500,"Gar",font_big,125,125,125);
		KingAlive[5] = 0;
		if GuildMembersCount[5] == 0 then
			SendMessageToAll(200,200,50,string.format("%s %s %s","Team",Team[5],"ist Ausgeschieden!"));
			TeamOut[5] = 0
		end
		SendMessageToAll(200,200,50,string.format("%s %s",GetPlayerName(killerid), "hat Gar getoetet! Das Orange Team hat den Koenig verloren!"));
	elseif NameNPC == "Allan" then
		UpdateDraw(KingLila,400,5750,"Allan",font_big,125,125,125);
		KingAlive[6] = 0;
		if GuildMembersCount[6] == 0 then
			SendMessageToAll(200,200,50,string.format("%s %s %s","Team",Team[6],"ist Ausgeschieden!"));
			TeamOut[6] = 0
		end
		SendMessageToAll(200,200,50,string.format("%s %s",GetPlayerName(killerid), "hat Allan getoetet! Das Lila Team hat den Koenig verloren!"));
	end	
	
	-- Hier für die Map die NpcId (heißt playerid) entfernen.
	MapLagerNpcListeDelete(playerid)

end

function KillSpieler_KTK(playerid, killerid)
	GiveItem(killerid, "ItPo_Health_03",1);
	--print("killerid",killerid);

	if killerid <= GetMaxPlayers() - 1 and killerid ~= nil and killerid ~= -1 then
		OnPlayerKillMessage(playerid, killerid);
	end

	if KingAlive[Player[playerid].Lager] == 1 then
		RespawnAfterDeath(playerid)
	else
		SendPlayerMessage(playerid,255,250,200,string.format("%s","(Server): Dein Koenig ist Tot fuer dich ist das Spiel vorbei!"));
		GuildMembersCount[Player[playerid].Lager] = GuildMembersCount[Player[playerid].Lager] - 1
		CheckTeamDeath(playerid)
		local new = mysql_query(mysql_handler, "UPDATE `user` SET `New` = 1 WHERE name='" .. GetPlayerName(playerid) .. "'");
	end
end

function OnPlayerUnconscious(playerid, p_classid, killerid, k_classid)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerUnconscious(playerid, p_classid, killerid, k_classid)")

	if IsNPC(playerid) == 1 then
	else
		Player[playerid].bewusstlos = true;
	end;
end;

function OnPlayerStandUp(playerid)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerStandUp(playerid)")

	if IsNPC(playerid) == 1 then
	else
		Player[playerid].bewusstlos = false;
	end;
end;

print("Loaded LUA file   " .. debug.getinfo(1).source)