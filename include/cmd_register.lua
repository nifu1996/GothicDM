function createChar(playerid)
	-- print("function createChar(playerid)", playerid)

	SetPlayerPos(playerid, regStart[0], regStart[1], regStart[2]);
	FreezePlayer(playerid,1);
	Player[playerid].aniblock = true;
	Player[playerid].register = 1
	Player[playerid].kopf = "Hum_Head_Pony";
	Player[playerid].torso = "Hum_Body_Naked0";
	Player[playerid].torsoskin = 1;
	Player[playerid].kopfskin = 0;
	current_headlist = table.copy(male_faces_normal);
	SetPlayerAdditionalVisual(playerid, Player[playerid].torso, Player[playerid].torsoskin, Player[playerid].kopf, Player[playerid].kopfskin);
	SetPlayerAngle(playerid, 90);
	SetCameraBehindVob(playerid,gVob);

	for i=0,table.getn(animationDraw) do
		ShowDraw(playerid,animationDraw[i]);
	end
	HideDraw(playerid,animationDraw[0]);
	ShowDraw(playerid,animationDraw_selected[0]);
end

function registerPlayer(playerid, name_, password_)
	if (mysql_check_connection() == true) then
		-- Escape the strings to avoid SQL-Injection
		local name = mysql_escape_string(mysql_handler, name_);
		if (not playerExists(name)) then
			local password = mysql_escape_string(mysql_handler, password_);
			local result = mysql_query(mysql_handler, "INSERT INTO user SET name='" .. name .. "', passwort='" .. MD5(password) .. "', kopf='" .. "Hum_Head_Pony" .. "', kopfskin='" .. "85" .. "', Torso='" .. "Hum_Body_Naked0" .. "', Torsoskin='" .. "1" .. "', Fett='" .. "0" .. "'");
			if (result) then
				Player[playerid].nick = name;
				SetPlayerName(playerid, name);
				Player[playerid].isOnline = 1;
				Player[playerid].Lager = 1;
				sendOKMessage(playerid, "Dein Account " .. name .. " wurde erfolgreich erstellt.");
			else
				sendERRMessage(playerid, "Dein Account " .. name .. " konnte nicht erstellt werden.");
			end
		else
			sendERRMessage(playerid, "Der Name " .. name .. " ist bereits vergeben. Bitte waehle einen anderen.");
		end
	end
end

function HideRegistrationList(playerid)
	Player[playerid].selectedOption = nil;
	for i=0,table.getn(animationDraw) do
		HideDraw(playerid,animationDraw[i]);
		HideDraw(playerid,animationDraw_selected[i]);
	end
end

function switchUP(playerid)
	if Player[playerid].selectedOption > 0 then
		HideDraw(playerid, animationDraw_selected[Player[playerid].selectedOption]);
		ShowDraw(playerid, animationDraw[Player[playerid].selectedOption]);

		Player[playerid].selectedOption = Player[playerid].selectedOption - 1;

		HideDraw(playerid, animationDraw[Player[playerid].selectedOption]);
		ShowDraw(playerid, animationDraw_selected[Player[playerid].selectedOption]);
	end
end

function switchDOWN(playerid)
	if Player[playerid].selectedOption < table.getn(animationDraw) then
		HideDraw(playerid, animationDraw_selected[Player[playerid].selectedOption]);
		ShowDraw(playerid, animationDraw[Player[playerid].selectedOption]);

		Player[playerid].selectedOption = Player[playerid].selectedOption + 1;

		HideDraw(playerid, animationDraw[Player[playerid].selectedOption]);
		ShowDraw(playerid, animationDraw_selected[Player[playerid].selectedOption]);
	end
end

