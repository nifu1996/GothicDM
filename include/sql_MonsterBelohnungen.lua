-- Tabelle mit Monster Instance Name, Ep und Erz. Wird initial aus der Datenbank geladen.
local MonsterBelohnungen = {}

-- Gibt Ep und Erz f�r das Monster zur�ck.
function GetMonsterEpErz(instancename)
	local belohnung = MonsterBelohnungen[instancename]
	if belohnung == nil then -- Hinzuf�gen wenn die Monsterinstanz noch nicht bekannt ist.
		MonsterBelohnungenTabelleHinzufuegen(instancename, 10, 10)
		MonsterBelohnungenTabelleHinzufuegenDb(instancename, 10, 10)
		return 10, 10
	end
	return belohnung.Ep, belohnung.Erz
end

-- Liest die ganze Monster Tabelle aus der Datenbank und speichert sie in der LUA Tabelle MonsterBelohnungen.
function MonsterBelohnungenTabelleLesen()
	MonsterBelohnungen = {}
	local result = mysql_query(mysql_handler, "SELECT Instance, EP, ERZ FROM Monster ORDER BY Instance ASC")
	if not(result) then
		print("MonsterBelohnungenTabelleLesen ist fehlgeschlagen.")
		return
	end
	for i = 1, mysql_num_rows(result) do
		local row = mysql_fetch_assoc(result)
		local instancename = row.Instance
		local ep = tonumber(row.EP)
		local erz = tonumber(row.ERZ)
		MonsterBelohnungenTabelleHinzufuegen(instancename, ep, erz)
	end
	mysql_free_result(result)
end

-- F�gt instancename, ep und erz der LUA Tabelle MonsterBelohnungen hinzu, oder aktualisiert die Werte.
function MonsterBelohnungenTabelleHinzufuegen(instancename, ep, erz)
	local belohnung = {}
	belohnung.Ep = ep
	belohnung.Erz = erz
	MonsterBelohnungen[instancename] = belohnung
end

-- F�gt instancename, ep und erz der Datenbank Tabelle Monster hinzu.
function MonsterBelohnungenTabelleHinzufuegenDb(instancename, ep, erz)
	local insertresult = mysql_query(mysql_handler, "INSERT INTO `Monster` (`Instance`, `EP`, `ERZ`) VALUES ('"..instancename.."', "..ep..", "..erz.." )")
	if insertresult then
		mysql_free_result(insertresult)
	else
		print("MonsterBelohnungenTabelleHinzufuegen ist fehlgeschlagen.")
	end
end

-- Gibt die MonsterBelohnungen Tabelle im Konsolenfenster aus.
function DebugPrintMonsterBelohnungen()
	local i = 0
	print("Nr", "Instance", "Ep", "Erz")
	for key, val in pairs(MonsterBelohnungen) do
		i = i + 1
		
		--print(i, key, MonsterBelohnungen[key].Ep, MonsterBelohnungen[key].Erz)
		
		--print(i, key, val.Ep, val.Erz)
		
		-- local ep, erz = GetMonsterEpErz(key)
		-- print(i, key, ep, erz)
		
		print(i, key, GetMonsterEpErz(key))
	end
end
