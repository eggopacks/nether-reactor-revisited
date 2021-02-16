#> eggo.nrr:misc/portal_restrict/in_portal
# @within advancement eggo.nrr:misc/portal_restrict/in_portal


# add a temporary tag
tag @s add eggo.nrr.player.portal_restrict.in_portal


# run destroy function
function eggo.nrr:misc/portal_restrict/destroy


# remove the temporary tag, and revoke advancement
tag @s remove eggo.nrr.player.portal_restrict.in_portal

advancement revoke @s only eggo.nrr:misc/portal_restrict/in_portal