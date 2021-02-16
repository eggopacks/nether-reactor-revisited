#> eggo.nrr:misc/portal_restrict/destroy
# @within
#   function eggo.nrr:misc/raycast
#   function eggo.nrr:misc/portal_restrict/in_portal


# fill 3x3x3 with air replacing nether portal blocks and store the success to scoreboard
scoreboard players reset #portal_restrict.success eggo.nrr.pr

execute store success score #portal_restrict.success eggo.nrr.pr run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace nether_portal


# display a message depending on the context
execute if score #portal_restrict.success eggo.nrr.pr matches 1 run title @s[scores = {eggo.nrr.pr1 = ..0}, nbt = !{Dimension: "minecraft:the_nether"}] actionbar {"text": "Cannot enter The Nether!", "color": "red"}

execute if score #portal_restrict.success eggo.nrr.pr matches 1 run title @s[scores = {eggo.nrr.pr2 = ..0}, nbt = {Dimension: "minecraft:the_nether"}] actionbar {"text": "Cannot exit The Nether!", "color": "red"}


# revert damage value
data remove block -30000000 0 1602 Items

data remove storage eggo:nrr root.hellighter.fix

execute if entity @s[tag = eggo.nrr.player.portal_restrict.lit_portal.offhand] run function eggo.nrr:misc/portal_restrict/revert_dmg/offhand

execute if entity @s[tag = eggo.nrr.player.portal_restrict.lit_portal.mainhand] run function eggo.nrr:misc/portal_restrict/revert_dmg/mainhand