function OnPlayerHasItem(playerid, item_instance, amount, equipped,checkid)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerHasItem(playerid, item_instance, amount, equipped,checkid)")
	-- print("function OnPlayerHasItem(playerid, item_instance, amount, equipped, checkid)", playerid, item_instance, amount, equipped, checkid)

	AI_OnPlayerHasItem(playerid, item_instance, amount, equipped, checkid)

	if checkid == 1 then 
		-- print("function OnPlayerHasItem checkid == 1")
		if amount >= Player[playerid].kosten then
			DB_RemoveItem(playerid,"ITMI_NUGGET",Player[playerid].kosten);
			GiveItem(playerid, Player[playerid].Item, Player[playerid].Anzahl)
			local result = mysql_query(mysql_handler, "SELECT item FROM itemlist WHERE iteminstance ='" .. Player[playerid].Item .. "'");
			if mysql_num_rows(result) == 1 then
				local row = mysql_fetch_row(result)
				local Item = (row[1]);
				sendOKMessage(playerid, "Du hast " .. Item .. " " .. Player[playerid].Anzahl .. "x mal gekauft");
			end
			mysql_free_result (result);
		else
			sendERRMessage(playerid, "Du hast zu wenig Gold!");
		end
	elseif checkid == 77 then
		Ruestungscheck(playerid, item_instance, equipped)
	elseif checkid == 120 then -- Pfeil
		-- print("function OnPlayerHasItem Pfeilecheck amount =", amount)
		if amount == 0 then
			mysql_query(mysql_handler, "DELETE FROM `inventar` WHERE `item` = 'ITRW_ARROW' and `name` = '"..Player[playerid].nick.."'");
		else
			local updateDB = mysql_query(mysql_handler, "UPDATE `inventar` SET `anzahl` = '"..amount.."' WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..item_instance.."'");
			mysql_free_result(updateDB);
			--print("precheck",item_instance, amount);
		end
	elseif checkid == 121 then -- Bolzen
		-- print("function OnPlayerHasItem Bolzencheck amount =", amount)
		if amount == 0 then
			mysql_query(mysql_handler, "DELETE FROM `inventar` WHERE `item` = 'ITRW_BOLT' and `name` = '"..Player[playerid].nick.."'");
		else
			local updateDB = mysql_query(mysql_handler, "UPDATE `inventar` SET `anzahl` = '"..amount.."' WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..item_instance.."'");
			mysql_free_result(updateDB);
		end
	end
end

function OnPlayerUseItem(playerid, itemInstance, amount)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerUseItem(playerid, itemInstance, amount)")
	-- print("function OnPlayerUseItem(playerid, itemInstance, amount)", playerid, itemInstance, amount)

	if (	itemInstance ~= "ITMW_2H_AXE_L_01" 			and itemInstance ~= "ITMI_SCOOP"  		and itemInstance ~= "ITMI_STOMPER"
			and itemInstance ~= "ITMI_Pfanne" 			and itemInstance ~= "ITMI_FLASK" 		and string.find(itemInstance, "ITWR_") == nil
			and itemInstance ~= "ITMI_SAW"
		)	then -- PREVENT MOBSI-ITEMS FROM BEEING DELETED FROM DB!
		if (mysql_check_connection() == true) then
			local item_helper = mysql_query(mysql_handler, "SELECT `idinventar` FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..itemInstance.."' AND `anzahl` >= '"..amount.."'");
			if item_helper then
			    local item_count = mysql_query(mysql_handler, "SELECT `anzahl`,`idinventar` FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..itemInstance.."'");
				if item_count then
					if(mysql_num_rows(item_count) ~= 0) then
						mysql_query(mysql_handler, "UPDATE `inventar` SET `anzahl` = `anzahl` - '"..amount.."' WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..itemInstance.."'");
						ServerLog("ITEMS","Spieler "..Player[playerid].nick.." verbrauchte: ("..itemInstance.." "..amount.."x).");
						local drop = mysql_fetch_assoc(item_count);
						drop.anzahl = drop.anzahl - amount;
						if tonumber(drop.anzahl) <= 0 then
							mysql_query(mysql_handler, "DELETE FROM `inventar` WHERE `idinventar` = '"..drop.idinventar.."'");
						end
					end
					mysql_free_result (item_count);
				end
			else
				ServerLog("ITEMS", "Spieler "..Player[playerid].nick.." versuchte Item zu nutzen, dass er nicht besitzt: ("..item_instance.." "..amount.."x).")
			end
			mysql_free_result (item_helper);
		end
	end
end

function DB_RemoveItem(playerid, item_instance, amount)
	-- print("function DB_RemoveItem(playerid, item_instance, amount)", playerid, item_instance, amount)

	RemoveItem(playerid,item_instance,amount)
	mysql_query(mysql_handler, "UPDATE `inventar` SET `anzahl` = `anzahl` - "..amount.." WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..item_instance.."'");
	mysql_query(mysql_handler, "DELETE FROM `inventar` WHERE `anzahl` = '0'");

end


function OnPlayerTakeItem(playerid, itemID, itemInstance, amount, x, y, z, worldName)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerTakeItem(playerid, itemID, itemInstance, amount, x, y, z, worldName)")
	-- print("function OnPlayerTakeItem(playerid, itemID, itemInstance, amount, ...)", playerid, itemID, itemInstance, amount)

	if (mysql_check_connection() == true) and IsNPC(playerid) == 0 then
		if itemID >= 0 then
			-- print("function OnPlayerTakeItem if itemID >= 0 then", itemID)
			local result = mysql_query(mysql_handler, "SELECT id, item FROM itemlist WHERE iteminstance='" .. itemInstance .. "'");
			if mysql_num_rows(result) == 1 then
				local row = mysql_fetch_row(result)
				local id = tonumber(row[1]);
				local itemname = tostring(row[2]);
				local additemamount = mysql_query(mysql_handler, "SELECT `anzahl` FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..itemInstance.."'");
				if additemamount then
					if(mysql_num_rows(additemamount) ~= 0) then
						mysql_query(mysql_handler, "UPDATE `inventar` SET `anzahl` = `anzahl` + '"..amount.."' WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..itemInstance.."';");
					else
						mysql_query(mysql_handler, "INSERT INTO `inventar` (name,item,anzahl,id) VALUES ('"..Player[playerid].nick.."','"..itemInstance.."','"..amount.."','"..id.."')");
					end
					if amount > 1 then
						SendPlayerMessage(playerid,255,255,255,"Du hast "..amount.."x "..itemname.." aufgehoben");
					end;
				end
				mysql_free_result (additemamount);
			end
			mysql_free_result (result);
		elseif itemID == ITEM_UNSYNCHRONIZED then
			-- print("function OnPlayerTakeItem elseif itemID == ITEM_UNSYNCHRONIZED then", ITEM_UNSYNCHRONIZED)
			DestroyItem(itemID)
		elseif itemID == ITEM_GIFT then
			-- print("function OnPlayerTakeItem elseif itemID == ITEM_GIFT then", ITEM_GIFT)
			local result = mysql_query(mysql_handler, "SELECT id FROM itemlist WHERE iteminstance='" .. itemInstance .. "'");
			if mysql_num_rows(result) == 1 then
				local row = mysql_fetch_row(result)
				local id = tonumber(row[1]);
				local additemamount = mysql_query(mysql_handler, "SELECT `anzahl` FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..itemInstance.."'");
				if additemamount then
					if(mysql_num_rows(additemamount) ~= 0) then
						mysql_query(mysql_handler, "UPDATE `inventar` SET `anzahl` = `anzahl` + '"..amount.."' WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..itemInstance.."';");
					else
						mysql_query(mysql_handler, "INSERT INTO `inventar` (name,item,anzahl,id) VALUES ('"..Player[playerid].nick.."','"..itemInstance.."','"..amount.."','"..id.."')");
					end
				end
				mysql_free_result (additemamount);
			end
			mysql_free_result (result);
		elseif itemID == ITEM_CONTAINER then
			-- print("function OnPlayerTakeItem elseif itemID == ITEM_CONTAINER then", ITEM_CONTAINER)
		end
	end

	if itemID == -3 then
		-- print("function OnPlayerTakeItem if itemID == -3 then", -3)
		RemoveItem(playerid, itemInstance, amount)
	end
	
	-- Nur aufrufen wenn itemInstance mit "_focus" endet.
	local testFocus = string.lower(string.sub(itemInstance, -6))
	if string.ends(testFocus, "_focus") then
		-- print("function OnPlayerTakeItem if string.ends(itemInstance,\"_focus\") then Takefocus(playerid,itemInstance)")
		Takefocus(playerid, itemInstance)
	end
	
	-- Nur aufrufen wenn itemInstance mit "ITAR_" beginnt.
	if string.starts(itemInstance, "ITAR_") then
		-- print("function OnPlayerTakeItem if string.starts(itemInstance, \"ITAR_\") then HasItem(playerid, itemInstance, 77)")
		HasItem(playerid, itemInstance, 77)
	end	

	if Player[playerid].isOnline == 1 then
		ServerLog("ITEMS","Spieler "..Player[playerid].nick.." hat "..itemInstance.." "..amount.."x aufgenommen.");
	end
end

--[[function OnPlayerWeaponMode(playerid, weaponmode)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerWeaponMode(playerid, weaponmode)")

	if weaponmode == WEAPON_1H then
		local einhand = GetPlayerSkillWeapon(playerid,SKILL_1H);
			if  einhand <=29 then

			elseif einhand >= 29 and einhand <= 59 then
				SetPlayerWalk(playerid,"Humans_1hST1.mds");
			elseif einhand >= 59 then
				SetPlayerWalk(playerid,"Humans_1hST2.mds");
			end
	elseif weaponmode == WEAPON_2H then
		local zweihand = GetPlayerSkillWeapon(playerid,SKILL_2H);
			if  zweihand <=29 then

			elseif zweihand >= 29 and zweihand <= 59 then
				SetPlayerWalk(playerid,"Humans_2hST1.mds");
			elseif zweihand >= 59 then
				SetPlayerWalk(playerid,"Humans_2hST2.mds");
			end
	elseif weaponmode == WEAPON_BOW then
		local bogen = GetPlayerSkillWeapon(playerid,SKILL_BOW);
			if  bogen <=29 then

			elseif bogen >= 29 and bogen <= 59 then
				SetPlayerWalk(playerid,"Humans_BowT1.mds");
			elseif bogen >= 59 then
				SetPlayerWalk(playerid,"Humans_BowT2.mds");
			end
	elseif weaponmode == WEAPON_CBOW then
		local armbrust = GetPlayerSkillWeapon(playerid,3);
			if  armbrust <=29 then

			elseif armbrust >= 29 and armbrust <= 59 then
				SetPlayerWalk(playerid,"Humans_CBowT1.mds");
			elseif armbrust >= 59 then
				SetPlayerWalk(playerid,"Humans_CBowT2.mds");
			end
	elseif weaponmode == WEAPON_NONE or weaponmode == WEAPON_ERROR_NOT_USED then
		HasItem(playerid,"ITRW_ARROW",120);
		HasItem(playerid,"ITRW_BOLT",121);
	end
end]]

function OnPlayerChangeArmor(playerid, currArmor, oldArmor)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerChangeArmor(playerid, currArmor, oldArmor)")
	-- print("function OnPlayerChangeArmor(playerid, currArmor, oldArmor)", playerid, currArmor, oldArmor)

	if IsNPC(playerid) == 1 then

	else
		if (mysql_check_connection() == true) then
			-----------------------------------
			local item_currA = mysql_query(mysql_handler, "SELECT `equipped` FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..currArmor.."'");
			if item_currA then
				if(mysql_num_rows(item_currA) ~= 0) then
					mysql_query(mysql_handler, "UPDATE `inventar` SET `equipped` = 1 WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..currArmor.."'");
				end
			end
			mysql_free_result(item_currA);
			-----------------------------------
			local item_oldA = mysql_query(mysql_handler, "SELECT `equipped` FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..oldArmor.."'");
			if item_oldA then
				if(mysql_num_rows(item_oldA) ~= 0) then
					mysql_query(mysql_handler, "UPDATE `inventar` SET `equipped` = 0 WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..oldArmor.."'");
				end
			end
			mysql_free_result(item_oldA);
			-----------------------------------
		end
	end
end

function OnPlayerChangeMeleeWeapon(playerid, currMelee, oldMelee)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerChangeMeleeWeapon(playerid, currMelee, oldMelee)")
	-- print("function OnPlayerChangeMeleeWeapon(playerid, currMelee, oldMelee)", playerid, currMelee, oldMelee)

	if IsNPC(playerid) == 1 or Player[playerid].equipped == 1 then
		if playerid <= GetMaxPlayers() - 1 and (Mode == "Deathmatch" or Mode == "CTF") then
			Player[playerid].equipped = 0;
		end
	else
		if (mysql_check_connection() == true) then
			local item_currM = mysql_query(mysql_handler, "SELECT `equipped` FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..currMelee.."'");
			if item_currM then
				if(mysql_num_rows(item_currM) ~= 0) then
					mysql_query(mysql_handler, "UPDATE `inventar` SET `equipped` = 1 WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..currMelee.."'");
				end
			end
			mysql_free_result (item_currM);
			local item_oldM = mysql_query(mysql_handler, "SELECT `equipped` FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..oldMelee.."'");
			if item_oldM then
				if(mysql_num_rows(item_oldM) ~= 0) then
					mysql_query(mysql_handler, "UPDATE `inventar` SET `equipped` = 0 WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..oldMelee.."'");
				end
			end
			mysql_free_result (item_oldM);
		end
	end
end

function OnPlayerChangeRangedWeapon(playerid, currRanged, oldRanged)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerChangeRangedWeapon(playerid, currRanged, oldRanged)")
	-- print("function OnPlayerChangeRangedWeapon(playerid, currRanged, oldRanged)", playerid, currRanged, oldRanged)

	if IsNPC(playerid) == 1 or Player[playerid].equipped == 1 then
		if playerid <= GetMaxPlayers() - 1 and (Mode == "Deathmatch" or Mode == "CTF") then
			Player[playerid].equipped = 0;
		end
	else	
		if (mysql_check_connection() == true) then
			local item_currR = mysql_query(mysql_handler, "SELECT `equipped` FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..currRanged.."'");
			if item_currR then
				if(mysql_num_rows(item_currR) ~= 0) then
					mysql_query(mysql_handler, "UPDATE `inventar` SET `equipped` = 1 WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..currRanged.."'");
				end
			end
			mysql_free_result (item_currR);
			local item_oldR = mysql_query(mysql_handler, "SELECT `equipped` FROM `inventar` WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..oldRanged.."'");
			if item_oldR then
				if(mysql_num_rows(item_oldR) ~= 0) then
					mysql_query(mysql_handler, "UPDATE `inventar` SET `equipped` = 0 WHERE `name` = '"..Player[playerid].nick.."' AND `item` = '"..oldRanged.."'");
				end
			end
			mysql_free_result (item_oldR);
		end
	end
	if playerid <= GetMaxPlayers() - 1 then
		Player[playerid].equipped = 0;
	end
end
print("Loaded LUA file   " .. debug.getinfo(1).source)