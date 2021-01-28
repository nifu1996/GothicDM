--Geld = " Gold"
Geld = " Erz"
chat_roleplay = true;
-- options

logout_time = 5;
regStart = {};
font_big = "Font_Old_20_White_Hi.TGA";
font_small = "Font_Old_10_White_Hi.TGA";

-- Eingefaerbte Fonts fuer die Spielernamen ueber den Charakteren --

font_al = "Font_Old_10_AL_HI.TGA";
font_nl = "Font_Old_10_NL_HI.TGA";
font_sl = "Font_Old_10_SL_HI.TGA";

cur_date = nil;

-- register

Tier = {};
Player = {};
players = {};
Slot = {};
animationDraw = {};
animationDraw_selected = {};

head_arraypos = 1;
current_headlist = {};

male_faces_pale = {19,39,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57};
male_faces_normal = {0,1,2,3,5,6,7,9,10,13,14,16,18,20,21,22,23,24,25,26,27,32,33,34,35,36,37,38,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,159,160,161};
male_faces_latino = {8,15,29,30,40,120,121,122,123,124,125,126,127,128}; --174 ist ein Wei�brot im Latino Viertel gewesen, entfernt!
male_faces_black = {4,11,12,17,28,129,130,131,132,133,134,135,136};

female_faces_pale = {137, 138,139,140,143};
female_faces_normal = {144,145,146,147,148,149,150,151,152,153,154,155,156, 163};
female_faces_latino = {141,158};
female_faces_black = {142,157};

--body_arraypos = 1;
--current_bodylist = {};


-- Minental --
MaxLager = 3
Lager = {"AltesLager","NeuesLager","SumpfLager"};

Farbe1x = 200
Farbe1y = 100
Farbe1z = 100

Farbe2x = 100
Farbe2y = 100
Farbe2z = 200

Farbe3x = 100
Farbe3y = 200
Farbe3z = 100

Farbe4x = 255
Farbe4y = 255
Farbe4z = 0

Farbe5x = 238
Farbe5y = 154
Farbe5z = 0

Farbe6x = 136
Farbe6y = 0
Farbe6z = 255

--KTK-Ruestungen--

KTKRuestung = {}
KTKRuestung.Kolonie = {}
KTKRuestung.Kolonie[1] = "ITAR_GAR_M"
KTKRuestung.Kolonie[2] = "ITAR_GAR_M_BL"
KTKRuestung.Kolonie[3] = "ITAR_GAR_M_GR"
KTKRuestung.Kolonie[4] = "ITAR_GAR_M_GE"
KTKRuestung.Kolonie[5] = "ITAR_GAR_M_OR"
KTKRuestung.Kolonie[6] = "ITAR_GAR_M_LI"

KTKRuestung.Khorinis = {}
KTKRuestung.Khorinis[1] = "ITAR_MIL_M_RE"
KTKRuestung.Khorinis[2] = "ITAR_MIL_M_BL"
KTKRuestung.Khorinis[3] = "ITAR_MIL_M_GR"
KTKRuestung.Khorinis[4] = "ITAR_MIL_M_GE"
KTKRuestung.Khorinis[5] = "ITAR_MIL_M_OR"
KTKRuestung.Khorinis[6] = "ITAR_MIL_M_LI"

--Killmessage--

tx = 5800
ty = 50

killtextcount = 0;

killtexts = {};
for i = 1, 5 do
	killtexts[i] = {};
	killtexts[i].text = nil;
	killtexts[i].rot = 0;
	killtexts[i].gruen = 0;
	killtexts[i].blau = 0;
	killtexts[i].draw = CreateDraw(tx,ty + ((i-1) * 200),"",font_small,255,255,255);
end
killtexts.teamkillcolor = {255,0,0}



--Score--
ScoreEND = 100

