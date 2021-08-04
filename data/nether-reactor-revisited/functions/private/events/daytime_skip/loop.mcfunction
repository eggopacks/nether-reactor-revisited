#> nether-reactor-revisited:private/events/daytime_skip/loop
#
#   > Loop this function until `#process_daytime` doesn't have a value of 1000 or more
#
#@within
#   function *:private/events/daytime_skip
#   function *:private/events/daytime_skip/loop

time add 1000

scoreboard players remove #process_daytime n-r-r 1000

execute if score #process_daytime n-r-r matches 1000.. run function nether-reactor-revisited:private/events/daytime_skip/loop