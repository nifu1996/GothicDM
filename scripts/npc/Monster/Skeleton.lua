
function Skeleton()
	local npc = CreateNPC(GetNewNPCName("Skelett"));
	
	if(npc == -1 or npc==nil)then
		print("Creating Skeleton Failed!");
	end
	
	SetPlayerInstance(npc,"Skeleton");
	
	SetPlayerStrength(npc, 100);
	SetPlayerDexterity(npc, 100);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 590);
	SetPlayerHealth(npc, 590);
	
	EquipMeleeWeapon(npc, "ItMw_Zweihaender2");
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = Skeleton;
	npcarr.instance = "Skelett";
	npcarr.respawntime = 360;
	
	return npcarr;
end


function JK_Skeleton()
	local npc = CreateNPC(GetNewNPCName("Skelett"));
	
	if(npc == -1 or npc==nil)then
		print("Creating JK_Skeleton Failed!");
	end
	
	SetPlayerInstance(npc,"Skeleton");
	
	SetPlayerStrength(npc, 100);
	SetPlayerDexterity(npc, 100);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 590);
	SetPlayerHealth(npc, 590);
	
	EquipMeleeWeapon(npc, "ItMw_Zweihaender2");
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = Skeleton;
	npcarr.instance = "JK_Skelett";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function OW_SkeletonNeu()
	local npc = CreateNPC(GetNewNPCName("Skelett"));
	
	if(npc == -1 or npc==nil)then
		print("Creating OW_SkeletonNeu Failed!");
	end
	
	SetPlayerInstance(npc,"Skeleton");
	
	SetPlayerStrength(npc, 100);
	SetPlayerDexterity(npc, 100);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 590);
	SetPlayerHealth(npc, 590);
	
	EquipMeleeWeapon(npc, "ItMw_Zweihaender2");
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = Skeleton;
	npcarr.instance = "OW_SkelettNeu";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function SkeletonSH() -- Spawned nur in der G1 Kolonie, nicht in anderen Maps verwenden! Don't use this Spawn in other Maps then G1 Colony!
	local npcArray = OW_Skeleton();
	
	SetPlayerStrength(npcArray.id, 110);
	npcArray.WeaponMode = 3;
	EquipMeleeWeapon(npcArray.id, "ItMw_1h_MISC_Sword");
	npcArray.func = SkeletonSH;
	
	return npcArray;
end

function OW_Skeleton()
	local npc = CreateNPC(GetNewNPCName("Skelett"));
	
	if(npc == -1 or npc==nil)then
		print("Creating OW_SkeletonSH Failed!");
	end
	
	SetPlayerInstance(npc,"Skeleton");
	
	SetPlayerStrength(npc, 100);
	SetPlayerDexterity(npc, 100);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 590);
	SetPlayerHealth(npc, 590);
	
	EquipMeleeWeapon(npc, "ItMw_Zweihaender2");
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = Skeleton;
	npcarr.instance = "OW_SkeletonSH";
	npcarr.respawntime = 360;
	
	return npcarr;
end


function SkeletonScout()
	local npc = CreateNPC(GetNewNPCName("Skelett Späher"));
	
	if(npc == -1)then
		print("Creating Skeleton Scout Failed!");
	end
	
	SetPlayerInstance(npc,"Lesser_Skeleton");
	
	SetPlayerStrength(npc, 85);
	SetPlayerDexterity(npc, 85);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 470);
	SetPlayerHealth(npc, 470);
	
	EquipMeleeWeapon(npc, "ItMw_1h_MISC_Sword");
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = SkeletonScout;
	npcarr.instance = "Schwaches_Skelett";
	npcarr.respawntime = 300;
	
	return npcarr;
end

function OW_SkeletonScout()
	local npc = CreateNPC(GetNewNPCName("Skelett Späher"));
	
	if(npc == -1)then
		print("Creating OW_Skeleton Scout Failed!");
	end
	
	SetPlayerInstance(npc,"Lesser_Skeleton");
	
	SetPlayerStrength(npc, 85);
	SetPlayerDexterity(npc, 85);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 470);
	SetPlayerHealth(npc, 470);
	
	EquipMeleeWeapon(npc, "ItMw_1h_MISC_Sword");
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = SkeletonScout;
	npcarr.instance = "OW_Schwaches_Skelett";
	npcarr.respawntime = 300;
	
	return npcarr;
end

function JK_SkeletonScout()
	local npc = CreateNPC(GetNewNPCName("Skelett Späher"));
	
	if(npc == -1)then
		print("Creating JK_Skeleton Scout Failed!");
	end
	
	SetPlayerInstance(npc,"Lesser_Skeleton");
	
	SetPlayerStrength(npc, 85);
	SetPlayerDexterity(npc, 85);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 470);
	SetPlayerHealth(npc, 470);
	
	EquipMeleeWeapon(npc, "ItMw_1h_MISC_Sword");
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = SkeletonScout;
	npcarr.instance = "JK_Schwaches_Skelett";
	npcarr.respawntime = 300;
	
	return npcarr;
end

