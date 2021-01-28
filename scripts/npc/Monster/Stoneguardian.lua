function Stoneguardian() --Steinwächter für JK
	local npc = CreateNPC(GetNewNPCName("Steinwächter"));
	
	if(npc == -1)then
		print("Creating Stoneguardian Failed!");
	end
	
	SetPlayerInstance(npc,"Stoneguardian");
	
	SetPlayerStrength(npc, 70);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 18);
	SetPlayerMaxHealth(npc, 410);
	SetPlayerHealth(npc, 410);
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Stoneguardian;
	npcarr.func = Stoneguardian;
	npcarr.instance = "Steinwaechter";
	npcarr.respawntime = 300;
	return npcarr;
end


function Spawn_Stoneguardian()
	local npc = CreateNPC(GetNewNPCName("Steinwächter"));
	
	if(npc == -1)then
		print("Creating SpawnStoneguardian Failed!");
	end
	
	SetPlayerInstance(npc,"Stoneguardian");
	
	SetPlayerStrength(npc, 70);
	SetPlayerDexterity(npc, 70);
	SetPlayerLevel(npc, 18);
	SetPlayerMaxHealth(npc, 410);
	SetPlayerHealth(npc, 410);
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Stoneguardian;
	npcarr.func = Stoneguardian;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	return npcarr;
end
