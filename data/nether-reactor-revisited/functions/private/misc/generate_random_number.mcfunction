#> nether-reactor-revisited:private/misc/generate_random_number
#
#   > Generate a random number
#
#@internal


#   Check if #rng.range is not set
execute unless score #rng.range n-r-r = #rng.range n-r-r run scoreboard players set #rng.range n-r-r 1


#   Summon the helper entity
summon area_effect_cloud ~ ~ ~ {Tags: ["nether-reactor-revisited.rng_helper"]}


#   Get the helper entity's `UUID[0]` and do a modulo operation
execute store result score #rng.result n-r-r run data get entity @e[tag = nether-reactor-revisited.rng_helper, limit = 1] UUID[0]

scoreboard players operation #rng.result n-r-r %= #rng.range n-r-r


#   Kill the helper entity and reset #rng.range
scoreboard players reset #rng.range n-r-r

kill @e[tag = nether-reactor-revisited.rng_helper]