#> nether-reactor-revisited:private/events/spawn_stuff
#
#   > Spawns stuff like items and custom zombified piglins
#
#@within function *:private/cores/tick


#   Increment the spawn interval tick of the marker entity
scoreboard players add @s[tag = nether-reactor-revisited.active] n-r-r.ticks2 1

scoreboard players operation @s[tag = nether-reactor-revisited.active] n-r-r.ticks2 %= $spawn_stuff_interval n-r-r


#  Store how many mobs that have the `nether-reactor-revisited.old_pigman` tag in the spire
execute positioned ~-7 ~-1 ~-7 store result score #mob_count n-r-r if entity @e[tag = nether-reactor-revisited.old_pigman, dx = 14, dy = 3, dz = 14]


#   Spawn stuff if the threshold has been reached
execute positioned ~ ~-1.5 ~ if score @s n-r-r.ticks2 matches 0 run function nether-reactor-revisited:private/events/spawn_stuff/items

execute positioned ~ ~-1.5 ~ unless score #mob_count n-r-r matches 8.. if score @s n-r-r.ticks2 matches 0 run function nether-reactor-revisited:private/events/spawn_stuff/zombified_piglins