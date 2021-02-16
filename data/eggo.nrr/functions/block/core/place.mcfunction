#> eggo.nrr:block/core/place
#
#   checks if there are any nearby entities before running the place functions
#
# @within function eggo.nrr:block/core/self


# add an ignore tag if there is an entity at the block the placeholder entity is at
execute if entity @e[type = !#eggo.nrr:blacklist, dx = 0] run tag @s add eggo.nrr.reactor_core.ignore

execute if block ~ ~ ~ #eggo.nrr:frame_can_place_in run tag @s add eggo.nrr.reactor_core.ignore

execute unless entity @s[tag = eggo.nrr.reactor_core.ignore] run playsound block.metal.place block @a ~ ~ ~


# run place functions
execute if entity @s[tag = eggo.nrr.reactor_core.normal, tag = !eggo.nrr.reactor_core.ignore] run function eggo.nrr:block/core/normal/place

execute if entity @s[tag = eggo.nrr.reactor_core.active, tag = !eggo.nrr.reactor_core.ignore] run function eggo.nrr:block/core/active/unstable

execute if entity @s[tag = eggo.nrr.reactor_core.inactive, tag = !eggo.nrr.reactor_core.ignore] run function eggo.nrr:block/core/inactive/place


# return the item to the player if the ignore tag is present
execute if entity @s[tag = eggo.nrr.reactor_core.normal, tag = eggo.nrr.reactor_core.ignore] run loot give @a[tag = eggo.nrr.player.core_place, limit = 1] loot eggo.nrr:block/core/normal

execute if entity @s[tag = eggo.nrr.reactor_core.active, tag = eggo.nrr.reactor_core.ignore] run loot give @a[tag = eggo.nrr.player.core_place, limit = 1] loot eggo.nrr:block/core/active

execute if entity @s[tag = eggo.nrr.reactor_core.inactive, tag = eggo.nrr.reactor_core.ignore] run loot give @a[tag = eggo.nrr.player.core_place, limit = 1] loot eggo.nrr:block/core/inactive


# kill self, and remove temporary tag from the players
kill @s[tag = eggo.nrr.reactor_core.placeholder]