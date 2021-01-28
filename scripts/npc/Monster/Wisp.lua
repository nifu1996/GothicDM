function Wisp()
	local npc = CreateNPC(GetNewNPCName("Irrlicht"));
	
	if(npc == -1)then
		print("Creating Wisp Failed!");
	end
	
	SetPlayerInstance(npc,"Wisp");
	
	SetPlayerStrength(npc, 35);
	SetPlayerDexterity(npc, 35);
	SetPlayerLevel(npc, 4);
	SetPlayerMaxHealth(npc, 80);
	SetPlayerHealth(npc, 80);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Wisp;
	npcarr.func = Wisp;
	npcarr.instance = "Irrlicht";
	npcarr.respawntime = 480;
	
	return npcarr;
end

function OW_Wisp()
	local npc = CreateNPC(GetNewNPCName("Irrlicht"));
	
	if(npc == -1)then
		print("Creating OW_Wisp Failed!");
	end
	
	SetPlayerInstance(npc,"Wisp");
	
	SetPlayerStrength(npc, 35);
	SetPlayerDexterity(npc, 35);
	SetPlayerLevel(npc, 4);
	SetPlayerMaxHealth(npc, 80);
	SetPlayerHealth(npc, 80);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Wisp;
	npcarr.func = Wisp;
	npcarr.instance = "OW_Irrlicht";
	npcarr.respawntime = 480;
	
	return npcarr;
end

function JK_Wisp()
	local npc = CreateNPC(GetNewNPCName("Irrlicht"));
	
	if(npc == -1)then
		print("Creating JK_Wisp Failed!");
	end
	
	SetPlayerInstance(npc,"Wisp");
	
	SetPlayerStrength(npc, 35);
	SetPlayerDexterity(npc, 35);
	SetPlayerLevel(npc, 4);
	SetPlayerMaxHealth(npc, 80);
	SetPlayerHealth(npc, 80);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Wisp;
	npcarr.func = Wisp;
	npcarr.instance = "JK_Irrlicht";
	npcarr.respawntime = 480;
	
	return npcarr;
end

function Spawn_Wisp()
	local npc = CreateNPC(GetNewNPCName("Irrlicht"));
	
	if(npc == -1)then
		print("Creating SpawnWisp Failed!");
	end
	
	SetPlayerInstance(npc,"Wisp");
	
	SetPlayerStrength(npc, 35);
	SetPlayerDexterity(npc, 35);
	SetPlayerLevel(npc, 4);
	SetPlayerMaxHealth(npc, 80);
	SetPlayerHealth(npc, 80);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Wisp;
	npcarr.func = Wisp;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end