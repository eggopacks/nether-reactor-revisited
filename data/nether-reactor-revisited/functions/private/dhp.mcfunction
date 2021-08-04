#> nether-reactor-revisited:private/dhp
#
#   > This function file is for Datapack Helper Plus' declaration stuff. Don't run this lol
#
#@private


#   Display a message to the player that run this function
tellraw @s {"text": "You shouldn't be running this function :P", "color": "red"}


#   Scoreboard objectives!
#declare objective n-r-r
#declare objective n-r-r.forge_uses
#declare objective n-r-r.frames
#declare objective n-r-r.seconds
#declare objective n-r-r.ticks1
#declare objective n-r-r.ticks2


#   Storages!
#declare storage eggohito:nether-reactor-revisited Stores the item data from the player's mainhand and offhand temporarily


#   Tags!
#declare tag nether-reactor-revisited.core Generalized tag for all Nether Reactor Core markers