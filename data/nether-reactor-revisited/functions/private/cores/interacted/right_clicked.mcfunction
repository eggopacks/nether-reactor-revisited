#> nether-reactor-revisited:private/cores/interacted/right_clicked
#
#   > Run commands if a core is right clicked
#
#@within tag/function *:right_clicked/at_block


#   Summon marker entities if there aren't yet
execute unless entity @e[tag = nether-reactor-revisited.core, distance = ..0.8] if block ~ ~ ~ #nether-reactor-revisited:cores run function nether-reactor-revisited:private/cores/placed