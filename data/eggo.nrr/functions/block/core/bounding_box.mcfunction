#> eggo.nrr:block/core/bounding_box
#
#   displays a bounding box around the reactor core block
#
# @public


# add a temporary tag if the function is run by a player
tag @s[type = player, tag = !eggo.nrr.reactor_core.display_bounding_box.target] add eggo.nrr.reactor_core.display_bounding_box.target


# display particle
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust 1 0 0 1 ~ ~0.5 ~0.5 0.25 0 0 0 8 normal @a[tag = eggo.nrr.reactor_core.display_bounding_box.target]

execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust 1 0 0 1 ~ ~0.5 ~-0.5 -0.25 0 0 0 8 normal @a[tag = eggo.nrr.reactor_core.display_bounding_box.target]

execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust 1 0 0 1 ~0.5 ~0.5 ~ 0 0 0.25 0 8 normal @a[tag = eggo.nrr.reactor_core.display_bounding_box.target]

execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust 1 0 0 1 ~-0.5 ~0.5 ~ 0 0 -0.25 0 8 normal @a[tag = eggo.nrr.reactor_core.display_bounding_box.target]


execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust 1 0 0 1 ~0.5 ~ ~0.5 0 0.25 0 0 8 normal @a[tag = eggo.nrr.reactor_core.display_bounding_box.target]

execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust 1 0 0 1 ~-0.5 ~ ~-0.5 0 0.25 0 0 8 normal @a[tag = eggo.nrr.reactor_core.display_bounding_box.target]

execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust 1 0 0 1 ~-0.5 ~ ~0.5 0 0.25 0 0 8 normal @a[tag = eggo.nrr.reactor_core.display_bounding_box.target]

execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust 1 0 0 1 ~0.5 ~ ~-0.5 0 0.25 0 0 8 normal @a[tag = eggo.nrr.reactor_core.display_bounding_box.target]


execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust 1 0 0 1 ~ ~-0.5 ~0.5 0.25 0 0 0 8 normal @a[tag = eggo.nrr.reactor_core.display_bounding_box.target]

execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust 1 0 0 1 ~ ~-0.5 ~-0.5 -0.25 0 0 0 8 normal @a[tag = eggo.nrr.reactor_core.display_bounding_box.target]

execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust 1 0 0 1 ~0.5 ~-0.5 ~ 0 0 0.25 0 8 normal @a[tag = eggo.nrr.reactor_core.display_bounding_box.target]

execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust 1 0 0 1 ~-0.5 ~-0.5 ~ 0 0 -0.25 0 8 normal @a[tag = eggo.nrr.reactor_core.display_bounding_box.target]


# remove the temporary tag
tag @s[tag = eggo.nrr.reactor_core.display_bounding_box.target] remove eggo.nrr.reactor_core.display_bounding_box.target