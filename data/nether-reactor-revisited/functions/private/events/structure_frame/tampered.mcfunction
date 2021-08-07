#> nether-reactor-revisited:private/events/structure_frame/tampered
#
#   > Run these commands if the structure frame has been tampered with
#
#@within function *:private/cores/tick


#   Stop the daylight cycle
function nether-reactor-revisited:private/events/daytime/stop


#   Generate a broken variant of The Nether spire structure
function nether-reactor-revisited:private/events/spire/broken


#   Setblock an active reactor core to replace the inactive core placed by the previous function
execute unless entity @s[tag = nether-reactor-revisited.mined] run setblock ~ ~ ~ nether-reactor-revisited:active

execute if entity @s[tag = nether-reactor-revisited.mined] run setblock ~ ~ ~ air

setblock ~ ~-1 ~ nether-reactor-revisited:glowing_obsidian


#   Replace the `nether-reactor-revisited.stable` tag with `nether-reactor-revisited.unstable`
tag @s remove nether-reactor-revisited.reconstructing

tag @s remove nether-reactor-revisited.stable

tag @s add nether-reactor-revisited.unstable