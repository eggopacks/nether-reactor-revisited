#> eggo.nrr:event/phase/deactivating
#
#   rebuild the reactor structure, and degenerate the spire once
#
# @within
#   function eggo.nrr:block/core/self
#   function eggo.nrr:event/deactivate


# decrement the score of the entity in the `eggo.nrr.s` objective
scoreboard players add @s eggo.nrr.t1 1

execute if score @s eggo.nrr.t1 matches 11.. run scoreboard players remove @s eggo.nrr.s 1

execute if score @s eggo.nrr.t1 matches 11.. if score @s eggo.nrr.s matches -3..-1 run playsound block.netherite_block.step block @a ~ ~ ~ 1 0

execute if score @s eggo.nrr.t1 matches 11.. run scoreboard players reset @s eggo.nrr.t1


# rebuild the structure from top to bottom
execute if score @s eggo.nrr.s matches -1 run setblock ~1 ~1 ~1 obsidian

execute if score @s eggo.nrr.s matches -1 run setblock ~ ~1 ~1 obsidian

execute if score @s eggo.nrr.s matches -1 run setblock ~1 ~1 ~-1 obsidian

execute if score @s eggo.nrr.s matches -1 run setblock ~1 ~1 ~ obsidian

execute if score @s eggo.nrr.s matches -1 run setblock ~ ~1 ~ obsidian

execute if score @s eggo.nrr.s matches -1 run setblock ~-1 ~1 ~ obsidian

execute if score @s eggo.nrr.s matches -1 run setblock ~-1 ~1 ~1 obsidian

execute if score @s eggo.nrr.s matches -1 run setblock ~ ~1 ~-1 obsidian

execute if score @s eggo.nrr.s matches -1 run setblock ~-1 ~1 ~-1 obsidian


execute if score @s eggo.nrr.s matches -2 run setblock ~1 ~ ~1 obsidian

execute if score @s eggo.nrr.s matches -2 run setblock ~ ~ ~1 obsidian

execute if score @s eggo.nrr.s matches -2 run setblock ~1 ~ ~-1 obsidian

execute if score @s eggo.nrr.s matches -2 run setblock ~1 ~ ~ obsidian

execute if score @s eggo.nrr.s matches -2 run setblock ~-1 ~ ~ obsidian

execute if score @s eggo.nrr.s matches -2 run setblock ~-1 ~ ~1 obsidian

execute if score @s eggo.nrr.s matches -2 run setblock ~ ~ ~-1 obsidian

execute if score @s eggo.nrr.s matches -2 run setblock ~-1 ~ ~-1 obsidian


execute if score @s eggo.nrr.s matches -3 run setblock ~1 ~-1 ~1 obsidian

execute if score @s eggo.nrr.s matches -3 run setblock ~ ~-1 ~1 obsidian

execute if score @s eggo.nrr.s matches -3 run setblock ~1 ~-1 ~-1 obsidian

execute if score @s eggo.nrr.s matches -3 run setblock ~1 ~-1 ~ obsidian

execute if score @s eggo.nrr.s matches -3 run setblock ~ ~-1 ~ obsidian

execute if score @s eggo.nrr.s matches -3 run setblock ~-1 ~-1 ~ obsidian

execute if score @s eggo.nrr.s matches -3 run setblock ~-1 ~-1 ~1 obsidian

execute if score @s eggo.nrr.s matches -3 run setblock ~ ~-1 ~-1 obsidian

execute if score @s eggo.nrr.s matches -3 run setblock ~-1 ~-1 ~-1 obsidian


# degenerate the spire and determine the phase
execute if score @s[tag = !eggo.nrr.reactor_core.phase_pause] eggo.nrr.s matches -3 run function eggo.nrr:event/spire/degenerate

execute if score @s eggo.nrr.s matches -4 run function eggo.nrr:event/phase/determine