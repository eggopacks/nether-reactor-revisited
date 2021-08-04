#> nether-reactor-revisited:private/events/structure_frame/reconstruct/end
#
#   > End the reconstructing process
#
#@within function *:private/events/structure_frame/reconstruct/tick


#   Reset the score of the marker entity in the `n-r-r.ticks2` objective, and remove the `nether-reactor-revisited.reconstructing` tag
scoreboard players reset @s n-r-r.ticks2

scoreboard players reset @s n-r-r.frames

tag @s remove nether-reactor-revisited.reconstructing


#   Remove the Gold blocks from the 1st layer
execute positioned ~1 ~-1 ~1 run function nether-reactor-revisited:private/events/structure_frame/reconstruct/gold_block

execute positioned ~1 ~-1 ~-1 run function nether-reactor-revisited:private/events/structure_frame/reconstruct/gold_block

execute positioned ~-1 ~-1 ~1 run function nether-reactor-revisited:private/events/structure_frame/reconstruct/gold_block

execute positioned ~-1 ~-1 ~-1 run function nether-reactor-revisited:private/events/structure_frame/reconstruct/gold_block