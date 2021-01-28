function Zombie()
	local npc = CreateNPC(GetNewNPCName("Zombie"));
	
	if(npc == -1)then
		print("Creating Zombie Failed!");
	end
	
	SetPlayerInstance(npc,"Zombie01");
	
	SetPlayerStrength(npc, 75); -- Edit by Lain (from 90)
	SetPlayerDexterity(npc, 75); -- Edit by Lain (from 90)
	SetPlayerLevel(npc, 20);
	SetPlayerMaxHealth(npc, 730); -- Edit by Lain (from 850)
	SetPlayerHealth(npc, 730); -- Edit by Lain (from 850)
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Zombie;
	npcarr.func = Zombie;
	npcarr.instance = "Zombie";
	npcarr.respawntime = 480;
	
	return npcarr;
end

function Zombie_Addon_Knecht()
	npcarr = Zombie();
	EquipArmor(npcarr.id, "ITAR_Thorus_Addon");
	npcarr.func = Zombie_Addon_Knecht;
	return npcarr;
end

function Zombie1()
	npcarr = Zombie();
	npcarr.instance = "Zombie1";
	npcarr.respawntime = 480;
	
	return npcarr;
end


function Zombie2()
	npcarr = Zombie();
	SetPlayerInstance(npcarr.id,"Zombie02");
	
	SetPlayerStrength(npcarr.id, 75); -- Edit by Lain (from 90)
	SetPlayerDexterity(npcarr.id, 75); -- Edit by Lain (from 90)
	SetPlayerLevel(npcarr.id, 20);
	SetPlayerMaxHealth(npcarr.id, 730); -- Edit by Lain (from 850)
	SetPlayerHealth(npcarr.id, 730); -- Edit by Lain (from 850)
	npcarr.instance = "Zombie2";
	npcarr.respawntime = 480;
	
	npcarr.func = Zombie2;
	return npcarr;
end


function Zombie3()
	npcarr = Zombie();
	SetPlayerInstance(npcarr.id,"Zombie03");
	
	SetPlayerStrength(npcarr.id, 75); -- Edit by Lain (from 90)
	SetPlayerDexterity(npcarr.id, 75); -- Edit by Lain (from 90)
	SetPlayerLevel(npcarr.id, 20);
	SetPlayerMaxHealth(npcarr.id, 730); -- Edit by Lain (from 850)
	SetPlayerHealth(npcarr.id, 730); -- Edit by Lain (from 850)
	npcarr.instance = "Zombie3";
	npcarr.respawntime = 480;
	
	npcarr.func = Zombie3;
	return npcarr;
end


function Zombie4()
	npcarr = Zombie();
	SetPlayerInstance(npcarr.id,"Zombie04");
	
	SetPlayerStrength(npcarr.id, 75); -- Edit by Lain (from 90)
	SetPlayerDexterity(npcarr.id, 75); -- Edit by Lain (from 90)
	SetPlayerLevel(npcarr.id, 20);
	SetPlayerMaxHealth(npcarr.id, 730); -- Edit by Lain (from 850)
	SetPlayerHealth(npcarr.id, 730); -- Edit by Lain (from 850)
	npcarr.instance = "Zombie4";
	npcarr.respawntime = 480;
	
	npcarr.func = Zombie4;
	return npcarr;
end

--------------------------------- Hannibal Zombie --------------------------------

function HannibalZombie()
	local npc = CreateNPC(GetNewNPCName("Cerberus"));
	
	if(npc == -1)then
		print("Creating Zombie Failed!");
	end
	
	SetPlayerInstance(npc,"Zombie01");
	
	SetPlayerStrength(npc, 75); -- Edit by Lain (from 95)
	SetPlayerDexterity(npc, 75); -- Edit by Lain (from 95)
	SetPlayerLevel(npc, 20);
	SetPlayerMaxHealth(npc, 730); -- Edit by Lain (from 850)
	SetPlayerHealth(npc, 730); -- Edit by Lain (from 850)
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Zombie;
	npcarr.func = Zombie;
	npcarr.instance = "Zombie";
	npcarr.respawntime = 480;
	
	return npcarr;
end

--------------------------------- Old World --------------------------------------

function OW_Zombie()
	local npc = CreateNPC(GetNewNPCName("Zombie"));
	
	if(npc == -1)then
		print("Creating Zombie Failed!");
	end
	
	SetPlayerInstance(npc,"Zombie01");
	
	SetPlayerStrength(npc, 75);
	SetPlayerDexterity(npc, 75);
	SetPlayerLevel(npc, 20);
	SetPlayerMaxHealth(npc, 730);
	SetPlayerHealth(npc, 730);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Zombie;
	npcarr.func = Zombie;
	npcarr.instance = "OW_Zombie";
	npcarr.respawntime = 480;
	
	return npcarr;
