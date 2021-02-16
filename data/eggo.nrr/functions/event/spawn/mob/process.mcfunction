#> eggo.nrr:event/spawn/mob/process
#
#   process the mobs spawned from the nether spire
#
# @within function eggo.nrr:block/core/self


# store AngerTime to scoreboard
execute store result score @s eggo.nrr.t2 run data get entity @s AngerTime

execute unless entity @e[type = item_frame, tag = eggo.nrr.reactor_core.active, tag = eggo.nrr.reactor_core.stable, distance = ..19] run scoreboard players add @s eggo.nrr.t1 1

execute if entity @e[type = item_frame, tag = eggo.nrr.reactor_core.active, tag = eggo.nrr.reactor_core.stable, distance = ..19] run scoreboard players reset @s[scores = {eggo.nrr.t1 = 1..}] eggo.nrr.t1


# set the mob's AngryAt and AngerTime tags once AngerTime reaches 0
execute unless score @s eggo.nrr.t2 matches 1.. run function eggo.nrr:event/spawn/mob/target


# kill the mob to the void after certain ticks, unless there's an active stable reactor nearby
execute if score @s eggo.nrr.t1 matches 601.. run particle block green_concrete ~ ~1 ~ 0.3 -1.0 0.3 0.01 64 normal @a

execute if score @s eggo.nrr.t1 matches 601.. run tp @s ~ ~-512 ~