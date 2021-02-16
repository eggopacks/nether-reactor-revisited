#> eggo.nrr:block/core/destroy
#
#   run functions and/or summon item that corresponds to the variant of the destroyed reactor core
#
# @within function eggo.nrr:block/core/self


# add a temporary tag
tag @s add eggo.nrr.reactor_core.destroyed


# spawn item loot
execute if entity @s[tag = eggo.nrr.reactor_core.normal] run loot spawn ~ ~ ~ loot eggo.nrr:block/core/normal

execute if entity @s[tag = eggo.nrr.reactor_core.active] run loot spawn ~ ~ ~ loot eggo.nrr:block/core/active

execute if entity @s[tag = eggo.nrr.reactor_core.inactive] run loot spawn ~ ~ ~ loot eggo.nrr:block/core/inactive


# run extra function(s)
execute if entity @s[tag = eggo.nrr.reactor_core.active, tag = eggo.nrr.reactor_core.stable] run function eggo.nrr:event/stop_day_cycle


# kill self, and the shulker box item
kill @s

kill @e[type = item, nbt = {Item: {tag: {BlockEntityTag: {Items: [{tag: {eggo: {nrr: {block: 1b}}}}]}}}}]