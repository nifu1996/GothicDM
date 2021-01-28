--[[
	Bürger von Khorinis
--]]

function ON_BUERGER_HIT(player, targetid)
	--[[if GetPlayerHealth(targetid) <= 2 then
		SetPlayerHealth(targetid, 0);
	else
		SetPlayerHealth(targetid, 2);
	end; --]]
	SetPlayerHealth(player.ID, GetPlayerMaxHealth(player.ID));
end;

-- Waffen: ItMw_Dolch ItMw_Sichel ItMw_WerkhammerItMw_Gehstock ItMw_Handkeule ItMw_Degen ItMw_FeinerDegen ItMw_VeredelterDegen ItMw_Meisterdegen ItMw_GrobesKurzschwert ItMw_Kurzschwert ItMw_EdlesKurzschwert
--[[ Kleidung:
BrauneBaeuerintracht - ITAR_BauBabe_A; 				GrueneBaeuerintracht- ITAR_BauBabe_B; 				Arbeiterhose - ITAR_Arbeiterhose;  					Lumpenkleidung - ITAR_Lumpen;
Lumpenkleid - ITAR_Lumpenkleid; 					Hafenkleidung 	ITAR_HAFENKLEIDUNG; 				BrauneBuergerkleidung 	ITAR_VLK_A; 				BraunePolsterkleidung 	ITAR_VLK_B;
WeisseBuergerkleidung 	ITAR_VLK_C; 				LockereKleidung 	ITAR_VLK_L; 					GrauePolsterkleidung 	ITAR_VLK_E; 				DunklePolsterkleidung 	ITAR_VLK_F;
BlauePolsterkleidung 	ITAR_VLK_H; 				BlauesSchlichtesKleid 	ITAR_VlkBabe_A; 			WeissesSchlichteskleid 	ITAR_VlkBabe_B; 			SchwarzesAdeligenkleid 	ITAR_VlkBabe_C;
RotesAdeligenkleid 	ITAR_VlkBabe_D; 				GruenesAdeligenkleid 	ITAR_VlkBabe_E; 			GruenesSchlichtesKleid 	ITAR_VlkBabe_H; 			VerstaerkteBuergerkleidung 	ITAR_VLK_K;
WeiblicheArbeiterkleidung 	ITAR_W_BAU_A;			Blauebuergerkleidung 	ITAR_VLK_I; 				Grobekleidung 	ITAR_BAU_C; 						GraueArbeiterkleidung 	ITAR_BAU_E;
GrueneArbeiterkleidung 	ITAR_BAU_F; 				GruenePolsterkleidung 	ITAR_VLK_J; 				RoteAdelskleidung 	ITAR_Adel; 						GraueAdelskleidung 	ITAR_Adel_A;
LilaAdelskleidung 	ITAR_Adel_B; 					BlaueAdelskleidung 	ITAR_Adel_C; 					GrueneAdelskleidung 	ITAR_Adel_D; 				RotesSchlichtesKleid 	ITAR_VlkBabe_G;
RotesVerziertesKleid 	ITAR_VlkBabe_F; 			GruenesVerziertesKleid 	ITAR_VlkBabe_I; 			GrueneBuergerkleidung 	itar_VLK_N;
--]]

--[[
	Kanalisation --> Zum GBH verschoben. 
--]]

function Balion() -- Allgemeinwarenhändler
	local npc = CreateNPC(GetNewNPCName("Erol"));

	if(npc == -1)then
		print("Creating Erol Function Balion Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_FatBald",5);
	SetPlayerFatness(npc, 0.45);
	SetPlayerScale(npc, 1.05, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Arrogance.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 60);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipArmor(npc, "ITAR_VLK_L");
	EquipMeleeWeapon(npc, "ItMw_Gehstock");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_BALION;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end;

function Roxy() -- Waffenhändlerin
	local npc = CreateNPC(GetNewNPCName("Hodges"));

	if(npc == -1)then
		print("Creating Hodges der den function Name Roxy hat Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",2,"Hum_Head_FatBald",126);
	SetPlayerFatness(npc, 0.6);
	SetPlayerScale(npc, 1.05, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 30);

	EquipArmor(npc, "ITAR_SMITH");
	EquipMeleeWeapon(npc, "ItMw_Schmiedehammer");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_ROXY;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end;

