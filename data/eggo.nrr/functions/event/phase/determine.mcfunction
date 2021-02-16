#> eggo.nrr:event/phase/determine
#
#   determines if a reactor core should deactivate, or activate
#
# @within
#   function eggo.nrr:event/phase/activating
#   function eggo.nrr:event/phase/deactivating


# if a reactor core is deactivating
scoreboard players reset @s[tag = eggo.nrr.reactor_core.deactivating] eggo.nrr.s

execute if entity @s[tag = eggo.nrr.reactor_core.deactivating] run particle poof ~ ~ ~ 2 2 2 0.01 64 normal @a

execute if entity @s[tag = eggo.nrr.reactor_core.deactivating] run playsound block.fire.extinguish block @a ~ ~ ~ 1


# reset variables/tags
scoreboard players reset @s eggo.nrr.cfs

tag @s remove eggo.nrr.reactor_core.activating

tag @s remove eggo.nrr.reactor_core.deactivating

tag @s remove eggo.nrr.reactor_core.phase_pause