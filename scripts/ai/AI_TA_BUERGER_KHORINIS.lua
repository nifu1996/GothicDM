--[[
	Daily Routines f�r B�rger Bots
--]]

-- Sounddateien --

-- weiblich: SVM_x_SMALLTALKyz -> x= 16 bis 17; yz = 01 bis 24

-- m�nnlich: SVM_x_SMALLTALKyz -> x= 1, 3 bis 14; yz = 01 bis 30

local SMALLTALK = {1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17};

for i=1, 17 do
	if i == 2 then i = 3;
	elseif i == 15 then i = 16;
	end;

	SMALLTALK[i] = {};
	if i < 15 then
		for j=1,30 do
			if j < 10 then
				SMALLTALK[i][j] = CreateSound("SVM_0"..tostring(i).."_SMALLTALK0"..tostring(j)..".WAV");
				if SMALLTALK[i][j] == -1 then print("couldnt create sound."); end;
			else
				SMALLTALK[i][j] = CreateSound("SVM_"..tostring(i).."_SMALLTALK"..tostring(j)..".WAV");
				if SMALLTALK[i][j] == -1 then print("couldnt create sound."); end;
			end;
		end;
	else
		for j=1,24 do
			if j < 10 then
				SMALLTALK[i][j] = CreateSound("SVM_"..tostring(i).."_SMALLTALK0"..tostring(j)..".WAV");
				if SMALLTALK[i][j] == -1 then print("couldnt create sound."); end;
			else
				SMALLTALK[i][j] = CreateSound("SVM_"..tostring(i).."_SMALLTALK"..tostring(j)..".WAV");
				if SMALLTALK[i][j] == -1 then print("couldnt create sound."); end;
			end;
		end;
	end;
end;

--------------
function BackToLGuard(_playerid)
	AI_PLAYANIMATION(_playerid, "S_LGUARD");
end;

function BackToHGuard(_playerid)
	AI_PLAYANIMATION(_playerid, "S_HGUARD");
end;

function BackToRun(_playerid)
	AI_PLAYANIMATION(_playerid, "S_RUN");
end;

function BackToBeer(_playerid)
	AI_PLAYANIMATION(_playerid, "S_ZABEER_S0");
end;

function BackToJoint(_playerid)
	AI_PLAYANIMATION(_playerid, "T_JOINT_RANDOM_1");
end;

-- H�ndler
function TA_BALION(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 292);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
	end
end

-- H�ndler
function TA_ROXY(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 140);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end

-- H�ndler
function TA_VLAD(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 119);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end
end

-- 3er #1
local DREIER1 = 1;

function TA_SUSANNA(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 332);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end

	if DREIER1 % 3 == 0 then DREIER1 = DREIER1 + 1; end;
	if DREIER1 >= 550 and DREIER1 <= 552 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToLGuard",1500,0,_playerid);
		local stimme = 16;
		randomBla = math.random(1,24);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
	end;
end

function TA_LILIE(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 215);
			AI_PLAYANIMATION(_playerid, "S_RUN");
		end
	end

	if DREIER1 % 3 == 1 then DREIER1 = DREIER1 + 1; end;
	if DREIER1 >= 800 and DREIER1 <= 802 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToRun",1500,0,_playerid);
		local stimme = 16;
		randomBla = math.random(1,24);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
	end;
end

function TA_EMKA(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 45);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
	end

	if DREIER1 % 3 == 2 then DREIER1 = DREIER1 + 1; end;
	if DREIER1 >= 1100 and DREIER1 <= 1102 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToHGuard",1500,0,_playerid);
		local stimme = 17;
		randomBla = math.random(1,24);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
		DREIER1 = 1;
	end;
end

local DREIER2 = 1;
-- 3er #2
function TA_MARCEL(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 183);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end

	if DREIER2 % 3 == 0 then DREIER2 = DREIER2 + 1; end;
	if DREIER2 >= 500 and DREIER2 <= 502 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToLGuard",1500,0,_playerid);
		local stimme = 1;
		randomBla = math.random(1,30);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
	end;
end

function TA_ANDREJ(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 338);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
	end

	if DREIER2 % 3 == 1 then DREIER2 = DREIER2 + 1; end;
	if DREIER2 >= 750 and DREIER2 <= 752 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToHGuard",1500,0,_playerid);
		local stimme = 4;
		randomBla = math.random(1,30);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
	end;
end

function TA_BRAN(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 91);
			AI_PLAYANIMATION(_playerid, "S_RUN");
		end
	end

	if DREIER2 % 3 == 2 then DREIER2 = DREIER2 + 1; end;
	if DREIER2 >= 1050 and DREIER2 <= 1052 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToRun",1500,0,_playerid);
		local stimme = 3;
		randomBla = math.random(1,30);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
		DREIER2 = 1;
	end;
