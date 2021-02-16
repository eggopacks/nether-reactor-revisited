#> eggo.nrr:misc/raycast/core/active
# @within function eggo.nrr:misc/raycast


execute if score @e[tag = eggo.nrr.reactor_core.active, tag = eggo.nrr.reactor_core.stable, distance = ..0.5, limit = 1] eggo.nrr.s matches ..1 run title @s actionbar {"translate": "Active for: %1$s %2$s", "color": "red", "with": [{"score": {"name": "@e[tag = eggo.nrr.reactor_core.active, distance = ..0.5, limit = 1]", "objective": "eggo.nrr.s"}, "color": "yellow"}, {"text": "second", "color": "yellow"}]}

execute if score @e[tag = eggo.nrr.reactor_core.active, tag = eggo.nrr.reactor_core.stable, distance = ..0.5, limit = 1] eggo.nrr.s matches 1.. run title @s actionbar {"translate": "Active for: %1$s %2$s", "color": "red", "with": [{"score": {"name": "@e[tag = eggo.nrr.reactor_core.active, distance = ..0.5, limit = 1]", "objective": "eggo.nrr.s"}, "color": "yellow"}, {"text": "seconds", "color": "yellow"}]}

execute if score @e[tag = eggo.nrr.reactor_core.active, tag = eggo.nrr.reactor_core.unstable, distance = ..0.5, limit = 1] eggo.nrr.s matches ..1 run title @s actionbar {"translate": "Exploding in: %1$s %2$s", "color": "red", "with": [{"score": {"name": "@e[tag = eggo.nrr.reactor_core.active, distance = ..0.5, limit = 1]", "objective": "eggo.nrr.s"}, "color": "yellow"}, {"text": "second", "color": "yellow"}]}

execute if score @e[tag = eggo.nrr.reactor_core.active, tag = eggo.nrr.reactor_core.unstable, distance = ..0.5, limit = 1] eggo.nrr.s matches 1.. run title @s actionbar {"translate": "Exploding in: %1$s %2$s", "color": "red", "with": [{"score": {"name": "@e[tag = eggo.nrr.reactor_core.active, distance = ..0.5, limit = 1]", "objective": "eggo.nrr.s"}, "color": "yellow"}, {"text": "seconds", "color": "yellow"}]}