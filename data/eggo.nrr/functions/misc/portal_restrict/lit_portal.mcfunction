#> eggo.nrr:misc/portal_restrict/lit_portal
# @within advancement eggo.nrr:misc/portal_restrict/lit_portal


# add a temporary tags
tag @s add eggo.nrr.player.portal_restrict.lit_portal

tag @s[advancements = {eggo.nrr:misc/portal_restrict/lit_portal = {mainhand.enter = true, mainhand.exit = false, offhand.enter = false, offhand.exit=  false}}] add eggo.nrr.player.portal_restrict.lit_portal.mainhand

tag @s[advancements = {eggo.nrr:misc/portal_restrict/lit_portal = {mainhand.enter = false, mainhand.exit = true, offhand.enter = false, offhand.exit=  false}}] add eggo.nrr.player.portal_restrict.lit_portal.mainhand

tag @s[advancements = {eggo.nrr:misc/portal_restrict/lit_portal = {mainhand.enter = false, mainhand.exit = false, offhand.enter = true, offhand.exit=  false}}] add eggo.nrr.player.portal_restrict.lit_portal.offhand

tag @s[advancements = {eggo.nrr:misc/portal_restrict/lit_portal = {mainhand.enter = false, mainhand.exit = false, offhand.enter = false, offhand.exit=  true}}] add eggo.nrr.player.portal_restrict.lit_portal.offhand


# run raycast function
function eggo.nrr:misc/raycast


# remove the temporary tag, and revoke advancement
tag @s remove eggo.nrr.player.portal_restrict.lit_portal

tag @s remove eggo.nrr.player.portal_restrict.lit_portal.offhand

tag @s remove eggo.nrr.player.portal_restrict.lit_portal.mainhand

advancement revoke @s only eggo.nrr:misc/portal_restrict/lit_portal