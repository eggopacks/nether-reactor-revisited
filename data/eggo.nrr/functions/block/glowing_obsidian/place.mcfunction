#> eggo.nrr:block/glowing_obsidian/place
#
#   summon the marker entity, and setblock base block
#
# @within function eggo.nrr:block/glowing_obsidian/self


setblock ~ ~ ~ crying_obsidian

summon item_frame ~ ~ ~ {Tags: ["eggo.nrr.glowing_obsidian"], Item: {id: "minecraft:structure_void", Count: 1b, tag: {CustomModelData: 4}}, Invulnerable: 1b, Invisible: 1b, Fixed: 1b}