function SkeletonLord()
	local npc = CreateNPC(GetNewNPCName("Skelett-Lord"));
	
	if(npc == -1 or npc == nil)then
		print("Creating Skeleton Warrior Failed!");
	end
	
	SetPlayerInstance(npc,"Skeleton_Lord");
	
	SetPlayerStrength(npc, 125);
	SetPlayerDexterity(npc, 125);
	SetPlayerLevel(npc, 40);
	SetPlayerMaxHealth(npc, 880);
	SetPlayerHealth(npc, 880);
	
	EquipMeleeWeapon(npc, "ItMw_Zweihaender2");
	EquipArmor(npc, "ITAR_PAL_SKEL");
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = SkeletonWarrior;
	npcarr.instance = "Skelett-Lord";
	npcarr.respawntime = 720;
	
	return npcarr;
end

function OW_SkeletonLord()
	local npc = CreateNPC(GetNewNPCName("Skelett-Lord"));
	
	if(npc == -1 or npc == nil)then
		print("Creating Skeleton Warrior Failed!");
	end
	
	SetPlayerInstance(npc,"Skeleton_Lord");
	
	SetPlayerStrength(npc, 125);
	SetPlayerDexterity(npc, 120);
	SetPlayerLevel(npc, 40);
	SetPlayerMaxHealth(npc, 880);
	SetPlayerHealth(npc, 880);
	
	EquipMeleeWeapon(npc, "ItMw_Zweihaender2");
	EquipArmor(npc, "ITAR_PAL_SKEL");
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = SkeletonWarrior;
	npcarr.instance = "OW_Skelett_Lord";
	npcarr.respawntime = 720;
	
	return npcarr;
end

function JK_SkeletonLord()
	local npc = CreateNPC(GetNewNPCName("Skelett-Lord"));
	
	if(npc == -1 or npc == nil)then
		print("Creating JK_SkeletonLord Failed!");
	end
	
	SetPlayerInstance(npc,"Skeleton_Lord");
	
	SetPlayerStrength(npc, 125);
	SetPlayerDexterity(npc, 125);
	SetPlayerLevel(npc, 40);
	SetPlayerMaxHealth(npc, 880);
	SetPlayerHealth(npc, 880);
	
	EquipMeleeWeapon(npc, "ItMw_Zweihaender2");
	EquipArmor(npc, "ITAR_PAL_SKEL");
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = SkeletonWarrior;
	npcarr.instance = "JK_Skelett_Lord";
	npcarr.respawntime = 720;
	
	return npcarr;
end

function SkeletonMage()
	local npc = CreateNPC(GetNewNPCName("Skelett Magier"));
	
	if(npc == -1)then
		print("Creating Skeleton Mage Failed!");
	end
	
	SetPlayerInstance(npc,"SkeletonMage");
	
	SetPlayerMagicLevel(npc, 6);  -- Added By Rodin
	SetPlayerStrength(npc, 85);
	SetPlayerDexterity(npc, 85);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 680);
	SetPlayerHealth(npc, 680);
	SetPlayerMana(npc, 20000);
	SetPlayerMaxMana(npc, 20000);
	
	EquipMeleeWeapon(npc, "ItRu_Icebolt");
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_SKELETMAGE_ATTACK;
	npcarr.WeaponMode = 0; -- richtig so? Hat nämlich keine Ani beim kämpfen
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_SKELETMAGE_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = SkeletonMage;
	npcarr.instance = "Skelett_Magier";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function OW_SkeletonMage()
	local npc = CreateNPC(GetNewNPCName("Skelett Magier"));
	
	if(npc == -1)then
		print("Creating OW_Skeleton Mage Failed!");
	end
	
	SetPlayerInstance(npc,"SkeletonMage");
	
	SetPlayerMagicLevel(npc, 6);  -- Added By Rodin
	SetPlayerStrength(npc, 85);
	SetPlayerDexterity(npc, 85);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 680);
	SetPlayerHealth(npc, 680);
	SetPlayerMana(npc, 20000);
	SetPlayerMaxMana(npc, 20000);
	
	EquipMeleeWeapon(npc, "ItRu_Icebolt");
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_SKELETMAGE_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_SKELETMAGE_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = SkeletonMage;
	npcarr.instance = "OW_Skelett_Magier";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function JK_SkeletonMage()
	local npc = CreateNPC(GetNewNPCName("Skelett Magier"));
	
	if(npc == -1)then
		print("Creating JK_Skeleton Mage Failed!");
	end
	
	SetPlayerInstance(npc,"SkeletonMage");
	
	SetPlayerMagicLevel(npc, 6);  -- Added By Rodin
	SetPlayerStrength(npc, 85);
	SetPlayerDexterity(npc, 85);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 680);
	SetPlayerHealth(npc, 680);
	SetPlayerMana(npc, 20000);
	SetPlayerMaxMana(npc, 20000);
	
	EquipMeleeWeapon(npc, "ItRu_Icebolt");
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_SKELETMAGE_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_SKELETMAGE_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = SkeletonMage;
	npcarr.instance = "JK_Skelett_Magier";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function SkeletonWeak()
	local npc = CreateNPC(GetNewNPCName("Schwaches Skelett"));
	
	if(npc == -1 or npc==nil)then
		print("Creating Schwaches Skelett Failed!");
	end
	
	SetPlayerInstance(npc,"Lesser_Skeleton");
	
	SetPlayerStrength(npc, 10);
	SetPlayerDexterity(npc, 10);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 80);
	SetPlayerHealth(npc, 80);
	
	EquipMeleeWeapon(npc, "ItMw_Dolch");
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = SkeletonWeak;
	npcarr.instance = "SkeletonWeak";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function OW_SkeletonWeak()
	local npc = CreateNPC(GetNewNPCName("Schwaches Skelett"));
	
	if(npc == -1 or npc==nil)then
		print("Creating OW_SkeletonWeak Failed!");
	end
	
	SetPlayerInstance(npc,"Lesser_Skeleton");
	
	SetPlayerStrength(npc, 10);
	SetPlayerDexterity(npc, 10);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 80);
	SetPlayerHealth(npc, 80);
	
	EquipMeleeWeapon(npc, "ItMw_Dolch");
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = SkeletonWeak;
	npcarr.instance = "OW_SkeletonWeak";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function JK_SkeletonWeak()
	local npc = CreateNPC(GetNewNPCName("Schwaches Skelett"));
	
	if(npc == -1 or npc==nil)then
		print("Creating JK_SkeletonWeak Failed!");
	end
	
	SetPlayerInstance(npc,"Lesser_Skeleton");
	
	SetPlayerStrength(npc, 10);
	SetPlayerDexterity(npc, 10);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 80);
	SetPlayerHealth(npc, 80);
	
	EquipMeleeWeapon(npc, "ItMw_Dolch");
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = SkeletonWeak;
	npcarr.instance = "JK_SkeletonWeak";
	npcarr.respawntime = 360;
	
	return npcarr;
