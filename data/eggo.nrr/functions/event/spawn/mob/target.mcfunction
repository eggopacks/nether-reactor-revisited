#> eggo.nrr:event/spawn/mob/target
#
#   set the mob's target as the nearby player
#
# @within function eggo.nrr:event/spawn/mob/process


# remove the temporary tag
tag @s remove eggo.nrr.old_pigman.angry


# set the AngryAt and AngryTime tags
execute unless entity @s[tag = eggo.nrr.old_pigman.angry] if entity @a[distance = ..13] run data modify entity @s AngryAt set from entity @a[distance = ..13, limit = 1, sort = random] UUID

execute unless entity @s[tag = eggo.nrr.old_pigman.angry] if entity @a[distance = ..13] run data modify entity @s AngerTime set value 100


# add the temporary tag
execute unless entity @s[tag = eggo.nrr.old_pigman.angry] if entity @a[distance = ..13] run tag @s add eggo.nrr.old_pigman.angry