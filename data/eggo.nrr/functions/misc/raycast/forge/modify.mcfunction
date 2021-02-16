#> eggo.nrr:misc/raycast/forge/modify
#
#   modify the igniter item
#
# @within function eggo.nrr:misc/raycast/forge/check


# clear shulker box, and copy data to storage
execute in minecraft:overworld run data remove block -30000000 0 1602 Items

data remove storage eggo:nrr root.hellighter

data modify storage eggo:nrr root.hellighter set from entity @s SelectedItem


# set the data of the item in storage if the item is not already forged
execute unless data storage eggo:nrr root{hellighter: {tag: {eggo: {nrr: {hellighter: 1b}}}}} run function eggo.nrr:misc/raycast/forge/set_data

execute in minecraft:overworld run data modify block -30000000 0 1602 Items append from storage eggo:nrr root.hellighter

execute in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine -30000000 0 1602 air{drop_contents: 1b}


# decrement forge uses left value
scoreboard players remove #forge_uses_left eggo.nrr 1

execute store result entity @e[type = item_frame, tag = eggo.nrr.reactor_core.inactive, distance = ..0.5, limit = 1] Item.tag.eggo.nrr.forge_uses_left int 1 run scoreboard players get #forge_uses_left eggo.nrr