end

local ZWEIER1 = 1;
-- 2er #1
function TA_SEBO(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 262);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end

	if ZWEIER1 % 2 == 0 then ZWEIER1 = ZWEIER1 + 1; end;
	if ZWEIER1 >= 450 and ZWEIER1 <= 451 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToLGuard",1500,0,_playerid);
		local stimme = 5;
		randomBla = math.random(1,30);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
	end;
end

function TA_STEFANO(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 85);
			AI_PLAYANIMATION(_playerid, "S_RUN");
		end
	end

	if ZWEIER1 % 2 == 1 then ZWEIER1 = ZWEIER1 + 1; end;
	if ZWEIER1 >= 650 and ZWEIER1 <= 651 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToRun",1500,0,_playerid);
		local stimme = 6;
		randomBla = math.random(1,30);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
		ZWEIER1 = 1;
	end;
end

local ZWEIER2 = 1;
-- 2er #2
function TA_NORA(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 72);
			AI_PLAYANIMATION(_playerid, "S_RUN");
		end
	end

	if ZWEIER2 % 2 == 0 then ZWEIER2 = ZWEIER2 + 1; end;
	if ZWEIER2 >= 350 and ZWEIER2 <= 351 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToRun",1500,0,_playerid);
		local stimme = 17;
		randomBla = math.random(1,24);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
	end;
end

function TA_ARJONA(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 253);
			AI_PLAYANIMATION(_playerid, "S_RUN");
		end
	end

	if ZWEIER2 % 2 == 1 then ZWEIER2 = ZWEIER2 + 1; end;
	if ZWEIER2 >= 500 and ZWEIER2 <= 501 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToRun",1500,0,_playerid);
		local stimme = 16;
		randomBla = math.random(1,24);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
		ZWEIER2 = 1;
	end;
end

local ZWEIER3 = 1;
-- 2er #3
function TA_MARIKA(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 66);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end

	if ZWEIER3 % 2 == 0 then ZWEIER3 = ZWEIER3 + 1; end;
	if ZWEIER3 >= 340 and ZWEIER3 <= 341 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToLGuard",1500,0,_playerid);
		local stimme = 17;
		randomBla = math.random(1,24);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
	end;
end

function TA_BROMIR(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 246);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end

	if ZWEIER3 % 2 == 1 then ZWEIER3 = ZWEIER3 + 1; end;
	if ZWEIER3 >= 500 and ZWEIER3 <= 501 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToLGuard",1500,0,_playerid);
		local stimme = 7;
		randomBla = math.random(1,30);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
		ZWEIER3 = 1;
	end;
end

local ZWEIER4 = 1;
-- 2er #4
function TA_ALMA(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 118);
			AI_PLAYANIMATION(_playerid, "S_RUN");
		end
	end

	if ZWEIER4 % 2 == 0 then ZWEIER4 = ZWEIER4 + 1; end;
	if ZWEIER4 >= 340 and ZWEIER4 <= 341 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToRun",1500,0,_playerid);
		local stimme = 17;
		randomBla = math.random(1,24);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
	end;
end

function TA_MAURICIO(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 293);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
	end

	if ZWEIER4 % 2 == 1 then ZWEIER4 = ZWEIER4 + 1; end;
	if ZWEIER4 >= 520 and ZWEIER4 <= 521 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToHGuard",1500,0,_playerid);
		local stimme = 8;
		randomBla = math.random(1,30);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
		ZWEIER4 = 1;
	end;
end

local ZWEIER5 = 1;
-- 2er #5
function TA_VIOLA(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 330);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end

	if ZWEIER5 % 2 == 0 then ZWEIER5 = ZWEIER5 + 1; end;
	if ZWEIER5 >= 440 and ZWEIER5 <= 441 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToLGuard",1500,0,_playerid);
		local stimme = 16;
		randomBla = math.random(1,24);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
	end;
end

function TA_DARIA(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 148);
			AI_PLAYANIMATION(_playerid, "S_RUN");
		end
	end

	if ZWEIER5 % 2 == 1 then ZWEIER5 = ZWEIER5 + 1; end;
	if ZWEIER5 >= 640 and ZWEIER5 <= 641 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToRun",1500,0,_playerid);
		local stimme = 16;
		randomBla = math.random(1,24);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
		ZWEIER5 = 1;
	end;
end

-- H�ndler
local HAFENHAENDLER = 1;

