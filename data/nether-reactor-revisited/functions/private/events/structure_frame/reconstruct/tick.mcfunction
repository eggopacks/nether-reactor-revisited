#> nether-reactor-revisited:private/events/structure_frame/reconstruct/tick
#
#   > Reconstruct the structure frame (replacing it with Glowing Obsidian)
#
#@within function *:private/cores/tick


#   Increment frames per tick
scoreboard players add @s n-r-r.ticks1 1

scoreboard players add @s n-r-r.ticks2 1

scoreboard players operation @s n-r-r.ticks2 %= $reconstruct_interval n-r-r

execute if score @s n-r-r.ticks2 matches 0 run scoreboard players add @s n-r-r.frames 1


#   Reconstruct the reactor frame block by block
execute if score @s n-r-r.frames matches 1 run function nether-reactor-revisited:private/events/structure_frame/reconstruct/layer1

execute if score @s n-r-r.frames matches 2 run function nether-reactor-revisited:private/events/structure_frame/reconstruct/layer2

execute if score @s n-r-r.frames matches 3 run function nether-reactor-revisited:private/events/structure_frame/reconstruct/layer3


#   End constructing process
execute if score @s n-r-r.frames matches 5 run function nether-reactor-revisited:private/events/structure_frame/reconstruct/end