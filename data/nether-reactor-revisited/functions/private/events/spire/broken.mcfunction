#> nether-reactor-revisited:private/events/spire/broken
#
#   > Generate a random broken The Nether spire structure
#
#@internal


#   Generate a random number ranging from 0 to 8
scoreboard players set #rng.range n-r-r 8

function nether-reactor-revisited:private/misc/generate_random_number


#   Setblock a load structure block and a redstone block underneath to generate the structure
execute if score #rng.result n-r-r matches 0 run setblock ~ ~ ~ minecraft:structure_block[mode = load]{author: "eggohito", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "NONE", mode: "LOAD", name: "nether-reactor-revisited:spire/broken/pattern_1", posX: -8, posY: -3, posZ: -8, powered: 0b, rotation: "NONE", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 17, sizeY: 33, sizeZ: 17}

execute if score #rng.result n-r-r matches 1 run setblock ~ ~ ~ minecraft:structure_block[mode = load]{author: "eggohito", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "NONE", mode: "LOAD", name: "nether-reactor-revisited:spire/broken/pattern_2", posX: -8, posY: -3, posZ: -8, powered: 0b, rotation: "NONE", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 17, sizeY: 33, sizeZ: 17}

execute if score #rng.result n-r-r matches 2 run setblock ~ ~ ~ minecraft:structure_block[mode = load]{author: "eggohito", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "NONE", mode: "LOAD", name: "nether-reactor-revisited:spire/broken/pattern_3", posX: -8, posY: -3, posZ: -8, powered: 0b, rotation: "NONE", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 17, sizeY: 33, sizeZ: 17}

execute if score #rng.result n-r-r matches 3 run setblock ~ ~ ~ minecraft:structure_block[mode = load]{author: "eggohito", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "NONE", mode: "LOAD", name: "nether-reactor-revisited:spire/broken/pattern_4", posX: -8, posY: -3, posZ: -8, powered: 0b, rotation: "NONE", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 17, sizeY: 33, sizeZ: 17}

execute if score #rng.result n-r-r matches 4 run setblock ~ ~ ~ minecraft:structure_block[mode = load]{author: "eggohito", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "NONE", mode: "LOAD", name: "nether-reactor-revisited:spire/broken/pattern_5", posX: -8, posY: -3, posZ: -8, powered: 0b, rotation: "NONE", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 17, sizeY: 33, sizeZ: 17}

execute if score #rng.result n-r-r matches 5 run setblock ~ ~ ~ minecraft:structure_block[mode = load]{author: "eggohito", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "NONE", mode: "LOAD", name: "nether-reactor-revisited:spire/broken/pattern_6", posX: -8, posY: -3, posZ: -8, powered: 0b, rotation: "NONE", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 17, sizeY: 33, sizeZ: 17}

execute if score #rng.result n-r-r matches 6 run setblock ~ ~ ~ minecraft:structure_block[mode = load]{author: "eggohito", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "NONE", mode: "LOAD", name: "nether-reactor-revisited:spire/broken/pattern_7", posX: -8, posY: -3, posZ: -8, powered: 0b, rotation: "NONE", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 17, sizeY: 33, sizeZ: 17}

execute if score #rng.result n-r-r matches 7 run setblock ~ ~ ~ minecraft:structure_block[mode = load]{author: "eggohito", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "NONE", mode: "LOAD", name: "nether-reactor-revisited:spire/broken/pattern_8", posX: -8, posY: -3, posZ: -8, powered: 0b, rotation: "NONE", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 17, sizeY: 33, sizeZ: 17}

setblock ~ ~-1 ~ minecraft:redstone_block


#   Replace the load structure block and the redstone block
setblock ~ ~ ~ nether-reactor-revisited:inactive

setblock ~ ~-1 ~ minecraft:obsidian