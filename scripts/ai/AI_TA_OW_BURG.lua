--Routinen (WP, Animationen, Blickrichtung, Klasse):
--FP_SMALLTALK_OC_CENTER_02, S_LGUARD, schaut zum Bosshaus, 128, Ritter
--FP_SMALLTALK_OC_CENTER_01, S_LGUARD, schaut zum Tor, 328, Ritter
--FP_CAMPFIRE_OC_OUT_01, S_SIT und S_SLEEPGROUND, 215, Waffenknecht
--FP_CAMPFIRE_OC_OUT_02, S_SIT und S_SLEEPGROUND, 220, Ritter
--FP_CAMPFIRE_OC_OUT_03, S_SIT und S_SLEEPGROUND, 35, Waffenknecht
--FP_CAMPFIRE_OC_OUT_04, S_SIT und S_SLEEPGROUND, 32, Ritter
--FP_GUARD_OC_GUARDSROOM_01, S_HGUARD, schaut von der Tür des Schlafhauses weg, 178, Ritter
--FP_SMALLTALK_OC_EBR_01, S_LGUARD, schaut von Gomez aus nach links, 1, Paladin
--FP_SMALLTALK_OC_EBR_02, S_LGUARD, schaut von Gomez aus nach rechts, 174, Paladin
--FP_GUARD_OC_EBR_03, S_LGUARD, chillt wie Raven, 357, Paladin
--OC_GUARD_PALISADE_07, S_HGUARD, schaut in den Belagerungsring (Orkramme), 72, Ritter (Armbrust)
--OC_GUARD_PALISADE_09, S_HGUARD, schaut in den Belagerungsring (Tor), 346, Ritter (Armbrust)
--OC_EBR_GUARDPASSAGE_01, S_LGUARD, bewacht das Bosshaus, 343, Ritter
--OC_EBR_GUARDPASSAGE_02, S_LGUARD, bewacht das Bosshaus, 12, Ritter

function TA_OW_RitterSmalltalk1(_playerid) -- steht den ganzen Tag im Burghof

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 128);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end

function TA_OW_RitterSmalltalk2(_playerid) -- steht den ganzen Tag im Burghof

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 328);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end

function TA_OW_WaffenknechtLagerfeuer1(_playerid) -- sitzt von 6-0 Uhr am Lagerfeuer, schläft von 0-6 Uhr am Lagerfeuer

    if  (TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0) or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 215);
			AI_PLAYANIMATION(_playerid, "S_SIT");
		end
	end
	if	(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 215);
			AI_PLAYANIMATION(_playerid, "S_SLEEPGROUND");
		end
	end
end

function TA_OW_RitterLagerfeuer2(_playerid) -- sitzt von 6-0 Uhr am Lagerfeuer, schläft von 0-6 Uhr am Lagerfeuer

    if  (TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0) or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 220);
			AI_PLAYANIMATION(_playerid, "S_SIT");
		end
	end
	if	(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 220);
			AI_PLAYANIMATION(_playerid, "S_SLEEPGROUND");
		end
	end
end

function TA_OW_WaffenknechtLagerfeuer3(_playerid) -- sitzt von 6-0 Uhr am Lagerfeuer, schläft von 0-6 Uhr am Lagerfeuer

    if  (TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0) or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 35);
			AI_PLAYANIMATION(_playerid, "S_SIT");
		end
	end
	if	(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 35);
			AI_PLAYANIMATION(_playerid, "S_SLEEPGROUND");
		end
	end
end

function TA_OW_RitterLagerfeuer4(_playerid) -- sitzt von 6-0 Uhr am Lagerfeuer, schläft von 0-6 Uhr am Lagerfeuer

    if  (TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0) or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 31);
			AI_PLAYANIMATION(_playerid, "S_SIT");
		end
	end
	if	(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 31);
			AI_PLAYANIMATION(_playerid, "S_SLEEPGROUND");
		end
	end
end

function TA_OW_RitterWachhaus(_playerid) -- bewacht den ganzen Tag das Wachhaus

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 178);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
	end
end

function TA_OW_PaladinSaal1(_playerid) -- steht den ganzen Tag im Saal des Kommandanten

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 1);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end

function TA_OW_PaladinSaal2(_playerid) -- steht den ganzen Tag im Saal des Kommandanten

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 174);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end

function TA_OW_PaladinRaven(_playerid) -- steht den ganzen Tag im Haus der Paladine (Ravens Spot aus G1)

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 357);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end

function TA_OW_RitterOrkramme(_playerid) -- bewacht den ganzen Tag die Mauer an der Orkramme

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 72);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end

function TA_OW_RitterTorhaus(_playerid) -- bewacht den ganzen Tag die Mauer am Tor

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 346);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end

function TA_OW_RitterTuersteher1(_playerid) -- bewacht den ganzen Tag das Haus der Paladine

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 343);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end

function TA_OW_RitterTuersteher2(_playerid) -- bewacht den ganzen Tag das Haus der Paladine

    if(TA_FUNC(_playerid, 0, 0, 3, 0) or TA_FUNC(_playerid, 3, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 9, 0) or TA_FUNC(_playerid, 9, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 15, 0)
		or TA_FUNC(_playerid, 15, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 21, 0) or TA_FUNC(_playerid, 21, 0, 0, 0)) then
		
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
		
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 12);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end