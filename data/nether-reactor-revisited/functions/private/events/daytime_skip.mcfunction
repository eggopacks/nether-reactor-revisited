#> nether-reactor-revisited:private/events/daytime_skip
#
#   > Set the current daytime as `$set_daytime_to` without resetting the day count of the server to 0
#
#@within function *:private/events/conditions/structure_frame/complete


#   Store the current daytime to a score holder
execute store result score #current_daytime n-r-r run time query daytime

scoreboard players operation #process_daytime n-r-r = $set_daytime_to n-r-r

scoreboard players operation #process_daytime n-r-r -= #current_daytime n-r-r


#   Add ticks to daytime relatively
execute if score #process_daytime n-r-r matches 1000.. run function nether-reactor-revisited:private/events/daytime_skip/loop