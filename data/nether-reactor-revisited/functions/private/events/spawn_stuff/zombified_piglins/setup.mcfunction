#> nether-reactor-revisited:private/events/spawn_stuff/zombified_piglins/setup
#
#   > Do some setup beforehand before tagging the mob with `nether-reactor-revisited.old_pigman`
#
#@within function *:private/events/spawn_stuff/zombified_piglins


#   Summon the zombified piglin
summon zombified_piglin ~ ~ ~


#   Add the tag
tag @e[type = zombified_piglin, distance = 0] add nether-reactor-revisited.old_pigman