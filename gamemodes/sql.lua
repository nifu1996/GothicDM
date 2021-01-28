mysql_handler = nil;
database_ip = "127.0.0.1";
database_user = "Gott";
database_password = "Spielwiese";
database_name = "Deathmatch";
mysql_handler = mysql_connect(database_ip, database_user, database_password, database_name);

function mysql_check_connection()
    if mysql_handler then
        if (mysql_ping(mysql_handler) == false) then
            mysql_close(mysql_handler)
            mysql_handler = mysql_connect(database_ip, database_user, database_password, database_name)
            if (mysql_ping(mysql_handler) == true) then
				ServerLog("TECHNIK", "INFO: Database was idle for too long. Reconnected.")
                return true
            else
				ServerLog("TECHNIK", "WARNING: Database seems to be offline.")
                return false
            end
        else
            return true
        end
    else
        mysql_handler = mysql_connect(database_ip, database_user, database_password, database_name)
	end
end

function mysql_checkTimer()
	print("DB-Query");
	local test = mysql_query(mysql_handler,"SELECT * FROM `user` WHERE `iduser` = 0");
	mysql_free_result (test);
	SetTimerEx("mysql_checkTimer",3600000,0,0); -- Jede Stunde DB Query
end;