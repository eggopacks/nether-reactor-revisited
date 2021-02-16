#> eggo.nrr:event/condition/process
#
#   run functions/commands according to the given tags
#
# @within function eggo.nrr:event/condition/check


# if the reactor core is either placed too high, or too low
execute if entity @s[tag = eggo.nrr.condition.placed_too_high] run title @a[tag = eggo.nrr.player.core_interact] actionbar {"text": "The reactor must be built lower down!", "color": "red"}

execute if entity @s[tag = eggo.nrr.condition.placed_too_low] run title @a[tag = eggo.nrr.player.core_interact] actionbar {"text": "The reactor must be built higher up!", "color": "red"}


# if the player and the reactor core is not level with each other
execute if entity @s[tag = eggo.nrr.condition.not_level] run title @a[tag = eggo.nrr.player.core_interact] actionbar {"text": "The player must be level with the reactor!", "color": "red"}


# checks for nearby cores, and if nearby players are too far away from the interacted reactor core
execute if score #condition.cores_nearby eggo.nrr matches 1 if entity @s[tag = eggo.nrr.condition.cores_nearby] run title @a[tag = eggo.nrr.player.core_interact] actionbar {"text": "The core must be 32 blocks away from a nearby core!", "color": "red"}

execute if score #condition.cores_nearby eggo.nrr matches 2.. if entity @s[tag = eggo.nrr.condition.cores_nearby] run title @a[tag = eggo.nrr.player.core_interact] actionbar {"translate": "The core must be 32 blocks away from %s nearby cores!", "color": "red", "with": [{"score": {"name": "#condition.cores_nearby", "objective": "eggo.nrr"}}]}

execute if score #condition.players_nearby_too_far eggo.nrr matches 1 if entity @s[tag = eggo.nrr.condition.players_nearby_too_far] run title @a[tag = eggo.nrr.player.core_interact] actionbar {"text": "A nearby player must be within 6 blocks radius of the reactor core!", "color": "red"}

execute if score #condition.players_nearby_too_far eggo.nrr matches 2.. if entity @s[tag = eggo.nrr.condition.players_nearby_too_far] run title @a[tag = eggo.nrr.player.core_interact] actionbar {"translate": "%s players must be within 6 blocks radius of the reactor core!", "color": "red", "with": [{"score": {"name": "#condition.players_nearby_too_far", "objective": "eggo.nrr"}}]}


# checks whether if the reactor structure is valid, invalid, or incomplete
execute if entity @s[tag = eggo.nrr.reactor_core.normal, tag = eggo.nrr.condition.structure_valid] run tellraw @a {"translate": "%s activated a Nether Reactor!", "color": "red", "with": [{"selector": "@a[tag = eggo.nrr.player.core_interact, limit = 1]"}]}

execute if entity @s[tag = eggo.nrr.reactor_core.inactive, tag = eggo.nrr.condition.structure_valid] run tellraw @a {"translate": "%s reactivated a Nether Reactor!", "color": "red", "with": [{"selector": "@a[tag = eggo.nrr.player.core_interact, limit = 1]"}]}


execute if entity @s[tag = eggo.nrr.condition.structure_incomplete] run title @a[tag = eggo.nrr.player.core_interact] actionbar {"text": "Incomplete/incorrect structure pattern!", "color": "red"}

execute if entity @s[tag = eggo.nrr.condition.structure_invalid] run title @a[tag = eggo.nrr.player.core_interact] actionbar {"text": "Invalid structure pattern!", "color": "red"}

execute if entity @s[tag = eggo.nrr.reactor_core.inactive, tag = eggo.nrr.condition.structure_valid] run title @a[tag = eggo.nrr.player.core_interact] actionbar {"text": "Reactivated a reactor core!", "color": "red"}

execute if entity @s[tag = eggo.nrr.reactor_core.normal, tag = eggo.nrr.condition.structure_valid] run title @a[tag = eggo.nrr.player.core_interact] actionbar {"text": "Activated a reactor core!", "color": "red"}

execute if entity @s[tag = eggo.nrr.reactor_core.inactive, tag = eggo.nrr.condition.structure_valid] run clear @a[tag = eggo.nrr.player.core_interact] diamond 1

execute if entity @s[tag = eggo.nrr.condition.structure_valid] run function eggo.nrr:event/activate


# reset condition tags/variables
function eggo.nrr:event/condition/reset