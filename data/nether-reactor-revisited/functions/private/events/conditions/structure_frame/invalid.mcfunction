#> nether-reactor-revisited:private/events/conditions/structure_frame/invalid
#
#   > If the structure frame is invalid
#
#@within function *:private/events/conditions/check


#   Display a message to `self` player
title @a[tag = self, limit = 1] actionbar {"text": "Invalid structure pattern!", "color": "red"}