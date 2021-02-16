#> eggo.nrr:misc/lcg/get_seed
#
#   get the seed using an entity's `UUID[0]` value
#
# @within function eggo.nrr:misc/lcg/setup


# summon a marker entity, and store the value to scoreboard
summon area_effect_cloud ~ ~ ~ {Tags: ["eggo.nrr.lcg.seed"]}

execute store result score #lcg.seed eggo.nrr run data get entity @e[type = area_effect_cloud, tag = eggo.nrr.lcg.seed, limit = 1, distance = 0] UUID[0]

kill @e[type = area_effect_cloud, tag = eggo.nrr.lcg.seed, limit = 1, distance = 0]