end

function OW_Zombie2()
	npcarr = Zombie();
	SetPlayerInstance(npcarr.id,"Zombie02");
	
	SetPlayerStrength(npcarr.id, 75);
	SetPlayerDexterity(npcarr.id, 75);
	SetPlayerLevel(npcarr.id, 20);
	SetPlayerMaxHealth(npcarr.id, 730);
	SetPlayerHealth(npcarr.id, 730);
	npcarr.instance = "OW_Zombie2";
	npcarr.respawntime = 480;
	npcarr.func = Zombie2;
	return npcarr;
end


function OW_Zombie3()
	npcarr = Zombie();
	SetPlayerInstance(npcarr.id,"Zombie03");
	
	SetPlayerStrength(npcarr.id, 75);
	SetPlayerDexterity(npcarr.id, 75);
	SetPlayerLevel(npcarr.id, 20);
	SetPlayerMaxHealth(npcarr.id, 730);
	SetPlayerHealth(npcarr.id, 730);
	npcarr.instance = "OW_Zombie3";
	npcarr.respawntime = 480;
	npcarr.func = Zombie3;
	return npcarr;
end


function OW_Zombie4()
	npcarr = Zombie();
	SetPlayerInstance(npcarr.id,"Zombie04");
	
	SetPlayerStrength(npcarr.id, 75);
	SetPlayerDexterity(npcarr.id, 75);
	SetPlayerLevel(npcarr.id, 20);
	SetPlayerMaxHealth(npcarr.id, 730);
	SetPlayerHealth(npcarr.id, 730);
	npcarr.instance = "OW_Zombie4";
	npcarr.respawntime = 480;
	npcarr.func = Zombie4;
	return npcarr;
end

--------------------------------- Jharkendar --------------------------------------

function MayaZombie1()
	npcarr = Zombie();
	EquipArmor(npcarr.id, "ITAR_MayaZombie_Addon");
	
	npcarr.instance = "MayaZombie1";
	npcarr.respawntime = 480;
	
	npcarr.func = MayaZombie1;
	return npcarr;
end

function MayaZombie2()
	npcarr = Zombie();
	EquipArmor(npcarr.id, "ITAR_MayaZombie_Addon");
	npcarr.instance = "MayaZombie2";
	npcarr.respawntime = 480;
	
	npcarr.func = MayaZombie2;
	return npcarr;
end

function MayaZombie3()
	npcarr = Zombie();
	EquipArmor(npcarr.id, "ITAR_MayaZombie_Addon");
	npcarr.instance = "MayaZombie3";
	npcarr.respawntime = 480;

	
	npcarr.func = MayaZombie3;
	return npcarr;
end

function MayaZombie4()
	npcarr = Zombie();
	EquipArmor(npcarr.id, "ITAR_MayaZombie_Addon");
	npcarr.instance = "MayaZombie4";
	npcarr.respawntime = 480;
	
	npcarr.func = MayaZombie4;
	return npcarr;
end

function JK_Zombie()
	local npc = CreateNPC(GetNewNPCName("Zombie"));
	
	if(npc == -1)then
		print("Creating Zombie Failed!");
	end
	
	SetPlayerInstance(npc,"Zombie01");
	
	SetPlayerStrength(npc, 75);
	SetPlayerDexterity(npc, 75);
	SetPlayerLevel(npc, 20);
	SetPlayerMaxHealth(npc, 730);
	SetPlayerHealth(npc, 730);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Zombie;
	npcarr.func = Zombie;
	npcarr.instance = "JK_Zombie";
	npcarr.respawntime = 480;
	
	return npcarr;
end

function JK_Zombie1()
	npcarr = Zombie();
	SetPlayerInstance(npcarr.id,"Zombie02");
	
	SetPlayerStrength(npcarr.id, 75);
	SetPlayerDexterity(npcarr.id, 75);
	SetPlayerLevel(npcarr.id, 20);
	SetPlayerMaxHealth(npcarr.id, 730);
	SetPlayerHealth(npcarr.id, 730);
	npcarr.instance = "JK_Zombie1";
	npcarr.respawntime = 480;
	npcarr.func = Zombie2;
	return npcarr;
end


