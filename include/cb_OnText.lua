
function OnPlayerCommandText(playerid, cmdtext)
	--DebugLog(debug.getinfo(1).source .. "\tline = " .. debug.getinfo(1).linedefined , "OnPlayerCommandText(playerid, PARAMS)")

	local cmd, params = GetCommand(cmdtext) -- CMD und PARAMS mit Gro�/Kleinschreibung.
	--local cmd = string.lower(CMD)	-- Alle Befehle m�ssen nur noch in "Kleinschreibung" verglichen werden.
	--local params = string.lower(PARAMS) -- Parameter in "Kleinschreibung".
	
	if Player[playerid].isAdmin == 1 then
		if cmd == "/tp" then
			CMD_Teleport(playerid, params)
			return
		elseif cmd == "/g" then
			CMD_Weltnachricht(playerid, params)
			return
		elseif cmd == "/kick" then
			CMD_Kick(playerid, params)
			return
		elseif cmd == "/ban" then
			CMD_Ban(playerid, params)
			return
		elseif cmd == "/giveitem" then
			CMD_GiveItem(playerid, params)
			return
		elseif cmd == "/full" then
			CMD_Full(playerid, params)
			return
		elseif cmd == "/resetgame" then
			CMD_Rundereseten(playerid, params)
			return
		elseif cmd == "/change" then
			CMD_Change(playerid, params)
			return
		elseif cmd == "/score" or cmd == "/endstand" then
			CMD_EndScore(playerid, params)
			return
		elseif cmd == "/runde" then
			CMD_RundeAktivieren(playerid, params)
			return
		elseif cmd == "/gamemode" then
			CMD_GameMode(playerid, params)
			return
		elseif cmd == "/map" then
			CMD_MapChange(playerid, params)
			return
		elseif cmd == "/despawnall" then
			CMD_DespawnAll(playerid, params)
			return
		elseif cmd == "/spawnall" then
			CMD_SpawnAll(playerid, params)
			return
		elseif cmd == "/despawnkolonietore" then
			CMD_DespawnKolonietore(playerid, params)
			return
		elseif cmd == "/despawnkhorinistore" then
			CMD_DespawnKhorinistore(playerid, params)
			return
		elseif cmd == "/spawnkolonie" then
			CMD_SpawnKolonie(playerid, params)
			return
		elseif cmd == "/spawnjharkendar" then
			CMD_SpawnJharkendar(playerid, params)
			return
		elseif cmd == "/spawnkhorinis" then
			CMD_SpawnKhorinis(playerid, params)
			return
		elseif cmd == "/spawnkings" then
			CMD_SpawnKings(playerid, params)
			return
		elseif cmd == "/spawn" then
			CMD_SpawnNPCINDB(playerid, params)
			return
		elseif cmd == "/despawn" then
			CMD_DespawnNPCINDB(playerid, params)
			return
		elseif cmd == "/cwp" then
			CMD_CWP(playerid, params)
			return
		elseif cmd == "/lwp" then
			CMD_LWP(playerid, params)
			return
		elseif cmd == "/clearwp" then
			CMD_DWP(playerid, params)
			return
		elseif cmd == "/instakill" then
			CMD_Instakill(playerid, params)
			return
		elseif cmd == "/mapshowall" then
			CMD_WorldMapShowAll(playerid)
			return
		elseif cmd == "/pollrequest" then
			CMD_Poll(playerid, params)
			return
		elseif cmd == "/kill" then
			CMD_Kill(playerid, params)
			return
		elseif cmd == "/aggro" then
			CMD_Aggro(playerid, params)
			return
		elseif cmd == "/agent" then
			CMD_Agent(playerid, params)
			return
		elseif cmd == "/invis" then
			CMD_Invisible(playerid, params)
			return
		elseif cmd == "/gethealth" then
			CMD_GetHealth(playerid, params)
			return
		elseif cmd == "/spy" then
			CMD_Spy(playerid, params)
			return
		elseif cmd == "/follow" then
			CMD_Follow(playerid, params)
			return
		elseif cmd == "/unfollow" then
			CMD_Unfollow(playerid, params)
			return
		elseif cmd == "/gesichtsdieb" then
			CMD_Gesichtsdieb(playerid, params)
			return
		elseif cmd == "/test" then
			CMD_Test(playerid, params)
			return
		elseif cmd == "/tierfocus" then
			CMD_Tierfocus(playerid, params)
			return
		elseif cmd == "/tier" then
			CMD_Tier(playerid, params)
			return
		elseif cmd == "/cw" then
			CMD_Charakterwerte(playerid, params)
			return
		end		
	end	
	
	if cmd == "/heilung" or cmd == "/heal" then
		CMD_Heilung(playerid)
	elseif cmd == "/login" then
		CMD_Login(playerid, params)
	elseif cmd == "/register" then
		CMD_Register(playerid, params)
	elseif cmd == "/q" or cmd == "/exit" or cmd == "/quit" or cmd == "/ende" then
		CMD_Logout(playerid)
	elseif cmd == "/fixme" then
		CMD_FixChar(playerid)
	elseif cmd == "/trade" then
		CMD_Trade(playerid, params)
	elseif cmd == "/drop" then
		CMD_Drop(playerid, params)
	elseif cmd == "/delete" then
		CMD_Delete(playerid, params)
	elseif cmd == "/getpos" then
		CMD_GetPos(playerid, params)
	elseif cmd == "/afk" then
		CMD_Afk(playerid)
	elseif cmd == "/pm" then
		CMD_PrivateMessage(playerid, params)
	elseif cmd == "/pmd" then
		CMD_PmDeaktivieren(playerid)
	elseif cmd == "/report" then
		CMD_Report(playerid, params)
	elseif cmd == "/lern" then
		CMD_Lehrer(playerid, params)
	elseif cmd == "/lager" or cmd == "/camp" then
		CMD_Lagerwechsel(playerid, params)		
	elseif cmd == "/statistiken" or cmd == "/stats" then
		CMD_Statistiken(playerid)
	elseif cmd == "/dropfocus" then
		CMD_MonsterDropFocus(playerid)
	elseif cmd == "/language" or cmd == "/sprache" then
		CMD_Language(playerid, params)
	
	-- Animationen
	elseif cmd == "/sit" then
		PlayAnimation(playerid,"T_STAND_2_SIT")
	elseif cmd == "/stand" then
		PlayAnimation(playerid,"S_RUN")
	elseif cmd == "/bed" then
		PlayAnimation(playerid,"T_STAND_2_SLEEPGROUND")
	elseif cmd == "/pee" then
		PlayAnimation(playerid,"T_STAND_2_PEE")
	elseif cmd == "/tren1h" then
		PlayAnimation(playerid,"T_1HSFREE")
	elseif cmd == "/watch1h" then
		PlayAnimation(playerid,"T_1HSINSPECT")
	elseif cmd == "/kratzen" then
		PlayAnimation(playerid,"R_SCRATCHEGG")
	elseif cmd == "/kopf" then
		PlayAnimation(playerid,"R_SCRATCHHEAD")
	elseif cmd == "/no" then
		PlayAnimation(playerid,"T_NO")
	elseif cmd == "/pray" then
		PlayAnimation(playerid,"S_PRAY")
	elseif cmd == "/pray2" then
		PlayAnimation(playerid,"S_IDOL_S1")
	elseif cmd == "/search" then
		PlayAnimation(playerid,"T_SEARCH")
	elseif cmd == "/plunder" then
		PlayAnimation(playerid,"T_PLUNDER")
	elseif cmd == "/guard" then
		PlayAnimation(playerid,"S_LGUARD")
	elseif cmd == "/guard1" then
		PlayAnimation(playerid,"S_HGUARD")
	elseif cmd == "/finisher" then
		PlayAnimation(playerid,"T_1HSFINISH")
	elseif cmd == "/dead" then
		PlayAnimation(playerid,"T_DEAD")
	elseif cmd == "/dead2" then
		PlayAnimation(playerid,"S_DEADB")
	elseif cmd == "/wash" then
		PlayAnimation(playerid,"S_WASH")
	elseif cmd == "/hacken" then
		PlayAnimation(playerid,"S_ORE2_S1")
	elseif cmd == "/practicemagic" then
		PlayAnimation(playerid,"T_PRACTICEMAGIC")
	elseif cmd == "/practicemagic2" then
		PlayAnimation(playerid,"T_PRACTICEMAGIC2")
	elseif cmd == "/practicemagic3" then
		PlayAnimation(playerid,"T_PRACTICEMAGIC3")
	elseif cmd == "/practicemagic4" then
		PlayAnimation(playerid,"T_PRACTICEMAGIC4")
	elseif cmd == "/jubeln" then
		PlayAnimation(playerid,"T_WATCHFIGHT_YEAH")
	elseif cmd == "/dance1" then
		PlayAnimation(playerid,"T_DANCE_01")
	elseif cmd == "/dance2" then
		PlayAnimation(playerid,"T_DANCE_02")
	elseif cmd == "/dance3" then
		PlayAnimation(playerid,"T_DANCE_03")
	elseif cmd == "/dance4" then
		PlayAnimation(playerid,"T_DANCE_04")
	elseif cmd == "/dance5" then
		PlayAnimation(playerid,"T_DANCE_05")
	elseif cmd == "/dance6" then
		PlayAnimation(playerid,"T_DANCE_06")
	elseif cmd == "/dance7" then
		PlayAnimation(playerid,"T_DANCE_07")
	elseif cmd == "/dance8" then
		PlayAnimation(playerid,"T_DANCE_08")
	elseif cmd == "/dance9" then
		PlayAnimation(playerid,"T_DANCE_09")
	elseif cmd == "/fegen" then
		PlayAnimation(playerid,"S_BROOM_S1")
	elseif cmd == "/wischen" then
		PlayAnimation(playerid,"S_BRUSH_S1")
	elseif cmd == "/repair" then
		PlayAnimation(playerid,"S_REPAIR_S1")
	elseif cmd == "/laute" then
		PlayAnimation(playerid,"S_LUTE_S1")
	elseif cmd == "/pfanne" then
		PlayAnimation(playerid,"S_PAN_S1")
	elseif cmd == "/harken" then
		PlayAnimation(playerid,"S_RAKE_S1")
	elseif cmd == "/abwinken" then
		PlayAnimation(playerid,"T_FORGETIT")
	elseif cmd == "/schulterzucken" then
		PlayAnimation(playerid,"T_DONTKNOW")
	elseif cmd == "/ravedance" then
		PlayAnimation(playerid,"S_FIRE_VICTIM")
	elseif cmd == "/tsleep" then --Schlafen als Tier
		PlayAnimation(playerid,"S_SLEEP")
	elseif cmd == "/magenkrampf" then
		PlayAnimation(playerid,"S_WOUNDED")
	elseif cmd == "/magenkrampf2" then
		PlayAnimation(playerid,"S_WOUNDEDB")
	elseif cmd == "/truhe" then
		PlayAnimation(playerid,"S_CHESTBIG_S1")
	elseif cmd == "/truhe2" then
		PlayAnimation(playerid,"S_CHESTSMALL_S1")
	elseif cmd == "/treten" then
		PlayAnimation(playerid,"T_BORINGKICK")
	elseif cmd == "/verbeugen" then
		PlayAnimation(playerid,"T_GREETNOV")
	elseif cmd == "/herbeiwinken" then
		PlayAnimation(playerid,"T_COMEOVERHERE")
	elseif cmd == "/anfeuern" then
		PlayAnimation(playerid,"S_WATCHFIGHT")
	elseif cmd == "/jubeln2" then
		PlayAnimation(playerid,"T_WATCHFIGHT_OHNO")
	elseif cmd == "/nicken" then
		PlayAnimation(playerid,"T_YES")
	elseif cmd == "/sit2" then
		PlayAnimation(playerid,"S_THRONE_S1")
	elseif cmd == "/getlost" then
		PlayAnimation(playerid,"T_GETLOST")
	elseif cmd == "/getlost2" then
		PlayAnimation(playerid,"T_GETLOST2")
	end