function TA_LENNY(_playerid)
	if(TA_FUNC(_playerid, 0, 0, 4, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].LASTWP ~= nil)then
            AI_NPCList[_playerid].LASTWP = "NW_CITY_HABOUR_TAVERN01_02";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 273);
			EquipMeleeWeapon(_playerid, "itmo_Beer");
			AI_PLAYANIMATION(_playerid, "S_ZABEER_S0");
		end;
		HAFENHAENDLER = 1;
	elseif(TA_FUNC(_playerid, 4, 0, 12, 00))then
        AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 0);
			AI_PLAYANIMATION(_playerid, "S_RUN");
			EquipMeleeWeapon(_playerid, "ItMw_Dolch");
		end
		HAFENHAENDLER = 0;
	elseif(TA_FUNC(_playerid, 12, 0, 21, 00))then
        AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 0);
			AI_PLAYANIMATION(_playerid, "S_RUN");
			EquipMeleeWeapon(_playerid, "ItMw_Dolch");
		end
		HAFENHAENDLER = 0;
	elseif(TA_FUNC(_playerid, 21, 0, 21, 30))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "NW_CITY_HABOUR_TAVERN01_02";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 273);
		end
		HAFENHAENDLER = 0;
	elseif(TA_FUNC(_playerid, 21, 30, 0, 0))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "NW_CITY_HABOUR_TAVERN01_02";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 273);
			EquipMeleeWeapon(_playerid, "itmo_Beer");
			AI_PLAYANIMATION(_playerid, "S_ZABEER_S0");
		end
		HAFENHAENDLER = 1;
	end

	if HAFENHAENDLER > 0 then
		if HAFENHAENDLER % 2 == 0 then HAFENHAENDLER = HAFENHAENDLER + 1; end;
		if HAFENHAENDLER == 321 then
			local randomBla = math.random(1,30);
			local stimme = 12;
			local Bla = SMALLTALK[stimme][randomBla];
			local x,y,z = GetPlayerPos(_playerid);
			for i = 0, GetMaxPlayers() - 1 do
				if GetDistancePlayers(_playerid,i) < 1500 then
					PlayPlayerSound3D(i,Bla, x, y, z,1500);
				end
			end
			AI_PLAYANIMATION(_playerid, "S_ZABEER_S1");
			SetTimerEx("BackToBeer",4000,0,_playerid);
		end;
	end;
end

-- H�ndler
function TA_PERRY(_playerid)
	if(TA_FUNC(_playerid, 0, 0, 4, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].LASTWP ~= nil)then
            AI_NPCList[_playerid].LASTWP = "NW_CITY_HABOUR_TAVERN01_03";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 89);
			EquipMeleeWeapon(_playerid, "itmo_Beer");
			AI_PLAYANIMATION(_playerid, "S_ZABEER_S0");
		end;
		HAFENHAENDLER = 1;
	elseif(TA_FUNC(_playerid, 4, 0, 12, 00))then
        AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 308);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
			EquipMeleeWeapon(_playerid, "ItMw_Wolfsmesser");
		end
		HAFENHAENDLER = 0;
	elseif(TA_FUNC(_playerid, 12, 0, 21, 00))then
        AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 308);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
			EquipMeleeWeapon(_playerid, "ItMw_Wolfsmesser");
		end
		HAFENHAENDLER = 0;
	elseif(TA_FUNC(_playerid, 21, 0, 21, 30))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "NW_CITY_HABOUR_TAVERN01_03";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 89);
		end
		HAFENHAENDLER = 0;
	elseif(TA_FUNC(_playerid, 21, 30, 0, 0))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "NW_CITY_HABOUR_TAVERN01_03";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 89);
			EquipMeleeWeapon(_playerid, "itmo_Beer");
			AI_PLAYANIMATION(_playerid, "S_ZABEER_S0");
		end
		HAFENHAENDLER = 1;
	end

	if HAFENHAENDLER > 0 then
		if HAFENHAENDLER % 2 == 1 then HAFENHAENDLER = HAFENHAENDLER + 1; end;
		if HAFENHAENDLER == 422 then
			local randomBla = math.random(1,30);
			local stimme = 11;
			local Bla = SMALLTALK[stimme][randomBla];
			local x,y,z = GetPlayerPos(_playerid);
			for i = 0, GetMaxPlayers() - 1 do
				if GetDistancePlayers(_playerid,i) < 1500 then
					PlayPlayerSound3D(i,Bla, x, y, z,1500);
				end
			end
			AI_PLAYANIMATION(_playerid, "S_ZABEER_S1");
			SetTimerEx("BackToBeer",4000,0,_playerid);
			HAFENHAENDLER = 1;
		end;
	end;
end

local DREIER3 = 1;
-- 3er #3
function TA_SARAH(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 264);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end

	if DREIER3 % 3 == 0 then DREIER3 = DREIER3 + 1; end;
	if DREIER3 >= 520 and DREIER3 <= 522 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToLGuard",1500,0,_playerid);
		local stimme = 16;
		randomBla = math.random(1,24);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
	end;
