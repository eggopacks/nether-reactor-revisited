#> nether-reactor-revisited:private/events/structure_frame/deconstruct
#
#   > Start the deconstructing process
#
#@within function *:private/cores/tick


#   Replace the reactor core to inactive
setblock ~ ~ ~ nether-reactor-revisited:inactive


#   Set default forge uses
data modify entity @s data.eggohito.nether-reactor-revisited.forge_uses set value 3


#   Remove the previous states, and add the `nether-reactor-revisited.deconstructing` tag
tag @s remove nether-reactor-revisited.active

tag @s remove nether-reactor-revisited.stable

tag @s add nether-reactor-revisited.inactive

tag @s add nether-reactor-revisited.deconstructing