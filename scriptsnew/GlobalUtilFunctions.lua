-------------------------------------------------------------------------------
-- Allgemeine Globale Hilfsfunktionen
-- + Loggen
-- + String Erweiterungen
-- + Tabellen Erweiterungen
-- + BigRequire
-------------------------------------------------------------------------------

-- Log Funktionalität BEGINN --------------------------------------------------

function DebugLog(dbg, msg)
	LogString("server_debug", dbg .. "\n\t" .. msg .. "\n")
end

function ServerLog(msgtype, msg)
	cur_date = os.date("%Y_%m_%d")
	if msgtype == "ADMIN" then
		LogString("logs/admin_"..cur_date.."", msg)
	elseif msgtype == "CONNECTION" then
		LogString("logs/connection_"..cur_date.."", msg)
	elseif msgtype == "COMMAND" then
		LogString("logs/command_"..cur_date.."", msg)
	elseif msgtype == "REPORT" then
		LogString("logs/report_"..cur_date.."", msg)
	elseif msgtype == "ITEMS" then
		LogString("logs/items_"..cur_date.."", msg)
	elseif msgtype == "FIGHT" then
		LogString("logs/fight_"..cur_date.."", msg)
	elseif msgtype == "CHAT" then
		LogString("logs/chat_"..cur_date.."", msg)
	elseif msgtype == "OOCCHAT" then
		LogString("logs/oocchat_"..cur_date.."", msg)
	elseif msgtype == "TECHNIK" then
		LogString("logs/tech_"..cur_date.."", msg)
	elseif msgtype == "POS" then
		LogString("logs/pos_"..cur_date.."", msg)
	elseif msgtype == "TEACH" then
		LogString("logs/teach_"..cur_date.."", msg)
	end
end

-- Log Funktionalität ENDE ----------------------------------------------------


-- String Erweiterungen BEGINN ------------------------------------------------

	function trim(s)
	  local i1,i2 = string.find(s,'^%s*')
	  if i2 >= i1 then s = string.sub(s,i2+1) end
	  local i1,i2 = string.find(s,'%s*$')
	  if i2 >= i1 then s = string.sub(s,1,i1-1) end
	  return s
	end

	function string:split(delimiter)
	  local result = { }
	  local from = 1
	  local delim_from, delim_to = string.find( self, delimiter, from )
	  while delim_from do
		table.insert( result, string.sub( self, from , delim_from-1 ) )
		from = delim_to + 1
		delim_from, delim_to = string.find( self, delimiter, from )
	  end
	  table.insert( result, string.sub( self, from ) )
	  return result
	end

	function string.ends(String,End)
	   return End=='' or string.sub(String,-string.len(End))==End
	end

	function string.starts(String,Start)
	   return string.sub(String,1,string.len(Start))==Start
	end

	function string.contains(String, containstr)
		return string.find(string.lower(String), string.lower(containstr)) ~= nil;
	end

-- String Erweiterungen ENDE --------------------------------------------------


-- Tabellen Erweiterungen BEGINN ----------------------------------------------

	-- Gibt true zurück wenn die Tabelle tab das Element ele enthält, false sonst.
	function table.contains(tab, ele)
		for key, val in pairs(tab)
		do
			if val == ele then
				return true
			end
		end

		return false
	end

	-- Erstellt eine Kopie der Tabelle tab und gibt sie zurück.
	function table.copy(t)
		local t2 = {};
		for k,v in pairs(t) do
			if type(v) == "table" then
				t2[k] = table.copy(v);
			else
				t2[k] = v;
			end
		end
		return t2;
	end

	-- Fügt alle Elemente aus Tabelle tab2 in die Tabelle tab ein. Elemente mit dem gleichen Key werden dabei in Tabelle tab überschrieben.
	function table.merge(tab, tab2)
		if(tab == nil or tab2== nil)then
			return;
		end
		
		for key,val in pairs(tab2) do
			tab[key] = val
		end
	end

	-- Erstellt eine neue Tabelle mit den Elementen von Tabelle tab in umgekehrter Reihenfolge und gibt sie zurück. (ARRAY Variante, numerischer Key)
	function table.reverse(tab)
		local newTable = {}
		
		for key, val in ipairs(tab)
		do
			table.insert(newTable, 1, val)
		end
	 
		return newTable
	end
	
	-- Löscht das Element ele aus der Tabelle tab. (ARRAY Variante, numerischer Key)
	function table.removeElement(tab, ele)
		for key, val in ipairs(tab)
		do
			if (ele == val)
			then
				table.remove(tab, key)
				break
			end
		end
	end

