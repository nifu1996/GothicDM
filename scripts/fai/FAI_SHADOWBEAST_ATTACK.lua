function FAI_SHADOWBEAST_ATTACK(player)

    if(FAI_CheckPlayerHealth(player) == true)then
        return;
    end



    if(GetPlayerWeaponMode(player.ID) == 0 and player.WeaponMode~= 0)then
        --print("SetPlayerWeaponMode "..player.ID.." to "..player.WeaponMode);
        SetPlayerWeaponMode(player.ID, player.WeaponMode);
    end

    local AttackRange = 240;
    if(player.Aivars["ATTACKRANGE"] ~= nil)then
        AttackRange = player.Aivars["ATTACKRANGE"];
    end

	if(player.ENEMY[1] ~= nil)then
		-- checke Spieler in der Nähe
		for key,val in pairs(player["TARGETS"])do
			local aitarget = GetPlayerOrNPC(val);
			if(aitarget and aitarget.GP_IsDead == 0 and aitarget.GP_IsUnconscious == 0 and
			GetGuildAttitude(player, aitarget) == AI_ATTITUDE_HOSTILE)then
				local dist = GetDistancePlayers(player.ID, val);
				if(dist < player.Aivars["MaxWarnDistance"])then
					SetEnemy(player.ID, val);
				end;
			end;
		end;
	end;

	-- Kriege nächsten Feind
	local shortestRangePlayer = nil;
	local r = nil;
    for key,val in ipairs(player["ENEMY"])do -- val = playerid des Gegners
        local dist = GetDistancePlayers(player.ID, val);
		if r == nil or dist < r then
			r = dist; shortestRangePlayer = val;
		end;

        if(dist > 3000)then
            table.remove(player["ENEMY"], key);
            if(next(player.ENEMY) == nil)then
                FAI_AllEnemysRemoved(player);
                PlayAnimation(player.ID, "T_PERCEPTION");
                player.ENEMY = {};
                if(player.daily_routine ~= nil)then
                    Reset_TA(player.ID);
                elseif(player.LASTWP ~= nil)then
                    AI_GOTO_NOW(player.ID, player.LASTWP);
                    AI_STOP_NOW(player.ID, 10);
                end
                return;
            end
		end
    end

    if(FAI_UPDATE_NEXTMOVES(player))then
        return;
    end



    if(player.Aivars["Flee"] == true)then
        if(player.Aivars["FleeRoute"]==nil)then
            player.Aivars["FleeStartWP"] = AI_WayNets[player.GP_World]:GetNearestWP(player.ID);
            player.Aivars["FleeEndWP"] = AI_WayNets[player.GP_World]:GetRandomWaypoint();
            player.Aivars["FleeWPIndex"] = 1;
            player.Aivars["FleeRoute"] = AI_WayNets[player.GP_World]:GetWayRoute(player.Aivars["FleeStartWP"], player.Aivars["FleeEndWP"]);
            player.LastPosUpdate = 0;
            setPlayerWalkType(player.ID, 1);
        end
        if(player.Aivars["FleeRoute"]==nil)then
            turnPlayer(player.ID, GetAngleToPlayer(player.ID,player.ENEMY[1])+180);
            table.insert(player.NEXTMOVES, {type=1, anim="S_FISTRUNL"});
            table.insert(player.NEXTMOVES, {type=2, waittime=150}); -- Testen wozu der Wert gut is, original 500
        else

            local px,py,pz = player.GP_PosX, player.GP_PosY, player.GP_PosZ;
            local _x = player.Aivars["FleeRoute"][player.Aivars["FleeWPIndex"]].x;
            local _y = player.Aivars["FleeRoute"][player.Aivars["FleeWPIndex"]].y;
            local _z = player.Aivars["FleeRoute"][player.Aivars["FleeWPIndex"]].z;

            if(gotoPosition(player.ID, _x, _y, _z)) then

                player.Aivars["FleeWPIndex"] = player.Aivars["FleeWPIndex"]+1;
                if(player.Aivars["FleeRoute"][player.Aivars["FleeWPIndex"]] == nil) then
                    player.Aivars["FleeRoute"] = nil;
                end
            end
        end
        return;
    end

    if(player.ENEMY[1] == nil)then
        return;
    end

	-- Tausche player.ENEMY[1] mit demjenigen, der am nächsten steht aka Targetchange
	if shortestRangePlayer ~= player.ENEMY[1] then
		for key,val in ipairs(player["ENEMY"])do
			if val == shortestRangePlayer then
				player.ENEMY[key] = player.ENEMY[1];
				player.ENEMY[1] = shortestRangePlayer;
				break;
			end;
		end;
	end;

    if(GetDistancePlayers(player.ID, player.ENEMY[1]) > AttackRange)then -- Distanz zwischen Monster und Spieler > Attack Range....
        if(player.Aivars["RUNMODE"] ~= nil and player.Aivars["RUNMODE"] == 0)then
            if(player.WeaponMode == 0) then
                table.insert(player.NEXTMOVES, {type=1, anim="S_FISTWALKL"});
            end
        else
            if(player.WeaponMode == 0) then
                table.insert(player.NEXTMOVES, {type=1, anim="S_FISTRUNL"});
            end
        end;
    else -- Distanz zwischen Monster und Spieler < Attack Range....
		local dangle = GetPlayerAngle(player.ID) - GetAngleToPlayer(player.ID, player.ENEMY[1]); -- Angle vom Monster - Angle vom Monster zum Spieler
		if(dangle > -12 and dangle < 12)then
			--table.insert(player.NEXTMOVES, {type=4, weaponModeType=1});
			if(player.WeaponMode == 0) then
				table.insert(player.NEXTMOVES, {type=1, anim="S_FISTATTACK"});
			end
			table.insert(player.NEXTMOVES, {type=3, victim=player.ENEMY[1]}); -- Monster hat gehittet
			table.insert(player.NEXTMOVES, {type=2, waittime=900}); -- 200, bestimmt die Zeitspanne zwischen den Angriffen
			--table.insert(player.NEXTMOVES, {type=4, weaponModeType=0});
		else
            if math.random() > 0.65 then
                table.insert(player.NEXTMOVES, {type=1, anim="T_FISTPARADEJUMPB"});
            else
                local pangle = GetAngleToPlayer(player.ID, player.ENEMY[1]);
                if pangle > 180 then -- Spieler steht links vom Monster
                    table.insert(player.NEXTMOVES, {type=1, anim="T_FISTRUNSTRAFER"});
                else -- Spieler steht rechts vom Monster
                    table.insert(player.NEXTMOVES, {type=1, anim="T_FISTRUNSTRAFEL"});
                end;
            end;
			table.insert(player.NEXTMOVES, {type=2, waittime=math.random(50,100)}); --0/400 --waittime=math.random(500,1000)})
		end
    end

	turnPlayer(player.ID, GetAngleToPlayer(player.ID, player.ENEMY[1]));

