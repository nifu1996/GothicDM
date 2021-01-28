function CMD_Language(playerid,params)
    local result,language = sscanf(params,"s");
    if result == 1 then
        if language == "Englisch" or karte == "englisch" then
            hidePlayerList(playerid)
            Player[playerid].Language = 2
            Player[playerid].numpad = 0;
			hideMultiList(playerid)
			hideFocusList(playerid)
			hidePlayerList(playerid)
			showScoreCounter(playerid)
            SendPlayerMessage(playerid,255,255,255,"Language is now set to english");
        elseif language == "Deutsch" or language == "deutsch" then
            hidePlayerList(playerid)
            Player[playerid].Language = 1
            Player[playerid].numpad = 0;
			hideMultiList(playerid)
			hideFocusList(playerid)
			hidePlayerList(playerid)
			showScoreCounter(playerid)
            SendPlayerMessage(playerid,255,255,255,"Sprache ist nun Deutsch");
        end
        mysql_query(mysql_handler, "UPDATE `user` SET `Sprache` = '"..Player[playerid].Language.."' WHERE `name` = '"..Player[playerid].nick.."'");
    else
        SendPlayerMessage(playerid,255,255,255,LanguageResultText[Player[playerid].Language]);
    end
end

LanguageResultText = {};

LanguageResultText[1] = "/sprache (Deutsch,Englisch)";
LanguageResultText[2] = "/language (Deutsch,Englisch)";

--Admin

GetKickedText = {};

GetKickedText[1] = "wurde von";
GetKickedText[2] = "got kicked by";

GetKickedText2 = {};

GetKickedText2[1] = "gekickt.";
GetKickedText2[2] = ".";

GetBannedText = {};

GetBannedText[1] = "wurde von";
GetBannedText[2] = "got banned by";

GetBannedText2 = {};

GetBannedText2[1] = "gebannt.";
GetBannedText2[2] = ".";

ReasonText = {};

ReasonText[1] = "Grund:";
ReasonText[2] = "reason:";

NotTheRight = {};

NotTheRight[1] = "Du hast nicht das Recht diesen Spieler";
NotTheRight[2] = "You have not the right to";

NotTheRight2 = {};

NotTheRight2[1] = "";
NotTheRight2[2] = "this player.";

KickText = {};

KickText[1] = "zu kicken!";
KickText[2] = "kick";

Bantext = {};

Bantext[1] = "zu bannen!";
Bantext[2] = "ban";

NotaAdminText = {};

NotaAdminText[1] = "(Server): Du bist kein Admin!";
NotaAdminText[2] = "(Server): You are not a Admin!";

PlayerNotConnected = {};

PlayerNotConnected[1] = "ist nicht mit dem Server verbunden.";
PlayerNotConnected[2] = "is not connected with the server.";

GetKilledText = {};

GetKilledText[1] = "Du wurdest getoetet von";
GetKilledText[2] = "You got killed by";

KillText = {};

KillText[1] = "Du toetest";
KillText[2] = "You killed";

GetTPText = {};

GetTPText[1] = "Teleportiert zu:";
GetTPText[2] = "Teleported to:";

TPText = {};

TPText[1] = "Zu dir teleportiert:";
TPText[2] = "Teleported to you:";

CommandText = {};

CommandText[1] = "Befehl: ";
CommandText[2] = "Command: ";

GetItemFromText = {};

GetItemFromText[1] = "Du erhaelst ";
GetItemFromText[2] = "You get ";

FromText = {};

FromText[1] = "von";
FromText[2] = "from";

GiceItemToText = {};

GiceItemToText[1] = "Du gibst ";
GiceItemToText[2] = "You give ";

ToText = {};

ToText[1] = "zu";
ToText[2] = "to";

GetTransformed = {};

GetTransformed[1] = "Du wurdest in ein Tier verwandelt:";
GetTransformed[2] = "You got transformed into a animal:";

SetTransformed = {};

SetTransformed[1] = "Erfolgreich verwandelt:";
SetTransformed[2] = "Transformation complete:";

TransformPlayerText = {};

TransformPlayerText[1] = "/Tier Tiername (in Englisch)";
TransformPlayerText[2] = "/Animal animalname";

TransformSelfText = {};

TransformSelfText[1] = "/tier Tiername (in Englisch)";
TransformSelfText[2] = "/animal animalname";