function JK_Zombie2()
	npcarr = Zombie();
	SetPlayerInstance(npcarr.id,"Zombie03");
	
	SetPlayerStrength(npcarr.id, 75);
	SetPlayerDexterity(npcarr.id, 75);
	SetPlayerLevel(npcarr.id, 20);
	SetPlayerMaxHealth(npcarr.id, 730);
	SetPlayerHealth(npcarr.id, 730);
	npcarr.instance = "JK_Zombie2";
	npcarr.respawntime = 480;
	npcarr.func = Zombie3;
	return npcarr;
end


function JK_Zombie3()
	npcarr = Zombie();
	SetPlayerInstance(npcarr.id,"Zombie03");
	
	SetPlayerStrength(npcarr.id, 75);
	SetPlayerDexterity(npcarr.id, 75);
	SetPlayerLevel(npcarr.id, 20);
	SetPlayerMaxHealth(npcarr.id, 730);
	SetPlayerHealth(npcarr.id, 730);
	npcarr.instance = "JK_Zombie3";
	npcarr.respawntime = 480;
	npcarr.func = Zombie4;
	return npcarr;
end

function JK_Zombie4()
	npcarr = Zombie();
	SetPlayerInstance(npcarr.id,"Zombie04");
	
	SetPlayerStrength(npcarr.id, 75);
	SetPlayerDexterity(npcarr.id, 75);
	SetPlayerLevel(npcarr.id, 20);
	SetPlayerMaxHealth(npcarr.id, 730);
	SetPlayerHealth(npcarr.id, 730);
	npcarr.instance = "JK_Zombie4";
	npcarr.respawntime = 480;
	npcarr.func = Zombie4;
	return npcarr;
end

function ZombieWeak()
	local npc = CreateNPC(GetNewNPCName("Schwacher Zombie"));
	
	if(npc == -1)then
		print("Creating ZombieWeak Failed!");
	end
	
	SetPlayerInstance(npc,"Zombie01");
	
	SetPlayerStrength(npc, 10); 
	SetPlayerDexterity(npc, 10); 
	SetPlayerLevel(npc, 20);
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
	npcarr.Guild = AI_GUILD_Zombie;
	npcarr.func = ZombieWeak;
	npcarr.instance = "ZombieWeak";
	npcarr.respawntime = 480;
	
	return npcarr;
end

function JK_ZombieWeak()
	local npc = CreateNPC(GetNewNPCName("Schwacher Zombie"));
	
	if(npc == -1)then
		print("Creating JK_ZombieWeak Failed!");
	end
	
	SetPlayerInstance(npc,"Zombie01");
	
	SetPlayerStrength(npc, 10); 
	SetPlayerDexterity(npc, 10); 
	SetPlayerLevel(npc, 20);
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
	npcarr.Guild = AI_GUILD_Zombie;
	npcarr.func = ZombieWeak;
	npcarr.instance = "JK_ZombieWeak";
	npcarr.respawntime = 480;
	
	return npcarr;
end

function OW_ZombieWeak()
	local npc = CreateNPC(GetNewNPCName("Schwacher Zombie"));
	
	if(npc == -1)then
		print("Creating OW_ZombieWeak Failed!");
	end
	
	SetPlayerInstance(npc,"Zombie01");
	
	SetPlayerStrength(npc, 10); 
	SetPlayerDexterity(npc, 10); 
	SetPlayerLevel(npc, 20);
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
	npcarr.Guild = AI_GUILD_Zombie;
	npcarr.func = ZombieWeak;
	npcarr.instance = "OW_ZombieWeak";
	npcarr.respawntime = 480;
	
	return npcarr;
end

--------------------------------- Spawn Zombie --------------------------------------





function Spawn_ZombieWeak()
	local npc = CreateNPC(GetNewNPCName("Schwacher Zombie"));
	
	if(npc == -1)then
		print("Creating Spawn_ZombieWeak Failed!");
	end
	
	SetPlayerInstance(npc,"Zombie01");
	
	SetPlayerStrength(npc, 10);
	SetPlayerDexterity(npc, 10);
	SetPlayerLevel(npc, 20);
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
	npcarr.Guild = AI_GUILD_Zombie;
	npcarr.func = ZombieWeak;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end




function Spawn_Zombie()
	local npc = CreateNPC(GetNewNPCName("Zombie"));
	
	if(npc == -1)then
		print("Creating Spawn_Zombie Failed!");
	end
	
	SetPlayerInstance(npc,"Zombie01");
	
	SetPlayerStrength(npc, 75); -- Edit by Lain (from 90)
	SetPlayerDexterity(npc, 75); -- Edit by Lain (from 90)
	SetPlayerLevel(npc, 20);
	SetPlayerMaxHealth(npc, 730); -- Edit by Lain (from 850)
	SetPlayerHealth(npc, 730); -- Edit by Lain (from 850)
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Zombie;
	npcarr.func = Zombie;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end