end

function TA_MELANIE(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 144);
			AI_PLAYANIMATION(_playerid, "S_RUN");
		end
	end

	if DREIER3 % 3 == 1 then DREIER3 = DREIER3 + 1; end;
	if DREIER3 >= 850 and DREIER3 <= 852 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToRun",1500,0,_playerid);
		local stimme = 17;
		randomBla = math.random(1,24);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
	end;
end

function TA_PAUL(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 49);
			AI_PLAYANIMATION(_playerid, "S_RUN");
		end
	end

	if DREIER3 % 3 == 2 then DREIER3 = DREIER3 + 1; end;
	if DREIER3 >= 1010 and DREIER3 <= 1012 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToRun",1500,0,_playerid);
		local stimme = 9;
		randomBla = math.random(1,30);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
		DREIER3 = 1;
	end;
end

-- H�ndler
local HAENDLER = 1;

function TA_NOEL(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 4, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].LASTWP ~= nil)then
            AI_NPCList[_playerid].LASTWP = "FP_SMALLTALK_TAVERN01_02";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 88);
			EquipMeleeWeapon(_playerid, "itmo_Beer");
			AI_PLAYANIMATION(_playerid, "S_ZABEER_S0");
		end;
		HAENDLER = 1;
	elseif(TA_FUNC(_playerid, 4, 0, 12, 00))then
        AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 156);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
			EquipMeleeWeapon(_playerid, "ItMw_Schmiedehammer");
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 12, 0, 21, 00))then
        AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 156);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
			EquipMeleeWeapon(_playerid, "ItMw_Schmiedehammer");
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 21, 0, 21, 30))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_SMALLTALK_TAVERN01_02";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 88);
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 21, 30, 0, 0))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_SMALLTALK_TAVERN01_02";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 88);
			EquipMeleeWeapon(_playerid, "itmo_Beer");
			AI_PLAYANIMATION(_playerid, "S_ZABEER_S0");
		end
		HAENDLER = 1;
	end

	if HAENDLER > 0 then
		if HAENDLER % 8 == 0 then HAENDLER = HAENDLER + 1; end;
		if HAENDLER == 305 then
			local randomBla = math.random(1,30);
			local stimme = 1;
			local Bla = SMALLTALK[stimme][randomBla];
			local x,y,z = GetPlayerPos(_playerid);
			for i = 0, GetMaxPlayers() - 1 do
				if GetDistancePlayers(_playerid,i) < 1500 then
					PlayPlayerSound3D(i,Bla, x, y, z,1500);
				end
			end
			AI_PLAYANIMATION(_playerid, "S_ZABEER_S1");
			SetTimerEx("BackToBeer",4000,0,_playerid);
		end;
	end;
end

-- H�ndler
function TA_REGAN(_playerid)
	if(TA_FUNC(_playerid, 0, 0, 4, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].LASTWP ~= nil)then
            AI_NPCList[_playerid].LASTWP = "FP_HAENDLERBOT_TAVERNE2";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 123);
			EquipMeleeWeapon(_playerid, "itmo_Beer");
			AI_PLAYANIMATION(_playerid, "S_ZABEER_S0");
		end
		HAENDLER = 1;
	elseif(TA_FUNC(_playerid, 4, 0, 12, 00))then
        AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 331);
			AI_PLAYANIMATION(_playerid, "S_RUN");
			EquipMeleeWeapon(_playerid, "ItMw_Schmiedehammer");
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 12, 0, 21, 00))then
        AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 331);
			AI_PLAYANIMATION(_playerid, "S_RUN");
			EquipMeleeWeapon(_playerid, "ItMw_Schmiedehammer");
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 21, 0, 21, 30))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_HAENDLERBOT_TAVERNE2";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 123);
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 21, 30, 0, 0))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_HAENDLERBOT_TAVERNE2";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 123);
			EquipMeleeWeapon(_playerid, "itmo_Beer");
			AI_PLAYANIMATION(_playerid, "S_ZABEER_S0");
		end
		HAENDLER = 1;
	end

	if HAENDLER > 0 then
		if HAENDLER % 8 == 1 then HAENDLER = HAENDLER + 1; end;
		if HAENDLER == 426 then
			local randomBla = math.random(1,30);
			local stimme = 3;
			local Bla = SMALLTALK[stimme][randomBla];
			local x,y,z = GetPlayerPos(_playerid);
			for i = 0, GetMaxPlayers() - 1 do
				if GetDistancePlayers(_playerid,i) < 1500 then
					PlayPlayerSound3D(i,Bla, x, y, z,1500);
				end
			end
			AI_PLAYANIMATION(_playerid, "S_ZABEER_S1");
			SetTimerEx("BackToBeer",4000,0,_playerid);
		end;
	end;
