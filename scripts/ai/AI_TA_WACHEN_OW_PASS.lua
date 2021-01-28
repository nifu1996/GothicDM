function TA_PASS_FERDINAND(_playerid) -- Wird von Ferdinand und Ritter 1 benutzt

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 39);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
	end
end


function TA_PASS_RITTER(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 60);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	elseif(TA_FUNC(_playerid, 12, 0, 15, 0) or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "NW_MONASTERY_CELLAR_07";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 60);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end

function TA_PASS_RITTER2(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 328);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	elseif(TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0) or TA_FUNC(_playerid, 15, 0, 18, 0)) then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "NW_MONASTERY_CORRIDOR_02";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 148);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end

function TA_PASS_RITTER3(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 148);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	elseif(TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0) or TA_FUNC(_playerid, 15, 0, 18, 0)) then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_STAND_PASSWACHENEU_1";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 226);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end

function TA_PASS_RITTER4(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0)) then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);	
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 224);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	elseif(TA_FUNC(_playerid, 12, 0, 15, 0) or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_STAND_PASSWACHENEU_2";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 224);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end

function TA_PASS_PALADIN(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 352);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
	end
end

function TA_PASS_PALADIN_2(_playerid)

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 64);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
	end
end

function TA_PASS_RORIK(_playerid)

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

function TA_PASS_KERIS(_playerid)

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