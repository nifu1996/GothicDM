function SwampDrone()
	local npc = CreateNPC(GetNewNPCName("Sumpfdrohne"));
	
	if(npc == -1)then
		print("Creating Swamp Drone Failed!");
	end
	
	SetPlayerInstance(npc,"Swampdrone");
	
	SetPlayerStrength(npc, 25);
	SetPlayerDexterity(npc, 25);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 100);
	SetPlayerHealth(npc, 100);
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_SwampDrone;
	npcarr.func = SwampDrone;
	npcarr.instance = "SwampDrone";
	npcarr.respawntime = 1500;
	return npcarr;
end

function OW_SwampDrone()
	local npc = CreateNPC(GetNewNPCName("Sumpfdrohne"));
	
	if(npc == -1)then
		print("Creating OW_Swamp Drone Failed!");
	end
	
	SetPlayerInstance(npc,"Swampdrone");
	
	SetPlayerStrength(npc, 25);
	SetPlayerDexterity(npc, 25);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 100);
	SetPlayerHealth(npc, 100);
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_SwampDrone;
	npcarr.func = SwampDrone;
	npcarr.instance = "OW_SwampDrone";
	npcarr.respawntime = 1500;
	return npcarr;
end

function Spawn_SwampDrone()
	local npc = CreateNPC(GetNewNPCName("Sumpfdrohne"));
	
	if(npc == -1)then
		print("Creating SpawnSwampDrone Failed!");
	end
	
	SetPlayerInstance(npc,"Swampdrone");
	
	SetPlayerStrength(npc, 25);
	SetPlayerDexterity(npc, 25);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 100);
	SetPlayerHealth(npc, 100);
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_SwampDrone;
	npcarr.func = SwampDrone;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	return npcarr;
end