function Spawn_Zombie_Addon_Knecht()
	npcarr = Spawn_Zombie();
	EquipArmor(npcarr.id, "ITAR_Thorus_Addon");
	npcarr.func = Zombie_Addon_Knecht;
	return npcarr;
end

function Spawn_MayaZombie1()
	npcarr = Spawn_Zombie();
	EquipArmor(npcarr.id, "ITAR_MayaZombie_Addon");
	
	SetPlayerStrength(npcarr.id, 115); -- Added by Lain
	SetPlayerDexterity(npcarr.id, 115); -- Added by Lain
	SetPlayerLevel(npcarr.id, 20); -- Added by Lain
	SetPlayerMaxHealth(npcarr.id, 1550); -- Added by Lain
	SetPlayerHealth(npcarr.id, 1550); -- Added by Lain
	
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	npcarr.func = MayaZombie1;
	return npcarr;
end

function SwampZombie()
	local npc = CreateNPC(GetNewNPCName("Moorleiche"));
	
	if(npc == -1)then
		print("Creating SwampZombie Failed!");
	end
	
	SetPlayerInstance(npc,"SwampZombie");
	
	SetPlayerStrength(npc, 65); 
	SetPlayerDexterity(npc, 65); 
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 540); 
	SetPlayerHealth(npc, 540); 
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Zombie;
	npcarr.func = SwampZombie;
	npcarr.instance = "SwampZombie";
	npcarr.respawntime = 480;
	
	return npcarr;
end

function OW_SwampZombie()
	local npc = CreateNPC(GetNewNPCName("Moorleiche"));
	
	if(npc == -1)then
		print("Creating OW_SwampZombie Failed!");
	end
	
	SetPlayerInstance(npc,"SwampZombie");
	
	SetPlayerStrength(npc, 65); 
	SetPlayerDexterity(npc, 65); 
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 540); 
	SetPlayerHealth(npc, 540); 
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Zombie;
	npcarr.func = SwampZombie;
	npcarr.instance = "OW_SwampZombie";
	npcarr.respawntime = 480;
	
	return npcarr;
end

function Spawn_SwampZombie()
	local npc = CreateNPC(GetNewNPCName("Moorleiche"));
	
	if(npc == -1)then
		print("Creating Spawn_SwampZombie Failed!");
	end
	
	SetPlayerInstance(npc,"SwampZombie");
	
	SetPlayerStrength(npc, 65); 
	SetPlayerDexterity(npc, 65); 
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 540); 
	SetPlayerHealth(npc, 540); 
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Zombie;
	npcarr.func = SwampZombie;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end

function PalZombie()
	local npc = CreateNPC(GetNewNPCName("Untoter Paladin"));
	
	if(npc == -1)then
		print("Creating PalZombie Failed!");
	end
	
	SetPlayerInstance(npc,"Pal_Zombie01");
	
	SetPlayerStrength(npc, 90); 
	SetPlayerDexterity(npc, 90); 
	SetPlayerLevel(npc, 20);
	SetPlayerMaxHealth(npc, 970); 
	SetPlayerHealth(npc, 970); 
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Zombie;
	npcarr.func = Zombie;
	npcarr.instance = "PalZombie";
	npcarr.respawntime = 480;
	
	return npcarr;
end

function OW_PalZombie()
	local npc = CreateNPC(GetNewNPCName("Untoter Paladin"));
	
	if(npc == -1)then
		print("Creating OW_PalZombie Failed!");
	end
	
	SetPlayerInstance(npc,"Pal_Zombie01");
	
	SetPlayerStrength(npc, 90); 
	SetPlayerDexterity(npc, 90); 
	SetPlayerLevel(npc, 20);
	SetPlayerMaxHealth(npc, 970); 
	SetPlayerHealth(npc, 970); 
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Zombie;
	npcarr.func = Zombie;
	npcarr.instance = "OW_PalZombie";
	npcarr.respawntime = 480;
	
	return npcarr;
end

function Spawn_PalZombie()
	local npc = CreateNPC(GetNewNPCName("Untoter Paladin"));
	
	if(npc == -1)then
		print("Creating Spawn_PalZombie Failed!");
	end
	
	SetPlayerInstance(npc,"Pal_Zombie01");
	
	SetPlayerStrength(npc, 90); 
	SetPlayerDexterity(npc, 90); 
	SetPlayerLevel(npc, 20);
	SetPlayerMaxHealth(npc, 970); 
	SetPlayerHealth(npc, 970); 
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Zombie;
	npcarr.func = Zombie;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end
