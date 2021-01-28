function Sumpfdrache()
	local npc = CreateNPC(GetNewNPCName("Sumpfdrache"));
	
	if(npc == -1)then
		print("Creating Sumpfdrache Failed!");
	end
	
	SetPlayerInstance(npc,"Dragon_Swamp");
	
	SetPlayerStrength(npc, 135); 
	SetPlayerDexterity(npc, 135); 
	SetPlayerLevel(npc, 300);
	SetPlayerMaxHealth(npc, 3430); 
	SetPlayerHealth(npc, 3430); 
	SetPlayerMana(npc, 1000);
	SetPlayerMaxMana(npc, 1000);
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil; --?
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Dragon_Swamp;
	npcarr.instance = "Sumpfdrache";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function Spawn_Sumpfdrache()
	local npc = CreateNPC(GetNewNPCName("Sumpfdrache"));
	
	if(npc == -1)then
		print("Creating SpawnSumpfdrache Failed!");
	end
	
	SetPlayerInstance(npc,"Dragon_Swamp");
	
	SetPlayerStrength(npc, 135); 
	SetPlayerDexterity(npc, 135); 
	SetPlayerLevel(npc, 300);
	SetPlayerMaxHealth(npc, 3430); 
	SetPlayerHealth(npc, 3430); 
	SetPlayerMana(npc, 1000);
	SetPlayerMaxMana(npc, 1000);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Dragon_Swamp;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end

function Steindrache()
	local npc = CreateNPC(GetNewNPCName("Steindrache"));
	
	if(npc == -1)then
		print("Creating Steindrache Failed!");
	end
	
	SetPlayerInstance(npc,"Dragon_Rock");
	
	SetPlayerStrength(npc, 145); 
	SetPlayerDexterity(npc, 145); 
	SetPlayerLevel(npc, 400);
	SetPlayerMaxHealth(npc, 3740); 
	SetPlayerHealth(npc, 3740); 
	SetPlayerMana(npc, 1000);
	SetPlayerMaxMana(npc, 1000);
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil; --?
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Dragon_Rock;
	npcarr.instance = "Steindrache";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function Spawn_Steindrache()
	local npc = CreateNPC(GetNewNPCName("Steindrache"));
	
	if(npc == -1)then
		print("Creating SpawnSteindrache Failed!");
	end
	
	SetPlayerInstance(npc,"Dragon_Rock");
	
	SetPlayerStrength(npc, 145); 
	SetPlayerDexterity(npc, 145); 
	SetPlayerLevel(npc, 400);
	SetPlayerMaxHealth(npc, 3740); 
	SetPlayerHealth(npc, 3740); 
	SetPlayerMana(npc, 1000);
	SetPlayerMaxMana(npc, 1000);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Dragon_Rock;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end

function Eisdrache()
	local npc = CreateNPC(GetNewNPCName("Eisdrache"));
	
	if(npc == -1)then
		print("Creating Eisdrache Failed!");
	end
	
	SetPlayerInstance(npc,"Dragon_Ice");
	
	SetPlayerStrength(npc, 165); 
	SetPlayerDexterity(npc, 165); 
	SetPlayerLevel(npc, 600);
	SetPlayerMaxHealth(npc, 4370); 
	SetPlayerHealth(npc, 4370); 
	SetPlayerMana(npc, 1000);
	SetPlayerMaxMana(npc, 1000);
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil; --?
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Dragon_Ice;
	npcarr.instance = "Eisdrache";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function Spawn_Eisdrache()
	local npc = CreateNPC(GetNewNPCName("Eisdrache"));
	
	if(npc == -1)then
		print("Creating SpawnEisdrache Failed!");
	end
	
	SetPlayerInstance(npc,"Dragon_Ice");
	
	SetPlayerStrength(npc, 165); 
	SetPlayerDexterity(npc, 165); 
	SetPlayerLevel(npc, 600);
	SetPlayerMaxHealth(npc, 4370); 
	SetPlayerHealth(npc, 4370); 
	SetPlayerMana(npc, 1000);
	SetPlayerMaxMana(npc, 1000);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Dragon_Ice;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end

function Feuerdrache()
	local npc = CreateNPC(GetNewNPCName("Feuerdrache"));
	
	if(npc == -1)then
		print("Creating Feuerdrache Failed!");
	end
	
	SetPlayerInstance(npc,"Dragon_Fire");
	
	SetPlayerStrength(npc, 155); 
	SetPlayerDexterity(npc, 155); 
	SetPlayerLevel(npc, 500);
	SetPlayerMaxHealth(npc, 4060); 
	SetPlayerHealth(npc, 4060); 
	SetPlayerMana(npc, 1000);
	SetPlayerMaxMana(npc, 1000);
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil; --?
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Dragon_Rock;
	npcarr.instance = "Feuerdrache";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function Spawn_Feuerdrache()
	local npc = CreateNPC(GetNewNPCName("Feuerdrache"));
	
	if(npc == -1)then
		print("Creating SpawnFeuerdrache Failed!");
	end
	
	SetPlayerInstance(npc,"Dragon_Fire");
	
	SetPlayerStrength(npc, 155); 
	SetPlayerDexterity(npc, 155); 
	SetPlayerLevel(npc, 500);
	SetPlayerMaxHealth(npc, 4060); 
	SetPlayerHealth(npc, 4060); 
	SetPlayerMana(npc, 1000);
	SetPlayerMaxMana(npc, 1000);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Dragon_Fire;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end

function UntoterDrache()
	local npc = CreateNPC(GetNewNPCName("Untoter Drache"));
	
	if(npc == -1)then
		print("Creating UntoterDrache Failed!");
	end
	
	SetPlayerInstance(npc,"Dragon_Undead");
	
	SetPlayerStrength(npc, 180); 
	SetPlayerDexterity(npc, 180); 
	SetPlayerLevel(npc, 1000);
	SetPlayerMaxHealth(npc, 5000); 
	SetPlayerHealth(npc, 5000); 
	SetPlayerMana(npc, 2000);
	SetPlayerMaxMana(npc, 2000);
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil; --?
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Dragon_Undead;
	npcarr.instance = "UntoterDrache";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function Spawn_UntoterDrache()
	local npc = CreateNPC(GetNewNPCName("Untoter Drache"));
	
	if(npc == -1)then
		print("Creating SpawnUntoterDrache Failed!");
	end
	
	SetPlayerInstance(npc,"Dragon_Undead");
	
	SetPlayerStrength(npc, 155); 
	SetPlayerDexterity(npc, 155); 
	SetPlayerLevel(npc, 500);
	SetPlayerMaxHealth(npc, 4060); 
	SetPlayerHealth(npc, 4060); 
	SetPlayerMana(npc, 1000);
	SetPlayerMaxMana(npc, 1000);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Dragon_Undead;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end