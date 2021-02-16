#> eggo.nrr:misc/raycast/forge/check
#
#   check if the inactive core has enough forge uses for forging an igniter
#
# @within function eggo.nrr:misc/raycast/core/inactive


# store how many forge uses left the reactor core has to scoreboard
scoreboard players reset #forge_uses_left eggo.nrr

execute store result score #forge_uses_left eggo.nrr run data get entity @e[type = item_frame, tag = eggo.nrr.reactor_core.inactive, distance = ..0.5, limit = 1] Item.tag.eggo.nrr.forge_uses_left


# display actionbar message
execute if score #forge_uses_left eggo.nrr matches 0 run title @s actionbar {"text": "0 forge uses left!", "color": "red"}

execute if score #forge_uses_left eggo.nrr matches 1.. run title @s actionbar {"text": "Finished forging igniter item!", "color": "green"}


# if forge uses left value > 1, forge igniter item
execute if score #forge_uses_left eggo.nrr matches 1.. run playsound block.anvil.place block @s ~ ~ ~ 0.4 2

execute if score #forge_uses_left eggo.nrr matches 1.. run function eggo.nrr:misc/raycast/forge/modify