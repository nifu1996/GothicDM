function Warg()
	local npc = CreateNPC(GetNewNPCName("Warg"));
	
	if(npc == -1)then
		print("Creating Warg Failed!");
	end
	
	SetPlayerInstance(npc,"Warg");
	
	SetPlayerStrength(npc, math.random(65, 75));
	--SetPlayerDexterity(npc, 100);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, math.random(430, 550));
	SetPlayerHealth(npc, 430);
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = DR_Monster_MidEat;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Warg;
	npcarr.func = Warg;
	npcarr.instance = "Warg";
	npcarr.respawntime = 480;
	
	return npcarr;
end

-- Instanzen für /spawn Befehl mit modifizierten TA und ohne Respawnroutine

function Spawn_Warg()
	local npc = CreateNPC(GetNewNPCName("Warg"));
	
	if(npc == -1)then
		print("Creating Warg Failed!");
	end
	
	SetPlayerInstance(npc,"Warg");
	
	SetPlayerStrength(npc, 70);
	--SetPlayerDexterity(npc, 100);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 490);
	SetPlayerHealth(npc, 490);
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Warg;
	npcarr.func = Spawn_Warg;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end