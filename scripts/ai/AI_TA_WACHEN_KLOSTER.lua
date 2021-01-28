function TA_KLOSTER_ASRAEL(_playerid)
-- Besen: ItMw_Besen
    if(TA_FUNC(_playerid, 0, 0, 3, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 58);
			PlayAnimation(_playerid, "S_LGUARD");			
		end	
		
		elseif(TA_FUNC(_playerid, 3, 0, 6, 0))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 58);
			PlayAnimation(_playerid, "S_LGUARD");			
		end	
		
		elseif(TA_FUNC(_playerid, 6, 0, 9, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 58);
            PlayAnimation(_playerid,"S_LGUARD");
		end
		
		elseif(TA_FUNC(_playerid, 9, 0, 12, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 58);
			PlayAnimation(_playerid,"S_LGUARD");
		end
		
		elseif(TA_FUNC(_playerid, 12, 0, 15, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 58);
            PlayAnimation(_playerid,"S_LGUARD");		
		end
		
		elseif(TA_FUNC(_playerid, 15, 0, 18, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 58);
            PlayAnimation(_playerid,"S_LGUARD");
		end		
		
		elseif(TA_FUNC(_playerid, 18, 0, 21, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 58);
			PlayAnimation(_playerid, "S_LGUARD");			
		end
		
		elseif(TA_FUNC(_playerid, 21, 0, 0, 0))then
		AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].StartWP ~= nil)then
			AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 58);
			PlayAnimation(_playerid, "S_LGUARD");			
		end
	end
end