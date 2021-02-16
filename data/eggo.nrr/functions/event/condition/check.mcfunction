#> eggo.nrr:event/condition/check
#
#   add tags that represents certain conditions
#
# @within
#   function eggo.nrr:misc/raycast/core/normal
#   function eggo.nrr:misc/raycast/core/inactive


# compare y values of the reactor core and the player
execute store result score #condition.core_y eggo.nrr run data get entity @s Pos[1]

execute store result score #condition.player_y eggo.nrr run data get entity @a[tag = eggo.nrr.player.core_interact, limit = 1] Pos[1]

scoreboard players remove #condition.core_y eggo.nrr 1

scoreboard players operation #condition.core_y eggo.nrr -= #condition.player_y eggo.nrr


# save previous state as a numerical id in scoreboard
scoreboard players set @s[tag = eggo.nrr.reactor_core.normal] eggo.nrr.cfs 1

scoreboard players set @s[tag = eggo.nrr.reactor_core.inactive] eggo.nrr.cfs 3


# if the reactor core is either placed too high, or too low
execute if entity @s[y = 5, dy = -256] run tag @s add eggo.nrr.condition.placed_too_low

execute if entity @s[y = 96, dy = 256] run tag @s add eggo.nrr.condition.placed_too_high


# if the player and the reactor core is not level with each other
execute if predicate eggo.nrr:condition/structure/complete if entity @s[tag = !eggo.nrr.condition.placed_too_low, tag = !eggo.nrr.condition.placed_too_high] unless score #condition.core_y eggo.nrr matches 0 run tag @s add eggo.nrr.condition.not_level


# checks for nearby cores, and if nearby players are too far away from the interacted reactor core
execute at @e[tag = eggo.nrr.reactor_core, tag = !eggo.nrr.reactor_core.dummy, distance = 1..33] run function eggo.nrr:block/core/bounding_box

execute store result score #condition.players_too_far eggo.nrr if entity @a[tag = !eggo.nrr.player.core_interact, distance = 7..13]

execute store result score #condition.cores_nearby eggo.nrr if entity @e[tag = eggo.nrr.reactor_core, tag = !eggo.nrr.reactor_core.dummy, distance = 1..33]

execute if score #condition.cores_nearby eggo.nrr matches 1.. run tag @s add eggo.nrr.condition.cores_nearby

execute if score #condition.players_nearby_too_far eggo.nrr matches 1.. run tag @s add eggo.nrr.condition.players_nearby_too_far


# checks whether if the reactor structure is valid, invalid, or incomplete
execute if predicate eggo.nrr:condition/structure/normal/valid run tag @s add eggo.nrr.condition.structure_valid

execute if predicate eggo.nrr:condition/structure/inactive/valid run tag @s add eggo.nrr.condition.structure_valid

execute if predicate eggo.nrr:condition/structure/normal/invalid run tag @s add eggo.nrr.condition.structure_invalid

execute if predicate eggo.nrr:condition/structure/inactive/invalid run tag @s add eggo.nrr.condition.structure_invalid

execute if predicate eggo.nrr:condition/structure/normal/incomplete run tag @s add eggo.nrr.condition.structure_incomplete

execute if predicate eggo.nrr:condition/structure/inactive/incomplete run tag @s add eggo.nrr.condition.structure_incomplete


# run functions/commands according to the given tags
function eggo.nrr:event/condition/process