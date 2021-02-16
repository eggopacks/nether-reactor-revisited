#> eggo.nrr:misc/mute_sound
#
#   attempts to mute the chest.locked sound
#
# @private

scoreboard players add #mute_sound eggo.nrr 1

stopsound @s * block.chest.locked

execute unless score #mute_sound eggo.nrr matches 4.. run function eggo.nrr:misc/mute_sound

execute if score #mute_sound eggo.nrr matches 4.. run scoreboard players reset #mute_sound eggo.nrr