#> eggo.nrr:block/core/self
#
#   checks for conditions. e.g: if the base block is destroyed, if the reactor core has been placed, etc.
#
# @within function eggo.nrr:tick


# if the reactor core has been placed
# execute if entity @s[tag = eggo.nrr.reactor_core.placeholder] align xyz positioned ~0.5 ~0.5 ~0.5 run function eggo.nrr:block/core/place


# if the reactor core has been destroyed
execute unless entity @s[tag = eggo.nrr.reactor_core.placeholder] align xyz positioned ~0.5 ~0.5 ~0.5 unless block ~ ~ ~ #shulker_boxes run function eggo.nrr:block/core/destroy


# if the reactor core is activating, or deactivating
execute if entity @s[tag = eggo.nrr.reactor_core.activating] align xyz positioned ~0.5 ~0.5 ~0.5 run function eggo.nrr:event/phase/activating

execute if entity @s[tag = eggo.nrr.reactor_core.deactivating] align xyz positioned ~0.5 ~0.5 ~0.5 run function eggo.nrr:event/phase/deactivating


# if the reactor core is stable, or unstable
execute if entity @s[tag = eggo.nrr.reactor_core.active, tag = eggo.nrr.reactor_core.stable, tag = !eggo.nrr.reactor_core.activating] run function eggo.nrr:event/spawn

execute if entity @s[tag = eggo.nrr.reactor_core.active, tag = eggo.nrr.reactor_core.unstable, tag = !eggo.nrr.reactor_core.activating] run function eggo.nrr:event/prime


# if the (active) reactor core has no valid structure
execute if entity @s[tag = eggo.nrr.reactor_core.active, tag = eggo.nrr.reactor_core.stable, tag = eggo.nrr.reactor_core.activating] if predicate eggo.nrr:structure/hybrid/incomplete run function eggo.nrr:event/stop_day_cycle

execute if entity @s[tag = eggo.nrr.reactor_core.active, tag = eggo.nrr.reactor_core.stable, tag = !eggo.nrr.reactor_core.activating] if predicate eggo.nrr:structure/active/incomplete run function eggo.nrr:event/stop_day_cycle