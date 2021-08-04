#> nether-reactor-revisited:private/events/structure_frame/reconstruct/gold_block
#
#   > The bottom layer of the structure frame; for gold blocks
#
#@within function *:private/events/structure_frame/reconstruct/end


execute store result score #replaced_gold_block n-r-r.frames if block ~ ~ ~ minecraft:gold_block run setblock ~ ~ ~ nether-reactor-revisited:glowing_obsidian

execute if score #replaced_gold_block n-r-r.frames matches 1 run playsound block.gilded_blackstone.step block @a ~ ~ ~ 0.7 0

scoreboard players reset #replaced_gold_block n-r-r.frames