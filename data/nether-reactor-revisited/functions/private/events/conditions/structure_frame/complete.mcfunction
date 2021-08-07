#> nether-reactor-revisited:private/events/conditions/structure_frame/complete
#
#   > If the structure frame is complete
#
#@within function *:private/events/conditions/check


#   Display a message to `self` user
execute if entity @s[tag = nether-reactor-revisited.inactive] run item modify entity @a[tag = self, limit = 1] weapon.mainhand nether-reactor-revisited:remove_1_from_stack

tellraw @a {"translate": "%s activated a Nether Reactor!", "color": "red", "with": [{"selector": "@a[tag = self, limit = 1]", "color": "yellow"}]}


#   Store previous state as a tag
tag @s remove nether-reactor-revisited.prev_normal

tag @s remove nether-reactor-revisited.prev_inactive

tag @s[tag = nether-reactor-revisited.normal] add nether-reactor-revisited.prev_normal

tag @s[tag = nether-reactor-revisited.inactive] add nether-reactor-revisited.prev_inactive


#   Generate The Nether spire
function nether-reactor-revisited:private/events/spire/normal


#   Set the time in a non-destructive way (won't reset server day count)
function nether-reactor-revisited:private/events/daytime/skip


#   Remove the previous states, and add the `nether-reactor-revisited.reconstructing` tag
function nether-reactor-revisited:private/events/structure_frame/reconstruct