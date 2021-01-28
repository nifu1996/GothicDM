function AI_TA_MONSTER(_npc, _other)
	--local ainpc = GetPlayerAI(_npc);
end

function AI_UP_MONSTER(_npc)
	MAI_CheckWarn(_npc);
	MAI_LoopWarn(_npc)
end

function AI_GOTENEMY_MONSTER_FLEE(_npc, _enemy)
	if AI_NPCList[_npc] == nil or AI_NPCList[_enemy] == nil then
		return;
	end;
	if((AI_NPCList[_npc].Guild == AI_GUILD_Scavenger and AI_NPCList[_enemy].Guild == AI_GUILD_Wolf) or
		(AI_NPCList[_npc].Guild == AI_GUILD_Goblin and AI_NPCList[_enemy].Guild == AI_GUILD_Lurker)	or
		(AI_NPCList[_npc].Guild == AI_GUILD_Sheep and AI_NPCList[_enemy].Guild == AI_GUILD_HUMANS) or
		(AI_NPCList[_npc].Guild == AI_GUILD_Sheep and AI_NPCList[_enemy].Guild == AI_GUILD_GuildLess) )then
		AI_NPCList[_npc].Aivars.Flee = true;
		
	else
		AI_NPCList[_npc].Aivars.Flee = false;
	end
	SetEnemy(_npc, _enemy);
end