function Swampshark()
	local npc = CreateNPC(GetNewNPCName("Sumpfhai"));
	
	if(npc == -1)then
		print("Creating Sumpfhai Failed!");
	end
	
	SetPlayerInstance(npc,"Swampshark");
	
	SetPlayerStrength(npc, math.random(75, 95));
	SetPlayerDexterity(npc, 85);
	SetPlayerLevel(npc, 24);
	SetPlayerMaxHealth(npc, math.random(1000, 1240));
	SetPlayerHealth(npc, 1000);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Swampshark;
	npcarr.func = Swampshark;
	npcarr.instance = "Sumpfhai";
	npcarr.respawntime = 720;
	
	return npcarr;
end

function JK_Swampshark()
	local npc = CreateNPC(GetNewNPCName("Sumpfhai"));
	
	if(npc == -1)then
		print("Creating JK_Sumpfhai Failed!");
	end
	
	SetPlayerInstance(npc,"Swampshark");
	
	SetPlayerStrength(npc, math.random(75, 95));
	SetPlayerDexterity(npc, 85);
	SetPlayerLevel(npc, 24);
	SetPlayerMaxHealth(npc, math.random(1000, 1240));
	SetPlayerHealth(npc, 1000);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Swampshark;
	npcarr.func = Swampshark;
	npcarr.instance = "JK_Sumpfhai";
	npcarr.respawntime = 720;
	
	return npcarr;
end

-- Added by Rodin
function Spawn_Swampshark()
	local npc = CreateNPC(GetNewNPCName("Sumpfhai"));
	
	if(npc == -1)then
		print("Creating SpawnSumpfhai Failed!");
	end
	
	SetPlayerInstance(npc,"Swampshark");
	
	SetPlayerStrength(npc, 85);
	SetPlayerDexterity(npc, 85);
	SetPlayerLevel(npc, 24);
	SetPlayerMaxHealth(npc, 1120);
	SetPlayerHealth(npc, 1120);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Swampshark;
	npcarr.func = Swampshark;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end