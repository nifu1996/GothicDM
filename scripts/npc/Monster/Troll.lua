function Troll()
	local npc = CreateNPC(GetNewNPCName("Troll"));
	
	if(npc == -1)then
		print("Creating Troll Failed!");
	end
	
	SetPlayerInstance(npc,"Troll");
	
	SetPlayerStrength(npc, 105);
	SetPlayerDexterity(npc, 105);
	SetPlayerLevel(npc, 50);
	SetPlayerMaxHealth(npc, 2310);
	SetPlayerHealth(npc, 2310);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 600;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Troll;
	npcarr.func = Troll;
	npcarr.instance = "Troll";
	npcarr.respawntime = 1140;
	
	return npcarr;
end

function OW_Troll()
	local npc = CreateNPC(GetNewNPCName("Troll"));
	
	if(npc == -1)then
		print("Creating OW_Troll Failed!");
	end
	
	SetPlayerInstance(npc,"Troll");
	
	SetPlayerStrength(npc, 105);
	SetPlayerDexterity(npc, 105);
	SetPlayerLevel(npc, 50);
	SetPlayerMaxHealth(npc, 2310);
	SetPlayerHealth(npc, 2310);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Troll;
	npcarr.func = Troll;
	npcarr.instance = "OW_Troll";
	npcarr.respawntime = 1140;
	
	return npcarr;
end

function JK_Troll()
	local npc = CreateNPC(GetNewNPCName("Troll"));
	
	if(npc == -1)then
		print("Creating JK_Troll Failed!");
	end
	
	SetPlayerInstance(npc,"Troll");
	
	SetPlayerStrength(npc, 105);
	SetPlayerDexterity(npc, 105);
	SetPlayerLevel(npc, 50);
	SetPlayerMaxHealth(npc, 2310);
	SetPlayerHealth(npc, 2310);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Troll;
	npcarr.func = Troll;
	npcarr.instance = "JK_Troll";
	npcarr.respawntime = 1140;
	
	return npcarr;
end

function Troll_Black()
	local npc = CreateNPC(GetNewNPCName("Schwarzer Troll"));
	
	if(npc == -1)then
		print("Creating Troll_Black Failed!");
	end
	
	SetPlayerInstance(npc,"Troll_Black");
	
	SetPlayerStrength(npc, 155);
	SetPlayerDexterity(npc, 155);
	SetPlayerLevel(npc, 100);
	SetPlayerMaxHealth(npc, 4670);
	SetPlayerHealth(npc, 4670);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Troll;
	npcarr.func = Troll_Black;
	npcarr.instance = "Schwarzer_Troll";
	npcarr.respawntime = 2280;
	
	return npcarr;
end

function OW_Troll_Black()
	local npc = CreateNPC(GetNewNPCName("Schwarzer Troll"));
	
	if(npc == -1)then
		print("Creating OW_Troll_Black Failed!");
	end
	
	SetPlayerInstance(npc,"Troll_Black");
	
	SetPlayerStrength(npc, 155);
	SetPlayerDexterity(npc, 155);
	SetPlayerLevel(npc, 100);
	SetPlayerMaxHealth(npc, 4670);
	SetPlayerHealth(npc, 4670);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Troll;
	npcarr.func = Troll_Black;
	npcarr.instance = "OW_Schwarzer_Troll";
	npcarr.respawntime = 2280;
	
	return npcarr;
end

function Spawn_Troll()
	local npc = CreateNPC(GetNewNPCName("Troll"));
	
	if(npc == -1)then
		print("Creating SpawnTroll Failed!");
	end
	
	SetPlayerInstance(npc,"Troll");
	
	SetPlayerStrength(npc, 105);
	SetPlayerDexterity(npc, 105);
	SetPlayerLevel(npc, 50);
	SetPlayerMaxHealth(npc, 2310);
	SetPlayerHealth(npc, 2310);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Troll;
	npcarr.func = Troll;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end

function Spawn_Troll_Black()
	local npc = CreateNPC(GetNewNPCName("schwarzer Troll"));
	
	if(npc == -1)then
		print("Creating SpawnTrollBlack Failed!");
	end
	
	SetPlayerInstance(npc,"Troll_Black");
	
	SetPlayerStrength(npc, 155);
	SetPlayerDexterity(npc, 155);
	SetPlayerLevel(npc, 100);
	SetPlayerMaxHealth(npc, 4670);
	SetPlayerHealth(npc, 4670);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Troll;
	npcarr.func = Troll;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end