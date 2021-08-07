#> nether-reactor-revisited:private/events/daytime/skip
#
#   > Set the current daytime as `$set_daytime_to` without resetting the day count of the server to 0
#
#@within function *:private/events/conditions/structure_frame/complete


#   Store the current daytime to `#current_daytime`, and calculate the target daytime and store the result to `#target_daytime`
execute store result score #current_daytime n-r-r run time query daytime

scoreboard players operation #target_daytime n-r-r = $set_daytime_to n-r-r

scoreboard players operation #target_daytime n-r-r -= #current_daytime n-r-r

execute if score $set_daytime_to n-r-r < #current_daytime n-r-r run scoreboard players operation #target_daytime n-r-r += #24000 n-r-r

execute store result storage eggohito:nether-reactor-revisited temp.daytime.target int 1 run scoreboard players get #target_daytime n-r-r


#   Get the ten thousands of `#target_daytime`
execute store result score #ten_thousands_daytime n-r-r run data get storage eggohito:nether-reactor-revisited temp.daytime.target 0.0001

scoreboard players operation #ten_thousands_daytime n-r-r *= #10000 n-r-r


#   Get the thousands of `#target_daytime`
execute store result score #thousands_daytime n-r-r run data get storage eggohito:nether-reactor-revisited temp.daytime.target 0.001

scoreboard players operation #thousands_daytime n-r-r *= #1000 n-r-r

scoreboard players operation #thousands_daytime n-r-r -= #ten_thousands_daytime n-r-r


#   Get the hundreds of `#target_daytime`
execute store result score #hundreds_daytime n-r-r run data get storage eggohito:nether-reactor-revisited temp.daytime.target 0.01

scoreboard players operation #hundreds_daytime n-r-r *= #100 n-r-r

scoreboard players operation #hundreds_daytime n-r-r -= #ten_thousands_daytime n-r-r

scoreboard players operation #hundreds_daytime n-r-r -= #thousands_daytime n-r-r


#   Get the tenths of `#target_daytime`
execute store result score #tenths_daytime n-r-r run data get storage eggohito:nether-reactor-revisited temp.daytime.target 0.1

scoreboard players operation #tenths_daytime n-r-r *= #10 n-r-r

scoreboard players operation #tenths_daytime n-r-r -= #ten_thousands_daytime n-r-r

scoreboard players operation #tenths_daytime n-r-r -= #thousands_daytime n-r-r

scoreboard players operation #tenths_daytime n-r-r -= #hundreds_daytime n-r-r


#   Get the ones of `#target_daytime`
execute store result score #ones_daytime n-r-r run data get storage eggohito:nether-reactor-revisited temp.daytime.target 1

scoreboard players operation #ones_daytime n-r-r -= #ten_thousands_daytime n-r-r

scoreboard players operation #ones_daytime n-r-r -= #thousands_daytime n-r-r

scoreboard players operation #ones_daytime n-r-r -= #hundreds_daytime n-r-r

scoreboard players operation #ones_daytime n-r-r -= #tenths_daytime n-r-r


#   Do the skipping process
tellraw @a[tag = nether-reactor-revisited.debugger] {"translate": "       DAYTIME SKIP LOG:       \n$set_daytime_to: %1$s \nPrevious daytime: %2$s \nAdd to previous daytime: %3$s", "color": "gray", "with": [{"score": {"name": "$set_daytime_to", "objective": "n-r-r"}}, {"score": {"name": "#current_daytime", "objective": "n-r-r"}}, {"score": {"name": "#target_daytime", "objective": "n-r-r"}}]}

execute if score #ten_thousands_daytime n-r-r matches 1.. run function nether-reactor-revisited:private/events/daytime/skip/ten_thousands

execute if score #thousands_daytime n-r-r matches 1.. run function nether-reactor-revisited:private/events/daytime/skip/thousands

execute if score #hundreds_daytime n-r-r matches 1.. run function nether-reactor-revisited:private/events/daytime/skip/hundreds

execute if score #tenths_daytime n-r-r matches 1.. run function nether-reactor-revisited:private/events/daytime/skip/tenths

execute if score #ones_daytime n-r-r matches 1.. run function nether-reactor-revisited:private/events/daytime/skip/ones

execute store result score #current_daytime n-r-r run time query daytime

tellraw @a[tag = nether-reactor-revisited.debugger] {"translate": "Current daytime: %s", "color": "gray", "with": [{"score": {"name": "#current_daytime", "objective": "n-r-r"}}]}


#   Clear the `temp` NBT path
data remove storage eggohito:nether-reactor-revisited temp