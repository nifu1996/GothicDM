function TA_ONAR_FILAN(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 264);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end	
		
		elseif(TA_FUNC(_playerid, 3, 0, 6, 0))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 264);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end	
		
		elseif(TA_FUNC(_playerid, 6, 0, 9, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 264);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
		
		elseif(TA_FUNC(_playerid, 9, 0, 12, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 264);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
		
		elseif(TA_FUNC(_playerid, 12, 0, 15, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 264);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
		
		elseif(TA_FUNC(_playerid, 15, 0, 18, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 264);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
		
		elseif(TA_FUNC(_playerid, 18, 0, 21, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 264);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
		
		elseif(TA_FUNC(_playerid, 21, 0, 0, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 264);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
	end
end

function TA_ONAR_MALAKAS(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 267);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end

function TA_ONAR_MERC(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 267);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end

function TA_ONAR_LAINDRO(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 190);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end

function TA_ONAR_THERUS(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 190);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end

function TA_ONAR_KERKERWACHE(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 17);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end