end


--********** Spawn Monster **********--
function Spawn_SkeletonWeak()
	local npc = CreateNPC(GetNewNPCName("Schwaches Skelett"));
	
	if(npc == -1)then
		print("Creating Spawn_SkeletonWeak Failed!");
	end
	
	SetPlayerInstance(npc,"Lesser_Skeleton");
	
	SetPlayerStrength(npc, 10);
	SetPlayerDexterity(npc, 10);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 80);
	SetPlayerHealth(npc, 80);
	
	EquipMeleeWeapon(npc, "ItMw_Dolch");
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = SkeletonScout;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end


function Spawn_SkeletonScout()
	local npc = CreateNPC(GetNewNPCName("Skelett Späher"));
	
	if(npc == -1)then
		print("Creating SpawnSkeleton Scout Failed!");
	end
	
	SetPlayerInstance(npc,"Lesser_Skeleton");
	
	SetPlayerStrength(npc, 85);
	SetPlayerDexterity(npc, 85);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 470);
	SetPlayerHealth(npc, 470);
	
	EquipMeleeWeapon(npc, "ItMw_1h_MISC_Sword");
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = SkeletonScout;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end

function Spawn_Skeleton()
	local npc = CreateNPC(GetNewNPCName("Skelett"));
	
	if(npc == -1 or npc==nil)then
		print("Creating SpawnSkeleton Failed!");
	end
	
	SetPlayerInstance(npc,"Skeleton");
	
	SetPlayerStrength(npc, 100);
	SetPlayerDexterity(npc, 100);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 590);
	SetPlayerHealth(npc, 590);
	
	EquipMeleeWeapon(npc, "ItMw_Zweihaender2");
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = Skeleton;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end

function Spawn_SkeletonLord()
	local npc = CreateNPC(GetNewNPCName("Skelett-Lord"));
	
	if(npc == -1 or npc == nil)then
		print("Creating SpawnSkeletonWarrior Failed!");
	end
	
	SetPlayerInstance(npc,"Skeleton_Lord");
	
	SetPlayerStrength(npc, 125);
	SetPlayerDexterity(npc, 120);
	SetPlayerLevel(npc, 40);
	SetPlayerMaxHealth(npc, 880);
	SetPlayerHealth(npc, 880);
	
	EquipMeleeWeapon(npc, "ItMw_Zweihaender2");
	EquipArmor(npc, "ITAR_PAL_SKEL");
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = SkeletonWarrior;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end

function Spawn_SkeletonMage()
	local npc = CreateNPC(GetNewNPCName("Skelett Magier"));
	
	if(npc == -1 or npc == nil)then
		print("Creating SpawnSkeletonMage Failed!");
	end
	
	SetPlayerInstance(npc,"SkeletonMage");
	
	SetPlayerMagicLevel(npc, 6); 
	SetPlayerStrength(npc, 85);
	SetPlayerDexterity(npc, 85);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 680);
	SetPlayerHealth(npc, 680);
	SetPlayerMana(npc, 20000);
	SetPlayerMaxMana(npc, 20000);
	
	EquipMeleeWeapon(npc, "ItRu_Icebolt");
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_SKELETMAGE_HIT;
	npcarr.Guild = AI_GUILD_Skeleton;
	npcarr.func = SkeletonMage;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end



