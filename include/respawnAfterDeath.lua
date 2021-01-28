function RespawnAfterDeath(playerid)
	SetTimerEx("RespawnAfterDeathTimer",10000,0,playerid);
end

function RespawnAfterDeathTimer(playerid)
	-- print("function RespawnAfterDeathTimer(playerid)", playerid)

	-- Player EP speichern, dass Hp und Mana gespeichert werden
	saveHpEpMana(playerid)
	
	if Mode == "Deathmatch" then	
		if Map == "Kolonie" then	
			if Player[playerid].Lager == 1 then
				SetPlayerPos(playerid, 356.483643,164.981049,-1.8743031);
				SetPlayerAngle(playerid,0); 
			elseif Player[playerid].Lager == 2 then
				SetPlayerPos(playerid, -46058.4375,1674.20544,12678.0117);
				SetPlayerAngle(playerid,19);
			elseif Player[playerid].Lager == 3 then
				SetPlayerPos(playerid, 48845,-3975.71802,-4296.05176);
				SetPlayerAngle(playerid,341);
			end
		elseif Map == "Jharkendar" then
			if Player[playerid].Lager == 1 then
				SetPlayerPos(playerid, -36545.04296875,-1854.3863525391,19328.29296875);
				SetPlayerAngle(playerid,90); 
			elseif Player[playerid].Lager == 2 then
				SetPlayerPos(playerid, 30396.310546875,-4462.8901367188,9752.169921875);
				SetPlayerAngle(playerid,264);
			end
		elseif Map == "Khorinis" then
			if Player[playerid].Lager == 1 then
				SetPlayerPos(playerid, 50678.14,5087.99,20796.94);
				SetPlayerAngle(playerid,90); 
			elseif Player[playerid].Lager == 2 then
				SetPlayerPos(playerid, 29888.68,5247.75,-16465.73);
				SetPlayerAngle(playerid,264);
			end
		end
	elseif Mode == "KilltheKing" then
		if Player[playerid].Lager == 1 then
			local x,y,z = GetPlayerPos(1199);
			SetPlayerPos(playerid,x + 50,y,z);
		elseif Player[playerid].Lager == 2 then
			local x,y,z = GetPlayerPos(1198);
			SetPlayerPos(playerid,x + 50,y,z)
		elseif Player[playerid].Lager == 3 then
			local x,y,z = GetPlayerPos(1197);
			SetPlayerPos(playerid,x + 50,y,z)
		elseif Player[playerid].Lager == 4 then
			local x,y,z = GetPlayerPos(1196);
			SetPlayerPos(playerid,x + 50,y,z)
		elseif Player[playerid].Lager == 5 then
			local x,y,z = GetPlayerPos(1195);
			SetPlayerPos(playerid,x + 50,y,z)
		elseif Player[playerid].Lager == 6 then
			local x,y,z = GetPlayerPos(1194);
			SetPlayerPos(playerid,x + 50,y,z)
		end
	end
	Killmode(playerid)
	loadPlayerCharW(playerid);
	loadItems(playerid);
	CompleteHeal(playerid);
	if Player[playerid].dontbreakkillstreak == 0 then
		Killstreakbreak(playerid);
	end
	Player[playerid].dontbreakkillstreak = 0;
	FreezePlayer(playerid,0);
end