function switchRIGHT(playerid)
	--[[if Player[playerid].selectedOption == 0 then
		if Player[playerid].torso == "Hum_Body_Naked0" then
			Player[playerid].torso = "Hum_Body_Babe0";
			Player[playerid].kopf = "Hum_Head_babe";
			Player[playerid].torsoskin = 5;
			Player[playerid].kopfskin = 137;
			current_headlist = table.copy(female_faces_normal);
		else
			Player[playerid].torso = "Hum_Body_Naked0";
			Player[playerid].kopf = "Hum_Head_Pony";
			Player[playerid].torsoskin = 1;
			Player[playerid].kopfskin = 0;
			current_headlist = table.copy(male_faces_normal);
		end]]
	if Player[playerid].selectedOption == 0 then
		if Player[playerid].torso == "Hum_Body_Naked0" then
			if Player[playerid].kopf == "Hum_Head_Pony" then
				SendPlayerMessage(playerid,100,200,100,"Ende der Liste erreicht. Springe zum Anfang.");
				Player[playerid].kopf = "Hum_Head_Psionic";
			elseif Player[playerid].kopf == "Hum_Head_FatBald" then
				Player[playerid].kopf = "Hum_Head_Pony";
			elseif Player[playerid].kopf == "Hum_Head_Fighter" then
				Player[playerid].kopf = "Hum_Head_FatBald";
			elseif Player[playerid].kopf == "Hum_Head_Bald" then
				Player[playerid].kopf = "Hum_Head_Fighter";
			elseif Player[playerid].kopf == "Hum_Head_Thief" then
				Player[playerid].kopf = "Hum_Head_Bald";
			elseif Player[playerid].kopf == "Hum_Head_Psionic" then
				Player[playerid].kopf = "Hum_Head_Thief";
			end
		else
			if Player[playerid].kopf == "Hum_Head_babe" then
				Player[playerid].kopf = "Hum_Head_babe1";
				SendPlayerMessage(playerid,100,200,100,"Ende der Liste erreicht. Springe zum Anfang.");
			elseif Player[playerid].kopf == "Hum_Head_babe1" then
				Player[playerid].kopf = "Hum_Head_babe2";
			elseif Player[playerid].kopf == "Hum_Head_babe2" then
				Player[playerid].kopf = "Hum_Head_babe3";
			elseif Player[playerid].kopf == "Hum_Head_babe3" then
				Player[playerid].kopf = "Hum_Head_babe4";
			elseif Player[playerid].kopf == "Hum_Head_babe4" then
				Player[playerid].kopf = "Hum_Head_babe5";
			elseif Player[playerid].kopf == "Hum_Head_babe5" then
				Player[playerid].kopf = "Hum_Head_babe6";
			elseif Player[playerid].kopf == "Hum_Head_babe6" then
				Player[playerid].kopf = "Hum_Head_babe7";
			elseif Player[playerid].kopf == "Hum_Head_babe7" then
				Player[playerid].kopf = "Hum_Head_babe8";
			elseif Player[playerid].kopf == "Hum_Head_babe8" then
				Player[playerid].kopf = "Hum_Head_babe9";
			elseif Player[playerid].kopf == "Hum_Head_babe9" then
				Player[playerid].kopf = "Hum_Head_babe1";
			end
		end
	elseif Player[playerid].selectedOption == 1 then
		if Player[playerid].kopfskin < current_headlist[table.getn(current_headlist)] then
			head_arraypos = head_arraypos+1;
			Player[playerid].kopfskin = current_headlist[head_arraypos];
		else
			Player[playerid].kopfskin = current_headlist[1];
			head_arraypos = 1;
			SendPlayerMessage(playerid,100,200,100,"Ende erreicht, springt zum Anfang.");
		end
	elseif Player[playerid].selectedOption == 2 then
		if Player[playerid].torso == "Hum_Body_Naked0" then
			if Player[playerid].torsoskin == 0 then
				Player[playerid].torsoskin = 1;
			elseif Player[playerid].torsoskin == 1 then
				Player[playerid].torsoskin = 2;
			elseif Player[playerid].torsoskin == 2 then
				Player[playerid].torsoskin = 3;
			elseif Player[playerid].torsoskin == 3 then
				Player[playerid].torsoskin = 8;
			elseif Player[playerid].torsoskin == 8 then
				Player[playerid].torsoskin = 9;
			elseif Player[playerid].torsoskin == 9 then
				Player[playerid].torsoskin = 10;
			elseif Player[playerid].torsoskin == 10 then
				Player[playerid].torsoskin = 0;
				SendPlayerMessage(playerid,80,180,0,"Ende erreicht, springt zum Anfang.");
			end
		else
			if Player[playerid].torsoskin == 4 then
				Player[playerid].torsoskin = 5;
			elseif Player[playerid].torsoskin == 5 then
				Player[playerid].torsoskin = 6;
			elseif Player[playerid].torsoskin == 6 then
				Player[playerid].torsoskin = 7;
			elseif Player[playerid].torsoskin == 7 then
				Player[playerid].torsoskin = 11;
			elseif Player[playerid].torsoskin == 11 then
				Player[playerid].torsoskin = 12;
			elseif Player[playerid].torsoskin == 12 then
				Player[playerid].torsoskin = 4;
				SendPlayerMessage(playerid,80,180,0,"Ende erreicht, springt zum Anfang.");
			end
		end
		head_arraypos = 1;
		if Player[playerid].torsoskin == 0 then
			current_headlist = table.copy(male_faces_pale);
		elseif Player[playerid].torsoskin == 1 or Player[playerid].torsoskin == 8 or Player[playerid].torsoskin == 9 or Player[playerid].torsoskin == 10 then
			current_headlist = table.copy(male_faces_normal);
		elseif Player[playerid].torsoskin == 2 then
			current_headlist = table.copy(male_faces_latino);
		elseif Player[playerid].torsoskin == 3 then
			current_headlist = table.copy(male_faces_black);
		elseif Player[playerid].torsoskin == 4 then
			current_headlist = table.copy(female_faces_pale);
		elseif Player[playerid].torsoskin == 5 or Player[playerid].torsoskin == 11 or Player[playerid].torsoskin == 12 then
			current_headlist = table.copy(female_faces_normal);
		elseif Player[playerid].torsoskin == 6 then
			current_headlist = table.copy(female_faces_latino);
		elseif Player[playerid].torsoskin == 7 then
			current_headlist = table.copy(female_faces_black);
		end
		Player[playerid].headtex = current_headlist[1];
	elseif Player[playerid].selectedOption == 3 then
		Player[playerid].fatness = Player[playerid].fatness + 0.2;
		if Player[playerid].fatness > 1.0 then
			Player[playerid].fatness = 0.6;
			SendPlayerMessage(playerid,80,180,0,"Ende erreicht, springt zum Anfang.");
		end
	elseif Player[playerid].selectedOption == 5 then
		Player[playerid].xscale = Player[playerid].xscale + 0.025;
		if Player[playerid].xscale > 1.0 then
			Player[playerid].xscale = 1.0;
			SendPlayerMessage(playerid,80,180,0,"Ende erreicht, springt zum Anfang.");
		end
	end
	SetPlayerAdditionalVisual(playerid, Player[playerid].torso, Player[playerid].torsoskin, Player[playerid].kopf, Player[playerid].kopfskin);
	SetPlayerScale(playerid,Player[playerid].xscale,1,1);
	SetPlayerFatness(playerid, Player[playerid].fatness);
end

