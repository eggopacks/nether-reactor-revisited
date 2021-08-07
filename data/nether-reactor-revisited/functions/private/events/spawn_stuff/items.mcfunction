#> nether-reactor-revisited:private/events/spawn_stuff/items
#
#   > Spawns items in a grid-like pattern
#
#@within function *:private/events/spawn_stuff


execute if predicate nether-reactor-revisited:random_chance/ones/0.5 positioned ~5 ~ ~ run loot spawn ~ ~ ~ loot nether-reactor-revisited:items/stuff

execute if predicate nether-reactor-revisited:random_chance/ones/0.5 positioned ~-5 ~ ~ run loot spawn ~ ~ ~ loot nether-reactor-revisited:items/stuff

execute if predicate nether-reactor-revisited:random_chance/ones/0.5 positioned ~ ~ ~5 run loot spawn ~ ~ ~ loot nether-reactor-revisited:items/stuff

execute if predicate nether-reactor-revisited:random_chance/ones/0.5 positioned ~ ~ ~-5 run loot spawn ~ ~ ~ loot nether-reactor-revisited:items/stuff

execute if predicate nether-reactor-revisited:random_chance/ones/0.5 positioned ~5 ~ ~5 run loot spawn ~ ~ ~ loot nether-reactor-revisited:items/stuff

execute if predicate nether-reactor-revisited:random_chance/ones/0.5 positioned ~-5 ~ ~-5 run loot spawn ~ ~ ~ loot nether-reactor-revisited:items/stuff

execute if predicate nether-reactor-revisited:random_chance/ones/0.5 positioned ~-5 ~ ~5 run loot spawn ~ ~ ~ loot nether-reactor-revisited:items/stuff

execute if predicate nether-reactor-revisited:random_chance/ones/0.5 positioned ~5 ~ ~-5 run loot spawn ~ ~ ~ loot nether-reactor-revisited:items/stuff