#> eggo.nrr:event/spawn/item
#
#   spawn the item in a grid-like pattern
#
# @within function eggo.nrr:event/spawn


execute if predicate eggohito:random_chance/ones/0.5 positioned ~5 ~ ~ run loot spawn ~ ~-1.5 ~ loot eggo.nrr:spawn/item

execute if predicate eggohito:random_chance/ones/0.5 positioned ~-5 ~ ~ run loot spawn ~ ~-1.5 ~ loot eggo.nrr:spawn/item

execute if predicate eggohito:random_chance/ones/0.5 positioned ~ ~ ~5 run loot spawn ~ ~-1.5 ~ loot eggo.nrr:spawn/item

execute if predicate eggohito:random_chance/ones/0.5 positioned ~ ~ ~-5 run loot spawn ~ ~-1.5 ~ loot eggo.nrr:spawn/item


execute if predicate eggohito:random_chance/ones/0.5 positioned ~5 ~ ~5 run loot spawn ~ ~-1.5 ~ loot eggo.nrr:spawn/item

execute if predicate eggohito:random_chance/ones/0.5 positioned ~-5 ~ ~-5 run loot spawn ~ ~-1.5 ~ loot eggo.nrr:spawn/item

execute if predicate eggohito:random_chance/ones/0.5 positioned ~-5 ~ ~5 run loot spawn ~ ~-1.5 ~ loot eggo.nrr:spawn/item

execute if predicate eggohito:random_chance/ones/0.5 positioned ~5 ~ ~-5 run loot spawn ~ ~-1.5 ~ loot eggo.nrr:spawn/item