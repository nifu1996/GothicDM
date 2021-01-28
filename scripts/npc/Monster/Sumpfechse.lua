function Sumpfechse()
	local npc = CreateNPC(GetNewNPCName("Sumpf-Echsenmensch"));

	if(npc == -1)then
		print("Creating SumpfEchsenmensch Failed!");
	end

	SetPlayerInstance(npc,"Sumpfechse");

	SetPlayerStrength(npc, 130); 
	SetPlayerDexterity(npc, 130); 
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 530); 
	SetPlayerHealth(npc, 530);

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
	npcarr.instance = "Sumpfechse";
	npcarr.respawntime = 3000;

	return npcarr;
end


function Spawn_Sumpfechse()
	local npc = CreateNPC(GetNewNPCName("Sumpf-Echsenmensch"));

	if(npc == -1)then
		print("Creating SpawnSumpfEchsenmensch Failed!");
	end

	SetPlayerInstance(npc,"Sumpfechse");

	SetPlayerStrength(npc, 130); 
	SetPlayerDexterity(npc, 130); 
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 530); 
	SetPlayerHealth(npc, 530);

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