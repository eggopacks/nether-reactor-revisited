#> nether-reactor-revisited:private/events/structure_frame/deconstruct/tick
#
#   > Deconstruct the structure frame (replacing it with obsidian)
#
#@within function *:private/cores/tick


#   Increment frames per tick
scoreboard players add @s n-r-r.ticks2 1

scoreboard players operation @s n-r-r.ticks2 %= $deconstruct_interval n-r-r

execute if score @s n-r-r.ticks2 matches 0 run scoreboard players add @s n-r-r.frames 1

execute if score @s n-r-r.ticks2 matches 0 run playsound block.stone.place block @a ~ ~ ~ 0.7


#   Reconstruct the reactor frame block by block
execute if score @s n-r-r.frames matches 1 run fill ~1 ~1 ~1 ~-1 ~1 ~-1 minecraft:obsidian

execute if score @s n-r-r.frames matches 2 run function nether-reactor-revisited:private/events/structure_frame/deconstruct/layer2

execute if score @s n-r-r.frames matches 3 run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:obsidian


#   End constructing process
execute if score @s n-r-r.frames matches 3 run function nether-reactor-revisited:private/events/structure_frame/deconstruct/end