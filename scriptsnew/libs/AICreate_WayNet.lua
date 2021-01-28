function DBCreateAI_Waynets()
    for i,v in ipairs(SpawnWorlds) do
        print(v)
        AI_WayNets[v] = WayNet.create();
        AI_WayNets[v]:DBload(v);

        AI_FreePoints[v] = FreePointList.create( );
        AI_FreePoints[v]:DBload(v);
    end
end

function FreePointList:DBload(world)
    local FreepointDB= mysql_query(mysql_handler, "SELECT Name,x,y,z,dirx,dirz FROM Freepoints WHERE World = '"..mysql_escape_string(mysql_handler,world).."'");

    for sqlRow,DB in mysql_rows_assoc(FreepointDB) do
        local wp = FreePoint.create();
        wp.name = string.upper(trim(DB.Name));
        wp.x =  tonumber(DB.x);
        wp.y = tonumber(DB.y);
        wp.z = tonumber(DB.z);
        wp.dirx = tonumber(DB.dirx);
        wp.dirz = tonumber(DB.dirz);
        
        self.freepoints[wp.name] = wp; -- All WP's needs a unique name!
        --table.insert(self.waypoints, wp); 
    end
end

function WayNet:DBload(world)
    local WaypointDB= mysql_query(mysql_handler, "SELECT Name,x,y,z,dirx,dirz FROM Waypoints WHERE World = '"..mysql_escape_string(mysql_handler,world).."'");
    for sqlRow,DB in mysql_rows_assoc(WaypointDB) do
        local wp = Waypoint.create();
        wp.name = string.upper(trim(DB.Name));
        wp.x =  tonumber(DB.x);
        wp.y = tonumber(DB.y);
        wp.z = tonumber(DB.z);
        wp.dirx = tonumber(DB.dirx);
        wp.dirz = tonumber(DB.dirz);
        
        local WPVerbindung= mysql_query(mysql_handler, "SELECT WPVerbindung FROM WPVerbindung WHERE Waypoint = '"..DB.Name.."'");

        for sqlRow,values in mysql_rows_assoc(WPVerbindung) do
            wp.nextWPS = values;
        end
       
        self.waypoints[wp.name] = wp;
    end
end

print(debug.getinfo(1).source .. "has been loaded")