#> eggo.nrr:block/core/inactive/craft
#
#   this function will run only if the player has crafted the inactive variant
#
# @within function eggo.nrr:trigger/core_craft


# give the item to the player
loot give @s loot eggo.nrr:block/core/inactive


# take the recipe
recipe take @s eggo.nrr:block/core/inactive