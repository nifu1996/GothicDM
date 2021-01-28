function Demon()
	local npc = CreateNPC(GetNewNPCName("Dämon"));
	
	if(npc == -1)then
		print("Creating Demon Failed!");
	end
	
	SetPlayerInstance(npc,"Demon");
	
	SetPlayerStrength(npc, 120);
	SetPlayerDexterity(npc, 120);
	SetPlayerLevel(npc, 50);
	SetPlayerMaxHealth(npc, 1750);
	SetPlayerHealth(npc, 1750);
	SetPlayerMana(npc, 10);
	SetPlayerMaxMana(npc, 10);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil; --?
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Demon;
	npcarr.instance = "Demon";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function OW_Demon()
	local npc = CreateNPC(GetNewNPCName("Dämon"));
	
	if(npc == -1)then
		print("Creating OWDemon Failed!");
	end
	
	SetPlayerInstance(npc,"Demon");
	
	SetPlayerStrength(npc, 120);
	SetPlayerDexterity(npc, 120);
	SetPlayerLevel(npc, 50);
	SetPlayerMaxHealth(npc, 1750);
	SetPlayerHealth(npc, 1750);
	SetPlayerMana(npc, 10);
	SetPlayerMaxMana(npc, 10);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil; --?
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Demon;
	npcarr.instance = "OW_Demon";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function JK_Demon()
	local npc = CreateNPC(GetNewNPCName("Dämon"));
	
	if(npc == -1)then
		print("Creating JKDemon Failed!");
	end
	
	SetPlayerInstance(npc,"Demon");
	
	SetPlayerStrength(npc, 120);
	SetPlayerDexterity(npc, 120);
	SetPlayerLevel(npc, 50);
	SetPlayerMaxHealth(npc, 1750);
	SetPlayerHealth(npc, 1750);
	SetPlayerMana(npc, 10);
	SetPlayerMaxMana(npc, 10);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil; --?
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = Demon;
	npcarr.instance = "JK_Demon";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function Spawn_Demon()
	local npc = CreateNPC(GetNewNPCName("Dämon"));
	
	if(npc == -1)then
		print("Creating Spawn_Demon Failed!");
	end
	
	SetPlayerInstance(npc,"Demon");
	
	SetPlayerStrength(npc, 120);
	SetPlayerDexterity(npc, 120);
	SetPlayerLevel(npc, 50);
	SetPlayerMaxHealth(npc, 1750);
	SetPlayerHealth(npc, 1750);
	SetPlayerMana(npc, 10);
	SetPlayerMaxMana(npc, 10);
	
	
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
	npcarr.func = Demon;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end


function Demonlord()
	local npc = CreateNPC(GetNewNPCName("Dämonenlord"));
	
	if(npc == -1)then
		print("Creating DemonLord Failed!");
	end
	
	SetPlayerInstance(npc,"DemonLord");
	
	SetPlayerStrength(npc, 170);
	SetPlayerDexterity(npc, 170);
	SetPlayerLevel(npc, 60);
	SetPlayerMaxHealth(npc, 2930);
	SetPlayerHealth(npc, 2930);
	SetPlayerMana(npc, 10);
	SetPlayerMaxMana(npc, 10);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil; --?
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = DemonLord;
	npcarr.instance = "Daemonenlord";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function OW_Demonlord()
	local npc = CreateNPC(GetNewNPCName("Dämonenlord"));
	
	if(npc == -1)then
		print("Creating OWDemonLord Failed!");
	end
	
	SetPlayerInstance(npc,"DemonLord");
	
	SetPlayerStrength(npc, 170);
	SetPlayerDexterity(npc, 170);
	SetPlayerLevel(npc, 60);
	SetPlayerMaxHealth(npc, 2930);
	SetPlayerHealth(npc, 2930);
	SetPlayerMana(npc, 10);
	SetPlayerMaxMana(npc, 10);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil; --?
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = DemonLord;
	npcarr.instance = "OW_Daemonenlord";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function JK_Demonlord()
	local npc = CreateNPC(GetNewNPCName("Dämonenlord"));
	
	if(npc == -1)then
		print("Creating JKDemonLord Failed!");
	end
	
	SetPlayerInstance(npc,"DemonLord");
	
	SetPlayerStrength(npc, 170);
	SetPlayerDexterity(npc, 170);
	SetPlayerLevel(npc, 60);
	SetPlayerMaxHealth(npc, 2930);
	SetPlayerHealth(npc, 2930);
	SetPlayerMana(npc, 10);
	SetPlayerMaxMana(npc, 10);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil; --?
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 300;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Snapper;
	npcarr.func = DemonLord;
	npcarr.instance = "JK_Daemonenlord";
	npcarr.respawntime = 360;
	
	return npcarr;
end

function Spawn_Demonlord()
	local npc = CreateNPC(GetNewNPCName("Dämonenlord"));
	
	if(npc == -1)then
		print("Creating Spawn_DemonLord Failed!");
	end
	
	SetPlayerInstance(npc,"DemonLord");
	
	SetPlayerStrength(npc, 120);
	SetPlayerDexterity(npc, 120);
	SetPlayerLevel(npc, 50);
	SetPlayerMaxHealth(npc, 1750);
	SetPlayerHealth(npc, 1750);
	SetPlayerMana(npc, 10);
	SetPlayerMaxMana(npc, 10);
	
	
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
	npcarr.func = Demon_Lord;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end