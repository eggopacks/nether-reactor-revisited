#> eggo.nrr:misc/raycast/core/inactive
# @within function eggo.nrr:misc/raycast


execute if score *extra_enabled eggo.nrr matches ..0 run title @s actionbar {"text": "Needs 1 diamond in your mainhand to reactivate!", "color": "red"}

execute if score *extra_enabled eggo.nrr matches 1.. unless data entity @s SelectedItem{id: "minecraft:diamond"} run title @s actionbar {"translate": "%s forge uses left. Needs 1 diamond in your mainhand to reactivate!", "color": "red", "with": [{"entity": "@e[tag = eggo.nrr.reactor_core.inactive, limit = 1, distance = ..0.5]", "nbt": "Item.tag.eggo.nrr.forge_uses_left"}]}

execute if score *extra_enabled eggo.nrr matches 1.. if data entity @s SelectedItem{id: "minecraft:flint_and_steel"} unless data entity @s SelectedItem{tag: {eggo: {nrr: {hellighter: 1b}}}} if entity @e[tag = eggo.nrr.reactor_core.inactive, distance = ..0.5] run function eggo.nrr:misc/raycast/forge/check

execute if data entity @s SelectedItem{id: "minecraft:diamond"} as @e[tag = eggo.nrr.reactor_core.inactive, distance = ..0.5] at @s run function eggo.nrr:event/condition/check