-- Tabellen Erweiterungen ENDE ------------------------------------------------


-- big_require Funktionalität BEGINN ------------------------------------------

	local OPERATING_SYSTEM = 1;-- 2 Linux, 1 Windows!
	local QUIET = 1; -- (0 or nil) => show message for big_require / 1 => not show message for big_require

	-- Führt require für alle "*.lua" Dateien im angegebenen Verzeichnis "folder" und allen Unterverzeichnissen durch.
	-- Folder soll ohne "/" am Ende angegeben werden. Ist folder nicht angegeben oder "", wird das aktuelle Verzeichnis als Basisverzeichnis angenommen.
	-- Ist recoursive angegeben wird bei true rekursiv gesucht, bei false nicht. (Default = true, wenn nicht angegeben.)
	-- Ist filepattern angegeben oder ungleich "", werden nur lua Dateien verwendet, die dem filepattern entsprechen. (Default = "*", wenn nicht angegeben oder "".)
	function big_require(folder, recursive, filepattern)
		if folder == nil or folder == "" then
			folder = "."
		end

		if filepattern == nil or filepattern == "" then
			filepattern = "*"
		end

		if recursive == nil then
			recursive = true;
		end
		
		local files = scandir(folder, recursive, filepattern, {});
		
		for var = 1, #files, 1 do
			if(QUIET == nil or QUIET == 0)then
				print("Loaded Lib: "..string.sub(files[var],0, -string.len(".lua")-1));
			end
			require(string.sub(files[var],0, -string.len(".lua")-1))
		end
	end

	-- Listet alle *lua Dateien in einem angegebenen (relativen) Verzeichnis.
	-- Für Windows rekursiv, für Linux ohne Rekursion aber mit temporärer Datei.
	-- Alle Parameter müssen korrekt angegeben werden.
	function scandir(directory, recursive, filepattern, t)
		if(OPERATING_SYSTEM == nil or OPERATING_SYSTEM == 1)then
			for filename in io.popen('dir "'..directory..'\\'..filepattern..'.lua" /b /a-d'):lines() do
				table.insert(t, directory.."/"..filename);
			end
			if(recursive == true)then
				for dirname in io.popen('dir "'..directory..'" /b /ad'):lines() do
					scandir(directory.."/"..dirname, true, filepattern, t);
				end
			end
		elseif(OPERATING_SYSTEM == 2)then
			-------------------------------------------------------------------
			-- TODO: muss noch getetet werden BEGINN !!!!!!!!!!! --------------
			if(recursive == true)then
				os.execute('find ./"'..directory..'" iname "'..filepattern..'.lua" -type f > temp_bigrequire.tempfile');
				local handle = io.open("temp_bigrequire.tempfile");

				for filename in handle:lines() do
					table.insert(t, filename);
				end
				handle:close();
				os.remove("temp_bigrequire.tempfile");
			else
				os.execute('find ./"'..directory..'" iname "'..filepattern..'.lua" -maxdepth 1 -type f > temp_bigrequire.tempfile');
				local handle = io.open("temp_bigrequire.tempfile");
				for filename in handle:lines() do
					table.insert(t, filename);
				end
				handle:close();
				os.remove("temp_bigrequire.tempfile");
			end
			-- TODO: muss noch getetet werden ENDE !!!!!!!!!!! ---------------
			------------------------------------------------------------------
		end
		return t
	end

-- big_require Funktionalität ENDE --------------------------------------------

print("Loaded LUA file   " .. debug.getinfo(1).source)