Lager1 = CreateDraw(400,4500,"Altes Lager",font_big,Farbe1x,Farbe1y,Farbe1z);  --Color eingeben
Lager2 = CreateDraw(400,4750,"Neues Lager",font_big,Farbe2x,Farbe2y,Farbe2z);	--Color eingeben
Lager3 = CreateDraw(400,5000,"Sumpf Lager",font_big,Farbe3x,Farbe3y,Farbe3z);	--Color eingeben

Kills = CreateDraw(400,5750,"Kills",font_big,255,255,255);	--Color eingeben
Deaths = CreateDraw(400,6000,"Deaths",font_big,255,255,255);	--Color eingeben
Assists = CreateDraw(400,6250,"Assists",font_big,255,255,255);	--Color eingeben

Win = CreateDraw(4000,4000,"Winner!",font_big,255,255,255);	--Color eingeben
Lose = CreateDraw(4000,4000,"Loser!",font_big,255,255,255);	--Color eingeben

Playercount = CreateDraw(200,4250,"Spieleranzahl:",font_big,255,255,255);	
Playercount1 = CreateDraw(200,4500,"0",font_big,Farbe1x,Farbe1y,Farbe1z);	--Color eingeben
Playercount2 = CreateDraw(200,4750,"0",font_big,Farbe2x,Farbe2y,Farbe2z);	--Color eingeben
Playercount3 = CreateDraw(200,5000,"0",font_big,Farbe3x,Farbe3y,Farbe3z);	--Color eingeben

LagerENG1 = CreateDraw(400,4500,"Old Camp",font_big,Farbe1x,Farbe1y,Farbe1z);  --Color eingeben
LagerENG2 = CreateDraw(400,4750,"New Camp",font_big,Farbe2x,Farbe2y,Farbe2z);	--Color eingeben
LagerENG3 = CreateDraw(400,5000,"Swamp Camp",font_big,Farbe3x,Farbe3y,Farbe3z);	--Color eingeben

Playercounteng = CreateDraw(200,4250,"Player Count:",font_big,255,255,255);	
Pointstowineng = CreateDraw(400,5500,"Points to win",font_big,255,255,255);	 

PC1 = 0
PC2 = 0
PC3 = 0

Pointstowin = CreateDraw(400,5500,"Punkte bis zum Sieg",font_big,255,255,255);	 

RundeAktiv = 1;

--Poll--

poll = {};
poll.enable = 0;
poll.pollx = 3000
poll.polly = 3500
poll.color = {40,210,40};
poll.yes = 0;
poll.no = 0;

pollscore = 0;
--------------

KingRot = CreateDraw(400,4500,"Raymond",font_big,Farbe1x,Farbe1y,Farbe1z);  --Color eingeben
KingBlau = CreateDraw(400,4750,"Gorax",font_big,Farbe2x,Farbe2y,Farbe2z);	--Color eingeben
KingGruen = CreateDraw(400,5000,"Grand",font_big,Farbe3x,Farbe3y,Farbe3z);	--Color eingeben
KingGelb = CreateDraw(400,5250,"Falkson",font_big,Farbe4x,Farbe4y,Farbe4z);  --Color eingeben
KingOrange = CreateDraw(400,5500,"Gar",font_big,Farbe5x,Farbe5y,Farbe5z);	--Color eingeben
KingLila = CreateDraw(400,5750,"Allan",font_big,Farbe6x,Farbe6y,Farbe6z);	--Color eingebeN

--------------

Focuswarn = CreateDraw(3500,4000,"Spieler nicht im PVP!",font_big,Farbe1x,Farbe1y,Farbe1z);	--Color eingeben

Focuswarn2 = CreateDraw(3500,4000,"LeveL Unterschied zu hoch!",font_big,Farbe1x,Farbe1y,Farbe1z);	--Color eingeben

--FocusTiere--

Roterfocus = "Roterwarg"
Blauerfocus = "Blauerscavenger"
Gelberfocus = "Gelbersnapper"
Gruenerfocus = "Gruenerlurker"
Lilafocus = "Lilacrawler"
Grauerfocus = "GrauerRazor"

--Focusliste--

