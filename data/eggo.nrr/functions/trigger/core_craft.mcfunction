#> eggo.nrr:trigger/core_craft
# @within advancement eggo.nrr:trigger/core_craft


# run functons respective to the criteria
execute if entity @s[advancements = {eggo.nrr:trigger/core_craft = {normal = true}}] run function eggo.nrr:block/core/normal/craft

clear @s knowledge_book


# revoke advancement
advancement revoke @s only eggo.nrr:trigger/core_craft