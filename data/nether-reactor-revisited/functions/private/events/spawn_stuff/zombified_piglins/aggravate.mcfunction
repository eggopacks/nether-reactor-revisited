#> nether-reactor-revisited:private/events/spawn_stuff/zombified_piglins/aggravate
#
#   > Aggravate the mob to the nearby player
#
#@within function *:private/events/spawn_stuff/zombified_piglins/tick


data modify entity @s AngerTime set value 100

data modify entity @s AngryAt set from entity @a[sort = nearest, limit = 1, distance = ..16] UUID