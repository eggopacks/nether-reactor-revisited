#> nether-reactor-revisited:private/events/conditions/structure_frame/incomplete
#
#   > If the structure frame is incomplete
#
#@within function *:private/events/conditions/check


#   Display a message to `self` player
title @a[tag = self, limit = 1] actionbar {"text": "Incomplete structure pattern!", "color": "red"}