local GuildAttitude = {};

function SetDefaultGuildAttitude()

    local Guilds= mysql_query(mysql_handler, "SELECT Guild FROM Guild WHERE 1 ");

    for sqlRow,G in mysql_rows_assoc(Guilds) do
        GuildAttitude[G.Guild] = {};
        local Guildsto= mysql_query(mysql_handler, "SELECT ToGuild,Status FROM GuildAttitude WHERE FromGuild = '"..G.Guild.."'");

        for sqlRow,GA in mysql_rows_assoc(Guildsto) do
            --print(G.Guild," ",GA.ToGuild," ",GA.Status)
            GuildAttitude[G.Guild][GA.ToGuild] = tonumber(GA.Status);
        end
    end
end

function GetGuildAttitude(player, player2)
    if(player.GuildAttitude == nil or player.GuildAttitude[player2.Guild] == nil)then
        return AI_ATTITUDE_NEUTRAL;
    end
    return player.GuildAttitude[player2.Guild];
end

function GetAttitude_Guild(_guild1, _guild2)
    if(GuildAttitude[_guild1] == nil or GuildAttitude[_guild1][_guild2] == nil)then
        return AI_ATTITUDE_NEUTRAL;
    end
    return GuildAttitude[_guild1][_guild2];
end

--Works only if NPCs are spawned after this function!
function SetAttitude_Guild(_guild1, _guild2, _attitude)
    if(GuildAttitude[_guild1] == nil)then
        GuildAttitude[_guild1]={};
    end

    GuildAttitude[_guild1][_guild2] = _attitude;
end

function ResetGuildAttitude(player)
    player.GuildAttitude = GuildAttitude[player.Guild];
end


AI_ATTITUDE_FRIENDLY = 2;
AI_ATTITUDE_HOSTILE = 1;
AI_ATTITUDE_NEUTRAL = 0;

print(debug.getinfo(1).source .. "has been loaded")