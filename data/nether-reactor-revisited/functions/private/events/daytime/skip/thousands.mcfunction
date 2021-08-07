#> nether-reactor-revisited:private/events/daytime/skip/thousands
#
#   > Loop this function until `#thousands_daytime` reaches 0
#
#@within function *:private/events/daytime/skip


time add 1000

scoreboard players remove #thousands_daytime n-r-r 1000

execute if score #thousands_daytime n-r-r matches 1.. run function nether-reactor-revisited:private/events/daytime/skip/thousands