end

-- H�ndler
function TA_CHRISTA(_playerid)
	if(TA_FUNC(_playerid, 0, 0, 4, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].LASTWP ~= nil)then
            AI_NPCList[_playerid].LASTWP = "FP_SMALLTALK_CITY_19";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 210);
			--EquipMeleeWeapon(_playerid, "ItMi_ApfelTabak");
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
		HAENDLER = 1;
	elseif(TA_FUNC(_playerid, 4, 0, 12, 00))then
        AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 238);
			AI_PLAYANIMATION(_playerid, "S_RUN");
			EquipMeleeWeapon(_playerid, "ItMw_Dolch");
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 12, 0, 21, 00))then
        AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 238);
			AI_PLAYANIMATION(_playerid, "S_RUN");
			EquipMeleeWeapon(_playerid, "ItMw_Dolch");
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 21, 0, 21, 30))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_SMALLTALK_CITY_19";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 210);
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 21, 30, 0, 0))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_SMALLTALK_CITY_19";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 210);
			--EquipMeleeWeapon(_playerid, "ItMi_ApfelTabak");
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
		HAENDLER = 1;
	end

	if HAENDLER > 0 then
		if HAENDLER % 8 == 2 then HAENDLER = HAENDLER + 1; end;
		if HAENDLER == 467 then
			local randomBla = math.random(1,24);
			local stimme = 17;
			local Bla = SMALLTALK[stimme][randomBla];
			local x,y,z = GetPlayerPos(_playerid);
			for i = 0, GetMaxPlayers() - 1 do
				if GetDistancePlayers(_playerid,i) < 1500 then
					PlayPlayerSound3D(i,Bla, x, y, z,1500);
				end
			end
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
			SetTimerEx("BackToLGuard",4000,0,_playerid);
		end;
	end;
end

-- H�ndler
function TA_JAHN(_playerid)
	if(TA_FUNC(_playerid, 0, 0, 4, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].LASTWP ~= nil)then
            AI_NPCList[_playerid].LASTWP = "FP_SMALLTALK_SCHREINER_02";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 236);
			--EquipMeleeWeapon(_playerid, "itmo_Beer");
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
		HAENDLER = 1;
	elseif(TA_FUNC(_playerid, 4, 0, 12, 00))then
        AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 353);
			AI_PLAYANIMATION(_playerid, "S_RUN");
			EquipMeleeWeapon(_playerid, "ItMw_Handkeule");
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 12, 0, 21, 00))then
        AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 353);
			AI_PLAYANIMATION(_playerid, "S_RUN");
			EquipMeleeWeapon(_playerid, "ItMw_Handkeule");
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 21, 0, 21, 30))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_SMALLTALK_SCHREINER_02";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 236);
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 21, 30, 0, 0))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_SMALLTALK_SCHREINER_02";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 236);
			--EquipMeleeWeapon(_playerid, "itmo_Beer");
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
		HAENDLER = 1;
	end

	if HAENDLER > 0 then
		if HAENDLER % 8 == 3 then HAENDLER = HAENDLER + 1; end;
		if HAENDLER == 524 then
			local randomBla = math.random(1,30);
			local stimme = 5;
			local Bla = SMALLTALK[stimme][randomBla];
			local x,y,z = GetPlayerPos(_playerid);
			for i = 0, GetMaxPlayers() - 1 do
				if GetDistancePlayers(_playerid,i) < 1500 then
					PlayPlayerSound3D(i,Bla, x, y, z,1500);
				end
			end
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
			SetTimerEx("BackToLGuard",4000,0,_playerid);
		end;
	end;
end

-- H�ndler
function TA_SINA(_playerid)
	if(TA_FUNC(_playerid, 0, 0, 4, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].LASTWP ~= nil)then
            AI_NPCList[_playerid].LASTWP = "FP_SMALLTALK_CITY_18";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 33);
			--EquipMeleeWeapon(_playerid, "itmo_Beer");
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
		HAENDLER = 1;
	elseif(TA_FUNC(_playerid, 4, 0, 12, 00))then
        AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 64);
			AI_PLAYANIMATION(_playerid, "S_RUN");
			EquipMeleeWeapon(_playerid, "ItMw_Sichel");
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 12, 0, 21, 00))then
        AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 64);
			AI_PLAYANIMATION(_playerid, "S_RUN");
			EquipMeleeWeapon(_playerid, "ItMw_Sichel");
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 21, 0, 21, 30))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_SMALLTALK_CITY_18";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 33);
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 21, 30, 0, 0))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_SMALLTALK_CITY_18";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 33);
			--EquipMeleeWeapon(_playerid, "itmo_Beer");
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
		HAENDLER = 1;
	end

	if HAENDLER > 0 then
		if HAENDLER % 8 == 4 then HAENDLER = HAENDLER + 1; end;
		if HAENDLER == 589 then
			local randomBla = math.random(1,24);
			local stimme = 16;
			local Bla = SMALLTALK[stimme][randomBla];
			local x,y,z = GetPlayerPos(_playerid);
			for i = 0, GetMaxPlayers() - 1 do
				if GetDistancePlayers(_playerid,i) < 1500 then
					PlayPlayerSound3D(i,Bla, x, y, z,1500);
				end
			end
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
			SetTimerEx("BackToLGuard",4000,0,_playerid);
		end;
	end;
