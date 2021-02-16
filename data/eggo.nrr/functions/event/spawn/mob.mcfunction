#> eggo.nrr:event/spawn/mob
#
#   spawns the mob in a grid-like pattern
#
# @within function eggo.nrr:event/spawn


execute if predicate eggohito:random_chance/tenths/0.06 positioned ~5 ~ ~ unless entity @e[tag = eggo.nrr.old_pigman, distance = ..1] run function eggo.nrr:event/spawn/mob/data

execute if predicate eggohito:random_chance/tenths/0.06 positioned ~-5 ~ ~ unless entity @e[tag = eggo.nrr.old_pigman, distance = ..1] run function eggo.nrr:event/spawn/mob/data

execute if predicate eggohito:random_chance/tenths/0.06 positioned ~ ~ ~5 unless entity @e[tag = eggo.nrr.old_pigman, distance = ..1] run function eggo.nrr:event/spawn/mob/data

execute if predicate eggohito:random_chance/tenths/0.06 positioned ~ ~ ~-5 unless entity @e[tag = eggo.nrr.old_pigman, distance = ..1] run function eggo.nrr:event/spawn/mob/data


execute if predicate eggohito:random_chance/tenths/0.06 positioned ~5 ~ ~5 unless entity @e[tag = eggo.nrr.old_pigman, distance = ..1] run function eggo.nrr:event/spawn/mob/data

execute if predicate eggohito:random_chance/tenths/0.06 positioned ~-5 ~ ~-5 unless entity @e[tag = eggo.nrr.old_pigman, distance = ..1] run function eggo.nrr:event/spawn/mob/data

execute if predicate eggohito:random_chance/tenths/0.06 positioned ~-5 ~ ~5 unless entity @e[tag = eggo.nrr.old_pigman, distance = ..1] run function eggo.nrr:event/spawn/mob/data

execute if predicate eggohito:random_chance/tenths/0.06 positioned ~5 ~ ~-5 unless entity @e[tag = eggo.nrr.old_pigman, distance = ..1] run function eggo.nrr:event/spawn/mob/data