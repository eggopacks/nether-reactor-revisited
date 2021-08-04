#> nether-reactor-revisited:private/events/spawn_ziglins
#
#   > Spawns customized zombified piglins in a grid-like pattern
#
#@within function *:private/cores/tick


execute if predicate nether-reactor-revisited:random_chance/tenths/0.06 positioned ~5 ~ ~ unless entity @e[tag = nether-reactor-revisited.old_pigman, distance = ..1] run summon zombified_piglin ~ ~ ~ {Tags: ["nether-reactor-revisited.old_pigman"]}

execute if predicate nether-reactor-revisited:random_chance/tenths/0.06 positioned ~-5 ~ ~ unless entity @e[tag = nether-reactor-revisited.old_pigman, distance = ..1] run summon zombified_piglin ~ ~ ~ {Tags: ["nether-reactor-revisited.old_pigman"]}

execute if predicate nether-reactor-revisited:random_chance/tenths/0.06 positioned ~ ~ ~5 unless entity @e[tag = nether-reactor-revisited.old_pigman, distance = ..1] run summon zombified_piglin ~ ~ ~ {Tags: ["nether-reactor-revisited.old_pigman"]}

execute if predicate nether-reactor-revisited:random_chance/tenths/0.06 positioned ~ ~ ~-5 unless entity @e[tag = nether-reactor-revisited.old_pigman, distance = ..1] run summon zombified_piglin ~ ~ ~ {Tags: ["nether-reactor-revisited.old_pigman"]}

execute if predicate nether-reactor-revisited:random_chance/tenths/0.06 positioned ~5 ~ ~5 unless entity @e[tag = nether-reactor-revisited.old_pigman, distance = ..1] run summon zombified_piglin ~ ~ ~ {Tags: ["nether-reactor-revisited.old_pigman"]}

execute if predicate nether-reactor-revisited:random_chance/tenths/0.06 positioned ~-5 ~ ~-5 unless entity @e[tag = nether-reactor-revisited.old_pigman, distance = ..1] run summon zombified_piglin ~ ~ ~ {Tags: ["nether-reactor-revisited.old_pigman"]}

execute if predicate nether-reactor-revisited:random_chance/tenths/0.06 positioned ~-5 ~ ~5 unless entity @e[tag = nether-reactor-revisited.old_pigman, distance = ..1] run summon zombified_piglin ~ ~ ~ {Tags: ["nether-reactor-revisited.old_pigman"]}

execute if predicate nether-reactor-revisited:random_chance/tenths/0.06 positioned ~5 ~ ~-5 unless entity @e[tag = nether-reactor-revisited.old_pigman, distance = ..1] run summon zombified_piglin ~ ~ ~ {Tags: ["nether-reactor-revisited.old_pigman"]}