end

-- H�ndler
function TA_LYDIA(_playerid)
	if(TA_FUNC(_playerid, 0, 0, 4, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].LASTWP ~= nil)then
            AI_NPCList[_playerid].LASTWP = "FP_SMALLTALK_TAVERN01_01";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 264);
			EquipMeleeWeapon(_playerid, "itmo_Beer");
			AI_PLAYANIMATION(_playerid, "S_ZABEER_S0");
		end
		HAENDLER = 1;
	elseif(TA_FUNC(_playerid, 4, 0, 12, 00))then
        AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 151);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
			EquipMeleeWeapon(_playerid, "ItMw_Wolfsmesser");
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 12, 0, 21, 00))then
        AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 151);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
			EquipMeleeWeapon(_playerid, "ItMw_Wolfsmesser");
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 21, 0, 21, 30))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_SMALLTALK_TAVERN01_01";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 264);
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 21, 30, 0, 0))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_SMALLTALK_TAVERN01_01";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 264);
			EquipMeleeWeapon(_playerid, "itmo_Beer");
			AI_PLAYANIMATION(_playerid, "S_ZABEER_S0");
		end
		HAENDLER = 1;
	end

	if HAENDLER > 0 then
		if HAENDLER % 8 == 5 then HAENDLER = HAENDLER + 1; end;
		if HAENDLER == 654 then
			local randomBla = math.random(1,24);
			local stimme = 17;
			local Bla = SMALLTALK[stimme][randomBla];
			local x,y,z = GetPlayerPos(_playerid);
			for i = 0, GetMaxPlayers() - 1 do
				if GetDistancePlayers(_playerid,i) < 1500 then
					PlayPlayerSound3D(i,Bla, x, y, z,1500);
				end
			end
			AI_PLAYANIMATION(_playerid, "S_ZABEER_S1");
			SetTimerEx("BackToBeer",4000,0,_playerid);
		end;
	end;
end

-- H�ndler
function TA_LARA(_playerid)
	if(TA_FUNC(_playerid, 0, 0, 4, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].LASTWP ~= nil)then
            AI_NPCList[_playerid].LASTWP = "FP_SMALLTALK_SCHREINER_01";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 51);
			--EquipMeleeWeapon(_playerid, "itmo_Beer");
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
		HAENDLER = 1;
	elseif(TA_FUNC(_playerid, 4, 0, 12, 00))then
        AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 159);
			AI_PLAYANIMATION(_playerid, "S_RUN");
			EquipMeleeWeapon(_playerid, "ItMw_Gehstock");
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 12, 0, 21, 00))then
        AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 159);
			AI_PLAYANIMATION(_playerid, "S_RUN");
			EquipMeleeWeapon(_playerid, "ItMw_Gehstock");
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 21, 0, 21, 30))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_SMALLTALK_SCHREINER_01";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 51);
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 21, 30, 0, 0))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_SMALLTALK_SCHREINER_01";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 51);
			--EquipMeleeWeapon(_playerid, "itmo_Beer");
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
		HAENDLER = 1;
	end

	if HAENDLER > 0 then
		if HAENDLER % 8 == 6 then HAENDLER = HAENDLER + 1; end;
		if HAENDLER == 695 then
			local randomBla = math.random(1,24);
			local stimme = 16;
			local Bla = SMALLTALK[stimme][randomBla];
			local x,y,z = GetPlayerPos(_playerid);
			for i = 0, GetMaxPlayers() - 1 do
				if GetDistancePlayers(_playerid,i) < 1500 then
					PlayPlayerSound3D(i,Bla, x, y, z,1500);
				end
			end
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
			SetTimerEx("BackToLGuard",4000,0,_playerid);
		end;
	end;
end