function switchLEFT(playerid)
	--[[if Player[playerid].selectedOption == 0 then
		if Player[playerid].torso == "Hum_Body_Naked0" then
			Player[playerid].torso = "Hum_Body_Babe0";
			Player[playerid].kopf = "Hum_Head_babe";
			Player[playerid].torsoskin = 5;
			Player[playerid].kopfskin = 137;
			current_headlist = table.copy(female_faces_normal);
		else
			Player[playerid].torso = "Hum_Body_Naked0";
			Player[playerid].kopf = "Hum_Head_Pony";
			Player[playerid].torsoskin = 1;
			Player[playerid].kopfskin = 0;
			current_headlist = table.copy(male_faces_normal);
		end]]
	if Player[playerid].selectedOption == 0 then
		if Player[playerid].torso == "Hum_Body_Naked0" then
			if Player[playerid].kopf == "Hum_Head_Pony" then
				Player[playerid].kopf = "Hum_Head_FatBald";
				SendPlayerMessage(playerid,100,200,100,"Anfang der Liste erreicht. Springe zum Ende.");
			elseif Player[playerid].kopf == "Hum_Head_FatBald" then
				Player[playerid].kopf = "Hum_Head_Fighter";
			elseif Player[playerid].kopf == "Hum_Head_Fighter" then
				Player[playerid].kopf = "Hum_Head_Bald";
			elseif Player[playerid].kopf == "Hum_Head_Bald" then
				Player[playerid].kopf = "Hum_Head_Thief";
			elseif Player[playerid].kopf == "Hum_Head_Thief" then
				Player[playerid].kopf = "Hum_Head_Psionic";
			elseif Player[playerid].kopf == "Hum_Head_Psionic" then
				Player[playerid].kopf = "Hum_Head_Pony";
			end
		else
			if Player[playerid].kopf == "Hum_Head_babe" then
				Player[playerid].kopf = "Hum_Head_babe9";
				SendPlayerMessage(playerid,100,200,100,"Anfang der Liste erreicht. Springe zum Ende.");
			elseif Player[playerid].kopf == "Hum_Head_babe2" then
				Player[playerid].kopf = "Hum_Head_babe";
			elseif Player[playerid].kopf == "Hum_Head_babe2" then
				Player[playerid].kopf = "Hum_Head_babe1";
			elseif Player[playerid].kopf == "Hum_Head_babe3" then
				Player[playerid].kopf = "Hum_Head_babe2";
			elseif Player[playerid].kopf == "Hum_Head_babe4" then
				Player[playerid].kopf = "Hum_Head_babe3";
			elseif Player[playerid].kopf == "Hum_Head_babe5" then
				Player[playerid].kopf = "Hum_Head_babe4";
			elseif Player[playerid].kopf == "Hum_Head_babe6" then
				Player[playerid].kopf = "Hum_Head_babe5";
			elseif Player[playerid].kopf == "Hum_Head_babe7" then
				Player[playerid].kopf = "Hum_Head_babe6";
			elseif Player[playerid].kopf == "Hum_Head_babe8" then
				Player[playerid].kopf = "Hum_Head_babe7";
			elseif Player[playerid].kopf == "Hum_Head_babe9" then
				Player[playerid].kopf = "Hum_Head_babe8";
			end
		end
	elseif Player[playerid].selectedOption == 1 then
		if Player[playerid].kopfskin > current_headlist[1] then
			head_arraypos = head_arraypos-1;
			Player[playerid].kopfskin = current_headlist[head_arraypos];
		else
			Player[playerid].kopfskin = current_headlist[table.getn(current_headlist)];
			head_arraypos = table.getn(current_headlist);
			SendPlayerMessage(playerid,100,200,100,"Anfang erreicht, springt zum Ende.");
		end
	elseif Player[playerid].selectedOption == 2 then
		if Player[playerid].torso == "Hum_Body_Naked0" then
			if Player[playerid].torsoskin == 0 then
				Player[playerid].torsoskin = 10;
			elseif Player[playerid].torsoskin == 10 then
				Player[playerid].torsoskin = 9;
			elseif Player[playerid].torsoskin == 9 then
				Player[playerid].torsoskin = 8;
			elseif Player[playerid].torsoskin == 8 then
				Player[playerid].torsoskin = 3;
			elseif Player[playerid].torsoskin == 3 then
				Player[playerid].torsoskin = 2;
			elseif Player[playerid].torsoskin == 2 then
				Player[playerid].torsoskin = 1;
			elseif Player[playerid].torsoskin == 1 then
				Player[playerid].torsoskin = 0;
				SendPlayerMessage(playerid,100,200,100,"Anfang erreicht, springt zum Ende.");
			end
		else
			if Player[playerid].torsoskin == 4 then
				Player[playerid].torsoskin = 12;
			elseif Player[playerid].torsoskin == 12 then
				Player[playerid].torsoskin = 11;
			elseif Player[playerid].torsoskin == 11 then
				Player[playerid].torsoskin = 7;
			elseif Player[playerid].torsoskin == 7 then
				Player[playerid].torsoskin = 6;
			elseif Player[playerid].torsoskin == 6 then
				Player[playerid].torsoskin = 5;
			elseif Player[playerid].torsoskin == 5 then
				Player[playerid].torsoskin = 4;
				SendPlayerMessage(playerid,100,200,100,"Anfang erreicht, springt zum Ende.");
			end
		end
		head_arraypos = 1;
		if Player[playerid].torsoskin == 0 then
			current_headlist = table.copy(male_faces_pale);
		elseif Player[playerid].torsoskin == 1 or Player[playerid].torsoskin == 8 or Player[playerid].torsoskin == 9 or Player[playerid].torsoskin == 10 then
			current_headlist = table.copy(male_faces_normal);
		elseif Player[playerid].torsoskin == 2 then
			current_headlist = table.copy(male_faces_latino);
		elseif Player[playerid].torsoskin == 3 then
			current_headlist = table.copy(male_faces_black);
		elseif Player[playerid].torsoskin == 4 then
			current_headlist = table.copy(female_faces_pale);
		elseif Player[playerid].torsoskin == 5 or Player[playerid].torsoskin == 11 or Player[playerid].torsoskin == 12 then
			current_headlist = table.copy(female_faces_normal);
		elseif Player[playerid].torsoskin == 6 then
			current_headlist = table.copy(female_faces_latino);
		elseif Player[playerid].torsoskin == 7 then
			current_headlist = table.copy(female_faces_black);
		end
		Player[playerid].headtex = current_headlist[1];
	elseif Player[playerid].selectedOption == 3 then
        Player[playerid].fatness = Player[playerid].fatness - 0.2;
        if Player[playerid].fatness < 0.6 then
            Player[playerid].fatness = 1.0;
            SendPlayerMessage(playerid,100,200,100,"Anfang erreicht, springt zum Ende.");
        end
	elseif Player[playerid].selectedOption == 4 then
		Player[playerid].xscale = Player[playerid].xscale - 0.025;
        if Player[playerid].xscale < 1.0 then
            Player[playerid].xscale = 1.0;
            SendPlayerMessage(playerid,80,180,0,"Anfang erreicht, springt zum Ende.");
        end
	end
	SetPlayerAdditionalVisual(playerid, Player[playerid].torso, Player[playerid].torsoskin, Player[playerid].kopf, Player[playerid].kopfskin);
	SetPlayerScale(playerid,Player[playerid].xscale,1,1);
	SetPlayerFatness(playerid, Player[playerid].fatness);
end