end

function ON_SHADOWBEAST_HIT(player, targetid)
    SetEnemy(player.ID, targetid);
	-- pulle befreundete Monster in der Nähe
	for k,v in pairs(GetFullPlayerList()) do
		if k ~= player.ID and type(k) == "number" and AI_NPCList[k] then
			if GetDistancePlayers(player.ID, k) < 1500 then
				local ai = GetPlayerAI(k);
				if GetGuildAttitude(player, ai) == AI_ATTITUDE_FRIENDLY then
					print("ON_SHADOWBEAST_HIT2")
					SetEnemy(k, targetid);
				end;
			end;
		end;
	end;
    if(player.Aivars.Flee == true and GetPlayerHealth(player.ID) <= GetPlayerMaxHealth(player.ID))then
        player.Aivars.Flee = false;
    end
    if(player.Aivars["Flee"] == true)then
        return
    end

    -- if(math.random() > 0.65)then
		-- --table.insert(player.NEXTMOVES, {type=1, anim="T_FISTPARADEJUMPB"});
		-- table.insert(player.NEXTMOVES, {type=2, waittime=math.random(100,200)}); --0/400 --waittime=math.random(500,1000)})
        -- --[[if(math.random() > 0.75)then
            -- table.insert(player.NEXTMOVES, {type=1, anim="T_FISTRUNSTRAFER"});
        -- else
            -- table.insert(player.NEXTMOVES, {type=1, anim="T_FISTRUNSTRAFEL"});
        -- end
        -- table.insert(player.NEXTMOVES, {type=2, waittime=math.random(1000,2000)});  -- 1000,2000 ]]
	-- end --]]
end