-- H�ndler
function TA_ELLIE(_playerid)
	if(TA_FUNC(_playerid, 0, 0, 4, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].LASTWP ~= nil)then
            AI_NPCList[_playerid].LASTWP = "FP_HAENDLERBOT_TAVERNE8";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 322);
			EquipMeleeWeapon(_playerid, "itmo_Beer");
			AI_PLAYANIMATION(_playerid, "S_ZABEER_S0");
		end;
		HAENDLER = 1;
	elseif(TA_FUNC(_playerid, 4, 0, 12, 00))then
        AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 330);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
			EquipMeleeWeapon(_playerid, "ItMw_Dolch");
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 12, 0, 21, 00))then
        AI_ClearStates(_playerid);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 330);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
			EquipMeleeWeapon(_playerid, "ItMw_Dolch");
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 21, 0, 21, 30))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_HAENDLERBOT_TAVERNE8";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 322);
		end
		HAENDLER = 0;
	elseif(TA_FUNC(_playerid, 21, 30, 0, 0))then
		AI_ClearStates(_playerid);
		AI_SETWALKTYPE(_playerid, 0);
		if(AI_NPCList[_playerid].LASTWP ~= nil)then
			AI_NPCList[_playerid].LASTWP = "FP_HAENDLERBOT_TAVERNE8";
			AI_GOTO(_playerid, AI_NPCList[_playerid].LASTWP);
			AI_TURNTO(_playerid, 322);
			EquipMeleeWeapon(_playerid, "itmo_Beer");
			AI_PLAYANIMATION(_playerid, "S_ZABEER_S0");
		end
		HAENDLER = 1;
	end

	if HAENDLER > 0 then
		if HAENDLER % 8 == 7 then HAENDLER = HAENDLER + 1; end;
		if HAENDLER == 736 then
			local randomBla = math.random(1,24);
			local stimme = 17;
			local Bla = SMALLTALK[stimme][randomBla];
			local x,y,z = GetPlayerPos(_playerid);
			for i = 0, GetMaxPlayers() - 1 do
				if GetDistancePlayers(_playerid,i) < 1500 then
					PlayPlayerSound3D(i,Bla, x, y, z,1500);
				end
			end
			HAENDLER = 1;
			AI_PLAYANIMATION(_playerid, "S_ZABEER_S1");
			SetTimerEx("BackToBeer",4000,0,_playerid);
		end;
	end;
end

local ZWEIER6 = 1;
-- 2er #6
function TA_LENA(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 297);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end

	if ZWEIER6 % 2 == 0 then ZWEIER6 = ZWEIER6 + 1; end;
	if ZWEIER6 >= 440 and ZWEIER6 <= 441 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToLGuard",1500,0,_playerid);
		local stimme = 16;
		randomBla = math.random(1,24);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
	end;
end

function TA_RICHARD(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 113);
			AI_PLAYANIMATION(_playerid, "S_RUN");
		end
	end

	if ZWEIER6 % 2 == 1 then ZWEIER6 = ZWEIER6 + 1; end;
	if ZWEIER6 >= 680 and ZWEIER6 <= 681 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToRun",1500,0,_playerid);
		local stimme = 10;
		randomBla = math.random(1,30);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
		ZWEIER6 = 1;
	end;
end

local ZWEIER7 = 1;
-- 2er #7
function TA_CHRISTIAN(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 68);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end

	if ZWEIER7 % 2 == 0 then ZWEIER7 = ZWEIER7 + 1; end;
	if ZWEIER7 >= 390 and ZWEIER7 <= 391 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToLGuard",1500,0,_playerid);
		local stimme = 11;
		randomBla = math.random(1,30);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
	end;
end

function TA_UTE(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 246);
			AI_PLAYANIMATION(_playerid, "S_RUN");
		end
	end

	if ZWEIER7 % 2 == 1 then ZWEIER7 = ZWEIER7 + 1; end;
	if ZWEIER7 >= 680 and ZWEIER7 <= 681 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToRun",1500,0,_playerid);
		local stimme = 17;
		randomBla = math.random(1,24);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
		ZWEIER7 = 1;
	end;
end

local ZWEIER8 = 1;
-- 2er #8
function TA_JULIAN(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 108);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end

	if ZWEIER8 % 2 == 0 then ZWEIER8 = ZWEIER8 + 1; end;
	if ZWEIER8 >= 410 and ZWEIER8 <= 411 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToLGuard",1500,0,_playerid);
		local stimme = 12;
		randomBla = math.random(1,30);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
	end;
end

function TA_SIENNA(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 287);
			AI_PLAYANIMATION(_playerid, "S_RUN");
		end
	end

	if ZWEIER8 % 2 == 1 then ZWEIER8 = ZWEIER8 + 1; end;
	if ZWEIER8 >= 610 and ZWEIER8 <= 611 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToRun",1500,0,_playerid);
		local stimme = 16;
		randomBla = math.random(1,24);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
		ZWEIER8 = 1;
	end;