function createBackgroundStory(playerid)
	-- print("function createBackgroundStory(playerid)", playerid)

	if Mode == "Deathmatch" then	
		if Map == "Kolonie" then
			Player[playerid].BS0 = CreatePlayerDraw(playerid,500,2000,"Waehle dein Lager:",font_big,255,255,255);
			Player[playerid].BS1 = CreatePlayerDraw(playerid,500,3500,"Altes Lager",font_big,255,255,255);
			Player[playerid].BS2 = CreatePlayerDraw(playerid,2900,3500,"Neues Lager",font_big,255,255,255);
			Player[playerid].BS3 = CreatePlayerDraw(playerid,5300,3500,"Sumpflager",font_big,255,255,255);
			Player[playerid].selectedBS1 = CreatePlayerDraw(playerid,500,3500,"Altes Lager",font_big,255,75,75);
			Player[playerid].selectedBS2 = CreatePlayerDraw(playerid,2900,3500,"Neues Lager",font_big,255,75,75);
			Player[playerid].selectedBS3 = CreatePlayerDraw(playerid,5300,3500,"Sumpflager",font_big,255,75,75);

			Player[playerid].BStory1[1] = CreatePlayerDraw(playerid,500,4500,"Ob als Buddler, Schatten oder Gardist:",font_small,255,255,255);
			Player[playerid].BStory1[2] = CreatePlayerDraw(playerid,500,4700,"Kaempfe fuer dein Lager!",font_small,255,255,255);
			Player[playerid].BStory1[3] = CreatePlayerDraw(playerid,500,4900,"",font_small,255,255,255);
			Player[playerid].BStory1[4] = CreatePlayerDraw(playerid,500,5400,"Die besten werden sogar Erzbaron.",font_small,255,255,255);
			Player[playerid].BStory1[5] = CreatePlayerDraw(playerid,600,5900,"Kaempfe fuer den Erzbaron!",font_small,0,255,255);

			Player[playerid].BStory2[1] = CreatePlayerDraw(playerid,2900,4500,"Ob als Schuerfer, Bandit",font_small,255,255,255);
			Player[playerid].BStory2[2] = CreatePlayerDraw(playerid,2900,4700,"oder Soeldner:",font_small,255,255,255);
			Player[playerid].BStory2[3] = CreatePlayerDraw(playerid,2900,4900,"Kaempfe fuer dein Lager!",font_small,255,255,255);
			Player[playerid].BStory2[4] = CreatePlayerDraw(playerid,2900,5100,"",font_small,255,255,255);
			Player[playerid].BStory2[5] = CreatePlayerDraw(playerid,2900,5400,"Die Magier forschen gerade an",font_small,255,255,255);
			Player[playerid].BStory2[6] = CreatePlayerDraw(playerid,2900,5600,"einer Ruestung aus Erz!",font_small,255,255,255);
			Player[playerid].BStory2[7] = CreatePlayerDraw(playerid,2950,5900,"Kaempfe fuer die Wassermagier!",font_small,0,255,255);

			Player[playerid].BStory3[1] = CreatePlayerDraw(playerid,5300,4500,"Ob als Novize oder Templer:",font_small,255,255,255);
			Player[playerid].BStory3[2] = CreatePlayerDraw(playerid,5300,4700,"Der Sumpf braucht dich!",font_small,255,255,255);
			Player[playerid].BStory3[3] = CreatePlayerDraw(playerid,5300,4900,"Kaempfe fuer dein Lager!",font_small,255,255,255);
			Player[playerid].BStory3[4] = CreatePlayerDraw(playerid,5300,5100,"",font_small,255,255,255);
			Player[playerid].BStory3[5] = CreatePlayerDraw(playerid,5300,5400,"Diese neuen Ruestungen aus",font_small,255,255,255);
			Player[playerid].BStory3[6] = CreatePlayerDraw(playerid,5300,5600,"Crawlerplatten sind interessant.",font_small,255,255,255);
			Player[playerid].BStory3[7] = CreatePlayerDraw(playerid,5300,5900,"Kaempfe fuer den Schlaefer",font_small,0,255,255);
		elseif Map == "Jharkendar" then
			Player[playerid].BS0 = CreatePlayerDraw(playerid,500,2000,"Waehle dein Lager:",font_big,255,255,255);
			Player[playerid].BS1 = CreatePlayerDraw(playerid,500,3500,"Piraten",font_big,255,255,255);
			Player[playerid].BS2 = CreatePlayerDraw(playerid,2900,3500,"Banditen",font_big,255,255,255);

			Player[playerid].selectedBS1 = CreatePlayerDraw(playerid,500,3500,"Piraten",font_big,255,75,75);
			Player[playerid].selectedBS2 = CreatePlayerDraw(playerid,2900,3500,"Banditen",font_big,255,75,75);

			Player[playerid].BStory1[1] = CreatePlayerDraw(playerid,500,4500,"Arr, du Landratte willst ",font_small,255,255,255);
			Player[playerid].BStory1[2] = CreatePlayerDraw(playerid,500,4700,"dich uns also anschliessen?",font_small,255,255,255);
			Player[playerid].BStory1[3] = CreatePlayerDraw(playerid,500,4900,"Nun gut. Du darfst dich im ",font_small,255,255,255);
			Player[playerid].BStory1[4] = CreatePlayerDraw(playerid,500,5100,"Sumpf um ein paar Probleme kuemmern.",font_small,255,255,255);

			Player[playerid].BStory2[1] = CreatePlayerDraw(playerid,2900,4500,"Du willst kaempfen? Alles klar! ",font_small,255,255,255);
			Player[playerid].BStory2[2] = CreatePlayerDraw(playerid,2900,4700,"Die Piraten wollen sich unser",font_small,255,255,255);
			Player[playerid].BStory2[3] = CreatePlayerDraw(playerid,2900,4900,"Lager unter den Nagel reissen. ",font_small,255,255,255);
			Player[playerid].BStory2[4] = CreatePlayerDraw(playerid,2900,5100,"Unternimm was dagegen!",font_small,255,255,255);
		elseif Map == "Khorinis" then
			Player[playerid].BS0 = CreatePlayerDraw(playerid,500,2000,"Waehle dein Lager:",font_big,255,255,255);
			Player[playerid].BS1 = CreatePlayerDraw(playerid,500,3500,"Feuermagier",font_big,255,255,255);
			Player[playerid].BS2 = CreatePlayerDraw(playerid,2900,3500,"Schwarzmagier",font_big,255,255,255);

			Player[playerid].selectedBS1 = CreatePlayerDraw(playerid,500,3500,"Feuermagier",font_big,255,75,75);
			Player[playerid].selectedBS2 = CreatePlayerDraw(playerid,2900,3500,"Schwarzmagier",font_big,255,75,75);

			Player[playerid].BStory1[1] = CreatePlayerDraw(playerid,500,4500,"Du willst dich also im dienste ",font_small,255,255,255);
			Player[playerid].BStory1[2] = CreatePlayerDraw(playerid,500,4700,"Innos stellen. Nun gut",font_small,255,255,255);
			Player[playerid].BStory1[3] = CreatePlayerDraw(playerid,500,4900,"ich habe eine Pruefung fuer euch... ",font_small,255,255,255);
			Player[playerid].BStory1[4] = CreatePlayerDraw(playerid,500,5100,"Moege Innos euren Weg leiten.",font_small,255,255,255);

			Player[playerid].BStory2[1] = CreatePlayerDraw(playerid,2900,4500,"Du kommst einfach so her und",font_small,255,255,255);
			Player[playerid].BStory2[2] = CreatePlayerDraw(playerid,2900,4700,"bietest deine dienste an?",font_small,255,255,255);
			Player[playerid].BStory2[3] = CreatePlayerDraw(playerid,2900,4900,"Du musst verrueckt sein oder",font_small,255,255,255);
			Player[playerid].BStory2[4] = CreatePlayerDraw(playerid,2900,5100,"verdammt viel mum haben!",font_small,255,255,255);
		end
	elseif Mode == "KilltheKing"then
		Player[playerid].BS0 = CreatePlayerDraw(playerid,2900,2000,"Waehle dein Team:",font_big,255,255,255);
		Player[playerid].BS1 = CreatePlayerDraw(playerid,2900,2250,"Rot",font_big,255,255,255);
		Player[playerid].BS2 = CreatePlayerDraw(playerid,2900,2500,"Blau",font_big,255,255,255);
		Player[playerid].BS3 = CreatePlayerDraw(playerid,2900,2750,"Gruen",font_big,255,255,255);
		Player[playerid].BS4 = CreatePlayerDraw(playerid,2900,3000,"Gelb",font_big,255,255,255);
		Player[playerid].BS5 = CreatePlayerDraw(playerid,2900,3250,"Orange",font_big,255,255,255);
		Player[playerid].BS6 = CreatePlayerDraw(playerid,2900,3500,"Lila",font_big,255,255,255);
		
		Player[playerid].selectedBS1 = CreatePlayerDraw(playerid,2900,2250,"Rot",font_big,255,75,75);
		Player[playerid].selectedBS2 = CreatePlayerDraw(playerid,2900,2500,"Blau",font_big,255,75,75);
		Player[playerid].selectedBS3 = CreatePlayerDraw(playerid,2900,2750,"Gruen",font_big,255,75,75);
		Player[playerid].selectedBS4 = CreatePlayerDraw(playerid,2900,3000,"Gelb",font_big,255,75,75);
		Player[playerid].selectedBS5 = CreatePlayerDraw(playerid,2900,3250,"Orange",font_big,255,75,75);
		Player[playerid].selectedBS6 = CreatePlayerDraw(playerid,2900,3500,"Lila",font_big,255,75,75);
	end
