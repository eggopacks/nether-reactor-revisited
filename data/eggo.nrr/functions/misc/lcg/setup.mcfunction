#> eggo.nrr:misc/lcg/setup
#
#   set the lcg constants
#
# @within function eggo.nrr:load


# set the lcg constants
scoreboard players set #lcg.modulus eggo.nrr 7

scoreboard players set #lcg.increment eggo.nrr 12345

scoreboard players set #lcg.multiplier eggo.nrr 1103515245


# get the seed
execute unless score #lcg.seed eggo.nrr = #lcg.seed eggo.nrr run function eggo.nrr:misc/lcg/get_seed