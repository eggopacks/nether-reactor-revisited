#> nether-reactor-revisited:private/cores/check_time
#
#   > Check how long the reactor core has been active for
#
#@within function *:private/cores/interacted/left_click


scoreboard players operation @s n-r-r.seconds = @s n-r-r.ticks1

scoreboard players operation @s n-r-r.seconds /= #20 n-r-r

execute if entity @s[tag = nether-reactor-revisited.stable] run title @a[tag = self, limit = 1] actionbar {"translate": "Been active for: %s", "color": "red", "with": [[{"score": {"name": "@s", "objective": "n-r-r.seconds"}, "color": "yellow"}, {"text": " second(s)"}]]}

execute if entity @s[tag = nether-reactor-revisited.unstable] run title @a[tag = self, limit = 1] actionbar {"translate": "Explodes in: %s", "color": "red", "with": [[{"score": {"name": "@s", "objective": "n-r-r.seconds"}, "color": "yellow"}, {"text": " second(s)"}]]}