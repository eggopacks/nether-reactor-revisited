#> nether-reactor-revisited:private/tick
#
#   > The tick function for the `ccpacks-nether-reactor` namespace
#
#@within
#   function *:private/load
#   function *:private/tick


#   Check if the `$set_daytime_to` score holder goes over its vanilla limits
execute if score $set_daytime_to n-r-r matches ..-1 run scoreboard players set $set_daytime_to n-r-r 0

execute if score $set_daytime_to n-r-r matches 24001.. run scoreboard players set $set_daytime_to n-r-r 24000


#   Tick `nether-reactor-revisited.core` marker entities
execute as @e[tag = nether-reactor-revisited.core] at @s run function nether-reactor-revisited:private/cores/tick


#   Tick `nether-reactor-revisited.old_pigman` entities
execute as @e[tag = nether-reactor-revisited.old_pigman] at @s run function nether-reactor-revisited:private/events/spawn_stuff/zombified_piglins/tick


#   Loop this function
schedule function nether-reactor-revisited:private/tick 1t