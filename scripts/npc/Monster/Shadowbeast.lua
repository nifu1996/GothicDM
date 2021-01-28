function Shadowbeast()
	local npc = CreateNPC(GetNewNPCName("Schattenl‰ufer"));
	
	if(npc == -1)then
		print("Creating Shadowbeast Failed!");
	end
	
	SetPlayerInstance(npc,"Shadowbeast");
	
	SetPlayerStrength(npc, 100);
	SetPlayerDexterity(npc, 100);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 2200);
	SetPlayerHealth(npc, 2200);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = DR_Monster_Shadowbeast; -- Original "nil"
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 600;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Shadowbeast;
	npcarr.func = Shadowbeast;
	npcarr.instance = "Schattenlaeufer";
	npcarr.respawntime = 1440;
	
	return npcarr;
end

function OW_Shadowbeast()
	local npc = CreateNPC(GetNewNPCName("Schattenl‰ufer"));
	
	if(npc == -1)then
		print("Creating OW_Shadowbeast Failed!");
	end
	
	SetPlayerInstance(npc,"Shadowbeast");
	
	SetPlayerStrength(npc, 100);
	SetPlayerDexterity(npc, 100);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 2200);
	SetPlayerHealth(npc, 2200);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = DR_Monster_Shadowbeast; -- Original "nil"
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 600;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Shadowbeast;
	npcarr.func = Shadowbeast;
	npcarr.instance = "OW_Schattenlaeufer";
	npcarr.respawntime = 1440;
	
	return npcarr;
end

function JK_Shadowbeast()
	local npc = CreateNPC(GetNewNPCName("Schattenl‰ufer"));
	
	if(npc == -1)then
		print("Creating JK_Shadowbeast Failed!");
	end
	
	SetPlayerInstance(npc,"Shadowbeast");
	
	SetPlayerStrength(npc, 100);
	SetPlayerDexterity(npc, 100);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 2200);
	SetPlayerHealth(npc, 2200);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = DR_Monster_Shadowbeast; -- Original "nil"
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 600;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Shadowbeast;
	npcarr.func = Shadowbeast;
	npcarr.instance = "JK_Schattenlaeufer";
	npcarr.respawntime = 1440;
	
	return npcarr;
end

function YoungShadowbeast()
	local npc = CreateNPC(GetNewNPCName("Junger Schattenl‰ufer"));
	
	if(npc == -1)then
		print("Creating YoungShadowbeast Failed!");
	end
	
	SetPlayerInstance(npc,"YShadowbeast");
	
	SetPlayerStrength(npc, 90);
	SetPlayerDexterity(npc, 90);
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 1210);
	SetPlayerHealth(npc, 1210);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = DR_Monster_Shadowbeast; -- Original "nil"
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 600;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Shadowbeast;
	npcarr.func = YShadowbeast;
	npcarr.instance = "Junger Schattenlaeufer";
	npcarr.respawntime = 1440;
	--SetPlayerScale(npcarr.id,0.8,0.8,0.8);

	
	return npcarr;
end

function OW_YoungShadowbeast()
	local npc = CreateNPC(GetNewNPCName("Junger Schattenl‰ufer"));
	
	if(npc == -1)then
		print("Creating OW_YoungShadowbeast Failed!");
	end
	
	SetPlayerInstance(npc,"YShadowbeast");
	
	SetPlayerStrength(npc, 90);
	SetPlayerDexterity(npc, 90);
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 1210);
	SetPlayerHealth(npc, 1210);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = DR_Monster_Shadowbeast; -- Original "nil"
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 600;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Shadowbeast;
	npcarr.func = YShadowbeast;
	npcarr.instance = "OW_Junger Schattenlaeufer";
	npcarr.respawntime = 1440;
	--SetPlayerScale(npcarr.id,0.8,0.8,0.8);

	
	return npcarr;
end

function JK_YoungShadowbeast()
	local npc = CreateNPC(GetNewNPCName("Junger Schattenl‰ufer"));
	
	if(npc == -1)then
		print("Creating JK_YoungShadowbeast Failed!");
	end
	
	SetPlayerInstance(npc,"YShadowbeast");
	
	SetPlayerStrength(npc, 90);
	SetPlayerDexterity(npc, 90);
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 1210);
	SetPlayerHealth(npc, 1210);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = DR_Monster_Shadowbeast; -- Original "nil"
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 600;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Shadowbeast;
	npcarr.func = YShadowbeast;
	npcarr.instance = "JK_Junger Schattenlaeufer";
	npcarr.respawntime = 1440;
	--SetPlayerScale(npcarr.id,0.8,0.8,0.8);

	
	return npcarr;
end

--[[
function YoungShadowbeast()
    local npcArray = Shadowbeast();--A normal Wolf will be created
    local youngwolfname = GetNewNPCName("Junger Schattenlaeufer");
    SetPlayerName(npcArray.id, youngwolfname);
    
    SetPlayerStrength(npcArray.id, 90);
    SetPlayerDexterity(npcArray.id, 90);
    SetPlayerLevel(npcArray.id, 15);
    SetPlayerMaxHealth(npcArray.id, 1210);
    SetPlayerHealth(npcArray.id, 1210);
	npcarr.instance = "Junger_Schattenlaeufer";
	npcarr.respawntime = 720;
	SetPlayerScale(npcarr.id,0.8,0.8,0.8);
    
    npcArray.func = YoungShadowbeast;
    
    
    
    return npcArray;
end ]]--

-- /spawn Shadowbeast --

