#> nether-reactor-revisited:private/events/spire/normal
#
#   > Generate The Nether spire structure
#
#@internal


#   Setblock a load structure block and a redstone block underneath to generate the structure
setblock ~ ~ ~ minecraft:structure_block[mode = load]{author: "eggohito", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "NONE", mode: "LOAD", name: "nether-reactor-revisited:spire/normal", posX: -8, posY: -3, posZ: -8, powered: 0b, rotation: "NONE", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 17, sizeY: 33, sizeZ: 17}

setblock ~ ~-1 ~ minecraft:redstone_block


#   Replace the load structure block and the redstone block
setblock ~ ~ ~ nether-reactor-revisited:active

setblock ~ ~-1 ~ minecraft:cobblestone