#> eggo.nrr:trigger/core_interact
# @within advancement eggo.nrr:trigger/core_interact


# add a temporary tag
tag @s add eggo.nrr.player.core_interact

tag @s add eggo.nrr.reactor_core.display_bounding_box.target


# run raycast function
function eggo.nrr:misc/mute_sound

execute if predicate eggohito:entity_properties/flags/is_sneaking run title @s actionbar {"text": ""}

execute unless predicate eggohito:entity_properties/flags/is_sneaking run function eggo.nrr:misc/raycast


# remove the temporary tag, and revoke the advancement
tag @s remove eggo.nrr.player.core_interact

tag @s remove eggo.nrr.reactor_core.display_bounding_box.target

advancement revoke @s only eggo.nrr:trigger/core_interact