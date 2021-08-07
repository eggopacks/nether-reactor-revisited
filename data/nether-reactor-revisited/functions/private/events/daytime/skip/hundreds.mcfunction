#> nether-reactor-revisited:private/events/daytime/skip/hundreds
#
#   > Loop this function until `#hundreds_daytime` reaches 0
#
#@within function *:private/events/daytime/skip


time add 100

scoreboard players remove #hundreds_daytime n-r-r 100

execute if score #hundreds_daytime n-r-r matches 1.. run function nether-reactor-revisited:private/events/daytime/skip/hundreds