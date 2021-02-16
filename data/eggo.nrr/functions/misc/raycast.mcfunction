#> eggo.nrr:misc/raycast
#
#   cast a ray to check entity tags
#
# @within function eggo.nrr:trigger/core_interact


# summon a temporary entity
execute at @s[tag = eggo.nrr.player.core_interact] positioned ^ ^ ^5 run summon area_effect_cloud ~ ~ ~ {Tags: ["eggo.nrr.raycast", "eggo.nrr.raycast.core_interact", "mrcd_block"]}

execute at @s[tag = eggo.nrr.player.portal_restrict.lit_portal] positioned ^ ^ ^5 run summon area_effect_cloud ~ ~ ~ {Tags: ["eggo.nrr.raycast", "eggo.nrr.raycast.portal_restrict.lit_portal", "mrcd_block"]}


# save speed and direction
execute store result score #var0 mrcd_system run data get entity @s Pos[0] 1000
execute store result score #var1 mrcd_system run data get entity @s Pos[1] 1000
execute store result score #var2 mrcd_system run data get entity @s Pos[2] 1000

execute as @e[tag = eggo.nrr.raycast] store result score @s mrcd_x0 run data get entity @s Pos[0] 1000
execute as @e[tag = eggo.nrr.raycast] store result score @s mrcd_y0 run data get entity @s Pos[1] 1000
execute as @e[tag = eggo.nrr.raycast] store result score @s mrcd_z0 run data get entity @s Pos[2] 1000

scoreboard players operation @e[tag = eggo.nrr.raycast, limit = 1] mrcd_x0 -= #var0 mrcd_system
scoreboard players operation @e[tag = eggo.nrr.raycast, limit = 1] mrcd_y0 -= #var1 mrcd_system
scoreboard players operation @e[tag = eggo.nrr.raycast, limit = 1] mrcd_z0 -= #var2 mrcd_system

execute at @s anchored eyes positioned ^ ^ ^ run tp @e[tag = eggo.nrr.raycast, limit = 1] ~ ~ ~ ~ ~

execute as @e[tag = eggo.nrr.raycast, limit = 1] at @s run function mrcd:generic/start


# core interact
execute at @e[tag = eggo.nrr.raycast.core_interact, tag = mrcd_touch_edge] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[tag = eggo.nrr.reactor_core.normal, distance = ..0.5] run function eggo.nrr:misc/raycast/core/normal

execute at @e[tag = eggo.nrr.raycast.core_interact, tag = mrcd_touch_edge] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[tag = eggo.nrr.reactor_core.active, distance = ..0.5] run function eggo.nrr:misc/raycast/core/active

execute at @e[tag = eggo.nrr.raycast.core_interact, tag = mrcd_touch_edge] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[tag = eggo.nrr.reactor_core.inactive, distance = ..0.5] run function eggo.nrr:misc/raycast/core/inactive

execute at @e[tag = eggo.nrr.raycast.core_interact, tag = mrcd_touch_edge] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[tag = eggo.nrr.reactor_core, tag = !eggo.nrr.reactor_core.stable, tag = !eggo.nrr.condition.structure_valid, distance = ..0.5] run playsound ui.button.click block @a[tag = eggo.nrr.player.core_interact] ~ ~ ~ 0.2 2


# portal restrict
execute at @e[tag = eggo.nrr.raycast.portal_restrict.lit_portal] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ nether_portal run function eggo.nrr:misc/portal_restrict/destroy