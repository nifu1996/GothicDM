MD5Gothic = "8b12fa3a0ca28c658fae2ef74ff545bc" --Hier ModHash einfuegen 

require "scriptsnew/Callbacks/OnInit"
require "scriptsnew/Callbacks/OnConnect" --Text und Tasteneingabe
require "scriptsnew/Callbacks/OnDeath" --Hit und Death
require "scriptsnew/Callbacks/OnItem"

require "scriptsnew/Commands/SpawnDataBase" --Spawn der Tiere über datenbank
require "scriptsnew/Commands/SpawnNPC" --Spawndatei über Datenbank

require "scriptsnew/libs/AIRespawn"
require "scriptsnew/libs/AICreate_WayNet"
require "scriptsnew/libs/AIGuild_Attitude"
require "scriptsnew/libs/AI_Names"

require "DeathmatchEngine/Admin"

require "include/cmd_register"
require "include/cmd_login"
require "include/Language"
require "include/focussteine"
require "include/spawnschutz"
require "include/rundenende"
require "include/multiplikator"
require "include/Gamemode"
require "include/Haendler"
require "include/cb_Filterscript"
require "include/cb_Dis_Connect"
require "include/cb_Hit_Death"
require "include/respawnAfterDeath"
require "include/cb_Item"
require "include/cb_OnText"
require "include/cb_OnKey"
require "include/cb_OnFocus"
require "include/WorldMap"
require "include/EinsteigerGuide"
require "include/SoundsAbspielen"

require "include/sql_MonsterBelohnungen"

require "DeathmatchEngine/Locals"
require "DeathmatchEngine/Login"

require "scriptsnew/GlobalUtilFunctions"

--require "include/sprintfunktion"

print("Loaded LUA file   " .. debug.getinfo(1).source)

print(debug.getinfo(1).source .. "has been loaded")