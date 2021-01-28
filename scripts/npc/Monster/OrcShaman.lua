function OrcShaman()
	local npc = CreateNPC(GetNewNPCName("Ork Shamane"));

	if(npc == -1)then
		print("Creating Orc Shaman Failed!");
	end

	SetPlayerInstance(npc,"OrcShaman_Sit");

	SetPlayerStrength(npc, 120); -- 100
	SetPlayerDexterity(npc, 120); -- 170
	SetPlayerLevel(npc, 35);
	SetPlayerMaxHealth(npc, 530); -- 350
	SetPlayerHealth(npc, 530); --350

	EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_01");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Orc;
	npcarr.func = OrcShaman;
	npcarr.instance = "Orkschamane";
	npcarr.respawntime = 480;

	return npcarr;
end

function JK_OrcShaman()
	local npc = CreateNPC(GetNewNPCName("Ork Shamane"));

	if(npc == -1)then
		print("Creating JK_Orc Shaman Failed!");
	end

	SetPlayerInstance(npc,"OrcShaman_Sit");

	SetPlayerStrength(npc, 120); -- 100
	SetPlayerDexterity(npc, 120); -- 170
	SetPlayerLevel(npc, 35);
	SetPlayerMaxHealth(npc, 530); -- 350
	SetPlayerHealth(npc, 530); --350

	EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_01");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Orc;
	npcarr.func = OrcShaman;
	npcarr.instance = "JK_Orkschamane";
	npcarr.respawntime = 480;

	return npcarr;
end

function OW_OrcShaman()
	local npc = CreateNPC(GetNewNPCName("Ork Shamane"));

	if(npc == -1)then
		print("Creating OW_Orc Shaman Failed!");
	end

	SetPlayerInstance(npc,"OrcShaman_Sit");

	SetPlayerStrength(npc, 120); -- 100
	SetPlayerDexterity(npc, 120); -- 170
	SetPlayerLevel(npc, 35);
	SetPlayerMaxHealth(npc, 530); -- 350
	SetPlayerHealth(npc, 530); --350

	EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_01");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Orc;
	npcarr.func = OrcShaman;
	npcarr.instance = "OW_Orkschamane";
	npcarr.respawntime = 480;

	return npcarr;
end

function OrcShamanMagie() -- Added By Rodin
	local npc = CreateNPC(GetNewNPCName("Ork Shamane"));

	if(npc == -1)then
		print("Creating Orc ShamanMagie Failed!");
	end

	SetPlayerInstance(npc,"OrcShaman_Sit");

	SetPlayerMagicLevel(npc, 6)  -- Added By Rodin
	SetPlayerStrength(npc, 120); -- 100
	SetPlayerDexterity(npc, 120); -- 170
	SetPlayerLevel(npc, 35);
	SetPlayerMaxHealth(npc, 530); -- 350
	SetPlayerHealth(npc, 530); --350
	SetPlayerMaxMana(npc, 1500); -- Added By Rodin
	SetPlayerMana(npc, 1500); -- Added By Rodin
	
	EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_01");
	EquipRangedWeapon(npc, "ItRu_InstantFireball"); -- Added by Rodin 
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Orc;
	npcarr.func = OrcShamanMagie;
	npcarr.instance = "OrkschamaneMagie";
	npcarr.respawntime = 480;

	return npcarr;
end

function Spawn_OrcShaman()
	local npc = CreateNPC(GetNewNPCName("Ork Shamane"));

	if(npc == -1)then
		print("Creating Spawn Orc Shaman Failed!");
	end

	SetPlayerInstance(npc,"OrcShaman_Sit");

	SetPlayerStrength(npc, 120); -- 100
	SetPlayerDexterity(npc, 120); -- 170
	SetPlayerLevel(npc, 35);
	SetPlayerMaxHealth(npc, 530); -- 350
	SetPlayerHealth(npc, 530); --350

	EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_01");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Orc;
	npcarr.func = OrcShaman;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;

	return npcarr;
end

function Spawn_OrcShamanMagie() -- Added By Rodin
	local npc = CreateNPC(GetNewNPCName("Ork Shamane"));

	if(npc == -1)then
		print("Creating Spawn Orc ShamanMagie Failed!");
	end

	SetPlayerInstance(npc,"OrcShaman_Sit");

	SetPlayerMagicLevel(npc, 6)  -- Added By Rodin
	SetPlayerStrength(npc, 120); -- 100
	SetPlayerDexterity(npc, 120); -- 170
	SetPlayerLevel(npc, 35);
	SetPlayerMaxHealth(npc, 530); -- 350
	SetPlayerHealth(npc, 530); --350
	SetPlayerMaxMana(npc, 1500); -- Added By Rodin
	SetPlayerMana(npc, 1500); -- Added By Rodin
	
	--EquipMeleeWeapon(npc, "ItMw_2H_OrcAxe_01");
	EquipRangedWeapon(npc, "ItRu_InstantFireball"); -- Added by Rodin 
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Orc;
	npcarr.func = OrcShamanMagie;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;

	return npcarr;
end
