#> eggo.nrr:event/spawn/mob/data
#
#   summon the mob with a random chance of its weapon being enchanted
#
# @within function eggo.nrr:event/spawn/mob


# summon the mob
summon zombified_piglin ~ ~ ~ {Attributes: [{Name: "minecraft:generic.movement_speed", Base: 0.18d}, {Name: "minecraft:generic.attack_damage", Base: 0.0d}, {Name: "minecraft:generic.follow_range", Base: 10.0d}], Tags: ["eggo.nrr.old_pigman", "eggo.nrr.old_pigman.unprocessed"], HandItems: [{id: "minecraft:golden_sword", Count: 1b}, {}], CustomName: '{"text": ""}', DeathLootTable: "eggo.nrr:spawn/mob"}

loot replace entity @e[type = zombified_piglin, tag = eggo.nrr.old_pigman, tag = eggo.nrr.old_pigman.unprocessed] weapon.mainhand loot eggo.nrr:spawn/mob/weapon

tag @e[type = zombified_piglin, tag = eggo.nrr.old_pigman, tag = eggo.nrr.old_pigman.unprocessed] remove eggo.nrr.old_pigman.unprocessed