end;

BS1textureRahmen = CreateTexture(450,4000,450+2450,4000+2500,"Menu_Ingame.tga"); -- Register 1
BS2textureRahmen = CreateTexture(2850,4000,2850+2450,4000+2500,"Menu_Ingame.tga"); -- Register 2
BS3textureRahmen = CreateTexture(5250,4000,5250+2450,4000+2500,"Menu_Ingame.tga"); -- Register 3

BigtextureRahmen = CreateTexture(2850,2000,2850+2450,4000+2200,"Menu_Ingame.tga"); -- Register 3

function showBackgroundStory(playerid)
	-- print("function showBackgroundStory(playerid)", playerid)

	if Mode == "Deathmatch" then
		if Map == "Kolonie" then
			Player[playerid].bstoryselect = 1;
			ShowTexture(playerid,BS1textureRahmen);
			ShowTexture(playerid,BS2textureRahmen);
			ShowTexture(playerid,BS3textureRahmen);
			ShowPlayerDraw(playerid,Player[playerid].BS0);
			ShowPlayerDraw(playerid,Player[playerid].selectedBS1);
			ShowPlayerDraw(playerid,Player[playerid].BS2);
			ShowPlayerDraw(playerid,Player[playerid].BS3);
			for i=1, #Player[playerid].BStory1 do ShowPlayerDraw(playerid,Player[playerid].BStory1[i]); end;
			for i=1, #Player[playerid].BStory2 do ShowPlayerDraw(playerid,Player[playerid].BStory2[i]); end;
			for i=1, #Player[playerid].BStory3 do ShowPlayerDraw(playerid,Player[playerid].BStory3[i]); end;
		elseif Map == "Jharkendar" or Map == "Khorinis" then
			Player[playerid].bstoryselect = 1;
			ShowTexture(playerid,BS1textureRahmen);
			ShowTexture(playerid,BS2textureRahmen);
			ShowPlayerDraw(playerid,Player[playerid].BS0);
			ShowPlayerDraw(playerid,Player[playerid].selectedBS1);
			ShowPlayerDraw(playerid,Player[playerid].BS2);
			for i=1, #Player[playerid].BStory1 do ShowPlayerDraw(playerid,Player[playerid].BStory1[i]); end;
			for i=1, #Player[playerid].BStory2 do ShowPlayerDraw(playerid,Player[playerid].BStory2[i]); end;
		end
	elseif Mode == "KilltheKing"then
		ShowTexture(playerid,BigtextureRahmen);
		Player[playerid].bstoryselect = 1;
		ShowPlayerDraw(playerid,Player[playerid].BS0);
		ShowPlayerDraw(playerid,Player[playerid].selectedBS1);
		ShowPlayerDraw(playerid,Player[playerid].BS2);
		ShowPlayerDraw(playerid,Player[playerid].BS3);
		ShowPlayerDraw(playerid,Player[playerid].BS4);
		ShowPlayerDraw(playerid,Player[playerid].BS5);
		ShowPlayerDraw(playerid,Player[playerid].BS6);
	end
end;

