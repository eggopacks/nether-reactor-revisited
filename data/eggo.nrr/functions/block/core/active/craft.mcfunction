#> eggo.nrr:block/core/active/craft
#
#   this function will run only if the player has crafted the active variant
#
# @within function eggo.nrr:trigger/core_craft


# give the item to the player
loot give @s loot eggo.nrr:block/core/active


# take the recipe
recipe take @s eggo.nrr:block/core/active