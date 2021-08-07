#> nether-reactor-revisited:private/cores/mined
#
#   > Spawn loot stuff respective to the reactor core's type
#
#@within function *:private/cores/tick


#   Kill the marker entity
kill @s

scoreboard players reset @s


#   Add a tag that determines the reactor core has been mined
tag @s add nether-reactor-revisited.mined

execute if entity @s[tag = nether-reactor-revisited.active, tag = nether-reactor-revisited.stable] run function nether-reactor-revisited:private/events/structure_frame/tampered

execute if entity @s[tag = nether-reactor-revisited.active, tag = nether-reactor-revisited.unstable] run function nether-reactor-revisited:private/events/explosion_timer/end


#   Do respective stuff
execute if entity @s[tag = nether-reactor-revisited.inactive, tag = nether-reactor-revisited.drop] run loot spawn ~ ~ ~ loot nether-reactor-revisited:blocks/inactive