--Stab des orkischen Oberst hängt bei Nacht an Hoshpaks Spot rum und patrouilliert bei Tag durch den Außenring

function TA_OW_ORCGENERAL(_playerid)

	if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
		end
		
	elseif(TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0)) then
		
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);

		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "OC_ROUND_12";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
		end		
	
	
	elseif(TA_FUNC(_playerid, 12, 0, 15, 0)) then
		
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);

		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "OC_ROUND_10";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 153);			
		end		
			
	
	elseif(TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0)) then
		
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);

		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "OC_Path_01";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
		end		
		
	
	elseif(TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);

		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_ROAM_ORK_OC_11";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
		end		
	end		
end