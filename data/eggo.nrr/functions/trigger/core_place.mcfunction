#> eggo.nrr:trigger/core_place
# @within advancement eggo.nrr:trigger/core_place


# add temporary tag
tag @s add eggo.nrr.player.core_place


# run place function
execute as @e[tag = eggo.nrr.reactor_core.placeholder] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function eggo.nrr:block/core/place


# remove temporary tag and revoke advancement
tag @s remove eggo.nrr.player.core_place

advancement revoke @s only eggo.nrr:trigger/core_place