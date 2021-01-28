function TA_AL_KOLONIE(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 331);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end	
		
	--[[	elseif(TA_FUNC(_playerid, 3, 0, 6, 0))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "T_JOINT_RANDOM_1");
		end	
		
		elseif(TA_FUNC(_playerid, 6, 0, 9, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
		
		elseif(TA_FUNC(_playerid, 9, 0, 12, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "T_FOOD_RANDOM_1");
		end
		
		elseif(TA_FUNC(_playerid, 12, 0, 15, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
		
		elseif(TA_FUNC(_playerid, 15, 0, 18, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "T_JOINT_RANDOM_1");
		end
		
		elseif(TA_FUNC(_playerid, 18, 0, 21, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
		
		elseif(TA_FUNC(_playerid, 21, 0, 0, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end --]]
	end
end

function TA_AL_KOLONIE_2(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 154);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end	
		
	--[[	elseif(TA_FUNC(_playerid, 3, 0, 6, 0))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "T_JOINT_RANDOM_1");
		end	
		
		elseif(TA_FUNC(_playerid, 6, 0, 9, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
		
		elseif(TA_FUNC(_playerid, 9, 0, 12, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "T_FOOD_RANDOM_1");
		end
		
		elseif(TA_FUNC(_playerid, 12, 0, 15, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
		
		elseif(TA_FUNC(_playerid, 15, 0, 18, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "T_JOINT_RANDOM_1");
		end
		
		elseif(TA_FUNC(_playerid, 18, 0, 21, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
		
		elseif(TA_FUNC(_playerid, 21, 0, 0, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end --]]
	end
end

function TA_AL_KOLONIE_BURG(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 332);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end	
		
	--[[	elseif(TA_FUNC(_playerid, 3, 0, 6, 0))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "T_JOINT_RANDOM_1");
		end	
		
		elseif(TA_FUNC(_playerid, 6, 0, 9, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
		
		elseif(TA_FUNC(_playerid, 9, 0, 12, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "T_FOOD_RANDOM_1");
		end
		
		elseif(TA_FUNC(_playerid, 12, 0, 15, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
		
		elseif(TA_FUNC(_playerid, 15, 0, 18, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "T_JOINT_RANDOM_1");
		end
		
		elseif(TA_FUNC(_playerid, 18, 0, 21, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
		
		elseif(TA_FUNC(_playerid, 21, 0, 0, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end --]]
	end
end

function TA_AL_KOLONIE_AlteMine(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 252);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end	
		
	--[[	elseif(TA_FUNC(_playerid, 3, 0, 6, 0))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "T_JOINT_RANDOM_1");
		end	
		
		elseif(TA_FUNC(_playerid, 6, 0, 9, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
		
		elseif(TA_FUNC(_playerid, 9, 0, 12, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "T_FOOD_RANDOM_1");
		end
		
		elseif(TA_FUNC(_playerid, 12, 0, 15, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
		
		elseif(TA_FUNC(_playerid, 15, 0, 18, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "T_JOINT_RANDOM_1");
		end
		
		elseif(TA_FUNC(_playerid, 18, 0, 21, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
		
		elseif(TA_FUNC(_playerid, 21, 0, 0, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 180);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end --]]
	end
end

-- ab hier die arbeit von Ska/gaspade

function TA_Ritter1(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 12);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end	
		
	
	end
end

function TA_Ritter2(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 109);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end	
		
	
	end
end

function TA_Ritter3(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 48);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end	
			
	end
end

function TA_Spaeher1(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 25);
			AI_PLAYANIMATION(_playerid, "S_SIT");
		end	
		
	
	end
end

function TA_Soldat1(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 199);
			AI_PLAYANIMATION(_playerid, "S_SIT");
		end	
		
	
	end
end

function TA_Buddler1(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 1);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end	
		
	
	end
end

function TA_Buddler2(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 194);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end	
		
	
	end
end

function TA_Ritter4(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 127);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end	
			
	end
end

function TA_Ritter5(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 210);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end	
			
	end
end

function TA_Ritter6(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 190);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end	
			
	end
end

function TA_Buddler3(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 193);
			AI_PLAYANIMATION(_playerid, "S_SIT");
		end	
		
	
	end
end

function TA_Buddler4(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 275);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end	
		
	
	end
end

function TA_Buddler5(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 327);
			EquipMeleeWeapon(_playerid, "ItMw_Spitzhacke");
			AI_PLAYANIMATION(_playerid, "C_Ore_S1_1");
		end	
		
	
	end
end

function TA_Buddler6(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 81);
			EquipMeleeWeapon(_playerid, "ItMw_Spitzhacke");
			AI_PLAYANIMATION(_playerid, "C_Ore_S1_1");
		end	
		
	
	end
end

function TA_Buddler7(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 159);
			EquipMeleeWeapon(_playerid, "ItMw_Spitzhacke");
			AI_PLAYANIMATION(_playerid, "C_Ore_S1_1");
		end	
		
	
	end
end

function TA_Raeuber01(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 157);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end	
		
	
	end
end

function TA_Raeuber02(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 116);
			AI_PLAYANIMATION(_playerid, "S_SIT");
		end	
		
	
	end
end

function TA_Raeuber03(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 162);
			EquipMeleeWeapon(_playerid, "itmi_saw");
			AI_PLAYANIMATION(_playerid, "S_BAUMSAEGE_S1");
		end	
		
	
	end
end

function TA_Raeuber04(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 320);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end	
		
	
	end
end

function TA_Raeuber05(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 261);
			AI_PLAYANIMATION(_playerid, "s_HGuard");
		end	
		
	
	end
end

function TA_Raeuber06(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 126);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end	
		
	
	end
end

function TA_Raeuber07(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 31);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end	
		
	
	end
end

function TA_ORKSEBALT(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 260);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end	
		
	
	end
end

function TA_ORKHAENDLER(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 24, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 44);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end	
		
	
	end
end
