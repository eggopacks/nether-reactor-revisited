#> nether-reactor-revisited:private/events/structure_frame/deconstruct/end
#
#   > End the deconstructing process
#
#@within function *:private/events/structure_frame/deconstruct/tick


#   Reset the score of the marker entity from the `n-r-r.ticks2` objectives, and remove the `nether-reactor-deconstructing` tag
scoreboard players reset @s n-r-r.ticks2

scoreboard players reset @s n-r-r.frames

tag @s remove nether-reactor-revisited.deconstructing


#   Generate a broken variant of The Nether spire
function nether-reactor-revisited:private/events/spire/broken