#> eggo.nrr:block/glowing_obsidian/destroy
#
#   kill self, and glowing obsidian item entity
#
# @within function eggo.nrr:block/glowing_obsidian/self


kill @s

kill @e[type = item, nbt = {Item: {id: "minecraft:crying_obsidian"}, Age: 0s}, distance = ..0.5]