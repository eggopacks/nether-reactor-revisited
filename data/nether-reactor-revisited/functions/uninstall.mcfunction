#> nether-reactor-revisited:uninstall
#
#   > Remove stuff added by the `nether-reactor-revisited` datapack
#
#@user


#   Remove command storages
data remove storage eggohito:nether-reactor-revisited root


#   Remove scoreboard objectives
scoreboard objectives remove n-r-r

scoreboard objectives remove n-r-r.forge_uses

scoreboard objectives remove n-r-r.frames

scoreboard objectives remove n-r-r.seconds

scoreboard objectives remove n-r-r.ticks1

scoreboard objectives remove n-r-r.ticks2


#   Remove scheduled functions
schedule clear nether-reactor-revisited:private/tick


#   Unload datapack
datapack disable "file/nether-reactor-revisited_v2.0.0"

datapack disable "file/nether-reactor-revisited_v2.0.0.zip"