RoundEndText = {};

RoundEndText[1] = "Das Spiel wurde von einem Admin beendet. Neue Runde startet in 5 Sekunden.";
RoundEndText[2] = "";

ChangeCampText = {};

ChangeCampText[1] = "/change (id) (Lagername). (AlteLager,NeueLager,SumpfLager)";
ChangeCampText[2] = "/Animal animalname";

EndgameText = {};

EndgameText[1] = "/endstand (punkte).";
EndgameText[2] = "/endgame (points).";

--Callback
Moddatei ={}
Moddatei[1] = "Mod-Datei nicht aktuell, bitte lade dir die neuste herunter."
Moddatei[2] = "Mod-Data not up to date , please download the newest Moddata."

LeftServer = {};
LeftServer[1] = "hat den Server verlassen."
LeftServer[2] = "left the Server."

LostServer = {};
LostServer[1] = "hat die Verbindung verloren."
LostServer[2] = "lost the connection."

JoinServer1 = {};
JoinServer1[1] = "Spezialisiere dich nur auf einen Skill um deinem Team eine groessere Hilfe zu sein."
JoinServer1[2] = "Skill Only one Attribut to support your Team"

JoinServer2 = {};
JoinServer2[1] = "Waehle zwischen Nahkampf (1h,2h), Fernkampf (Bogen,Armbrust) oder Magie."
JoinServer2[2] = "choose between Meele (1h,2h), Ranged (Bow,Crossbow) or Magic"

JoinServer3 = {};
JoinServer3[1] = "Druecke 't' um das Chat-Fenster zu oeffnen."
JoinServer3[2] = "Press 't' to Chat"

JoinServer4 = {};
JoinServer4[1] = "Um Nachrichten an andere Spieler zu senden, gib '/pm' ein !"
JoinServer4[2] = "If you want to send private Massages type '/pm'!"

JoinServer5 = {};
JoinServer5[1] = "Du musst dich anmelden, um am Spiel teilnehmen zu koennen."
JoinServer5[2] = "You must be loggt in to join the Game"

JoinServer6 = {};
JoinServer6[1] = "/register name passwort um dich anzumelden und /login name passwort um dich einzuloggen."
JoinServer6[2] = "/register name passwort if you new. /login name passwort if you already have an Account"

JoinServer7 = {};
JoinServer7[1] = "Registriere dich bitte zusaetzlich im Discord und schau dir das Regelwerk an."
JoinServer7[2] = "Join out Discord and look at the Ruleset."

JoinServer8 = {};
JoinServer8[1] = "Offizielle Runden finden Freitags(Jharkendar) und Samstags(Kolonie) jeweils um 20 Uhr statt"
JoinServer8[2] = "Offical Rounds are on Friday(Jharkendar) and Saturday(Kolonie) at 20 o Clock"

DropItem1 = {}
DropItem1[1] = "Du hast"
DropItem1[2] = "You have dropt"

DropItem2 = {}
DropItem2[1] = " fallen gelassen."
DropItem2[2] = ""

DropItem3 = {}
DropItem3[1] = "Du hast nicht so viel dabei."
DropItem3[2] = "You dont have that much with you."

DropItem4 = {}
DropItem4[1] = "Du besitzt dieses Item nicht."
DropItem4[2] = "You dont have that Item."

Killmassage1 = {}
Killmassage1[1] = " hat "
Killmassage1[2] = " killed "

Killmassage2 = {}
Killmassage2[1] = " getoetet."
Killmassage2[2] = "."

Killmassage3 = {}
Killmassage3[1] = " ist ein Kameradenschwein"
Killmassage3[2] = " is a Traitor"

--Haendler

STKWerttext = {}

STKWerttext[1] = " Stärke"
STKWerttext[2] = " Strength"

DEXWerttext = {}

DEXWerttext[1] = " Geschick"
DEXWerttext[2] = " Dexterity"

KreisWerttext = {}

KreisWerttext[1] = " Kreis"
KreisWerttext[2] = " Circle"

ErzHaendler = {}
ErzHaendler[1] = "Erz"
ErzHaendler[2] = "Ore"

NichtGenugErz = {}
NichtGenugErz[1] = "Dafuer habe ich nicht genug Erz."
NichtGenugErz[2] = "You dont have enough Ore."


print("Loaded LUA file   " .. debug.getinfo(1).source)