function Vlad() -- Lebensmittel- und Sumpfkrauthändler
	local npc = CreateNPC(GetNewNPCName("Elenora"));

	if(npc == -1)then
		print("Creating Elena die immer noch Funtion Vlad hat Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",5,"Hum_Head_Babe",145);
	SetPlayerFatness(npc, 0.45);
	SetPlayerScale(npc, 1.2, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "Humans_Babe.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 30);

	EquipArmor(npc, "ITAR_BauBabe_B");
	EquipMeleeWeapon(npc, "ItMw_Handkeule");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_VLAD;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end;

--[[
	Hafenviertel
--]]

-- 1. 3er Grüppchen
function Susanna()
	local npc = CreateNPC(GetNewNPCName("Susanna"));

	if(npc == -1)then
		print("Creating Susanna Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",4,"Hum_Head_babe2",149);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 0.8, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "s_Walk");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipArmor(npc, "ITAR_Lumpenkleid");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_SUSANNA;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Lilie()
	local npc = CreateNPC(GetNewNPCName("Lilie"));

	if(npc == -1)then
		print("Creating Lilie Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",12,"Hum_Head_babe3",146);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 0.85, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "s_Walk");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Dolch");
	EquipArmor(npc, "ITAR_BauBabe_A");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_LILIE;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Emka()
	local npc = CreateNPC(GetNewNPCName("Emka"));

	if(npc == -1)then
		print("Creating Emka Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",5,"Hum_Head_babe9",148);
	SetPlayerFatness(npc, 0.15);
	SetPlayerScale(npc, 1.025, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "s_Walk");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Sichel");
	EquipArmor(npc, "ITAR_BauBabe_B");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_EMKA;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- 2. 3er Grüppchen
