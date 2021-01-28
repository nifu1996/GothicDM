function DR_GotoFP(_playerid, fp_patter)
    local fp = nil;
        if(AI_NPCList[_playerid].LASTWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
            AI_ALIGNTOWP(_playerid, AI_NPCList[_playerid].LASTWP);

            fp = GetNextNearFreepoint(_playerid, AI_NPCList[_playerid].LASTWP, fp_patter);
        end

        if(fp ~= nil)then
            AI_GOTOFP(_playerid, fp);
            AI_ALIGNTOFP(_playerid, fp);
        end
end

function DR_FUNC_SLEEP(_playerid)
        AI_SETWALKTYPE(_playerid,  0);

        DR_GotoFP(_playerid, "fp_sleep");

        AI_PLAYANIMATION(_playerid,  "T_STAND_2_SLEEP");
        AI_STOPMS(_playerid,  1000);
        AI_PLAYANIMATION(_playerid,  "S_SLEEP");
end

function DR_FUNC_ROAM(_playerid)
        AI_SETWALKTYPE(_playerid,  0);

        DR_GotoFP(_playerid, "fp_roam");

        local roamNr = math.random(1, 3);
        AI_PLAYANIMATION(_playerid,  "R_ROAM"..roamNr, false);
end

function DR_FUNC_EAT(_playerid)
        AI_SETWALKTYPE(_playerid,  0);

        DR_GotoFP(_playerid, "fp_roam");

        AI_PLAYANIMATION(_playerid,  "T_STAND_2_EAT");
        --AI_STOPMS(_playerid,  500);
        AI_PLAYANIMATION(_playerid,  "S_EAT");

        AI_STOP(_playerid, math.random(10,60));
        AI_RESET_DR(_playerid);

        local roamNr = math.random(1, 3);
        --AI_PLAYANIMATION(_playerid,  "R_ROAM"..roamNr);
end

function DR_FUNC_EAT_SHEEP(_playerid) -- Soll verhindern das Schafe immer so weit von ihrer Startposition weglaufen
        
		AI_SETWALKTYPE(_playerid,  0);

        --DR_GotoFP(_playerid, "fp_sleep"); --fp_roam

        AI_PLAYANIMATION(_playerid,  "T_STAND_2_EAT");
        --AI_STOPMS(_playerid,  500);
        AI_PLAYANIMATION(_playerid,  "T_EAT");

        AI_STOP(_playerid, math.random(10,60));
		
		--local roamNr = math.random(1, 3);
        --AI_PLAYANIMATION(_playerid,  "R_ROAM"..roamNr, true);
		
		--AI_ClearStates(_playerid);
        AI_RESET_DR(_playerid);
end

function DR_FUNC_EAT_ORKS(_playerid)
        AI_SETWALKTYPE(_playerid,  0);

        DR_GotoFP(_playerid, "fp_roam");

        --AI_PLAYANIMATION(_playerid,  "T_PERCEPTION"); -- Ork schaut sich um
		local roamNr = math.random(1, 3);
        AI_PLAYANIMATION(_playerid,  "R_ROAM"..roamNr);
		AI_STOPMS(_playerid,  5000);

        AI_RESET_DR(_playerid);

end

function DR_FUNC_BLATTCRAWLER(_playerid)
        AI_SETWALKTYPE(_playerid,  0);

        DR_GotoFP(_playerid, "fp_roam");

        --AI_PLAYANIMATION(_playerid,  "T_STAND_2_EAT"); --t_Perception
        --AI_STOPMS(_playerid,  1000);
        AI_PLAYANIMATION(_playerid,  "S_EAT");

        AI_STOP(_playerid, math.random(10,30));
        AI_RESET_DR(_playerid);
end
