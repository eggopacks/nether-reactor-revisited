#> nether-reactor-revisited:private/events/conditions/placed_too_high
#
#   > If the location of the reactor core is too high
#
#@within function *:private/events/conditions/check


#   Set the variable for the condition
scoreboard players set #placed_too_high n-r-r 1


#   Display a message to `self` player
title @a[tag = self, limit = 1] actionbar {"text": "The reactor needs to be built lower down!", "color": "red"}