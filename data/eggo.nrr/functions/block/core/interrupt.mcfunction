#> eggo.nrr:block/core/interrupt
#
#   degenerate the spire structure if an active reactor core is interrupted
#
# @within function eggo.nrr:event/stop_day_cycle


# set the modulus override for lcg
# scoreboard players set #lcg.modulus eggo.nrr 7


# generate a random number, and degenerate the spire structure
function eggo.nrr:misc/lcg/random

function eggo.nrr:event/spire/degenerate/patterns

setblock ~ ~-1 ~ redstone_block


execute if score @s eggo.nrr.cfs matches 3 run setblock ~ ~-1 ~ obsidian

execute if score @s eggo.nrr.cfs matches 1 run setblock ~ ~-1 ~ cobblestone

execute if score @s eggo.nrr.s matches 1.. run setblock ~ ~-1 ~ crying_obsidian


# if the core is destroyed, replace the structure block with air. if not, replace it with an unstable reactor core
execute if entity @s[tag = eggo.nrr.reactor_core.destroyed] run setblock ~ ~ ~ air

execute unless entity @s[tag = eggo.nrr.reactor_core.destroyed] run function eggo.nrr:block/core/active/unstable

execute unless entity @s[tag = eggo.nrr.reactor_core.destroyed] run function eggo.nrr:misc/replace_structure


# schedule the start_day_cycle function
schedule function eggo.nrr:event/start_day_cycle 3d replace