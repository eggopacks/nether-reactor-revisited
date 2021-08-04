#> nether-reactor-revisited:private/events/spawn_stuff/zombified_piglins
#
#   > Spawns customized zombified piglins in a grid-like pattern
#
#@within function *:private/events/spawn_stuff


execute if predicate nether-reactor-revisited:random_chance/tenths/0.06 positioned ~5 ~ ~ unless entity @e[tag = nether-reactor-revisited.old_pigman, distance = ..1] run function nether-reactor-revisited:private/events/spawn_stuff/zombified_piglins/setup

execute if predicate nether-reactor-revisited:random_chance/tenths/0.06 positioned ~-5 ~ ~ unless entity @e[tag = nether-reactor-revisited.old_pigman, distance = ..1] run function nether-reactor-revisited:private/events/spawn_stuff/zombified_piglins/setup

execute if predicate nether-reactor-revisited:random_chance/tenths/0.06 positioned ~ ~ ~5 unless entity @e[tag = nether-reactor-revisited.old_pigman, distance = ..1] run function nether-reactor-revisited:private/events/spawn_stuff/zombified_piglins/setup

execute if predicate nether-reactor-revisited:random_chance/tenths/0.06 positioned ~ ~ ~-5 unless entity @e[tag = nether-reactor-revisited.old_pigman, distance = ..1] run function nether-reactor-revisited:private/events/spawn_stuff/zombified_piglins/setup

execute if predicate nether-reactor-revisited:random_chance/tenths/0.06 positioned ~5 ~ ~5 unless entity @e[tag = nether-reactor-revisited.old_pigman, distance = ..1] run function nether-reactor-revisited:private/events/spawn_stuff/zombified_piglins/setup

execute if predicate nether-reactor-revisited:random_chance/tenths/0.06 positioned ~-5 ~ ~-5 unless entity @e[tag = nether-reactor-revisited.old_pigman, distance = ..1] run function nether-reactor-revisited:private/events/spawn_stuff/zombified_piglins/setup

execute if predicate nether-reactor-revisited:random_chance/tenths/0.06 positioned ~-5 ~ ~5 unless entity @e[tag = nether-reactor-revisited.old_pigman, distance = ..1] run function nether-reactor-revisited:private/events/spawn_stuff/zombified_piglins/setup

execute if predicate nether-reactor-revisited:random_chance/tenths/0.06 positioned ~5 ~ ~-5 unless entity @e[tag = nether-reactor-revisited.old_pigman, distance = ..1] run function nether-reactor-revisited:private/events/spawn_stuff/zombified_piglins/setup