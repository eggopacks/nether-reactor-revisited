#> nether-reactor-revisited:private/events/spawn_stuff
#
#   > Spawns stuff like items and custom zombified piglins
#
#@within function *:/private/cores/tick


#   Increment the tick of the marker entity
scoreboard players add @s[tag = nether-reactor-revisited.active] n-r-r.ticks2 1

scoreboard players operation @s[tag = nether-reactor-revisited.active] n-r-r.ticks2 %= $spawn_stuff_interval n-r-r


#   Spawn stuff if the threshold has been reached
execute if score @s n-r-r.ticks2 matches 0 run function nether-reactor-revisited:private/events/spawn_stuff/items

execute if score @s n-r-r.ticks2 matches 0 run function nether-reactor-revisited:private/events/spawn_stuff/zombified_piglins