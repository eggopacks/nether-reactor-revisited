#> nether-reactor-revisited:private/events/conditions/check
#
#   > Check for conditions before doing stuff
#
#@within function *:private/cores/interacted/left_clicked


#   Reset the variables before setting them again
function nether-reactor-revisited:private/events/conditions/reset_variables


#   Store the Y values of the player and the reactor core block
execute store result score #core_y n-r-r run data get entity @s Pos[1]

execute store result score #player_y n-r-r run data get entity @a[tag = self ,limit = 1] Pos[1]

scoreboard players add #player_y n-r-r 1


#   Check if the reactor core is either placed too high or too low
execute if score #core_y n-r-r matches ..4 run function nether-reactor-revisited:private/events/conditions/placed_too_low

execute if score #core_y n-r-r matches 96.. run function nether-reactor-revisited:private/events/conditions/placed_too_high


#   Check if there are nearby players that are too far from the reactor core block
execute store result score #nearby_players_too_far n-r-r if entity @a[tag = !self, distance = 7..13]

execute if score #nearby_players_too_far n-r-r matches 1.. run function nether-reactor-revisited:private/events/conditions/nearby_players_too_far


#   Check if there are nearby reactor core blocks within a 32 blocks radius
execute store result score #nearby_cores n-r-r if entity @e[tag = nether-reactor-revisited.core, distance = 1..32]

execute if score #nearby_cores n-r-r matches 1.. run function nether-reactor-revisited:private/events/conditions/nearby_cores


#   Check if the player is not level with the reactor core block
execute unless score #placed_too_low n-r-r matches 1 unless score #placed_too_high n-r-r matches 1 unless score #core_y n-r-r = #player_y n-r-r if predicate nether-reactor-revisited:conditions/structure_frame/complete run function nether-reactor-revisited:private/events/conditions/not_level


#   Check whether the reactor structure frame is complete, incomplete, or invalid
execute if predicate nether-reactor-revisited:conditions/structure_frame/complete run function nether-reactor-revisited:private/events/conditions/structure_frame/complete

execute if predicate nether-reactor-revisited:conditions/structure_frame/incomplete run function nether-reactor-revisited:private/events/conditions/structure_frame/incomplete

execute if predicate nether-reactor-revisited:conditions/structure_frame/invalid run function nether-reactor-revisited:private/events/conditions/structure_frame/invalid