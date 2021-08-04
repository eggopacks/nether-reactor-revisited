#> nether-reactor-revisited:private/tick
#
#   > The tick function for the `ccpacks-nether-reactor` namespace
#
#@within
#   function *:private/load
#   function *:private/tick


#   Tick `nether-reactor-revisited.core` marker entities
execute as @e[tag = nether-reactor-revisited.core] at @s run function nether-reactor-revisited:private/cores/tick


#   Loop this function
schedule function nether-reactor-revisited:private/tick 1t