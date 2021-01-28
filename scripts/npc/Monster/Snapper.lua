function Snapper()
	local npc = CreateNPC(GetNewNPCName("Snapper"));
	
	if(npc == -1)then
		print("Creating Snapper Failed!");
	end
	
	SetPlayerInstance(npc,"Snapper");
	
	SetPlayerStrength(npc, math.random(55, 65));
	SetPlayerDexterity(npc, 60);
	SetPlayerLevel(npc, 12);
	SetPlayerMaxHealth(npc, math.random(290, 370));
	SetPlayerHealth(npc, 290);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = DR_Monster_MidEat;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Snapper;
	npcarr.instance = "Snapper";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function OW_Snapper()
	local npc = CreateNPC(GetNewNPCName("Snapper"));
	
	if(npc == -1)then
		print("Creating OW_Snapper Failed!");
	end
	
	SetPlayerInstance(npc,"Snapper");
	
	SetPlayerStrength(npc, math.random(55, 65));
	SetPlayerDexterity(npc, 60);
	SetPlayerLevel(npc, 12);
	SetPlayerMaxHealth(npc, math.random(290, 370));
	SetPlayerHealth(npc, 290);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = DR_Monster_MidEat;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Snapper;
	npcarr.instance = "OW_Snapper";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function JK_Snapper()
	local npc = CreateNPC(GetNewNPCName("Snapper"));
	
	if(npc == -1)then
		print("Creating JK_Snapper Failed!");
	end
	
	SetPlayerInstance(npc,"Snapper");
	
	SetPlayerStrength(npc, math.random(55, 65));
	SetPlayerDexterity(npc, 60);
	SetPlayerLevel(npc, 12);
	SetPlayerMaxHealth(npc, math.random(290, 370));
	SetPlayerHealth(npc, 290);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = DR_Monster_MidEat;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Snapper;
	npcarr.instance = "JK_Snapper";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function Bergsnapper()
	local npc = CreateNPC(GetNewNPCName("Bergsnapper"));
	
	if(npc == -1)then
		print("Creating Bergsnapper Failed!");
	end
	
	SetPlayerInstance(npc,"Bergsnapper");
	
	SetPlayerStrength(npc, math.random(70, 80)); --200
	SetPlayerDexterity(npc, 75); --200
	SetPlayerLevel(npc, 40);
	SetPlayerMaxHealth(npc, math.random(590, 750)); --400
	SetPlayerHealth(npc, 590); --400
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = DR_Monster_MidEat;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Snapper;
	npcarr.instance = "Bergsnapper";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function OW_Bergsnapper()
	local npc = CreateNPC(GetNewNPCName("Bergsnapper"));
	
	if(npc == -1)then
		print("Creating OW_Bergsnapper Failed!");
	end
	
	SetPlayerInstance(npc,"Bergsnapper");
	
	SetPlayerStrength(npc, math.random(70, 80)); --200
	SetPlayerDexterity(npc, 75); --200
	SetPlayerLevel(npc, 40);
	SetPlayerMaxHealth(npc, math.random(590, 750)); --400
	SetPlayerHealth(npc, 590); --400
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = DR_Monster_MidEat;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Snapper;
	npcarr.instance = "OW_Bergsnapper";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function JK_Bergsnapper()
	local npc = CreateNPC(GetNewNPCName("Bergsnapper"));
	
	if(npc == -1)then
		print("Creating JK_Bergsnapper Failed!");
	end
	
	SetPlayerInstance(npc,"Bergsnapper");
	
	SetPlayerStrength(npc, math.random(70, 80)); --200
	SetPlayerDexterity(npc, 75); --200
	SetPlayerLevel(npc, 40);
	SetPlayerMaxHealth(npc, math.random(590, 750)); --400
	SetPlayerHealth(npc, 590); --400
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = DR_Monster_MidEat;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Snapper;
	npcarr.instance = "JK_Bergsnapper";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function Dragonsnapper()
	local npc = CreateNPC(GetNewNPCName("Drachensnapper"));
	
	if(npc == -1)then
		print("Creating Dragonsnapper Failed!");
	end
	
	SetPlayerInstance(npc,"Dragonsnapper");
	
	SetPlayerStrength(npc, math.random(70, 80)); --200
	SetPlayerDexterity(npc, 75); --200
	SetPlayerLevel(npc, 40);
	SetPlayerMaxHealth(npc, math.random(590, 750)); --400
	SetPlayerHealth(npc, 590); --400
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = DR_Monster_MidEat;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Snapper;
	npcarr.instance = "Drachensnapper";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function OW_Dragonsnapper()
	local npc = CreateNPC(GetNewNPCName("Drachensnapper"));
	
	if(npc == -1)then
		print("Creating OW_Dragonsnapper Failed!");
	end
	
	SetPlayerInstance(npc,"Dragonsnapper");
	
	SetPlayerStrength(npc, math.random(70, 80)); --200
	SetPlayerDexterity(npc, 75); --200
	SetPlayerLevel(npc, 40);
	SetPlayerMaxHealth(npc, math.random(590, 750)); --400
	SetPlayerHealth(npc, 590); --400
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = DR_Monster_MidEat;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Snapper;
	npcarr.instance = "OW_Drachensnapper";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function JK_Dragonsnapper()
	local npc = CreateNPC(GetNewNPCName("Drachensnapper"));
	
	if(npc == -1)then
		print("Creating JK_Dragonsnapper Failed!");
	end
	
	SetPlayerInstance(npc,"Dragonsnapper");
	
	SetPlayerStrength(npc, math.random(70, 80)); --200
	SetPlayerDexterity(npc, 75); --200
	SetPlayerLevel(npc, 40);
	SetPlayerMaxHealth(npc, math.random(590, 750)); --400
	SetPlayerHealth(npc, 590); --400
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = DR_Monster_MidEat;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Snapper;
	npcarr.instance = "JK_Drachensnapper";
	npcarr.respawntime = 360;
	
	return npcarr;
end
-- /spawn Snapper --

function Spawn_Snapper()
	local npc = CreateNPC(GetNewNPCName("Snapper"));
	
	if(npc == -1)then
		print("Creating Snapper Failed!");
	end
	
	SetPlayerInstance(npc,"Snapper");
	
	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 60);
	SetPlayerLevel(npc, 12);
	SetPlayerMaxHealth(npc, 330);
	SetPlayerHealth(npc, 330);
	
	
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
	npcarr.func = Snapper;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end

function Spawn_Bergsnapper()
	local npc = CreateNPC(GetNewNPCName("Bergsnapper"));
	
	if(npc == -1)then
		print("Creating Spawn_Bergsnapper Failed!");
	end
	
	SetPlayerInstance(npc,"Bergsnapper");
	
	SetPlayerStrength(npc, 75);
	SetPlayerDexterity(npc, 75);
	SetPlayerLevel(npc, 40);
	SetPlayerMaxHealth(npc, 670);
	SetPlayerHealth(npc, 670);
	
	
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
	npcarr.func = Snapper;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end

function Spawn_Dragonsnapper()
	local npc = CreateNPC(GetNewNPCName("Drachensnapper"));
	
	if(npc == -1)then
		print("Creating Spawn_Dragonsnapper Failed!");
	end
	
	SetPlayerInstance(npc,"Dragonsnapper");
	
	SetPlayerStrength(npc, 75);
	SetPlayerDexterity(npc, 75);
	SetPlayerLevel(npc, 40);
	SetPlayerMaxHealth(npc, 670);
	SetPlayerHealth(npc, 670);
	
	
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
	npcarr.func = Snapper;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end