#> nether-reactor-revisited:private/events/structure_frame/reconstruct/layer2
#
#   > The middle-most layer of the structure frame
#
#@within function *:private/events/structure_frame/reconstruct/tick


execute if score @s n-r-r.ticks2 matches 0 run playsound block.gilded_blackstone.step block @a ~ ~ ~ 0.7 0


setblock ~1 ~ ~1 nether-reactor-revisited:glowing_obsidian

setblock ~1 ~ ~-1 nether-reactor-revisited:glowing_obsidian

setblock ~-1 ~ ~1 nether-reactor-revisited:glowing_obsidian

setblock ~-1 ~ ~-1 nether-reactor-revisited:glowing_obsidian