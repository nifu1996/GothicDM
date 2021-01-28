function TA_SEBALT(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0)) or (TA_FUNC(_playerid, 3, 0, 6, 0)) or (TA_FUNC(_playerid, 6, 0, 9, 0)) or (TA_FUNC(_playerid, 9, 0, 12, 0)) or (TA_FUNC(_playerid, 12, 0, 15, 0)) or
		(TA_FUNC(_playerid, 15, 0, 18, 0)) or (TA_FUNC(_playerid, 18, 0, 21, 0)) or (TA_FUNC(_playerid, 21, 0, 0, 0)) 
	then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        
		if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 254);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
	end
end

function TA_SUEDTOR_WILHELM(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 12, 0, 15, 0) or TA_FUNC(_playerid, 18, 0, 21, 0))
	then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        
		if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 355);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	elseif(TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 21, 0, 0, 0))
	then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_STAND_SUEDTOR_WACHE4";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 355);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end	
end

function TA_SUEDTOR_FESTER(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 12, 0, 15, 0) or TA_FUNC(_playerid, 18, 0, 21, 0))
	then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        
		if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 336);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");			
		end
	elseif(TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 21, 0, 0, 0))
	then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_STAND_SUEDTOR_WACHE3";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 336);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");			
		end
	end	
end

function TA_OSTTOR_JENEK(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0)) or (TA_FUNC(_playerid, 3, 0, 6, 0)) or (TA_FUNC(_playerid, 6, 0, 9, 0)) or (TA_FUNC(_playerid, 9, 0, 12, 0)) or (TA_FUNC(_playerid, 12, 0, 15, 0)) or
		(TA_FUNC(_playerid, 15, 0, 18, 0)) or (TA_FUNC(_playerid, 18, 0, 21, 0)) or (TA_FUNC(_playerid, 21, 0, 0, 0)) 
	then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        
		if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 253);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
	end
end

function TA_OSTTOR_WENDEL(_playerid) --NW_CITY_HABOUR_KASERN_08

    if(TA_FUNC(_playerid, 0, 0, 3, 0)) or (TA_FUNC(_playerid, 3, 0, 6, 0)) or (TA_FUNC(_playerid, 6, 0, 9, 0)) or (TA_FUNC(_playerid, 9, 0, 12, 0)) or (TA_FUNC(_playerid, 12, 0, 15, 0)) or
		(TA_FUNC(_playerid, 15, 0, 18, 0)) or (TA_FUNC(_playerid, 18, 0, 21, 0)) or (TA_FUNC(_playerid, 21, 0, 0, 0)) 
	then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        
		if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 226);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
	end
end 

function TA_KASERNE_ENDRES(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0)) or (TA_FUNC(_playerid, 3, 0, 6, 0)) or (TA_FUNC(_playerid, 6, 0, 9, 0)) or (TA_FUNC(_playerid, 9, 0, 12, 0)) or (TA_FUNC(_playerid, 12, 0, 15, 0)) or
		(TA_FUNC(_playerid, 15, 0, 18, 0)) or (TA_FUNC(_playerid, 18, 0, 21, 0)) or (TA_FUNC(_playerid, 21, 0, 0, 0)) 
	then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        
		if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP); --AI_GOTO(_playerid, "NW_CITY_HABOUR_KASERN_ENTRANCE_01");
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 151);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
	end
end

function TA_KASERNE_BERO(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0)) or (TA_FUNC(_playerid, 3, 0, 6, 0)) or (TA_FUNC(_playerid, 6, 0, 9, 0)) or (TA_FUNC(_playerid, 9, 0, 12, 0)) or (TA_FUNC(_playerid, 12, 0, 15, 0)) or
		(TA_FUNC(_playerid, 15, 0, 18, 0)) or (TA_FUNC(_playerid, 18, 0, 21, 0)) or (TA_FUNC(_playerid, 21, 0, 0, 0)) 
	then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP); --AI_GOTO(_playerid, "NW_CITY_HABOUR_KASERN_ENTRANCE_02");
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 60);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
	end
end

function TA_KASERNE_RAMON(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0)) or (TA_FUNC(_playerid, 3, 0, 6, 0)) or (TA_FUNC(_playerid, 6, 0, 9, 0)) or (TA_FUNC(_playerid, 9, 0, 12, 0)) or (TA_FUNC(_playerid, 12, 0, 15, 0)) or
		(TA_FUNC(_playerid, 15, 0, 18, 0)) or (TA_FUNC(_playerid, 18, 0, 21, 0)) or (TA_FUNC(_playerid, 21, 0, 0, 0)) 
	then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP); --AI_GOTO(_playerid, "NW_CITY_HABOUR_KASERN_ENTRANCE_02");
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 241);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
	end
end

function TA_HAFENTOR_ALEXANDRA(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0)) or (TA_FUNC(_playerid, 3, 0, 6, 0)) or (TA_FUNC(_playerid, 6, 0, 9, 0)) or (TA_FUNC(_playerid, 9, 0, 12, 0)) or (TA_FUNC(_playerid, 12, 0, 15, 0)) or
		(TA_FUNC(_playerid, 15, 0, 18, 0)) or (TA_FUNC(_playerid, 18, 0, 21, 0)) or (TA_FUNC(_playerid, 21, 0, 0, 0)) 
	then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        
		if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 270);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
	end
end

function TA_RATHAUS_WACHE(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0))
	then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 223);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
	end
end

function TA_RATHAUS_WACHE2(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0))
	then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 247);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
	end
end

function TA_TAVERNENWACHE(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 13);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end

function TA_HAFEN_JOSE(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 109);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end

function TA_HAFEN_KHARIM(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 50);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
	end
end