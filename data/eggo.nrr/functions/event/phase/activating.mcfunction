#> eggo.nrr:event/phase/activating
#
#   build the reactor structure, and generate the spire once
#
# @within
#   function eggo.nrr:block/core/self
#   function eggo.nrr:event/activate


# increment the score of the entity in the `eggo.nrr.s` objective
scoreboard players add @s eggo.nrr.t1 1

execute if score @s eggo.nrr.t1 matches 21.. run scoreboard players add @s eggo.nrr.s 1

execute if score @s eggo.nrr.t1 matches 21.. if score @s eggo.nrr.s matches 1..3 run playsound block.gilded_blackstone.step block @a ~ ~ ~ 1

execute if score @s eggo.nrr.t1 matches 21 run scoreboard players reset @s eggo.nrr.t1


# build the structure from bottom to top
execute if score @s eggo.nrr.s matches 1 positioned ~ ~-1 ~1 run function eggo.nrr:block/glowing_obsidian/place

execute if score @s eggo.nrr.s matches 1 positioned ~1 ~-1 ~ run function eggo.nrr:block/glowing_obsidian/place

execute if score @s eggo.nrr.s matches 1 positioned ~ ~-1 ~ run function eggo.nrr:block/glowing_obsidian/place

execute if score @s eggo.nrr.s matches 1 positioned ~-1 ~-1 ~ run function eggo.nrr:block/glowing_obsidian/place

execute if score @s eggo.nrr.s matches 1 positioned ~ ~-1 ~-1 run function eggo.nrr:block/glowing_obsidian/place


execute if score @s eggo.nrr.s matches 2 positioned ~1 ~ ~1 run function eggo.nrr:block/glowing_obsidian/place

execute if score @s eggo.nrr.s matches 2 positioned ~1 ~ ~-1 run function eggo.nrr:block/glowing_obsidian/place

execute if score @s eggo.nrr.s matches 2 positioned ~-1 ~ ~1 run function eggo.nrr:block/glowing_obsidian/place

execute if score @s eggo.nrr.s matches 2 positioned ~-1 ~ ~-1 run function eggo.nrr:block/glowing_obsidian/place


execute if score @s eggo.nrr.s matches 3 positioned ~ ~1 ~1 run function eggo.nrr:block/glowing_obsidian/place

execute if score @s eggo.nrr.s matches 3 positioned ~1 ~1 ~ run function eggo.nrr:block/glowing_obsidian/place

execute if score @s eggo.nrr.s matches 3 positioned ~ ~1 ~ run function eggo.nrr:block/glowing_obsidian/place

execute if score @s eggo.nrr.s matches 3 positioned ~-1 ~1 ~ run function eggo.nrr:block/glowing_obsidian/place

execute if score @s eggo.nrr.s matches 3 positioned ~ ~1 ~-1 run function eggo.nrr:block/glowing_obsidian/place


execute if score @s eggo.nrr.s matches 5 store success score #phase.replaced_gold_blocks eggo.nrr if block ~1 ~-1 ~1 gold_block positioned ~1 ~-1 ~1 run function eggo.nrr:block/glowing_obsidian/place

execute if score @s eggo.nrr.s matches 5 store success score #phase.replaced_gold_blocks eggo.nrr if block ~1 ~-1 ~-1 gold_block positioned ~1 ~-1 ~-1 run function eggo.nrr:block/glowing_obsidian/place

execute if score @s eggo.nrr.s matches 5 store success score #phase.replaced_gold_blocks eggo.nrr if block ~-1 ~-1 ~1 gold_block positioned ~-1 ~-1 ~1 run function eggo.nrr:block/glowing_obsidian/place

execute if score @s eggo.nrr.s matches 5 store success score #phase.replaced_gold_blocks eggo.nrr if block ~-1 ~-1 ~-1 gold_block positioned ~-1 ~-1 ~-1 run function eggo.nrr:block/glowing_obsidian/place


execute if score #phase.replaced_gold_blocks eggo.nrr matches 1 run playsound block.gilded_blackstone.step block @a ~ ~ ~ 1 0

scoreboard players reset #phase.replaced_gold_blocks eggo.nrr


# generate the spire and determine the phase
execute if score @s[tag = !eggo.nrr.reactor_core.phase_pause] eggo.nrr.s matches 0 run function eggo.nrr:event/spire/generate

execute if score @s eggo.nrr.s matches 6 run function eggo.nrr:event/phase/determine