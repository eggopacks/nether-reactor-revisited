#> eggo.nrr:tick
#
#   main tick function for the `eggo.nrr` namespace
#
# @within function eggo.nrr:load


# synchronize fake player scores to all players
scoreboard players operation @a eggo.nrr.pr = *extra_enabled eggo.nrr

execute if score *extra_enabled eggo.nrr matches 1 as @a unless score @s eggo.nrr.pr1 = *enter_nether eggo.nrr run scoreboard players operation @s eggo.nrr.pr1 = *enter_nether eggo.nrr

execute if score *extra_enabled eggo.nrr matches 1 as @a unless score @s eggo.nrr.pr2 = *exit_nether eggo.nrr run scoreboard players operation @s eggo.nrr.pr2 = *exit_nether eggo.nrr


# execute as and at nether reactor core blocks
execute as @e[type = item_frame, tag = eggo.nrr.reactor_core] at @s run function eggo.nrr:block/core/self


# execute as and at glowing obsidian blocks
execute as @e[type = item_frame, tag = eggo.nrr.glowing_obsidian] at @s run function eggo.nrr:block/glowing_obsidian/self


# process mobs spawned from nether reactors
execute as @e[type = zombified_piglin, tag = eggo.nrr.old_pigman] at @s run function eggo.nrr:event/spawn/mob/process


# loop this function
schedule function eggo.nrr:tick 1t