#> eggo.nrr:block/glowing_obsidian/self
#
#   execute as and at the glowing obsidian marker entity
#
# @within function eggo.nrr:tick


# if the glowing obsidian block is placed
execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @s[tag = eggo.nrr.glowing_obsidian.placeholder] run function eggo.nrr:block/glowing_obsidian/place


# if the glowing obsidian block is destroyed
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag = eggo.nrr.glowing_obsidian.placeholder] unless block ~ ~ ~ crying_obsidian run function eggo.nrr:block/glowing_obsidian/destroy