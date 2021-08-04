#> nether-reactor-revisited:private/events/structure_frame/reconstruct
#
#   > Start the reconstructing process
#
#@within function *:private/events/conditions/structure_frame/**


#   Remove the previous states, and add the `nether-reactor-revisited.reconstructing` tag
tag @s remove nether-reactor-revisited.normal

tag @s remove nether-reactor-revisited.inactive

tag @s add nether-reactor-revisited.active

tag @s add nether-reactor-revisited.stable

tag @s add nether-reactor-revisited.reconstructing