function Ruestungscheck(playerid, item_instance, equipped)
	-- print("function Ruestungscheck(playerid, item_instance, equipped)", playerid, item_instance, equipped)

	if Map == "Kolonie" then
		if item_instance == "ITAR_ERZB_E" or item_instance == "ITAR_SLD_E" or item_instance == "ITAR_PSIC_E" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_ERZB_E" then
				GiveItem(playerid,"ITAR_ERZB_E",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_SLD_E" then
				GiveItem(playerid,"ITAR_SLD_E",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 3 and item_instance ~= "ITAR_PSIC_E" then
				GiveItem(playerid,"ITAR_PSIC_E",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_GAR_S" or item_instance == "ITAR_SOEL_S" or item_instance == "ITAR_TPL_S" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_GAR_S" then
				GiveItem(playerid,"ITAR_GAR_S",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_SOEL_S" then
				GiveItem(playerid,"ITAR_SOEL_S",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 3 and item_instance ~= "ITAR_TPL_S" then
				GiveItem(playerid,"ITAR_TPL_S",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_GAR_M" or item_instance == "ITAR_SOEL_M" or item_instance == "ITAR_TPL_M" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_GAR_M" then
				GiveItem(playerid,"ITAR_GAR_M",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_SOEL_M" then
				GiveItem(playerid,"ITAR_SOEL_M",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 3 and item_instance ~= "ITAR_TPL_M" then
				GiveItem(playerid,"ITAR_TPL_M",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_GAR_L" or item_instance == "ITAR_BND_S" or item_instance == "ITAR_TPL_L" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_GAR_L" then
				GiveItem(playerid,"ITAR_GAR_L",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_BND_S" then
				GiveItem(playerid,"ITAR_BND_S",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 3 and item_instance ~= "ITAR_TPL_L" then
				GiveItem(playerid,"ITAR_TPL_L",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_STT_M" or item_instance == "ITAR_BND_M" or item_instance == "ITAR_PSIN_S" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_STT_M" then
				GiveItem(playerid,"ITAR_STT_M",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_BND_M" then
				GiveItem(playerid,"ITAR_BND_M",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 3 and item_instance ~= "ITAR_PSIN_S" then
				GiveItem(playerid,"ITAR_PSIN_S",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_STT_L" or item_instance == "ITAR_BND_L" or item_instance == "ITAR_PSIN_M" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_STT_L" then
				GiveItem(playerid,"ITAR_STT_L",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_BND_L" then
				GiveItem(playerid,"ITAR_BND_L",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 3 and item_instance ~= "ITAR_PSIN_M" then
				GiveItem(playerid,"ITAR_PSIN_M",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_BDH_L" or item_instance == "ITAR_SRF_L" or item_instance == "ITAR_PSIN_L" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_BDH_L" then
				GiveItem(playerid,"ITAR_BDH_L",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_SRF_L" then
				GiveItem(playerid,"ITAR_SRF_L",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 3 and item_instance ~= "ITAR_PSIN_L" then
				GiveItem(playerid,"ITAR_PSIN_L",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_KF_L" or item_instance == "ITAR_KW_L" or item_instance == "ITAR_GURU_L" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_KF_L" then
				GiveItem(playerid,"ITAR_KF_L",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_KW_L" then
				GiveItem(playerid,"ITAR_KW_L",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 3 and item_instance ~= "ITAR_GURU_L" then
				GiveItem(playerid,"ITAR_GURU_L",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_KF_M" or item_instance == "ITAR_KW_M" or item_instance == "ITAR_GURU_M" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_KF_M" then
				GiveItem(playerid,"ITAR_KF_M",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_KW_M" then
				GiveItem(playerid,"ITAR_KW_M",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 3 and item_instance ~= "ITAR_GURU_M" then
				GiveItem(playerid,"ITAR_GURU_M",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_KF_E" or item_instance == "ITAR_KW_E" or item_instance == "ITAR_SM_E" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_KF_E" then
				GiveItem(playerid,"ITAR_KF_E",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_KW_E" then
				GiveItem(playerid,"ITAR_KW_E",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 3 and item_instance ~= "ITAR_SM_E" then
				GiveItem(playerid,"ITAR_SM_E",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		end
	elseif Map == "Jharkendar" then
		if item_instance == "ITAR_KAP_E" or item_instance == "ITAR_RAV_E" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_KAP_E" then
				GiveItem(playerid,"ITAR_KAP_E",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_RAV_E" then
				GiveItem(playerid,"ITAR_RAV_E",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_KAP_S" or item_instance == "ITAR_GARJK_S" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_KAP_S" then
				GiveItem(playerid,"ITAR_KAP_S",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_GARJK_S" then
				GiveItem(playerid,"ITAR_GARJK_S",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_KAP_M" or item_instance == "ITAR_GARJK_M" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_KAP_M" then
				GiveItem(playerid,"ITAR_KAP_M",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_GARJK_M" then
				GiveItem(playerid,"ITAR_GARJK_M",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_PIR_S" or item_instance == "ITAR_BND_S" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_PIR_S" then
				GiveItem(playerid,"ITAR_PIR_S",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_BND_S" then
				GiveItem(playerid,"ITAR_BND_S",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_PIR_M" or item_instance == "ITAR_BND_M" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_PIR_M" then
				GiveItem(playerid,"ITAR_PIR_M",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_BND_M" then
				GiveItem(playerid,"ITAR_BND_M",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_PIR_L" or item_instance == "ITAR_BND_L" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_PIR_L" then
				GiveItem(playerid,"ITAR_PIR_L",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_BND_L" then
				GiveItem(playerid,"ITAR_BND_L",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_MAT_L" or item_instance == "ITAR_BDH_L" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_MAT_L" then
				GiveItem(playerid,"ITAR_MAT_L",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_BDH_L" then
				GiveItem(playerid,"ITAR_BDH_L",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		end
	elseif Map == "Khorinis" then
		if item_instance == "ITAR_PAL_E" or item_instance == "ITAR_BEL_E" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_PAL_E" then
				GiveItem(playerid,"ITAR_PAL_E",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_BEL_E" then
				GiveItem(playerid,"ITAR_BEL_E",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_PAL_H" or item_instance == "ITAR_DBAR_E" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_PAL_H" then
				GiveItem(playerid,"ITAR_PAL_H",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_DBAR_E" then
				GiveItem(playerid,"ITAR_DBAR_E",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_PAL_M" or item_instance == "ITAR_BEL_S" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_PAL_M" then
				GiveItem(playerid,"ITAR_PAL_M",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_BEL_S" then
				GiveItem(playerid,"ITAR_BEL_S",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_BAR_M" or item_instance == "ITAR_BEL_M" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_BAR_M" then
				GiveItem(playerid,"ITAR_BAR_M",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_BEL_M" then
				GiveItem(playerid,"ITAR_BEL_M",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_MIL_M" or item_instance == "ITAR_BEL_L" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_MIL_M" then
				GiveItem(playerid,"ITAR_MIL_M",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_BEL_L" then
				GiveItem(playerid,"ITAR_BEL_L",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_MIL_L" or item_instance == "ITAR_DANW_L" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_MIL_L" then
				GiveItem(playerid,"ITAR_MIL_L",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_DANW_L" then
				GiveItem(playerid,"ITAR_DANW_L",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		elseif item_instance == "ITAR_BAU_L" or item_instance == "ITAR_DNOV_L" then
			if Player[playerid].Lager == 1 and item_instance ~= "ITAR_BAU_L" then
				GiveItem(playerid,"ITAR_BAU_L",1)
				DB_RemoveItem(playerid, item_instance, 1)
			elseif Player[playerid].Lager == 2 and item_instance ~= "ITAR_DNOV_L" then
				GiveItem(playerid,"ITAR_DNOV_L",1)
				DB_RemoveItem(playerid, item_instance, 1)
			end
		end
	end
end

print("Loaded LUA file   " .. debug.getinfo(1).source)