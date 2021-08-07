#> nether-reactor-revisited:private/events/spawn_stuff/zombified_piglins/tick
#
#   > Tick mobs with the `nether-reactor-revisited.old_pigman` tag
#
#@within function *:private/tick


#   Increase the timer tick of the mob
execute if entity @s[tag = nether-reactor-revisited.empower] if score @s n-r-r.ticks1 matches 2.. run scoreboard players remove @s n-r-r.ticks1 1

execute unless entity @s[tag = nether-reactor-revisited.empower] run scoreboard players add @s n-r-r.ticks1 1

execute unless entity @s[tag = nether-reactor-revisited.empower] run scoreboard players operation @s n-r-r.ticks1 %= $mob_world_ticks n-r-r


#   Kill the mob if it reaches its max world ticks threshold
execute if score @s n-r-r.ticks1 matches 0 run particle block green_concrete ~ ~ ~ 0.3 1.5 0.3 0.001 16 normal @a 

execute if score @s n-r-r.ticks1 matches 0 run tp ~ ~-200 ~


#   Re-aggravate the mob at the nearby players if the mob is not angry
execute store result score @s n-r-r.ticks2 run data get entity @s AngerTime

execute unless score @s n-r-r.ticks2 matches 1.. run function nether-reactor-revisited:private/events/spawn_stuff/zombified_piglins/aggravate


#   Remove the `nether-reactor-revisited.empower` tag
tag @s remove nether-reactor-revisited.empower