Rot		= CreateDraw(300,4500,Roterfocus,font_big,Farbe1x,Farbe1y,Farbe1z); 
Blau	= CreateDraw(300,4750,Blauerfocus,font_big,Farbe2x,Farbe2y,Farbe2z);
Gruen	= CreateDraw(300,5000,Gruenerfocus,font_big,Farbe3x,Farbe3y,Farbe3z);
Gelb	= CreateDraw(300,5250,Gelberfocus,font_big,Farbe1x,Farbe3y,Farbe3z);
Lila	= CreateDraw(300,5500,Lilafocus,font_big,Farbe1x,Farbe1y,Farbe2z);
Grau	= CreateDraw(300,5750,Grauerfocus,font_big,Farbe3x,Farbe1y,Farbe3z);

--FocusItemID--

ReRed	= nil
ReBlue	= nil
ReYellow= nil
ReGreen	= nil
RePurple= nil
ReGray	= nil

CountRed = 0
CountBlue = 0
CountYellow = 0
CountGreen = 0
CountPurple = 0
CountGray = 0

-- Multiplikator --
LagerMulti = {};

LagerMulti[1] = 1
LagerMulti[2] = 1
LagerMulti[3] = 1

LMND = {};

LMND[1] = "1";
LMND[2] = "1";
LMND[3] = "1";

LagerMultiDrawAL = CreateDraw(400,4500,"Bonus: x",font_big,Farbe1x,Farbe1y,Farbe1z);  --Color eingeben
LagerMultiDrawNL = CreateDraw(400,4750,"Bonus: x",font_big,Farbe2x,Farbe2y,Farbe2z);	--Color eingeben
LagerMultiDrawSL = CreateDraw(400,5000,"Bonus: x",font_big,Farbe3x,Farbe3y,Farbe3z);	--Color eingeben

LagerMultiDraw = {};

LagerMultiDraw[1] = CreateDraw(1000,4500,LMND[1],font_big,255,255,255);  --Color eingeben
LagerMultiDraw[2] = CreateDraw(1000,4750,LMND[2],font_big,255,255,255);	--Color eingeben
LagerMultiDraw[3] = CreateDraw(1000,5000,LMND[3],font_big,255,255,255);	--Color eingeben

LMDpos = {};

LMDpos[1] = 4500
LMDpos[2] = 4750
LMDpos[3] = 5000

KillstreakDraw = CreateDraw(400,5750,"Killstreak",font_big,255,255,255);	--Color eingeben
TierkillstreakDraw = CreateDraw(400,6000,"Tierkillstreak",font_big,255,255,255);	--Color eingeben

KingAlive = {};

KingAlive[1] = 1;
KingAlive[2] = 1;
KingAlive[3] = 1;
KingAlive[4] = 1;
KingAlive[5] = 1;
KingAlive[6] = 1;

GuildMembers = {};

GuildMembers[1] = 4;
GuildMembers[2] = 4;
GuildMembers[3] = 4;
GuildMembers[4] = 4;
GuildMembers[5] = 4;
GuildMembers[6] = 4;

GuildMembersCount = {};

GuildMembersCount[1] = 0;
GuildMembersCount[2] = 0;
GuildMembersCount[3] = 0;
GuildMembersCount[4] = 0;
GuildMembersCount[5] = 0;
GuildMembersCount[6] = 0;

TeamOut = {};

TeamOut[1] = 1;
TeamOut[2] = 1;
TeamOut[3] = 1;
TeamOut[4] = 1;
TeamOut[5] = 1;
TeamOut[6] = 1;

Team = {"Rot","Blau","Gruen","Gelb","Orange","Lila"}

InstaKill = 0;


-- Khorinis --

-- Jharkendar --



----------------
local sound_id = CreateSound("SVM_19_AARGH_3.WAV"); 

--general
	menu = {};
	rowstep = 150
	max_menurows = 6;
	menu_ui = {};

	zeiteinheit = 30; -- in sekunden

