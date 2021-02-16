#> eggo.nrr:event/activate
#
#   activate the reactor core if the conditions have been met
#
# @within function eggo.nrr:event/process


# place inactive reactor core
function eggo.nrr:block/core/active/stable


# add a "deactivating" temporary tag
tag @s add eggo.nrr.reactor_core.activating


# set/reset values in scoreboard
scoreboard players set @s eggo.nrr.s 0

scoreboard players reset @s eggo.nrr.t1


# extra sub-functions
playsound block.beacon.activate block @a ~ ~ ~ 16 0

function eggo.nrr:event/time_skip


execute if score @s eggo.nrr.cfs matches 1 run advancement grant @a[tag = eggo.nrr.player.core_interact] only eggo.nrr:spiral_madness

execute if score @s eggo.nrr.cfs matches 3 run advancement grant @a[tag = eggo.nrr.player.core_interact] only eggo.nrr:insanity