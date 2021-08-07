#> nether-reactor-revisited:private/events/spawn_stuff/zombified_piglins/setup
#
#   > Do some setup beforehand before tagging the mob with `nether-reactor-revisited.old_pigman`
#
#@within function *:private/events/spawn_stuff/zombified_piglins


#   Summon the zombified piglin
summon zombified_piglin


#   Add the tag
data merge entity @e[type = zombified_piglin, tag = !nether-reactor-revisited.old_pigman, limit = 1, distance = 0] {Attributes: [{Name: "minecraft:generic.movement_speed", Base: 0.18d}, {Name: "minecraft:generic.attack_damage", Base: 0.0d}, {Name: "minecraft:generic.follow_range", Base: 10.0d}], DeathLootTable: "nether-reactor-revisited:entities/old_pigman"}

tag @e[type = zombified_piglin, distance = 0] add nether-reactor-revisited.old_pigman