function storySwitchRIGHT(playerid)
	if Map == "Kolonie" then
		if Player[playerid].bstoryselect == 3 then
			Player[playerid].bstoryselect = 1;
		
			HidePlayerDraw(playerid,Player[playerid].BS1);
			HidePlayerDraw(playerid,Player[playerid].selectedBS3);
		
			ShowPlayerDraw(playerid,Player[playerid].selectedBS1);
			ShowPlayerDraw(playerid,Player[playerid].BS3);
		elseif Player[playerid].bstoryselect == 2 then
			Player[playerid].bstoryselect = 3;

			HidePlayerDraw(playerid,Player[playerid].selectedBS2);
			HidePlayerDraw(playerid,Player[playerid].BS3);

			ShowPlayerDraw(playerid,Player[playerid].BS2);
			ShowPlayerDraw(playerid,Player[playerid].selectedBS3);
		elseif Player[playerid].bstoryselect == 1 then
			Player[playerid].bstoryselect = 2;

			HidePlayerDraw(playerid,Player[playerid].selectedBS1);
			HidePlayerDraw(playerid,Player[playerid].BS2);

			ShowPlayerDraw(playerid,Player[playerid].BS1);
			ShowPlayerDraw(playerid,Player[playerid].selectedBS2);
		end
	elseif Map == "Jharkendar" or Map == "Khorinis" then
		if Player[playerid].bstoryselect == 2 then
			Player[playerid].bstoryselect = 1;
		
			HidePlayerDraw(playerid,Player[playerid].BS1);
			HidePlayerDraw(playerid,Player[playerid].selectedBS2);
		
			ShowPlayerDraw(playerid,Player[playerid].selectedBS1);
			ShowPlayerDraw(playerid,Player[playerid].BS2);
		elseif Player[playerid].bstoryselect == 1 then
			Player[playerid].bstoryselect = 2;
	
			HidePlayerDraw(playerid,Player[playerid].selectedBS1);
			HidePlayerDraw(playerid,Player[playerid].BS2);
	
			ShowPlayerDraw(playerid,Player[playerid].BS1);
			ShowPlayerDraw(playerid,Player[playerid].selectedBS2);
		end
	end
end;

function storySwitchLEFT(playerid)
	if Map == "Kolonie" then
		if Player[playerid].bstoryselect == 3 then
			Player[playerid].bstoryselect = 2;
		
			HidePlayerDraw(playerid,Player[playerid].BS2);
			HidePlayerDraw(playerid,Player[playerid].selectedBS3);
		
			ShowPlayerDraw(playerid,Player[playerid].selectedBS2);
			ShowPlayerDraw(playerid,Player[playerid].BS3);
		elseif Player[playerid].bstoryselect == 2 then
			Player[playerid].bstoryselect = 1;

			HidePlayerDraw(playerid,Player[playerid].BS1);
			HidePlayerDraw(playerid,Player[playerid].selectedBS2);

			ShowPlayerDraw(playerid,Player[playerid].selectedBS1);
			ShowPlayerDraw(playerid,Player[playerid].BS2);
		elseif Player[playerid].bstoryselect == 1 then
			Player[playerid].bstoryselect = 3;

			HidePlayerDraw(playerid,Player[playerid].selectedBS1);
			HidePlayerDraw(playerid,Player[playerid].BS3);

			ShowPlayerDraw(playerid,Player[playerid].BS1);
			ShowPlayerDraw(playerid,Player[playerid].selectedBS3);
		end
	elseif Map == "Jharkendar" or Map == "Khorinis" then
		if Player[playerid].bstoryselect == 2 then
			Player[playerid].bstoryselect = 1;

			HidePlayerDraw(playerid,Player[playerid].BS1);
			HidePlayerDraw(playerid,Player[playerid].selectedBS2);

			ShowPlayerDraw(playerid,Player[playerid].selectedBS1);
			ShowPlayerDraw(playerid,Player[playerid].BS2);
		elseif Player[playerid].bstoryselect == 1 then
			Player[playerid].bstoryselect = 2;

			HidePlayerDraw(playerid,Player[playerid].selectedBS1);
			HidePlayerDraw(playerid,Player[playerid].BS2);

			ShowPlayerDraw(playerid,Player[playerid].BS1);
			ShowPlayerDraw(playerid,Player[playerid].selectedBS2);
		end
	end
end;

function storySwitchDOWN(playerid)
	if Mode == "KilltheKing" then
		if Player[playerid].bstoryselect == 1 then
			Player[playerid].bstoryselect = 2;

			HidePlayerDraw(playerid,Player[playerid].selectedBS1);
			HidePlayerDraw(playerid,Player[playerid].BS2);

			ShowPlayerDraw(playerid,Player[playerid].BS1);
			ShowPlayerDraw(playerid,Player[playerid].selectedBS2);
		elseif Player[playerid].bstoryselect == 2 then
			Player[playerid].bstoryselect = 3;

			HidePlayerDraw(playerid,Player[playerid].selectedBS2);
			HidePlayerDraw(playerid,Player[playerid].BS3);

			ShowPlayerDraw(playerid,Player[playerid].BS2);
			ShowPlayerDraw(playerid,Player[playerid].selectedBS3);
		elseif Player[playerid].bstoryselect == 3 then
			Player[playerid].bstoryselect = 4;
		
			HidePlayerDraw(playerid,Player[playerid].BS4);
			HidePlayerDraw(playerid,Player[playerid].selectedBS3);
		
			ShowPlayerDraw(playerid,Player[playerid].selectedBS4);
			ShowPlayerDraw(playerid,Player[playerid].BS3);
		elseif Player[playerid].bstoryselect == 4 then
			Player[playerid].bstoryselect = 5;
		
			HidePlayerDraw(playerid,Player[playerid].BS5);
			HidePlayerDraw(playerid,Player[playerid].selectedBS4);
		
			ShowPlayerDraw(playerid,Player[playerid].selectedBS5);
			ShowPlayerDraw(playerid,Player[playerid].BS4);
		elseif Player[playerid].bstoryselect == 5 then
			Player[playerid].bstoryselect = 6;
		
			HidePlayerDraw(playerid,Player[playerid].BS6);
			HidePlayerDraw(playerid,Player[playerid].selectedBS5);
		
			ShowPlayerDraw(playerid,Player[playerid].selectedBS6);
			ShowPlayerDraw(playerid,Player[playerid].BS5);
		elseif Player[playerid].bstoryselect == 6 then
			Player[playerid].bstoryselect = 1;
		
			HidePlayerDraw(playerid,Player[playerid].BS1);
			HidePlayerDraw(playerid,Player[playerid].selectedBS6);
		
			ShowPlayerDraw(playerid,Player[playerid].selectedBS1);
			ShowPlayerDraw(playerid,Player[playerid].BS6);
		end
	end