function Marcel()
	local npc = CreateNPC(GetNewNPCName("Marcel"));

	if(npc == -1)then
		print("Creating Marcel Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",3,"Hum_Head_Pony",28);
	SetPlayerFatness(npc, 0.45);
	SetPlayerScale(npc, 1, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Handkeule");
	EquipArmor(npc, "ITAR_BAU_C");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_MARCEL;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Andrej()
	local npc = CreateNPC(GetNewNPCName("Andrej"));

	if(npc == -1)then
		print("Creating Andrej Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",0,"Hum_Head_Psionic",56);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 0.875, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Sichel");
	EquipArmor(npc, "ITAR_BAU_D");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_ANDREJ;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Bran()
	local npc = CreateNPC(GetNewNPCName("Bran"));

	if(npc == -1)then
		print("Creating Bran Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Thief",107);
	SetPlayerFatness(npc, 0.75);
	SetPlayerScale(npc, 1.05, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipArmor(npc, "ITAR_BAU_E");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_BRAN;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- 1. 2er Grüppchen
function Sebo()
	local npc = CreateNPC(GetNewNPCName("Sebo"));

	if(npc == -1)then
		print("Creating Sebo Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",9,"Hum_Head_Pony",24);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 1, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipArmor(npc, "ITAR_Arbeiterhose");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_SEBO;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Stefano()
	local npc = CreateNPC(GetNewNPCName("Stefano"));

	if(npc == -1)then
		print("Creating Stefano Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",9,"Hum_Head_Pony",20);
	SetPlayerFatness(npc, 0.15);
	SetPlayerScale(npc, 0.975, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Wolfsmesser");
	EquipArmor(npc, "ITAR_BAU_C");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_STEFANO;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- 2. 2er Grüppchen
function Nora()
	local npc = CreateNPC(GetNewNPCName("Nora"));

	if(npc == -1)then
		print("Creating Nora Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",7,"Hum_Head_babe7",157);
	SetPlayerFatness(npc, 0.3);
	SetPlayerScale(npc, 1.025, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "s_Walk");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipArmor(npc, "ITAR_Lumpenkleid");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_NORA;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Arjona()
	local npc = CreateNPC(GetNewNPCName("Arjona"));

	if(npc == -1)then
		print("Creating Arjona Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",4,"Hum_Head_babe9",149);
	SetPlayerFatness(npc, 0.15);
	SetPlayerScale(npc, 0.925, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "s_Walk");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipArmor(npc, "ITAR_Lumpenkleid");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_ARJONA;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- 3. 2er Grüppchen
function Marika()
	local npc = CreateNPC(GetNewNPCName("Marika"));

	if(npc == -1)then
		print("Creating Marika Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",5,"Hum_Head_babe3",148);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 0.8, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "s_Walk");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Dolch");
	EquipArmor(npc, "ITAR_VlkBabe_A");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_MARIKA;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Bromir()
	local npc = CreateNPC(GetNewNPCName("Bromir"));

	if(npc == -1)then
		print("Creating Bromir Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",10,"Hum_Head_Psionic",22);
	SetPlayerFatness(npc, 0.75);
	SetPlayerScale(npc, 0.875, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Degen");
	EquipArmor(npc, "ITAR_VLK_A");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_BROMIR;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- 4. 2er Grüppchen
function Alma()
	local npc = CreateNPC(GetNewNPCName("Alma"));

	if(npc == -1)then
		print("Creating Alma Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",5,"Hum_Head_babe9",144);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 0.8, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "s_Walk");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Sichel");
	EquipArmor(npc, "ITAR_BauBabe_B");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_ALMA;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Mauricio()
	local npc = CreateNPC(GetNewNPCName("Mauricio"));

	if(npc == -1)then
		print("Creating Mauricio Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",2,"Hum_Head_Fighter",121);
	SetPlayerFatness(npc, 0.15);
	SetPlayerScale(npc, 0.975, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Degen");
	EquipArmor(npc, "ITAR_HAFENKLEIDUNG");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_MAURICIO;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- 5. 2er Grüppchen
function Viola()
	local npc = CreateNPC(GetNewNPCName("Viola"));

	if(npc == -1)then
		print("Creating Viola Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",4,"Hum_Head_babe3",154);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 1, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "s_Walk");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Dolch");
	EquipArmor(npc, "ITAR_VlkBabe_B");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_VIOLA;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Daria()
	local npc = CreateNPC(GetNewNPCName("Daria"));

	if(npc == -1)then
		print("Creating Daria Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",7,"Hum_Head_babe7",142);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 0.9, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "s_Walk");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Sichel");
	EquipArmor(npc, "ITAR_VlkBabe_H");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_DARIA;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- Lebensmittelhändler Jethro's Taverne
function Lenny()
	local npc = CreateNPC(GetNewNPCName("Lenny"));

	if(npc == -1)then
		print("Creating Lenny Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",8,"Hum_Head_Bald",87);
	SetPlayerFatness(npc, 0.6);
	SetPlayerScale(npc, 1.025, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Dolch");
	EquipArmor(npc, "ITAR_BARKEEPER");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_LENNY;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- Lebensmittelhändler Fischrestaurant
function Perry()
	local npc = CreateNPC(GetNewNPCName("Perry"));

	if(npc == -1)then
		print("Creating Perry Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",8,"Hum_Head_Pony",161);
	SetPlayerFatness(npc, 0.45);
	SetPlayerScale(npc, 1.025, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Wolfsmesser");
	EquipArmor(npc, "ITAR_HAFENKLEIDUNG");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_PERRY;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

--[[
	Handwerksviertel
--]]

-- 1. 3er Grüppchen
function Sarah()
	local npc = CreateNPC(GetNewNPCName("Sarah"));

	if(npc == -1)then
		print("Creating Sarah Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",11,"Hum_Head_babe",163);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 0.95, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Arrogance.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Dolch");
	EquipArmor(npc, "ITAR_VlkBabe_F");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_SARAH;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Melanie()
	local npc = CreateNPC(GetNewNPCName("Melanie"));

	if(npc == -1)then
		print("Creating Melanie Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",5,"Hum_Head_babe2",153);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 1, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Arrogance.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Dolch");
	EquipArmor(npc, "ITAR_VlkBabe_A");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_MELANIE;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Paul()
	local npc = CreateNPC(GetNewNPCName("Paul"));

	if(npc == -1)then
		print("Creating Paul Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",3,"Hum_Head_Bald",136);
	SetPlayerFatness(npc, 0.3);
	SetPlayerScale(npc, 0.875, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Degen");
	EquipArmor(npc, "ITAR_VLK_B");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_PAUL;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

--[[
	Marktplatz
--]]

-- Eisenwaffenhändler
function Noel()
	local npc = CreateNPC(GetNewNPCName("Noel"));

	if(npc == -1)then
		print("Creating Noel Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Pony",3);
	SetPlayerFatness(npc, 0.6);
	SetPlayerScale(npc, 1, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Schmiedehammer");
	EquipArmor(npc, "ITAR_SMITH");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_NOEL;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- Rüstungshändler
function Regan()
	local npc = CreateNPC(GetNewNPCName("Regan"));

	if(npc == -1)then
		print("Creating Regan Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Pony",85);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 1, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Schmiedehammer");
	EquipArmor(npc, "ITAR_GROBESCHMIEDEKLEIDUNG");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_REGAN;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- Kleidungshändler
function Christa()
	local npc = CreateNPC(GetNewNPCName("Christa"));

	if(npc == -1)then
		print("Creating Christa Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",5,"Hum_Head_babe4",147);
	SetPlayerFatness(npc, 0.45);
	SetPlayerScale(npc, 0.8, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Arrogance.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Dolch");
	EquipArmor(npc, "ITAR_VlkBabe_F");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_CHRISTA;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- Lebensmittelhändler
function Jahn()
	local npc = CreateNPC(GetNewNPCName("Jahn"));

	if(npc == -1)then
		print("Creating Jahn Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",0,"Hum_Head_Thief",55);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 0.925, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Tired.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Handkeule");
	EquipArmor(npc, "itar_VLK_N");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_JAHN;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- Alchemiehändler
function Sina()
	local npc = CreateNPC(GetNewNPCName("Sina"));

	if(npc == -1)then
		print("Creating Sina Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",12,"Hum_Head_babe9",155);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 0.925, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Mage.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Sichel");
	EquipArmor(npc, "ITAR_VlkBabe_I");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_SINA;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- Bogenhändler
function Lydia()
	local npc = CreateNPC(GetNewNPCName("Lydia"));

	if(npc == -1)then
		print("Creating Lydia Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",5,"Hum_Head_babe",146);
	SetPlayerFatness(npc, 0.45);
	SetPlayerScale(npc, 1.025, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Militia.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 80);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Wolfsmesser");
	EquipRangedWeapon(npc, "ItRw_langbogen");
	EquipArmor(npc, "ITAR_W_Leder_L");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_LYDIA;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- Holzwarenhändler
function Lara()
	local npc = CreateNPC(GetNewNPCName("Lara"));

	if(npc == -1)then
		print("Creating Lara Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",6,"Hum_Head_babe9",158);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 0.9, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "s_Walk");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Gehstock");
	EquipArmor(npc, "ITAR_VlkBabe_I");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_LARA;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- Getränkehändler
function Ellie()
	local npc = CreateNPC(GetNewNPCName("Ellie"));

	if(npc == -1)then
		print("Creating Ellie Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",5,"Hum_Head_babe4",146);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 0.85, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Dolch");
	EquipArmor(npc, "ITAR_W_BARKEEPER");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_ELLIE;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- 1. 2er Grüppchen
function Lena()
	local npc = CreateNPC(GetNewNPCName("Lena"));

	if(npc == -1)then
		print("Creating Lena Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",5,"Hum_Head_babe9",144);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 0.8, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Arrogance.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Dolch");
	EquipArmor(npc, "ITAR_VlkBabe_F");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_LENA;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Richard()
	local npc = CreateNPC(GetNewNPCName("Richard"));

	if(npc == -1)then
		print("Creating Richard Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Thief",20);
	SetPlayerFatness(npc, 0.9);
	SetPlayerScale(npc, 1, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Arrogance.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_GrobesKurzschwert");
	EquipArmor(npc, "ITAR_VLK_I");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_RICHARD;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- 2. 2er Grüppchen
function Christian()
	local npc = CreateNPC(GetNewNPCName("Christian"));

	if(npc == -1)then
		print("Creating Christian Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",0,"Hum_Head_Pony",49);
	SetPlayerFatness(npc, 0.45);
	SetPlayerScale(npc, 1.025, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Relaxed.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Degen");
	EquipArmor(npc, "ITAR_VLK_J");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_CHRISTIAN;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Ute()
	local npc = CreateNPC(GetNewNPCName("Ute"));

	if(npc == -1)then
		print("Creating Ute Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",5,"Hum_Head_babe2",143);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 1, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "s_Walk");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Dolch");
	EquipArmor(npc, "ITAR_VlkBabe_B");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_UTE;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

--[[
	oberes Viertel
--]]

-- 1. 2er Grüppchen
function Julian()
	local npc = CreateNPC(GetNewNPCName("Julian"));

	if(npc == -1)then
		print("Creating Julian Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",3,"Hum_Head_Psionic",28);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 0.8, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Arrogance.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 100);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_VeredelterDegen");
	EquipArmor(npc, "ITAR_Adel_B");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_JULIAN;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Sienna()
	local npc = CreateNPC(GetNewNPCName("Sienna"));

	if(npc == -1)then
		print("Creating Sienna Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",5,"Hum_Head_babe8",156);
	SetPlayerFatness(npc, 0.15);
	SetPlayerScale(npc, 0.975, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Arrogance.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Gehstock");
	EquipArmor(npc, "ITAR_VlkBabe_E");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_SIENNA;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- 2. 2er Grüppchen
function Yaren()
	local npc = CreateNPC(GetNewNPCName("Yaren"));

	if(npc == -1)then
		print("Creating Yaren Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",2,"Hum_Head_FatBald",127);
	SetPlayerFatness(npc, 0.6);
	SetPlayerScale(npc, 1.075, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Arrogance.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 100);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Meisterdegen");
	EquipArmor(npc, "ITAR_Adel");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_YAREN;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Layla()
	local npc = CreateNPC(GetNewNPCName("Layla"));

	if(npc == -1)then
		print("Creating Layla Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",5,"Hum_Head_babe3",155);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 1, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Arrogance.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Gehstock");
	EquipArmor(npc, "ITAR_VlkBabe_D");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_LAYLA;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- 3. 2er Grüppchen
function Isabella()
	local npc = CreateNPC(GetNewNPCName("Isabella"));

	if(npc == -1)then
		print("Creating Isabella Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",5,"Hum_Head_babe1",153);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 1, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Arrogance.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 100);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_VeredelterDegen");
	EquipArmor(npc, "ITAR_VlkBabe_C");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_ISABELLA;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Ethan()
	local npc = CreateNPC(GetNewNPCName("Ethan"));

	if(npc == -1)then
		print("Creating Ethan Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Fighter",76);
	SetPlayerFatness(npc, 0.9);
	SetPlayerScale(npc, 1.05, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Arrogance.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Gehstock");
	EquipArmor(npc, "ITAR_Adel_D");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_ETHAN;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- 4. 2er Grüppchen
function Ava()
	local npc = CreateNPC(GetNewNPCName("Ava"));

	if(npc == -1)then
		print("Creating Ava Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",5,"Hum_Head_babe9",147);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 0.95, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Arrogance.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 100);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_FeinerDegen");
	EquipArmor(npc, "ITAR_VlkBabe_D");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_AVA;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Eve()
	local npc = CreateNPC(GetNewNPCName("Eve"));

	if(npc == -1)then
		print("Creating Eve Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Babe0",5,"Hum_Head_babe9",146);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 1, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Arrogance.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Gehstock");
	EquipArmor(npc, "ITAR_VlkBabe_E");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_EVE;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

-- Einzelne Personen Oberes Viertel

function Ekarius() -- Betet am Schrein im OV
	local npc = CreateNPC(GetNewNPCName("Ekarius"));

	if(npc == -1)then
		print("Creating Ekarius Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_Fighter",119);
	SetPlayerFatness(npc, 1.2);
	SetPlayerScale(npc, 0.95, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Arrogance.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Gehstock");
	EquipArmor(npc, "ITAR_Adel_D");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_EKARIUS;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Raoul() -- Gärtner Nr 1
	local npc = CreateNPC(GetNewNPCName("Raoul"));

	if(npc == -1)then
		print("Creating Raoul Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",1,"Hum_Head_FatBald",76);
	SetPlayerFatness(npc, 0.15);
	SetPlayerScale(npc, 0.95, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Tired.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Harke");
	EquipArmor(npc, "ITAR_BAU_B");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_RAOUL;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Niclas() -- Gärtner Nr 2
	local npc = CreateNPC(GetNewNPCName("Niclas"));

	if(npc == -1)then
		print("Creating Niclas Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",2,"Hum_Head_Psionic",122);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 0.85, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Tired.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Harke");
	EquipArmor(npc, "ITAR_BAU_B");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_NICLAS;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end

function Zuris() -- Luxuswarenhändler
	local npc = CreateNPC(GetNewNPCName("Zuris"));

	if(npc == -1)then
		print("Creating Zuris Failed!");
	end
	SetPlayerAdditionalVisual(npc,"Hum_Body_Naked0",3,"Hum_Head_Fighter",129);
	SetPlayerFatness(npc, 0);
	SetPlayerScale(npc, 0.875, 1, 1);

	SetPlayerInstance(npc,"PC_HERO");
	SetPlayerWalk(npc, "HumanS_Arrogance.mds");

	SetPlayerStrength(npc, 60);
	SetPlayerDexterity(npc, 50);
	SetPlayerLevel(npc, 10);
	SetPlayerMaxHealth(npc, 5000);
	SetPlayerHealth(npc, 5000);
	SetPlayerSkillWeapon(npc, SKILL_1H, 10);

	EquipMeleeWeapon(npc, "ItMw_Gehstock");
	EquipArmor(npc, "ITAR_Adel_C");

	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = TA_ZURIS;
	npcarr.attack_routine = nil;
	npcarr.WeaponMode = 3;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = nil;
	npcarr.onhitted = ON_BUERGER_HIT;
	npcarr.Guild = AI_GUILD_Guildless;
	npcarr.func = OrcWarrior;
	npcarr.instance = "Stadtwache";
	npcarr.respawntime = 360;
	npcarr.passiveNPC = 1;

	return npcarr;
end
