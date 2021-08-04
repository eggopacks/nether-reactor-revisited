#> nether-reactor-revisited:private/events/conditions/nearby_cores
#
#   > If there are reactor core blocks within a 32 blocks radius
#
#@within function *:private/events/conditions/check


#   Display a message to `self` player
title @a[tag = self, limit = 1] actionbar {"translate": "There are %s cores nearby!", "color": "red", "with": [{"score": {"name": "#nearby_cores", "objective": "n-r-r"}}]}