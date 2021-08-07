#> nether-reactor-revisited:private/events/daytime/skip/ten_thousands
#
#   > Loop this function until `#ten_thousands_daytime` reaches 0
#
#@within function *:private/events/daytime/skip


time add 10000

scoreboard players remove #ten_thousands_daytime n-r-r 10000

execute if score #ten_thousands_daytime n-r-r matches 1.. run function nether-reactor-revisited:private/events/daytime/skip/ten_thousands