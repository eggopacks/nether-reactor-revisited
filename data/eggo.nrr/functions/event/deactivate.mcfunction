#> eggo.nrr:event/deactivate
#
#   deactivate the reactor core if the max seconds activity value has been reached
#
# @within function eggo.nrr:event/spawn


# place inactive reactor core
function eggo.nrr:block/core/inactive/place


# add a "deactivating" temporary tag
tag @s add eggo.nrr.reactor_core.deactivating


# set/reset values in scoreboard
scoreboard players set @s eggo.nrr.s 0

scoreboard players reset @s eggo.nrr.t1


# extra sub-functions
playsound block.beacon.deactivate block @a ~ ~ ~ 16 0

execute store result entity @s Item.tag.eggo.nrr.forge_uses_left int 1 run scoreboard players get *max_forge_uses eggo.nrr