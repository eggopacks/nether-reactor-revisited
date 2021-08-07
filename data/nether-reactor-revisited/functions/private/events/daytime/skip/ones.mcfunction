#> nether-reactor-revisited:private/events/daytime/skip/ones
#
#   > Loop this function until `#ones_daytime` reaches 0
#
#@within function *:private/events/daytime/skip


time add 1

scoreboard players remove #ones_daytime n-r-r 1

execute if score #ones_daytime n-r-r matches 1.. run function nether-reactor-revisited:private/events/daytime/skip/ones