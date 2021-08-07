#> nether-reactor-revisited:private/events/daytime/skip/tenths
#
#   > Loop this function until `#tenths_daytime` reaches 0
#
#@within function *:private/events/daytime/skip


time add 10

scoreboard players remove #tenths_daytime n-r-r 10

execute if score #tenths_daytime n-r-r matches 1.. run function nether-reactor-revisited:private/events/daytime/skip/tenths