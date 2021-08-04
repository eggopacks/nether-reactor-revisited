#> nether-reactor-revisited:private/events/conditions/not_level
#
#   > If the player is not level with the reactor core block
#
#@within function *:private/events/conditions/check


#   Set the variable for the condition
scoreboard players set #not_level n-r-r 1


#   Display a message to `self` player
title @a[tag = self, limit = 1] actionbar {"text": "Must be level with the reactor!", "color": "red"}