function Spawn_Shadowbeast()
	local npc = CreateNPC(GetNewNPCName("Schattenl‰ufer"));
	
	if(npc == -1)then
		print("Creating Spawn_Shadowbeast Failed!");
	end
	
	SetPlayerInstance(npc,"Shadowbeast");
	
	SetPlayerStrength(npc, 85); -- edit by Lain
	SetPlayerDexterity(npc, 100); -- edit by Lain
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 3500); -- edit by Lain
	SetPlayerHealth(npc, 3500); -- edit by Lain
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_SHADOWBEAST_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_SHADOWBEAST_HIT;
	npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 600;
	npcarr.Guild = AI_GUILD_Shadowbeast;
	npcarr.func = Shadowbeast;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end
--[[
function Spawn_YoungShadowbeast()
    local npcArray = Shadowbeast();--A normal Wolf will be created
    local youngwolfname = GetNewNPCName("Junger Schattenlaeufer");
    
	SetPlayerName(npcArray.id, Junger Schattenl√§ufer);
    
    SetPlayerStrength(npcArray.id, 90);
    SetPlayerDexterity(npcArray.id, 90);
    SetPlayerLevel(npcArray.id, 15);
    SetPlayerMaxHealth(npcArray.id, 1210);
    SetPlayerHealth(npcArray.id, 1210);
	npcarr.instance = "YShadowbeast";
	npcarr.respawntime = 720;
	SetPlayerScale(npcarr.id,0.8,0.8,0.8);
    
    npcArray.func = YoungShadowbeast;
    
    
    
    return npcArray;
end ]]--
function Spawn_YShadowbeast()
	local npc = CreateNPC(GetNewNPCName("Junger Schattenl‰ufer"));
	
	if(npc == -1)then
		print("Creating Spawn_YShadowbeast Failed!");
	end
	
	SetPlayerInstance(npc,"YShadowbeast");
	
	SetPlayerStrength(npc, 90);
	SetPlayerDexterity(npc, 90);
	SetPlayerLevel(npc, 15);
	SetPlayerMaxHealth(npc, 1210);
	SetPlayerHealth(npc, 1210);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 600;
	npcarr.Guild = AI_GUILD_Shadowbeast;
	npcarr.func = YShadowbeast;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	--SetPlayerScale(npcarr.id,0.8,0.8,0.8);
	
	return npcarr;
end


function JK_Feuerteufel()
	local npc = CreateNPC(GetNewNPCName("Feuerteufel"));
	
	if(npc == -1)then
		print("Creating Feuerteufel Failed!");
	end
	
	SetPlayerInstance(npc,"Shadowbeast_Addon_Fire");
	
	SetPlayerStrength(npc, 85);
	SetPlayerDexterity(npc, 85);
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 1130);
	SetPlayerHealth(npc, 1130);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = DR_Monster_Shadowbeast; -- Original "nil"
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 600;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Shadowbeast;
	npcarr.func = Shadowbeast;
	npcarr.instance = "JK_Feuerteufel";
	npcarr.respawntime = 1440;
	
	return npcarr;
end

function JK_Shadowbeast_Skeleton()
	local npc = CreateNPC(GetNewNPCName("Schattenl‰uferskelett"));
	
	if(npc == -1)then
		print("Creating ShadowbeastSkeleton Failed!");
	end
	
	SetPlayerInstance(npc,"Shadowbeast_Skeleton");
	
	SetPlayerStrength(npc, 85);
	SetPlayerDexterity(npc, 85);
	SetPlayerLevel(npc, 40);
	SetPlayerMaxHealth(npc, 1160);
	SetPlayerHealth(npc, 1160);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = DR_Monster_Shadowbeast; -- Original "nil"
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 600;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.Guild = AI_GUILD_Shadowbeast;
	npcarr.func = Shadowbeast;
	npcarr.instance = "JK_Schattenlaeuferskelett";
	npcarr.respawntime = 1440;
	
	return npcarr;
end

function Spawn_Feuerteufel()
	local npc = CreateNPC(GetNewNPCName("Feuerteufel"));
	
	if(npc == -1)then
		print("Creating Spawn_Feuerteufel Failed!");
	end
	
	SetPlayerInstance(npc,"Shadowbeast_Addon_Fire");
	
	SetPlayerStrength(npc, 85); 
	SetPlayerDexterity(npc, 85); 
	SetPlayerLevel(npc, 30);
	SetPlayerMaxHealth(npc, 1130); 
	SetPlayerHealth(npc, 1130); 
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 600;
	npcarr.Guild = AI_GUILD_Shadowbeast;
	npcarr.func = Shadowbeast;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end

function Spawn_Shadowbeast_Skeleton()
	local npc = CreateNPC(GetNewNPCName("Schattenl‰uferskelett"));
	
	if(npc == -1)then
		print("Creating Spawn_ShadowbeastSkeleton Failed!");
	end
	
	SetPlayerInstance(npc,"Shadowbeast_Skeleton");
	
	SetPlayerStrength(npc, 85); 
	SetPlayerDexterity(npc, 85); 
	SetPlayerLevel(npc, 40);
	SetPlayerMaxHealth(npc, 1160);
	SetPlayerHealth(npc, 1160);
	
	
	npcarr = {};
	npcarr.id = npc;
	npcarr.daily_routine = nil;
	npcarr.attack_routine = FAI_WOLF_ATTACK;
	npcarr.WeaponMode = 0;
	npcarr.dialogs = nil;
	npcarr.update_func = AI_UP_MONSTER;
	npcarr.target_routine = AI_TA_MONSTER;
	npcarr.onhitted = ON_WOLF_HIT;
	npcarr.aivar = {};
    npcarr.aivar["ATTACKRANGE"] = 600;
	npcarr.Guild = AI_GUILD_Shadowbeast;
	npcarr.func = Shadowbeast;
	npcarr.instance = "Human";
	npcarr.respawntime = 2147483;
	
	return npcarr;
end