end;

function storySwitchUP(playerid)
	if Mode == "KilltheKing" then
		if Player[playerid].bstoryselect == 1 then
			Player[playerid].bstoryselect = 6;

			HidePlayerDraw(playerid,Player[playerid].selectedBS1);
			HidePlayerDraw(playerid,Player[playerid].BS6);

			ShowPlayerDraw(playerid,Player[playerid].BS1);
			ShowPlayerDraw(playerid,Player[playerid].selectedBS6);
		elseif Player[playerid].bstoryselect == 2 then
			Player[playerid].bstoryselect = 1;

			HidePlayerDraw(playerid,Player[playerid].BS1);
			HidePlayerDraw(playerid,Player[playerid].selectedBS2);

			ShowPlayerDraw(playerid,Player[playerid].selectedBS1);
			ShowPlayerDraw(playerid,Player[playerid].BS2);
		elseif Player[playerid].bstoryselect == 3 then
			Player[playerid].bstoryselect = 2;
		
			HidePlayerDraw(playerid,Player[playerid].BS2);
			HidePlayerDraw(playerid,Player[playerid].selectedBS3);
		
			ShowPlayerDraw(playerid,Player[playerid].selectedBS2);
			ShowPlayerDraw(playerid,Player[playerid].BS3);
		elseif Player[playerid].bstoryselect == 4 then
			Player[playerid].bstoryselect = 3;
		
			HidePlayerDraw(playerid,Player[playerid].BS3);
			HidePlayerDraw(playerid,Player[playerid].selectedBS4);
		
			ShowPlayerDraw(playerid,Player[playerid].selectedBS3);
			ShowPlayerDraw(playerid,Player[playerid].BS4);
		elseif Player[playerid].bstoryselect == 5 then
			Player[playerid].bstoryselect = 4;
		
			HidePlayerDraw(playerid,Player[playerid].BS4);
			HidePlayerDraw(playerid,Player[playerid].selectedBS5);
		
			ShowPlayerDraw(playerid,Player[playerid].selectedBS4);
			ShowPlayerDraw(playerid,Player[playerid].BS5);
		elseif Player[playerid].bstoryselect == 6 then
			Player[playerid].bstoryselect = 5;
		
			HidePlayerDraw(playerid,Player[playerid].BS5);
			HidePlayerDraw(playerid,Player[playerid].selectedBS6);
		
			ShowPlayerDraw(playerid,Player[playerid].selectedBS5);
			ShowPlayerDraw(playerid,Player[playerid].BS6);
		end
	end
end;


function destroyBackgroundStory(playerid)
	-- print("function destroyBackgroundStory(playerid)", playerid)

	if Mode == "Deathmatch" then	
		if Map == "Kolonie" then
			DestroyPlayerDraw(playerid,Player[playerid].BS1);
			DestroyPlayerDraw(playerid,Player[playerid].BS2);
			DestroyPlayerDraw(playerid,Player[playerid].BS3);
			DestroyPlayerDraw(playerid,Player[playerid].selectedBS1);
			DestroyPlayerDraw(playerid,Player[playerid].selectedBS2);
			DestroyPlayerDraw(playerid,Player[playerid].selectedBS3);
			DestroyPlayerDraw(playerid,Player[playerid].BS0);
			for i=1, #Player[playerid].BStory1 do DestroyPlayerDraw(playerid,Player[playerid].BStory1[i]); end;
			for i=1, #Player[playerid].BStory2 do DestroyPlayerDraw(playerid,Player[playerid].BStory2[i]); end;
			for i=1, #Player[playerid].BStory3 do DestroyPlayerDraw(playerid,Player[playerid].BStory3[i]); end;
			HideTexture(playerid,BS1textureRahmen);
			HideTexture(playerid,BS2textureRahmen);
			HideTexture(playerid,BS3textureRahmen);
		elseif Map == "Jharkendar" or Map == "Khorinis" then
			DestroyPlayerDraw(playerid,Player[playerid].BS1);
			DestroyPlayerDraw(playerid,Player[playerid].BS2);
			DestroyPlayerDraw(playerid,Player[playerid].selectedBS1);
			DestroyPlayerDraw(playerid,Player[playerid].selectedBS2);
			DestroyPlayerDraw(playerid,Player[playerid].BS0);
			for i=1, #Player[playerid].BStory1 do DestroyPlayerDraw(playerid,Player[playerid].BStory1[i]); end;
			for i=1, #Player[playerid].BStory2 do DestroyPlayerDraw(playerid,Player[playerid].BStory2[i]); end;
			HideTexture(playerid,BS1textureRahmen);
			HideTexture(playerid,BS2textureRahmen);
		end
	elseif Mode == "KilltheKing" then
		DestroyPlayerDraw(playerid,Player[playerid].BS1);
		DestroyPlayerDraw(playerid,Player[playerid].BS2);
		DestroyPlayerDraw(playerid,Player[playerid].BS3);
		DestroyPlayerDraw(playerid,Player[playerid].BS4);
		DestroyPlayerDraw(playerid,Player[playerid].BS5);
		DestroyPlayerDraw(playerid,Player[playerid].BS6);
		DestroyPlayerDraw(playerid,Player[playerid].selectedBS1);
		DestroyPlayerDraw(playerid,Player[playerid].selectedBS2);
		DestroyPlayerDraw(playerid,Player[playerid].selectedBS3);
		DestroyPlayerDraw(playerid,Player[playerid].selectedBS4);
		DestroyPlayerDraw(playerid,Player[playerid].selectedBS5);
		DestroyPlayerDraw(playerid,Player[playerid].selectedBS6);
		DestroyPlayerDraw(playerid,Player[playerid].BS0);
		HideTexture(playerid,BigtextureRahmen);
	end
end;

