#> eggo.nrr:misc/convert_block
# @within function eggo.nrr:uninstall

execute store result score #reactor_core_count eggo.nrr if entity @e[tag = eggo.nrr.reactor_core]

execute if score #reactor_core_count eggo.nrr matches 1.. run loot give @s loot eggo.nrr:scrap

execute if score #reactor_core_count eggo.nrr matches 1.. run tag @e[tag = eggo.nrr.reactor_core, sort = random, limit = 1] add eggo.nrr.purge

execute if score #reactor_core_count eggo.nrr matches 1.. at @e[tag = eggo.nrr.purge] run setblock ~ ~ ~ air

execute if score #reactor_core_count eggo.nrr matches 1.. run kill @e[tag = eggo.nrr.purge]

execute if score #reactor_core_count eggo.nrr matches 1.. run function eggo.nrr:misc/convert_block