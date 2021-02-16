#> eggo.nrr:event/condition/reset
#
#   reset condition tags/variables
#
# @within function eggo.nrr:event/condition/process


scoreboard players reset #condition.core_y eggo.nrr

scoreboard players reset #condition.player_y eggo.nrr

tag @s remove eggo.nrr.condition.placed_too_low

tag @s remove eggo.nrr.condition.placed_too_high

tag @s remove eggo.nrr.condition.not_level

scoreboard players reset #condition.cores_nearby eggo.nrr

scoreboard players reset #condition.players_nearby_too_far eggo.nrr

tag @s remove eggo.nrr.condition.cores_nearby

tag @s remove eggo.nrr.condition.players_nearby_too_far

tag @s remove eggo.nrr.condition.structure_valid

tag @s remove eggo.nrr.condition.structure_invalid

tag @s remove eggo.nrr.condition.structure_incomplete