MD5Gothic = "8b12fa3a0ca28c658fae2ef74ff545bc" --Hier ModHash einfuegen 

require "include/cmd_register"
require "include/cmd_login"
require "include/Language"
require "include/focussteine"
require "include/spawnschutz"
require "include/rundenende"
require "include/multiplikator"
require "include/Gamemode"
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
--require "include/sprintfunktion"

print("Loaded LUA file   " .. debug.getinfo(1).source)