Player = {}

function OnScriptInit()
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "XXXOnFilterscriptInit()")
	-- print("function XXXOnFilterscriptInit()")
	
	mysql_handler = mysql_connect(database_ip, database_user, database_password, database_name);
	mysql_checkTimer();
	   SetTimer("Gettime",1000*240,1);
	   
	Lagerchecker = SetTimer("Lagercheck",500,1); 
			
	EnableChat(0);
	EnableExitGame(0);
	EnableDropAfterDeath(0);
	  
	ResetLoginInDatabase(); -- Setzt den Login aller Spieler in der DB auf 0 sollte der Server crashen oder neugestartet werden
		
	--SetRespawnTime( 86400 * 1000); --86400 * 1000 miliseconds = 1 Tag
		
	gVob = Vob.Create("Nix.3DS","NEWWORLD\\NEWWORLD.ZEN",41140.765625,5084.05719,-6703.980957); --static method
	gVob:SetPosition(41140.765625,5054.05719,-6703.980957) --method of object
	gVob:SetRotation(0,280,0);
			
	regStart[0] = 40992.554666;
	regStart[1] = 5084.05719;
	regStart[2] = -6690.400391;

	local Mapcheck = mysql_query(mysql_handler, "SELECT `Map` FROM `Score` WHERE `Lager` = '0'");
	if mysql_num_rows(Mapcheck) == 1 then
		local row = mysql_fetch_row(Mapcheck)
		Map = (row[1])
		if Map == "Jharkendar" then
			UpdateDraw(Lager1,400,4500,"Piraten",font_big,Farbe1x,Farbe1y,Farbe1z);
			UpdateDraw(Lager2,400,4750,"Banditen",font_big,Farbe2x,Farbe2y,Farbe2z);
		elseif Map == "Khorinis" then
			UpdateDraw(Lager1,400,4500,"Feuermagier",font_big,Farbe1x,Farbe1y,Farbe1z);
			UpdateDraw(Lager2,400,4750,"Schwarzmagier",font_big,Farbe2x,Farbe2y,Farbe2z);
		end
	end

	local Modecheck = mysql_query(mysql_handler, "SELECT `GameMode` FROM `Score` WHERE `Lager` = '0'");
	if mysql_num_rows(Modecheck) == 1 then
		local row = mysql_fetch_row(Modecheck)
		Mode = (row[1])
	end

	local Instakillcheck = mysql_query(mysql_handler, "SELECT `InstaKill` FROM `Score` WHERE `Lager` = '0'");
	if mysql_num_rows(Instakillcheck) == 1 then
		local row = mysql_fetch_row(Instakillcheck)
		InstaKill = (row[1])
	end

	local Lagercheck1 = mysql_query(mysql_handler, "SELECT `Point` FROM `Score` WHERE `Lager` = '1'");
	if mysql_num_rows(Lagercheck1) == 1 then
		local row = mysql_fetch_row(Lagercheck1)
		Points1 = (row[1])
	end

	Lagerpoints1 = CreateDraw(200,4500,Points1,font_big,Farbe1x,Farbe1y,Farbe1z);	--Color eingeben
	mysql_free_result(Lagercheck1);
				
	local Lagercheck2 = mysql_query(mysql_handler, "SELECT `Point` FROM `Score` WHERE `Lager` = '2'");
	if mysql_num_rows(Lagercheck2) == 1 then
		local row = mysql_fetch_row(Lagercheck2)
		Points2 = (row[1])
	end

	Lagerpoints2 = CreateDraw(200,4750,Points2,font_big,Farbe2x,Farbe2y,Farbe2z);	--Color eingeben
	mysql_free_result(Lagercheck2);
			
	local Lagercheck3 = mysql_query(mysql_handler, "SELECT `Point` FROM `Score` WHERE `Lager` = '3'");
	if mysql_num_rows(Lagercheck3) == 1 then
		local row = mysql_fetch_row(Lagercheck3)
		Points3 = (row[1])
	end

	Lagerpoints3 = CreateDraw(200,5000,Points3,font_big,Farbe3x,Farbe3y,Farbe3z);	--Color eingeben
	mysql_free_result(Lagercheck3);

	local Pointstowincheck3 = mysql_query(mysql_handler, "SELECT `Point` FROM `Score` WHERE `Lager` = '0'");
	if mysql_num_rows(Pointstowincheck3) == 1 then
		local row = mysql_fetch_row(Pointstowincheck3)
		PtW = (row[1])
	end

	Pointstowincounter = CreateDraw(200,5500,PtW,font_big,255,255,255);	--Color eingeben
	mysql_free_result(Pointstowincheck3);
    

    local Lagercheckend = mysql_query(mysql_handler, "SELECT `Point` FROM `Score` WHERE `Lager` = '0'");
    if mysql_num_rows(Lagercheckend) == 1 then
        local row = mysql_fetch_row(Lagercheckend)
        ScoreEND = tonumber(row[1]);
    end
    mysql_free_result(Lagercheckend);
    RundeAktivcheck(ScoreEND)
    FocusTimer()
    HitTimer()
    SetTimerEx("LastHitTimer",10000,1,0)
    
    for i = 0,GetMaxPlayers() - 1 do
        Player[i] = {};
        Player[i].nick = nil;
        Player[i].itemremover = nil;
        Player[i].stk = 0;
        Player[i].dex = 0;
        Player[i].einhand = 0;
        Player[i].zweihand = 0;
        Player[i].bogen = 0;
        Player[i].armbrust = 0;
        Player[i].lernp = 0;
        Player[i].hp = 0;
        Player[i].hpmax = 0;
        Player[i].mana = 0;
        Player[i].manamax = 0;
        Player[i].magiekreis = 0;
        Player[i].level = 0;
        Player[i].ep = 0;
        Player[i].isAdmin = 0; --gehoert noch zusaetlich eingefuegt
        Player[i].namegeaendert = 0;
        Player[i].isOnline = 0;
        Player[i].x = 0;
        Player[i].y = 0;
        Player[i].z = 0;
        Player[i].angle = 0;
        Player[i].LogIn = 0;
        Player[i].PM = 0;
        Player[i].Language = 1;
        
        
        Player[i].Recht = 0;
        Player[i].numpad = 0;
        Player[i].map = 0;
        Player[i].Lager = 0;
        Player[i].new = 0;
        Player[i].Item = nil;
        Player[i].kosten = 0;
        Player[i].Anzahl = 0;
        
        Player[i].kopf = nil;
        Player[i].kopfskin = 0;
        Player[i].torso = nil;
        Player[i].torsoskin = 0;
        Player[i].fatness = 0;
        Player[i].xscale = 1;
        Player[i].selectedOption = 0;
        Player[i].Tier = 0;
        Player[i].Fischerort = 0;
        Player[i].AFK = 0;
        Player[i].register = 0;
        

        Player[i].SoundCooldown = false;
        -----------------------------
        
        Player[i].Killcount = "0";
        Player[i].Deathcount = "0";
        Player[i].Assistcount = "0";
        Player[i].Kills = CreateDraw(200,5750, Player[i].Killcount, font_big, 255, 255, 255);
        Player[i].Deaths = CreateDraw(200,6000, Player[i].Deathcount, font_big, 255, 255, 255);
        Player[i].Assist = CreateDraw(200,6250, Player[i].Assistcount, font_big, 255, 255, 255);
        Player[i].Killspoints = 0;
        Player[i].Deathpoints = 0;
        Player[i].Assistpoints = 0;

        Player[i].TierKillstreakcount = "0";
        Player[i].Killstreakcount = "0";
        Player[i].TierKillstreakDraw = CreateDraw(200,6000, Player[i].TierKillstreakcount, font_big, 255, 255, 255);
        Player[i].KillstreakDraw = CreateDraw(200,5750, Player[i].Killstreakcount, font_big, 255, 255, 255);
        Player[i].TierKillstreak = 0;
        Player[i].Killstreak = 0;
        
        Player[i].F1234count = 0;
        -----------------------------
        
        Player[i].deathreason = "Nichts"
        Player[i].respawn_x = 0;
        Player[i].respawn_y = 0;
        Player[i].respawn_z = 0;
        Player[i].resurrect = 0;
        
        -------------------------- ENDE Todesscript

        -- EinsteigerGuide --
        Player[i].EinsteigerGuide_Aktiv = 0;
        Player[i].EinsteigerGuide_Folie = 1;
		---
        
        Player[i].aniblock = false;
        Player[i].abuseAni = false;
        Player[i].inventoryOpen = false;
        Player[i].bewusstlos = false;

        --Player[i].FBChanged = nil;
        
        --Player[i].FBCid = nil;
        
        
        
        -- Stories --
        
        Player[i].BS0 = nil;
        Player[i].BS1 = nil;
        Player[i].BS2 = nil;
        Player[i].BS3 = nil;
        Player[i].selectedBS1 = nil;
        Player[i].selectedBS2 = nil;
        Player[i].selectedBS3 = nil;
        Player[i].BStory1 = {};
        Player[i].BStory2 = {};
        Player[i].BStory3 = {};
        
        --- Handel
        
        Player[i].handelsmenu = {};
        Player[i].handelsmenu.selected = {};
        Player[i].handelsmenu.unselected = {};
        Player[i].handelsmenu.anz = {};
        Player[i].handelsmenu.preis = {};
        Player[i].handelsmenu.data = {};
        Player[i].handelsmenu.menu = nil;
        Player[i].handelsmenu.botname = nil;
        Player[i].handelsmenu.i = 0;
        Player[i].handelsmenu.iende = 0;
        Player[i].handelsmenu.active = false;
        Player[i].handelsmenu.Steuersatz = 0;
        Player[i].handelsmenu.Haendleranteil = 0;
        Player[i].handelsmenu.Skillcounter = 1;
        
        -- Vob Placer
               
        
        Player[i].vobplacer = {};
        Player[i].vobplacer.on = false;
        Player[i].vobplacer.vob = nil;
    
        
        --Sprint--
        
        Player[i].Ausdauer = 5000;
        Player[i].SprintOn = nil;
        Player[i].SprintOff = nil;
            
        Player[i].texture = {};
        Player[i].posY = 0;
        Player[i].matrixcounter = 0;
        Player[i].schuerflevel = 1;
        Player[i].schuerfmode = 0;
        Player[i].rounddrawcount = 0; -- 'Hit' counter
        Player[i].nextLevel = 0; -- Erfolg counter
        Player[i].session = 0; -- um parallel ablaufenden Timer zu entgehen
        
        Player[i].matrixtimer = nil; -- Timer
        Player[i].nextRoundDraw = nil; -- Timer
        Player[i].antiidle = 0;
        Player[i].schuerfblocker = true;
        -- Draws
        Player[i].rounddraw1 = 0;
        Player[i].rounddraw2 = 0;
        Player[i].leveldraw1 = 0;
        Player[i].leveldraw2 = 0;
        Player[i].rpdraw1 = 0;
        Player[i].rpdraw2 = 0;
        Player[i].rpdraw3 = 0;
        Player[i].nextRoundDraw1 = 0;
        Player[i].nextRoundDraw2 = 0;
        Player[i].schuerfdraw1 = 0;
        Player[i].schuerfdraw2 = 0;
    
        Player[i].mobsinutzen = 0;
    
        --Player[i].arbeitet = 0;
    
        Player[i].amount = 0;
    
        Player[i].arbeitsdraw = CreateDraw(3750, 7700, "sowieso", font_big, 255, 255, 255);
    
        Player[i].aufloesung = "1024x768";
        --Player[i].aufloesung_y = 768;
    
        Player[i].itemtaker = 0;
        Player[i].rest = nil;
        Player[i].blueprintstring = nil;
        Player[i].binary_item = nil;
        Player[i].binary_taker = 0;
        Player[i].totaldestroy = 0;
        Player[i].blueprint_activ = 0;
        Player[i].duration = nil;
        Player[i].durationSek = 0;
        Player[i].DB_Update = nil;
        Player[i].Craftactive = nil;
    
        menu[i] = {};
        menu[i].id = nil;
        menu[i].active = nil;
        menu[i].maxmenurows = nil;
        menu[i].selected_row = nil;
        menu[i].selected_menu = nil;
        menu[i].selected_height = nil;
        menu[i].selected_width = nil;
        menu[i].selected_rowstep = nil;
        menu[i].selected_able = 1;
        menu[i].menutheme = nil;
        menu[i].menufinal = nil;
        menu[i].menutable = {};
        menu[i].option = {}
        menu[i].optiondraw = {}
    
        
        --Lasthit funktion--

        for row = 1, max_menurows do
            menu[i].option[row] = nil;
            menu[i].optiondraw[row] = nil;
        end

        menu[i].infobox1 = {}
    
        for line = 1, 10 do
            menu[i].infobox1[line] = nil;
        end
    
        Player[i].aniLoop = nil;
        Player[i].aniPos = {1, 2, 3};
        Player[i].usemob = nil;
        Player[i].blueprint = nil;
        Player[i].blueprint_mobsi = nil;
        Player[i].blueprint_reststring = nil;
        Player[i].blueprint_duration = nil;
        Player[i].progressbar = nil;
        Player[i].binary_active = nil;
        Player[i].binarymenu_active = nil;
        Player[i].binary_selected = nil;
        Player[i].binary_option = {}
        Player[i].binary_option[1] = nil;
        Player[i].binary_option[2] = nil;
        Player[i].binary_optiondraw = {}
        Player[i].binary_optiondraw[1] = nil;
        Player[i].binary_optiondraw[2] = nil;
        Player[i].binary_question = nil;

        --Hilfsvariable keine Killstreakunterbrechung--
        Player[i].dontbreakkillstreak = 0;

        --Equip nach Tod

        Player[i].equipped = 0;

        --Pollcount für jeden Spieler max. 1--
        Player[i].pollcount = 0;
        Player[i].pollyes = 0;
        Player[i].pollno = 0;

        Player[i].WPStore = nil;
        Player[i].WPStore2 = nil;
        Player[i].WPCounter = 0;
            
        --animationDraw[0] = CreateDraw(5800,3000,"Geschlecht",font_small,255,255,255);
        animationDraw[0] = CreateDraw(5800,3150,"Kopfform",font_small,255,255,255);
        animationDraw[1] = CreateDraw(5800,3300,"Gesicht",font_small,255,255,255);
        animationDraw[2] = CreateDraw(5800,3450,"Koerper",font_small,255,255,255);
        animationDraw[3] = CreateDraw(5800,3600,"Statur",font_small,255,255,255);
        animationDraw[4] = CreateDraw(5800,3750,"Schulterbreite",font_small,255,255,255);
        animationDraw[5] = CreateDraw(5800,3900,"Speichern",font_small,255,255,255);
    
        --animationDraw_selected[0] = CreateDraw(5800,3000,"Geschlecht",font_small,255,75,75);
        animationDraw_selected[0] = CreateDraw(5800,3150,"Kopfform",font_small,255,75,75);
        animationDraw_selected[1] = CreateDraw(5800,3300,"Gesicht",font_small,255,75,75);
        animationDraw_selected[2] = CreateDraw(5800,3450,"Koerper",font_small,255,75,75);
        animationDraw_selected[3] = CreateDraw(5800,3600,"Statur",font_small,255,75,75);
        animationDraw_selected[4] = CreateDraw(5800,3750,"Schulterbreite",font_small,255,75,75);
        animationDraw_selected[5] = CreateDraw(5800,3900,"Speichern",font_small,255,75,75);
    end

    for i = 0,GetMaxSlots() - 1 do
        Slot[i] = {};            
        Slot[i].lasthit = {}
		Slot[i].Deathcountstoper = 0;
        for lhid = 1, 5 do
            Slot[i].lasthit[lhid] = nil;
        end
    end
end

function OnDeathmatchInit()
    print(Mode,Map)
	if Mode == "Deathmatch" then
		if Map == "Kolonie" then
			InitSpawnDataBaseNPC()
		elseif Map == "Jharkendar" then
			InitSpawnDataBaseNPC()
		elseif Map == "Khorinis" then
			InitSpawnDataBaseNPC()
		end
	elseif Mode == "KilltheKing" then
		if Map == "Kolonie" then
			InitSpawnDataBaseNPC()
		elseif Map == "Jharkendar" then
			--InitJhakendarKTKNPC()
			print("Jharkendar KillTheKing gibts noch nicht.")
		elseif Map == "Khorinis" then
			InitSpawnDataBaseNPC()
		end
	end
end

print(debug.getinfo(1).source .. "has been loaded")