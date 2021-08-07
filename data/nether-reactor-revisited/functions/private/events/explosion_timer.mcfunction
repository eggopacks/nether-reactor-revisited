#> nether-reactor-revisited:private/events/explosion_timer
#
#   > Run a countdown before exploding
#
#@within function *:private/cores/tick


#   Set the countdown once
execute unless entity @s[tag = nether-reactor-revisited.explosion_timer_set] run scoreboard players operation @s n-r-r.ticks1 = $explode_after_ticks n-r-r

tag @s add nether-reactor-revisited.explosion_timer_set


#   Do the countdown
scoreboard players remove @s n-r-r.ticks1 1

execute unless score @s n-r-r.ticks1 matches 1.. run function nether-reactor-revisited:private/events/explosion_timer/end


#   Display a particle effect
particle smoke ~ ~ ~ 0.3 0.3 0.3 0.001 8 normal @a