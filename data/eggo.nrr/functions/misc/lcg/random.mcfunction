#> eggo.nrr:misc/lcg/random
#
#   generate a random number
#
# @public


# take the seed
scoreboard players operation %lcg.out eggo.nrr = #lcg.seed eggo.nrr


# do operations to get the raw number
scoreboard players operation %lcg.out eggo.nrr *= #lcg.multiplier eggo.nrr

scoreboard players operation %lcg.out eggo.nrr += #lcg.increment eggo.nrr


# use integer overflow to get the new seed
scoreboard players operation #lcg.seed eggo.nrr = %lcg.out eggo.nrr


# if there isn't a modulus override, use that. otherwise, use the override
execute unless score #lcg.modulus_override eggo.nrr = #lcg.modulus_override eggo.nrr run scoreboard players operation %lcg.out eggo.nrr %= #lcg.modulus eggo.nrr

execute if score #lcg.modulus_override eggo.nrr = #lcg.modulus_override eggo.nrr run scoreboard players operation %lcg.out eggo.nrr %= #lcg.modulus_override eggo.nrr

tellraw @a[tag = eggo.admin] {"translate": "LCG OUT: %s", "color": "gray", "italic": false, "with": [{"score": {"name": "%lcg.out", "objective": "eggo.nrr"}}]}