function TA_SEBALT(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 254);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end	
		
		elseif(TA_FUNC(_playerid, 3, 0, 6, 0))then
		AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_TURNTO(_playerid, 254);
		end	
		
		elseif(TA_FUNC(_playerid, 6, 0, 9, 0))then
		AI_ClearStates(_playerid);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 254);
		end
		
		elseif(TA_FUNC(_playerid, 9, 0, 12, 0))then
		AI_ClearStates(_playerid);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 254);
		end
		
		elseif(TA_FUNC(_playerid, 12, 0, 15, 0))then
		AI_ClearStates(_playerid);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 254);
		end
		
		elseif(TA_FUNC(_playerid, 15, 0, 18, 0))then
		AI_ClearStates(_playerid);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 254);
		end
		
		elseif(TA_FUNC(_playerid, 18, 0, 21, 0))then
		AI_ClearStates(_playerid);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 254);
		end
		
		elseif(TA_FUNC(_playerid, 21, 0, 0, 0))then
		AI_ClearStates(_playerid);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 254);
		end
	end
end

function TA_SUEDTOR_WILHELM(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 355);
		end
		
    elseif(TA_FUNC(_playerid, 3, 0, 6, 0))then
		AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "SUEDTOR_WACHE1");
			AI_TURNTO(_playerid, 360);

	elseif(TA_FUNC(_playerid, 6, 0, 9, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "SUEDTOR_WACHE1");
		AI_TURNTO(_playerid, 360);

	elseif(TA_FUNC(_playerid, 9, 0, 12, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "SUEDTOR_WACHE1");
		AI_TURNTO(_playerid, 360);

	elseif(TA_FUNC(_playerid, 12, 0, 15, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "SUEDTOR_WACHE1");
		AI_TURNTO(_playerid, 360);

	elseif(TA_FUNC(_playerid, 15, 0, 18, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "SUEDTOR_WACHE1");
		AI_TURNTO(_playerid, 360);

	elseif(TA_FUNC(_playerid, 18, 0, 21, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "SUEDTOR_WACHE1");
		AI_TURNTO(_playerid, 360);

	elseif(TA_FUNC(_playerid, 21, 0, 0, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "SUEDTOR_WACHE1");
		AI_TURNTO(_playerid, 360);
	end
end

function TA_SUEDTOR_FESTER(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 355);
		end
		
    elseif(TA_FUNC(_playerid, 3, 0, 6, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        AI_GOTO(_playerid, "SUEDTOR_WACHE2");
		AI_TURNTO(_playerid, 360);

	elseif(TA_FUNC(_playerid, 6, 0, 9, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        AI_GOTO(_playerid, "SUEDTOR_WACHE2");
		AI_TURNTO(_playerid, 360);

	elseif(TA_FUNC(_playerid, 9, 0, 12, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        AI_GOTO(_playerid, "SUEDTOR_WACHE2");
		AI_TURNTO(_playerid, 360);

	elseif(TA_FUNC(_playerid, 12, 0, 15, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        AI_GOTO(_playerid, "SUEDTOR_WACHE2");
		AI_TURNTO(_playerid, 360);

	elseif(TA_FUNC(_playerid, 15, 0, 18, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        AI_GOTO(_playerid, "SUEDTOR_WACHE2");
		AI_TURNTO(_playerid, 360);

	elseif(TA_FUNC(_playerid, 18, 0, 21, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        AI_GOTO(_playerid, "SUEDTOR_WACHE2");
		AI_TURNTO(_playerid, 360);

	elseif(TA_FUNC(_playerid, 21, 0, 0, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        AI_GOTO(_playerid, "SUEDTOR_WACHE2");
		AI_TURNTO(_playerid, 360);
	end
end

function TA_OSTTOR_JENEK(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0))then
	AI_ClearStates(_playerid);
    AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 242);
		end
		
    elseif(TA_FUNC(_playerid, 3, 0, 6, 0))then
	AI_ClearStates(_playerid);
	AI_SETWALKTYPE(_playerid, 0);
    AI_GOTO(_playerid, "OSTTOR_WACHE1");
	AI_TURNTO(_playerid, 242);

	elseif(TA_FUNC(_playerid, 6, 0, 9, 0))then
	AI_ClearStates(_playerid);
	AI_SETWALKTYPE(_playerid, 0);
    AI_GOTO(_playerid, "OSTTOR_WACHE1");
	AI_TURNTO(_playerid, 242);

	elseif(TA_FUNC(_playerid, 9, 0, 12, 0))then
	AI_ClearStates(_playerid);
	AI_SETWALKTYPE(_playerid, 0);
    AI_GOTO(_playerid, "OSTTOR_WACHE1");
	AI_TURNTO(_playerid, 242);

	elseif(TA_FUNC(_playerid, 12, 0, 15, 0))then
	AI_ClearStates(_playerid);
	AI_SETWALKTYPE(_playerid, 0);
    AI_GOTO(_playerid, "OSTTOR_WACHE1");
	AI_TURNTO(_playerid, 242);

	elseif(TA_FUNC(_playerid, 15, 0, 18, 0))then
	AI_ClearStates(_playerid);
	AI_SETWALKTYPE(_playerid, 0);
    AI_GOTO(_playerid, "OSTTOR_WACHE1");
	AI_TURNTO(_playerid, 242);

	elseif(TA_FUNC(_playerid, 18, 0, 21, 0))then
	AI_ClearStates(_playerid);
	AI_SETWALKTYPE(_playerid, 0);
    AI_GOTO(_playerid, "OSTTOR_WACHE1");
	AI_TURNTO(_playerid, 242);

	elseif(TA_FUNC(_playerid, 21, 0, 0, 0))then
	AI_ClearStates(_playerid);
	AI_SETWALKTYPE(_playerid, 0);
    AI_GOTO(_playerid, "OSTTOR_WACHE1");
	AI_TURNTO(_playerid, 242);
	end
end

function TA_OSTTOR_WENDEL(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0))then
	AI_ClearStates(_playerid);
    AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 242);
		end
		
	elseif(TA_FUNC(_playerid, 3, 0, 6, 0))then
	AI_ClearStates(_playerid);
	AI_SETWALKTYPE(_playerid, 0);
    AI_GOTO(_playerid, "OSTTOR_WACHE2");
	AI_TURNTO(_playerid, 242);
	
	elseif(TA_FUNC(_playerid, 6, 0, 9, 0))then
	AI_ClearStates(_playerid);
    AI_SETWALKTYPE(_playerid, 0);
    AI_GOTO(_playerid, "OSTTOR_WACHE2");
	AI_TURNTO(_playerid, 242);
	
	elseif(TA_FUNC(_playerid, 9, 0, 12, 0))then
	AI_ClearStates(_playerid);
    AI_SETWALKTYPE(_playerid, 0);
    AI_GOTO(_playerid, "OSTTOR_WACHE2");
	AI_TURNTO(_playerid, 242);
	
	elseif(TA_FUNC(_playerid, 12, 0, 15, 0))then
	AI_ClearStates(_playerid);
    AI_SETWALKTYPE(_playerid, 0);
    AI_GOTO(_playerid, "OSTTOR_WACHE2");
	AI_TURNTO(_playerid, 242);
	
	elseif(TA_FUNC(_playerid, 15, 0, 18, 0))then
	AI_ClearStates(_playerid);
    AI_SETWALKTYPE(_playerid, 0);
    AI_GOTO(_playerid, "OSTTOR_WACHE2");
	AI_TURNTO(_playerid, 242);
	
	elseif(TA_FUNC(_playerid, 18, 0, 21, 0))then
	AI_ClearStates(_playerid);
    AI_SETWALKTYPE(_playerid, 0);
    AI_GOTO(_playerid, "OSTTOR_WACHE2");
	AI_TURNTO(_playerid, 242);
	
	elseif(TA_FUNC(_playerid, 21, 0, 0, 0))then
	AI_ClearStates(_playerid);
    AI_SETWALKTYPE(_playerid, 0);
    AI_GOTO(_playerid, "OSTTOR_WACHE2");
	AI_TURNTO(_playerid, 242);
	end
end

function TA_KASERNE_ENDRES(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 151);
		end
		
    elseif(TA_FUNC(_playerid, 3, 0, 6, 0))then
		AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_CITY_HABOUR_KASERN_ENTRANCE_01");
			AI_TURNTO(_playerid, 151);

	elseif(TA_FUNC(_playerid, 6, 0, 9, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_CITY_HABOUR_KASERN_ENTRANCE_01");
		AI_TURNTO(_playerid, 151);

	elseif(TA_FUNC(_playerid, 9, 0, 12, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_CITY_HABOUR_KASERN_ENTRANCE_01");
		AI_TURNTO(_playerid, 151);

	elseif(TA_FUNC(_playerid, 12, 0, 15, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_CITY_HABOUR_KASERN_ENTRANCE_01");
		AI_TURNTO(_playerid, 151);

	elseif(TA_FUNC(_playerid, 15, 0, 18, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_CITY_HABOUR_KASERN_ENTRANCE_01");
		AI_TURNTO(_playerid, 151);

	elseif(TA_FUNC(_playerid, 18, 0, 21, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_CITY_HABOUR_KASERN_ENTRANCE_01");
		AI_TURNTO(_playerid, 151);

	elseif(TA_FUNC(_playerid, 21, 0, 0, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_CITY_HABOUR_KASERN_ENTRANCE_01");
		AI_TURNTO(_playerid, 151);
	end
end

function TA_KASERNE_BERO(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 60);
		end
		
    elseif(TA_FUNC(_playerid, 3, 0, 6, 0))then
		AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_CITY_HABOUR_KASERN_ENTRANCE_02");
			AI_TURNTO(_playerid, 60);

	elseif(TA_FUNC(_playerid, 6, 0, 9, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_CITY_HABOUR_KASERN_ENTRANCE_02");
		AI_TURNTO(_playerid, 60);

	elseif(TA_FUNC(_playerid, 9, 0, 12, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_CITY_HABOUR_KASERN_ENTRANCE_02");
		AI_TURNTO(_playerid, 60);

	elseif(TA_FUNC(_playerid, 12, 0, 15, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_CITY_HABOUR_KASERN_ENTRANCE_02");
		AI_TURNTO(_playerid, 60);

	elseif(TA_FUNC(_playerid, 15, 0, 18, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_CITY_HABOUR_KASERN_ENTRANCE_02");
		AI_TURNTO(_playerid, 60);

	elseif(TA_FUNC(_playerid, 18, 0, 21, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_CITY_HABOUR_KASERN_ENTRANCE_02");
		AI_TURNTO(_playerid, 60);

	elseif(TA_FUNC(_playerid, 21, 0, 0, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_CITY_HABOUR_KASERN_ENTRANCE_02");
		AI_TURNTO(_playerid, 60);
	end
end

function TA_KHORINIS_MINENWACHE(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 60);
		end
		
    elseif(TA_FUNC(_playerid, 3, 0, 6, 0))then
		AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_FARM1_PATH_BANDITS_11");
			AI_TURNTO(_playerid, 60);

	elseif(TA_FUNC(_playerid, 6, 0, 9, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_FARM1_PATH_BANDITS_11");
		AI_TURNTO(_playerid, 60);

	elseif(TA_FUNC(_playerid, 9, 0, 12, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_FARM1_PATH_BANDITS_11");
		AI_TURNTO(_playerid, 60);

	elseif(TA_FUNC(_playerid, 12, 0, 15, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_FARM1_PATH_BANDITS_11");
		AI_TURNTO(_playerid, 60);

	elseif(TA_FUNC(_playerid, 15, 0, 18, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_FARM1_PATH_BANDITS_11");
		AI_TURNTO(_playerid, 60);

	elseif(TA_FUNC(_playerid, 18, 0, 21, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_FARM1_PATH_BANDITS_11");
		AI_TURNTO(_playerid, 60);

	elseif(TA_FUNC(_playerid, 21, 0, 0, 0))then
	AI_ClearStates(_playerid);
        AI_GOTO(_playerid, "NW_FARM1_PATH_BANDITS_11");
		AI_TURNTO(_playerid, 60);
	end
end