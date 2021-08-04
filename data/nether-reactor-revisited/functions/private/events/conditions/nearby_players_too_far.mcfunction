#> nether-reactor-revisited:private/events/conditions/nearby_players_too_far
#
#   > If the nearby players are too far from the reactor core block
#
#@within function *:private/events/conditions/check


#   Display a message to `self` player
title @a[tag = self, limit = 1] actionbar {"translate": "%s nearby player(s) need to be close to the reactor!", "color": "red", "with": [{"score": {"name": "#nearby_players_too_far", "objective": "n-r-r"}}]}