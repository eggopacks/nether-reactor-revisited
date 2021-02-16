#> eggo.nrr:event/spire/generate
#
#   generate the spire structure
#
# @within function eggo.nrr:event/phase/activating


# generate the spire structure
setblock ~ ~ ~ structure_block[mode = load]{mirror: "NONE", powered: 0b, seed: 0L, integrity: 1.0f, sizeY: 33, posZ: -8, sizeZ: 17, showboundingbox: 1b, showair: 0b, posY: -3, posX: -8, name: "eggo.nrr:spire/generate", rotation: "NONE", mode: "LOAD", sizeX: 17, metadata: "", author: "eggohito", ignoreEntities: 1b}

setblock ~ ~-1 ~ redstone_block


# place reactor core
function eggo.nrr:block/core/active/stable

setblock ~ ~-1 ~ cobblestone


# add tags
tag @s add eggo.nrr.reactor_core.activating

tag @s add eggo.nrr.reactor_core.phase_pause