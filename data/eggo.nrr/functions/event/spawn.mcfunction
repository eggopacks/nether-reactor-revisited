#> eggo.nrr:event/spawn
#
#   spawn the mob and item in a grid-like pattern, unless the max seconds of activity has been reached
#
# @within function eggo.nrr:block/core/self


# increment the score of the active (stable) reactor core
scoreboard players add @s eggo.nrr.t1 1

scoreboard players add @s[scores = {eggo.nrr.t1 = 21}] eggo.nrr.s 1

scoreboard players reset @s[scores = {eggo.nrr.t1 = 22..}] eggo.nrr.t1


# store how many spawned mobs are nearby the reactor core
scoreboard players reset #spawn.mobs_nearby eggo.nrr

execute store result score #spawn.mobs_nearby eggo.nrr if entity @e[type = zombified_piglin, tag = eggo.nrr.old_pigman, distance = ..22]


# spawn the item and mobs in a grid-like pattern
execute if score @s eggo.nrr.t1 matches 21.. run function eggo.nrr:event/spawn/item

execute if score @s eggo.nrr.t1 matches 21.. unless score #spawn.mobs_nearby eggo.nrr matches 8.. run function eggo.nrr:event/spawn/mob


# deactivate the reactor core if the max seconds activity value has been reached
execute if score @s eggo.nrr.s > *activity_duration eggo.nrr run function eggo.nrr:event/deactivate