function InitSpawnDataBaseNPC()

    local npcQuery= mysql_query(mysql_handler, "SELECT ID,Instance,Waypoint,World FROM NPCSpawn WHERE 1 ");

    for sqlRow,DB in mysql_rows_assoc(npcQuery) do
        SpawnNPC(Spawn_NPC(DB.Instance),DB.Waypoint,DB.World)

        local UpdateIGID = mysql_query(mysql_handler, "UPDATE `NPCSpawn` SET `IGID` = '"..npcarr.id.."' WHERE `ID` = '"..DB.ID.."'");
    end
    mysql_free_result(npcQuery);
end

print(debug.getinfo(1).source .. "has been loaded")