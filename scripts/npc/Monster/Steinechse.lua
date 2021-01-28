function Spawn_Steinechse()
	local npc = CreateNPC(GetNewNPCName("Stein-Echsenmensch"));

	if(npc == -1)then
		print("Creating SpawnSteinEchsenmensch Failed!");
	end

	SetPlayerInstance(npc,"Steinechse");

	SetPlayerStrength(npc, 130); 
	SetPlayerDexterity(npc, 130); 
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 560); 
	SetPlayerHealth(npc, 560);

	EquipMeleeWeapon(npc, "ItMw_2H_OrcSword_01");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_DRACONIAN;
	npcarr.func = Draconian;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;

	return npcarr;
end

function Steinechse()
	local npc = CreateNPC(GetNewNPCName("Stein-Echsenmensch"));

	if(npc == -1)then
		print("Creating SteinEchsenmensch Failed!");
	end

	SetPlayerInstance(npc,"Steinechse");

	SetPlayerStrength(npc, 130); 
	SetPlayerDexterity(npc, 130); 
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 560); 
	SetPlayerHealth(npc, 560);

	EquipMeleeWeapon(npc, "ItMw_2H_OrcSword_01");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 4;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_DRACONIAN;
	npcarr.func = Draconian;
	npcarr.instance = "Steinechse";
	npcarr.respawntime = 2500;

	return npcarr;
end