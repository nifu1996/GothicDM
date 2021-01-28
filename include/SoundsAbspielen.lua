-- SoundsAbspielen

local Alarm = {}
Alarm["Hum_Body_Naked0"] = {
	CreateSound("SVM_14_ALARM.WAV"),
	CreateSound("SVM_13_ALARM.WAV"),
	CreateSound("SVM_12_ALARM.WAV"),
	CreateSound("SVM_11_ALARM.WAV"),
	CreateSound("SVM_10_ALARM.WAV"),
	CreateSound("SVM_9_ALARM.WAV"),
	CreateSound("SVM_8_ALARM.WAV") }
Alarm["Hum_Body_Babe0"] = {
	CreateSound("SVM_17_ALARM.WAV"),
	CreateSound("SVM_16_ALARM.WAV") }

local BleibStehen = {}
BleibStehen["Hum_Body_Naked0"] = {
	CreateSound("SVM_1_RUNCOWARD.WAV"),
	CreateSound("SVM_3_RUNCOWARD.WAV"),
	CreateSound("SVM_4_RUNCOWARD.WAV"),
	CreateSound("SVM_5_RUNCOWARD.WAV"),
	CreateSound("SVM_7_RUNCOWARD.WAV"),
	CreateSound("SVM_8_RUNCOWARD.WAV"),
	CreateSound("SVM_9_RUNCOWARD.WAV") }
BleibStehen["Hum_Body_Babe0"] = {
	CreateSound("SVM_17_RUNCOWARD.WAV"),
	CreateSound("SVM_16_RUNCOWARD.WAV") }

local Rueckzug = {}
Rueckzug["Hum_Body_Naked0"] = {
	CreateSound("SVM_1_RUNAWAY.WAV"),
	CreateSound("SVM_4_RUNAWAY.WAV"),
	CreateSound("SVM_5_RUNAWAY.WAV"),
	CreateSound("SVM_7_RUNAWAY.WAV"),
	CreateSound("SVM_10_RUNAWAY.WAV"),
	CreateSound("SVM_11_RUNAWAY.WAV") }
Rueckzug["Hum_Body_Babe0"] = {
	CreateSound("SVM_16_RUNAWAY.WAV"),
	CreateSound("SVM_17_RUNAWAY.WAV") }

local Hilfe = {}
Hilfe["Hum_Body_Naked0"] = {
	CreateSound("SVM_1_HELP.WAV"),
	CreateSound("SVM_4_HELP.WAV"),
	CreateSound("SVM_5_HELP.WAV"),
	CreateSound("SVM_7_HELP.WAV"),
	CreateSound("SVM_10_HELP.WAV"),
	CreateSound("SVM_11_HELP.WAV") }
Hilfe["Hum_Body_Babe0"] = {
	CreateSound("SVM_16_HELP.WAV"),
	CreateSound("SVM_17_HELP.WAV") }

local SoundCooldownTime = 10000 -- in Millisekunden

local function SoundPlay(playerid, soundTypTabelle)
	local bodyModel,bodyTexture,headModel,headTexture = GetPlayerAdditionalVisual(playerid)
	local soundTabelle = soundTypTabelle[bodyModel]
	if soundTabelle == nil then soundTabelle = Alarm[1] end
	local rnd = math.random(#soundTabelle)
	local soundToPlay = soundTabelle[rnd]
	local x,y,z = GetPlayerPos(playerid)
	for id = 0, GetMaxPlayers() - 1 do
		if GetDistancePlayers(playerid, id) < 2500 then
			PlayPlayerSound3D(id, soundToPlay, x, y, z, 2500)
		end
	end
	Player[playerid].SoundCooldown = true
	SetTimerEx("ResetSoundCooldown", SoundCooldownTime, 0, playerid)
end


function ResetSoundCooldown(playerid)
    Player[playerid].SoundCooldown = false
end

function SoundPlay_Alarm(playerid)
	if Player[playerid].SoundCooldown then return end
	SoundPlay(playerid, Alarm)
end

function SoundPlay_BleibStehen(playerid)
	if Player[playerid].SoundCooldown then return end
	SoundPlay(playerid, BleibStehen)
end

function SoundPlay_Rueckzug(playerid)
	if Player[playerid].SoundCooldown then return end
	SoundPlay(playerid, Rueckzug)
end

function SoundPlay_Hilfe(playerid)
	if Player[playerid].SoundCooldown then return end
	SoundPlay(playerid, Hilfe)
end

print("Loaded LUA file   " .. debug.getinfo(1).source)