end

local ZWEIER9 = 1;
-- 2er #9
function TA_YAREN(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 90);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end

	if ZWEIER9 % 2 == 0 then ZWEIER9 = ZWEIER9 + 1; end;
	if ZWEIER9 >= 460 and ZWEIER9 <= 461 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToLGuard",1500,0,_playerid);
		local stimme = 13;
		randomBla = math.random(1,30);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
	end;
end

function TA_LAYLA(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 271);
			AI_PLAYANIMATION(_playerid, "S_RUN");
		end
	end

	if ZWEIER9 % 2 == 1 then ZWEIER9 = ZWEIER9 + 1; end;
	if ZWEIER9 >= 680 and ZWEIER9 <= 681 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToRun",1500,0,_playerid);
		local stimme = 16;
		randomBla = math.random(1,24);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
		ZWEIER9 = 1;
	end;
end

local ZWEIER10 = 1;
-- 2er #10
function TA_ISABELLA(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 96);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end

	if ZWEIER10 % 2 == 0 then ZWEIER10 = ZWEIER10 + 1; end;
	if ZWEIER10 >= 390 and ZWEIER10 <= 391 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToLGuard",1500,0,_playerid);
		local stimme = 17;
		randomBla = math.random(1,24);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
	end;
end

function TA_ETHAN(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 274);
			AI_PLAYANIMATION(_playerid, "S_HGUARD");
		end
	end

	if ZWEIER10 % 2 == 1 then ZWEIER10 = ZWEIER10 + 1; end;
	if ZWEIER10 >= 600 and ZWEIER10 <= 601 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToHGuard",1500,0,_playerid);
		local stimme = 14;
		randomBla = math.random(1,30);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
		ZWEIER10 = 1;
	end;
end

local ZWEIER11 = 1;
-- 2er #11
function TA_AVA(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 93);
			AI_PLAYANIMATION(_playerid, "S_LGUARD");
		end
	end

	if ZWEIER11 % 2 == 0 then ZWEIER11 = ZWEIER11 + 1; end;
	if ZWEIER11 >= 415 and ZWEIER11 <= 416 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToLGuard",1500,0,_playerid);
		local stimme = 16;
		randomBla = math.random(1,24);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
	end;
end

function TA_EVE(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 272);
			AI_PLAYANIMATION(_playerid, "S_RUN");
		end
	end

	if ZWEIER11 % 2 == 1 then ZWEIER11 = ZWEIER11 + 1; end;
	if ZWEIER11 >= 670 and ZWEIER11 <= 671 then
		local randomBla = math.random(1,10);
		if randomBla < 10 then randomBla = tostring("0"..randomBla); else randomBla = tostring(randomBla); end;
		AI_PLAYANIMATION(_playerid, "T_DIALOGGESTURE_"..randomBla);
		SetTimerEx("BackToRun",1500,0,_playerid);
		local stimme = 17;
		randomBla = math.random(1,24);
		local Bla = SMALLTALK[stimme][randomBla];
		local x,y,z = GetPlayerPos(_playerid);
		for i = 0, GetMaxPlayers() - 1 do
			if GetDistancePlayers(_playerid,i) < 1500 then
				PlayPlayerSound3D(i,Bla, x, y, z,1500);
			end
		end
		ZWEIER11 = 1;
	end;
end

-- einzelner
function TA_EKARIUS(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 289);
			AI_PLAYANIMATION(_playerid, "S_PRAY");
		end
	end
end

-- G�rtner
function TA_RAOUL(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 289);
			SetPlayerWeaponMode(_playerid, WEAPON_2H );
			AI_PLAYANIMATION(_playerid, "S_RAKE_S1");
		end
	end
end

function TA_NICLAS(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 225);
			SetPlayerWeaponMode(_playerid, WEAPON_2H );
			AI_PLAYANIMATION(_playerid, "S_RAKE_S1");
		end
	end
end

-- Luxuswaren
function TA_ZURIS(_playerid)
    if(TA_FUNC(_playerid, 0, 0, 6, 0) or TA_FUNC(_playerid, 6, 0, 12, 0) or TA_FUNC(_playerid, 12, 0, 18, 0) or TA_FUNC(_playerid, 18, 0, 0, 0))then
	    AI_ClearStates(_playerid);
        AI_SETWALKTYPE(_playerid, 0);
        if(AI_NPCList[_playerid].StartWP ~= nil)then
            AI_GOTO(_playerid, AI_NPCList[_playerid].StartWP);
			AI_TURNTO(_playerid, 289);
			AI_PLAYANIMATION(_playerid, "S_RUN");
		end
	end
end