end

function CMD_Report(playerid, params)
    local result,message = sscanf(params,"s");
    local name = GetPlayerName(playerid);
    if result == 1    then
        ServerLog("REPORT","Spieler "..GetPlayerName(playerid).." meldet: "..message.."");
        SendPlayerMessage(playerid,100,100,200,string.format("%s %s","Du hast folgendes gemeldet:",message));
        SendPlayerMessage(playerid,100,100,200,string.format("%s","Sollte kein Admin online sein, wird deine Meldung in den Logs gespeichert."));
        SendPlayerMessage(playerid,100,100,200,string.format("%s","Wir bitten dich darum, den Bug umgehend im Forum zu melden."));
        for i = 0, GetMaxSlots() - 1 do
            if IsPlayerConnected(i) == 1 and Player[i] and Player[i].isOnline == 1 then
                if Player[i].isAdmin >= 1 then
                    SendPlayerMessage(i,100,100,200,string.format("%s %s%d%s %s %s",name,"(",playerid,")","meldet:",message));
                end
            end
        end
    else
        SendPlayerMessage(playerid,200,100,100,"Befehl: /report <technik oder support> <Nachricht>");
    end
end

function CMD_GetPos(playerid, params)
	local x,y,z = GetPlayerPos(playerid)
	local message = string.format("%s %f %f %f","My position is:",x,y,z)
	SendPlayerMessage(playerid,0,255,0,message)
end

print("Loaded LUA file   " .. debug.getinfo(1).source)