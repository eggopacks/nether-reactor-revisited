#> eggo.nrr:event/spire/degenerate
#
#   degenerate the spire structure
#
# @within function eggo.nrr:event/phase/deactivating


# set lcg modulus, and generate a random number
# scoreboard players set #lcg.modulus eggo.nrr 7

function eggo.nrr:misc/lcg/random


# degenerate the spire structure
function eggo.nrr:event/spire/degenerate/patterns

setblock ~ ~-1 ~ redstone_block


# place inactive reactor core
function eggo.nrr:block/core/inactive/place

setblock ~ ~-1 ~ obsidian


# add tags
tag @s add eggo.nrr.reactor_core.deactivating

tag @s add eggo.nrr.reactor_core.phase_pause