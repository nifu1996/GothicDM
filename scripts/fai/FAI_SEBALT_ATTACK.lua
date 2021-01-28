function FAI_SEBALT_ATTACK(player)

    if(FAI_CheckPlayerHealth(player) == true)then
        return;
    end

    if(GetPlayerWeaponMode(player.ID) == 0 and player.WeaponMode~= 0)then
        --print("SetPlayerWeaponMode "..player.ID.." to "..player.WeaponMode);
        SetPlayerWeaponMode(player.ID, player.WeaponMode);
    end
        -- Remove all invisible enemies.
    if #player["ENEMY"] > 0 then
        for key, val in ipairs(player["ENEMY"]) do
            if IsNPC(val) == 0 and AI_PlayerList[val].Invisible == true then
                table.remove(player["ENEMY"], key)
            end
        end

        -- Reset NPC when all enemies were removed
        if #player["ENEMY"] == 0 then
            FAI_AllEnemysRemoved(player)
            player.NEXTMOVES = {}

            -- Avoid endless loop of some animations like running. Such animation only stop by another animation.
            PlayAnimation(player.ID, aniHelper("S", player.WeaponMode, "RUN"))

            if player.daily_routine ~= nil then
                Reset_TA(player.ID);
            elseif player.LASTWP ~= nil then
                AI_GOTO_NOW(player.ID, player.LASTWP);
                AI_STOP_NOW(player.ID, 10);
            end
        end
    end

	if player.ENEMY[1] ~= nil then
		-- checke Spieler in der Nähe
		for _, val in pairs(player["TARGETS"]) do
			local aitarget = GetPlayerOrNPC(val)
			if aitarget and aitarget.GP_IsDead == 0 and aitarget.GP_IsUnconscious == 0 and GetGuildAttitude(player, aitarget) == AI_ATTITUDE_HOSTILE and aitarget.Invisible == false then
				local dist = GetDistancePlayers(player.ID, val)
				if dist < player.Aivars["MaxWarnDistance"] then
					SetEnemy(player.ID, val)
				end
			end
		end
	end

    local AttackRange = 300
    if player.Aivars["ATTACKRANGE"] ~= nil then
        AttackRange = player.Aivars["ATTACKRANGE"]
    end

	-- Kriege nächsten Feind
	local shortestRangePlayer = nil
	local r = nil
    for key,val in ipairs(player["ENEMY"]) do -- val = playerid des Gegners
        local dist = GetDistancePlayers(player.ID, val)
		if r == nil or dist < r then
            r = dist
            shortestRangePlayer = val
		end

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

    if player.ENEMY[1] == nil then
        return
    end

	-- Tausche player.ENEMY[1] mit demjenigen, der am nächsten steht aka Targetchange
	if shortestRangePlayer ~= player.ENEMY[1] then
		for key, val in ipairs(player["ENEMY"]) do
			if val == shortestRangePlayer then
				player.ENEMY[key] = player.ENEMY[1]
				player.ENEMY[1] = shortestRangePlayer
				break
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
            table.insert(player.NEXTMOVES, {type=2, waittime=200}); -- Testen wozu der Wert gut is, original 500
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


    turnPlayer(player.ID, GetAngleToPlayer(player.ID, player.ENEMY[1]));

    if(math.random() > 0.99)then
        table.insert(player.NEXTMOVES, {type=1, anim="T_FISTPARADEJUMPB"});
        table.insert(player.NEXTMOVES, {type=2, waittime=100});
    end

    if(GetDistancePlayers(player.ID, player.ENEMY[1]) > AttackRange)then
        if(player.Aivars["RUNMODE"] ~= nil and player.Aivars["RUNMODE"] == 0)then
            --table.insert(player.NEXTMOVES, {type=1, anim="S_FISTWALKL"});
            if(player.WeaponMode == 3) then
                table.insert(player.NEXTMOVES, {type=1, anim="S_1HWALKL"});
            elseif(player.WeaponMode == 4) then
                table.insert(player.NEXTMOVES, {type=1, anim="S_2HWALKL"});
			elseif(player.WeaponMode == 6) then
				table.insert(player.NEXTMOVES, {type=1, anim="T_CBOWRELOAD"});
            else
                table.insert(player.NEXTMOVES, {type=1, anim="S_FISTWALKL"});
            end
        else
            --table.insert(player.NEXTMOVES, {type=1, anim="S_FISTRUNL"});
            if(player.WeaponMode == 3) then
                table.insert(player.NEXTMOVES, {type=1, anim="S_1HRUNL"});
            elseif(player.WeaponMode == 4) then
                table.insert(player.NEXTMOVES, {type=1, anim="S_2HRUNL"});
			elseif(player.WeaponMode == 6) then
				table.insert(player.NEXTMOVES, {type=1, anim="T_CBOWRELOAD"});
            else
                table.insert(player.NEXTMOVES, {type=1, anim="S_FISTRUNL"});
            end
        end
    else
        --table.insert(player.NEXTMOVES, {type=4, weaponModeType=1});
        if(player.WeaponMode == 3) then
            table.insert(player.NEXTMOVES, {type=1, anim="S_1HATTACK"});
        elseif(player.WeaponMode == 4) then
            table.insert(player.NEXTMOVES, {type=1, anim="S_2HATTACK"});
		elseif(player.WeaponMode == 6) then
			table.insert(player.NEXTMOVES, {type=1, anim="T_CBOWRELOAD"});
        else
            table.insert(player.NEXTMOVES, {type=1, anim="S_FISTATTACK"});
        end
        
        local dangle = GetPlayerAngle(player.ID) - GetAngleToPlayer(player.ID, player.ENEMY[1]);
        if(dangle > -10 and dangle < 10)then
            table.insert(player.NEXTMOVES, {type=3, victim=player.ENEMY[1]});
        end
         table.insert(player.NEXTMOVES, {type=2, waittime=2000}); -- 200, bestimmt die Zeitspanne zwischen den Angriffen
         --table.insert(player.NEXTMOVES, {type=4, weaponModeType=0});
    end


end

function ON_SEBALT_HIT(player, targetid)
    SetEnemy(player.ID, targetid);
    if(player.Aivars.Flee == true and GetPlayerHealth(player.ID) <= GetPlayerMaxHealth(player.ID))then
        player.Aivars.Flee = false;
    end
    if(player.Aivars["Flee"] == true)then
        return
    end

    if(math.random() > 0.8)then
        table.insert(player.NEXTMOVES, {type=1, anim="T_CBOWBOWAIM"});
        --[[table.insert(player.NEXTMOVES, {type=2, waittime=math.random(0,400)}); --0/400
        if(math.random() > 0.5)then
            table.insert(player.NEXTMOVES, {type=1, anim="T_FISTRUNSTRAFER"});
        else
            table.insert(player.NEXTMOVES, {type=1, anim="T_FISTRUNSTRAFEL"});
        end --]]
        table.insert(player.NEXTMOVES, {type=2, waittime=math.random(1000,2000)}); -- 1000,2000
    end
end