function Finalize_Registration(playerid)
	-- print("function Finalize_Registration(playerid)", playerid)

	FreezePlayer(playerid, 0);
	Player[playerid].register = 0;
	--SetPlayerPos(playerid, -9996.912109, -14.756372, -14681.572266);
	--SetPlayerAngle(playerid, 92);
	if Mode == "Deathmatch" then
		if Player[playerid].bstoryselect == 1 then
			Player[playerid].Lager = 1
			if Map == "Kolonie" then
				SetPlayerWorld(playerid,"NEWWORLD\\KOLONIEDM.ZEN","SPAWN_AL");
			elseif Map == "Jharkendar" then
				SetPlayerWorld(playerid,"NEWWORLD\\JHARKENDARDM.ZEN","ADW_PIRATECAMP_HUT3_02");
			elseif Map == "Khorinis" then
				SetPlayerWorld(playerid, "NEWWORLD\\KHORINISDM.ZEN","NW_MONASTERY_MILTEN")
			end
		elseif Player[playerid].bstoryselect == 2 then		
			Player[playerid].Lager = 2
			if Map == "Kolonie" then
				SetPlayerWorld(playerid,"NEWWORLD\\KOLONIEDM.ZEN","SPAWN_NL");
			elseif Map == "Jharkendar" then
				SetPlayerWorld(playerid,"NEWWORLD\\JHARKENDARDM.ZEN","BL_INN_UP_07");
			elseif Map == "Khorinis" then
				SetPlayerWorld(playerid, "NEWWORLD\\KHORINISDM.ZEN","FP_ROAM_XARDAS_TOWER_1")
			end
		elseif Player[playerid].bstoryselect == 3 then
			Player[playerid].Lager = 3
			SetPlayerWorld(playerid,"NEWWORLD\\KOLONIEDM.ZEN","SPAWN_SL"); 
		end

		showScoreCounter(playerid)
		PlusPlayer(playerid)
		GetLVL(playerid)

		if Player[playerid].torso == "Hum_Body_Naked0" or Player[playerid].torso == "Hum_Body_Babe0" then
			GiveItem(playerid, "ItMw_1h_Bau_Mace",1);
			SendPlayerMessage(playerid,255,240,0,"Du hast eine Waffe erhalten, oeffne dein Inventar (Tabulator Taste) um sie anzulegen.");
			--EquipItem(playerid, "itfo_Lumpen");
		end

	elseif Mode == "KilltheKing" then
		if Player[playerid].bstoryselect == 1 then
			GiveItem(playerid, KTKRuestung[Map][1],1);
			Player[playerid].Lager = 1
			SetPlayerColor(playerid,Farbe1x,Farbe1y,Farbe1z);
			local x,y,z = GetPlayerPos(1199);
			SetPlayerPos(playerid,x + 50,y,z);
		elseif Player[playerid].bstoryselect == 2 then
			GiveItem(playerid, KTKRuestung[Map][2],1);
			Player[playerid].Lager = 2
			SetPlayerColor(playerid,Farbe2x,Farbe2y,Farbe2z);
			local x,y,z = GetPlayerPos(1198);
			SetPlayerPos(playerid,x + 50,y,z)
		elseif Player[playerid].bstoryselect == 3 then
			GiveItem(playerid, KTKRuestung[Map][3],1);
			Player[playerid].Lager = 3
			SetPlayerColor(playerid,Farbe3x,Farbe3y,Farbe3z);
			local x,y,z = GetPlayerPos(1197);
			SetPlayerPos(playerid,x + 50,y,z)
		elseif Player[playerid].bstoryselect == 4 then
			GiveItem(playerid, KTKRuestung[Map][4],1);
			Player[playerid].Lager = 4
			SetPlayerColor(playerid,Farbe4x,Farbe4y,Farbe4z);
			local x,y,z = GetPlayerPos(1196);
			SetPlayerPos(playerid,x + 50,y,z)
		elseif Player[playerid].bstoryselect == 5 then
			GiveItem(playerid, KTKRuestung[Map][5],1);
			Player[playerid].Lager = 5
			SetPlayerColor(playerid,Farbe5x,Farbe5y,Farbe5z);
			local x,y,z = GetPlayerPos(1195);
			SetPlayerPos(playerid,x + 50,y,z)
		elseif Player[playerid].bstoryselect == 6 then
			GiveItem(playerid, KTKRuestung[Map][6],1);
			Player[playerid].Lager = 6
			SetPlayerColor(playerid,Farbe6x,Farbe6y,Farbe6z);
			local x,y,z = GetPlayerPos(1194);
			SetPlayerPos(playerid,x + 50,y,z)
		end

		GuildMembersCount[Player[playerid].bstoryselect] = GuildMembersCount[Player[playerid].bstoryselect] + 1
		
		print("Member Plus =", GuildMembersCount[Player[playerid].bstoryselect])

		GiveItem(playerid, "ITMW_1h_ElBastardo",1);
		GiveItem(playerid, "ItMw_2h_GroberZweihaender",1);
		GiveItem(playerid, "ITRW_C_KriegsArmbrust",1);
		GiveItem(playerid, "ITRW_Bolt",1000);
		showKings(playerid)
	end

	-- Hier f�r die Map die PlayerId und das Lager hinzuf�gen.
	MapPlayerLagerSet(playerid, Player[playerid].Lager)

	mysql_query(mysql_handler, "UPDATE user SET Lager='" .. Player[playerid].Lager .. "' WHERE name='" .. Player[playerid].nick .. "'");
	loadPlayerCharW(playerid)
	CompleteHeal(playerid);
	SendMessageToAll(0,200,200,string.format("%s %s",GetPlayerName(playerid),"ist dem Deathmatchserver beigetreten."));

	----------
	mysql_query(mysql_handler, "UPDATE user SET Kopf='" .. Player[playerid].kopf .. "', KopfSkin='" .. Player[playerid].kopfskin .. "', Torso='" .. Player[playerid].torso .. "', TorsoSkin='" .. Player[playerid].torsoskin .. "',Fett='" .. Player[playerid].fatness .. "',scale='" .. Player[playerid].xscale .. "' WHERE name='" .. Player[playerid].nick .. "'");
	-- Erst mal raus hier. -- CMD_FixChar(playerid); --Fixme-Bug beheben
	
end

print("Loaded LUA file   " .. debug.getinfo(1).source)