#> eggo.nrr:event/prime
#
#   set countdown before exploding
#
# @within function eggo.nrr:block/core/self


# set max seconds
scoreboard players operation @s[tag = !eggo.nrr.reactor_core.primed] eggo.nrr.s = *explosion_countdown eggo.nrr

tag @s add eggo.nrr.reactor_core.primed


# increment the score of the reactor core
scoreboard players add @s eggo.nrr.t1 1

scoreboard players remove @s[scores = {eggo.nrr.t1 = 21}] eggo.nrr.s 1

scoreboard players reset @s[scores = {eggo.nrr.t1 = 22..}] eggo.nrr.t1


# summon tnt if the value is 0
execute if score @s eggo.nrr.s matches ..-1 run kill @s

execute if score @s eggo.nrr.s matches ..-1 run summon tnt

execute if score @s eggo.nrr.s matches ..-1 run setblock ~ ~ ~ air


# extra sub-functions
particle large_smoke ~ ~ ~ 0.3 0.3 0.3 0.01 1 normal @a