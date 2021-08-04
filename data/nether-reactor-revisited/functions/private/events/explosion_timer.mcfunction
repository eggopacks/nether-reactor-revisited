#> nether-reactor-revisited:private/events/explosion_timer
#
#   > Run a countdown before exploding
#
#@within function *:private/cores/tick


#   Set the countdown once
scoreboard players operation @s n-r-r.ticks1 = $explode_after_ticks n-r-r


#   Do the countdown
scoreboard players remove @s n-r-r.ticks1 1

execute unless score @s n-r-r.ticks1 matches 1.. run summon tnt

execute unless score @s n-r-r.ticks1 matches 1.. run kill @e[type = item, nbt = {Item: {id: "nether-reactor-revisited:active"}, Age: 0s}, distance = ..0.8]