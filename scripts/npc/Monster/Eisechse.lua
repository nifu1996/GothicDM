function Spawn_Eisechse()
	local npc = CreateNPC(GetNewNPCName("Eis-Echsenmensch"));

	if(npc == -1)then
		print("Creating SpawnEisEchsenmensch Failed!");
	end

	SetPlayerInstance(npc,"Eisechse");

	SetPlayerStrength(npc, 140); 
	SetPlayerDexterity(npc, 140); 
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 620); 
	SetPlayerHealth(npc, 620);

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

function Eisechse()
	local npc = CreateNPC(GetNewNPCName("Eis-Echsenmensch"));

	if(npc == -1)then
		print("Creating EisEchsenmensch Failed!");
	end

	SetPlayerInstance(npc,"Eisechse");

	SetPlayerStrength(npc, 140); 
	SetPlayerDexterity(npc, 140); 
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 620); 
	SetPlayerHealth(npc, 620);

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
	npcarr.instance = "Eisechse";
	npcarr.respawntime = 2500;

	return npcarr;
end