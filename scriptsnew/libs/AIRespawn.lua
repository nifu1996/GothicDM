function Respawn_Timer() -- Function von Jey
	for key,val in pairs(GetFullPlayerList()) do
		if(val.GP_IsNPC == 1)then
            if val.GP_IsDead == 1 then
				if val.RespawnCounter <= tonumber(val.RespawnTime) then
					val.RespawnCounter = val.RespawnCounter + 1;
                else
                    
                    local randomspawn = math.random(0, 1) -- generiert einen Wert von 0 oder 1
                    if randomspawn ~= 0 then -- Wenn wert ungleich 0, f�hre alles weitere aus
                        local npcQuery= mysql_query(mysql_handler, "SELECT World FROM NPCSpawn WHERE `Waypoint` = '"..val.StartWP.."'");
                        
                        for sqlRow,DB in mysql_rows_assoc(npcQuery) do
                            local bot_id = val.ID
                            local startwp = val.StartWP
                            local world = DB.World
                            local Instance = val.Instance

                            for sortkey,sortval in ipairs(AI_NPCList_Sort) do
                                if sortval == val.ID then
                                    table.remove(AI_NPCList_Sort, sortkey);
                                end
                            end

                            world = AI_RespawnWorlds[val.ID];
                            AI_RespawnWorlds[val.ID] = nil;
                            DestroyNPC(val.ID)
                        
                            SpawnNPC(Spawn_NPC(Instance),startwp,world)
                        end
					end
				end
			end
		end
	end
end

print(debug.getinfo(1).source .. "has been loaded")