--blueprint-menu
    menu_blueprint = {}; --menutheme = "blueprints"
	menu_blueprint[1] = {"Holzverarbeitung","Metallverarbeitung","Pflanzen- und Kraeuterkunde","Nahrungsversorgung","Stoffe- und Lederverarbeitung","Magiekunde"}
	menu_blueprint[2] = {"Bogen","Armbrueste","Staebe und Griffe","Feuerholz und Baumaterial"}
	menu_blueprint[3] = {"Werkzeuge","Schwerter","Aexte und Knueppel","Ruestungen","Schmiedezubehoer"} -- ,"Luxusgueter"
	menu_blueprint[4] = {"Heiltraenke","Manatraenke","Spezielle Traenke","Faerbemittel","Raeucher- und Lichtwaren"}
	menu_blueprint[5] = {"Gekochtes","Gebratenes","Backwaren","Wurst","Getraenke","Fische"}
	menu_blueprint[6] = {"Ruestungen","Rohstoffe","Kleidung","Faerben","Verbesserung"}
	menu_blueprint[7] = {"Spruchrollen","Runen"}
	menu_blueprint[8] = {"Einhaender","Zweihaender","Dolche"}
	menu_blueprint[9] = {"Leichte Aexte und Knueppel","Schwere Aexte und Knueppel"}
	menu_blueprint[10] = {"Ringe und Amulette","Teller und Kelche"}


	menu_blueprint[1].submenu = {2,3,4,5,6,7}
	menu_blueprint[2].submenu = {"bogen","armbrust","stab","baumaterial"}
	menu_blueprint[3].submenu = {"werkzeug",8,9,"ruestungen",10}
	menu_blueprint[4].submenu = {"heiltrank","manatrank","speztrank","farbe","gift"}
	menu_blueprint[5].submenu = {"gekochtes","gebratenes","backware","fleisch","getraenk","fische"}
	menu_blueprint[6].submenu = {"ruestung","rohstoffe","kleidung","faerben","verbesserung"}
	menu_blueprint[7].submenu = {"spruchrolle","rune"}
	menu_blueprint[8].submenu = {"einhaender","zweihaender","dolch"}
	menu_blueprint[9].submenu = {"axtleicht","axtschwer"}
	menu_blueprint[10].submenu = {"schmuck","kram"}

	menu_blueprint[1].topmenu = {"not"};
	menu_blueprint[2].topmenu = {menu_blueprint[1]}
	menu_blueprint[3].topmenu = {menu_blueprint[1]}
	menu_blueprint[4].topmenu = {menu_blueprint[1]}
	menu_blueprint[5].topmenu = {menu_blueprint[1]}
	menu_blueprint[6].topmenu = {menu_blueprint[1]}
	menu_blueprint[7].topmenu = {menu_blueprint[1]}
	menu_blueprint[8].topmenu = {menu_blueprint[3]}
	menu_blueprint[9].topmenu = {menu_blueprint[3]}
	menu_blueprint[9].topmenu = {menu_blueprint[3]}



	menu_ui[1] = {130,6150,150} -- blueprint Menu (x, y, step)
	menu_ui[2] = {1950,1000,150} -- Menu links
	menu_ui[3] = {4000,1000,150} -- Menu mitte
	menu_ui[4] = {5000,1000,150} -- Menu rechts

--[[
	Returns true if text equals case-insensitive first or second.
	second can also be nil
--]]

--Attribute & Skillschritte
	Attribute = {"Staerke","Geschick","Mana","Kreis","Einhand","Zweihand","Bogen","Armbrust",}
	Skillstep = {10,20,30,40,50,60};

function ResetLoginInDatabase()
	local updatecmd = "UPDATE `user` SET `LogIn` = 0 WHERE `LogIn` = 1";
	local sqlupdate = mysql_query(mysql_handler, updatecmd);
	mysql_free_result (sqlupdate);
end;

print("Loaded LUA file   " .. debug.getinfo(1).source)
