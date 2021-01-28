
function FAI_HUMAN_ATTACK_UNEXP(player)
	if(GetPlayerWeaponMode(player.ID) == 0)then
		SetPlayerWeaponMode(player.ID, player.WeaponMode);
	end
	
	if(FAI_CheckPlayerHealth(player))then
		return;
	end
	
	if(FAI_UPDATE_NEXTMOVES(player))then
		return;
	end
	
	turnPlayer(player.ID, GetAngleToPlayer(player.ID,player.ENEMY[1]));
	
	if(GetDistancePlayers(player.ID, player.ENEMY[1]) > 200)then
		if(GetPlayerWeaponMode(player.ID) == 1)then
			table.insert(player.NEXTMOVES, {type=1, anim="S_FISTRUNL"});
		elseif(GetPlayerWeaponMode(player.ID) == 3)then
			table.insert(player.NEXTMOVES, {type=1, anim="S_1HRUNL"});
		elseif(GetPlayerWeaponMode(player.ID) == 4)then
			table.insert(player.NEXTMOVES, {type=1, anim="S_2HRUNL"});
		end
	else
		table.insert(player.NEXTMOVES, {type=1, anim="S_1HRUNL"});
		table.insert(player.NEXTMOVES, {type=2, waittime=100});
		if(GetPlayerWeaponMode(player.ID) == 1)then
			table.insert(player.NEXTMOVES, {type=1, anim="T_FISTATTACKMOVE"});
		elseif(GetPlayerWeaponMode(player.ID) == 3)then
			table.insert(player.NEXTMOVES, {type=1, anim="T_1HATTACKMOVE"});
		elseif(GetPlayerWeaponMode(player.ID) == 4)then
			table.insert(player.NEXTMOVES, {type=1, anim="T_2HATTACKMOVE"});
		end
		
		local dangle = GetPlayerAngle(player.ID) - GetAngleToPlayer(player.ID, player.ENEMY[1]);
		if( dangle > -10 and dangle < 10 and GetDistancePlayers(player.ID, player.ENEMY[1]) < 200)then
			table.insert(player.NEXTMOVES, {type=3, victim=player.ENEMY[1]});
			table.insert(player.NEXTMOVES, {type=2, waittime=100});
		end
		
	end
end

function ON_HUMAN_UNEXP_HIT(player, targetid)
    SetEnemy(player.ID, targetid);
    if(player.Aivars.Flee == true and GetPlayerHealth(player.ID) <= GetPlayerMaxHealth(player.ID))then
        player.Aivars.Flee = false;
    end
    if(player.Aivars["Flee"] == true)then
        return
    end
    
    if(math.random() > 0.5)then
        table.insert(player.NEXTMOVES, {type=1, anim="T_FISTPARADEJUMPB"});
        table.insert(player.NEXTMOVES, {type=2, waittime=math.random(0,200)}); --0/400
        if(math.random() > 0.5)then
            table.insert(player.NEXTMOVES, {type=1, anim="T_FISTRUNSTRAFER"});
        else
            table.insert(player.NEXTMOVES, {type=1, anim="T_FISTRUNSTRAFEL"});
        end
        table.insert(player.NEXTMOVES, {type=2, waittime=math.random(400,800)}); -- 1000,2000
    end
end
