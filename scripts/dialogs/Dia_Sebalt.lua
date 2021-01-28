_SebaltGespraech = {};

function IMPORTENT_DIALOG(_player, _npc)
	--[[ local name = GetPlayerName(_player);
	local result = mysql_query(mysql_handler, "SELECT anzahl FROM inventar WHERE item ='itwr_passierschein' AND name = '"..name.."'");
	if mysql_num_rows(result) == 1 then
		print(name.." wird NICHT von Sebalt angesprochen");
		ClearChoises(_npc);
		AI_ENDDIALOG(_npc);
	else --]]
		--print(name.." wird von Sebalt angesprochen");
		AI_OUTPUT(_npc, _player, "", "Ohne Passierschein kommt hier keiner rein!"); -- "DIA_328_MILIZ_HI_08_00.WAV" gelöscht, stand vor dem Text
		--if GetPlayerAnimationID(_playerid=349)		
		--PlayAnimation(_player, "T_JUMPB");
		local playerX, playerY, playerZ = GetPlayerPos(_player);
		if GetDistance3D(playerX, playerY,playerZ, 8750.0000, 680.0000,-4803.0000)<600 then
			SetPlayerPos(_player,8268.0000,360.0000,-4866.0000);
		elseif GetDistance3D(playerX, playerY,playerZ, 9821.0000, 688.0000,-4603.0000)<600 then
			SetPlayerPos(_player,10766.0000,991.0000,-4133.0000);
		end	
		local player_npc=_player.."-".._npc
		SetTimerEx("Sebalt_JumpBack1",700,0,player_npc);
		ClearChoises(_npc);
		-- while GetPlayerAnimationID ~= 991 do
		-- PlayAnimation(_player, "T_JUMPB");
		-- end
		SetTimerEx("Sebalt_EndeNPC",4000,0,_npc);
	--end;
end;

function IMPORTENT_DIALOGA(_player, _npc)
	--[[ local name = GetPlayerName(_player);
	local result = mysql_query(mysql_handler, "SELECT anzahl FROM inventar WHERE item ='itwr_passierschein' AND name = '"..name.."'");
	if mysql_num_rows(result) == 1 then
		print(name.." wird NICHT von Sebalt angesprochen");
		ClearChoises(_npc);
		AI_ENDDIALOG(_npc);
	else --]]
		--print(name.." wird von Sebalt angesprochen");
		AI_OUTPUT(_npc, _player, "", "Verschwinde Morra!"); -- "DIA_328_MILIZ_HI_08_00.WAV" gelöscht, stand vor dem Text
		--if GetPlayerAnimationID(_playerid=349)		
		--PlayAnimation(_player, "T_JUMPB");
		local playerX, playerY, playerZ = GetPlayerPos(_player);
		if GetDistance3D(playerX,playerY,playerZ, -28794, 2585,-28402)<1000 then  ---Teleport
			SetPlayerPos(_player,-29887,2591,-28581);
		--elseif GetDistance3D(playerX, playerY,playerZ, 9821.0000, 688.0000,-4603.0000)<600 then
		--	SetPlayerPos(_player,10766.0000,991.0000,-4133.0000);
		end	
		local player_npc=_player.."-".._npc
		SetTimerEx("Sebalt_JumpBack1",700,0,player_npc);
		ClearChoises(_npc);
		-- while GetPlayerAnimationID ~= 991 do
		-- PlayAnimation(_player, "T_JUMPB");
		-- end
		SetTimerEx("Sebalt_EndeNPC",4000,0,_npc);
	--end;
end;

function Sebalt_JumpBack1(player_npc)
	print("JumpBack1")
	playerid=tonumber(string.sub(player_npc,1,(string.find(player_npc,"-"))-1))
	npcid=tonumber(string.sub(player_npc,(string.find(player_npc,"-"))+1))
	PlayAnimation(playerid, "T_JUMPB");
	if GetDistancePlayers(npcid, playerid) > 600 then
		SetTimerEx("Sebalt_JumpBack2",700,0,player_npc)
	else
		SetTimerEx("Sebalt_JumpBack1",700,0,player_npc)
	end	
end;

function Sebalt_JumpBack2(player_npc)
	print("JumpBack2")
	playerid=tonumber(string.sub(player_npc,1,(string.find(player_npc,"-"))-1))
	npcid=tonumber(string.sub(player_npc,(string.find(player_npc,"-"))+1))
	PlayAnimation(playerid, "T_JUMPB");
	if GetDistancePlayers(npcid, playerid) > 600 then
		SetTimerEx("Sebalt_EndePlayer",2600,0,player_npc)
	else
		SetTimerEx("Sebalt_JumpBack2",700,0,player_npc)
	end		
end;

function Sebalt_EndePlayer(player_npc)
	print("EndePlayer")
	playerid=tonumber(string.sub(player_npc,1,(string.find(player_npc,"-"))-1))
	npcid=tonumber(string.sub(player_npc,(string.find(player_npc,"-"))+1))
	_SebaltGespraech[playerid] = nil;
	FreezePlayer(playerid,0);
end;

function Sebalt_EndeNPC(npc)
	print("EndeNPC")
	AI_ENDDIALOG(npc);
end;
