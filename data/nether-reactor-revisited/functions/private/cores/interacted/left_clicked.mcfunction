#> nether-reactor-revisited:private/cores/interacted/left_clicked
#
#   > Run commands if a core is left clicked
#
#@within tag/function *:left_clicked/at_block


#   Check if the interacted reactor core is a normal one
execute if block ~ ~ ~ nether-reactor-revisited:normal as @e[tag = nether-reactor-revisited.normal, distance = ..0.8] run function nether-reactor-revisited:private/events/conditions/check

execute if block ~ ~ ~ nether-reactor-revisited:active as @e[tag = nether-reactor-revisited.active, distance = ..0.8] run function nether-reactor-revisited:private/cores/check_time

execute if block ~ ~ ~ nether-reactor-revisited:inactive as @e[tag = nether-reactor-revisited.inactive, distance = ..0.8] run function nether-reactor-revisited:private/events/conditions/check