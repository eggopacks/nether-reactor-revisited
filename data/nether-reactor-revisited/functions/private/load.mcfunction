#> nether-reactor-revisited:private/load
#
#   > The load function for the `ccpacks-nether-reactor` namespace
#
#@within tag/function load:load


#   Add scoreboard objectives
scoreboard objectives add n-r-r dummy

scoreboard objectives add n-r-r.forge_uses dummy

scoreboard objectives add n-r-r.frames dummy

scoreboard objectives add n-r-r.seconds dummy

scoreboard objectives add n-r-r.ticks1 dummy

scoreboard objectives add n-r-r.ticks2 dummy


#   Display a load message to players
execute unless score #loaded n-r-r = #loaded n-r-r run tellraw @a {"text": "[+ Loaded \"Nether Reactor: Revisited (CCPacks)\"]", "color": "green"}

execute if score #loaded n-r-r = #loaded n-r-r run tellraw @a[tag = nether-reactor-revisited.debugger] {"text": "[+ Reloaded \"Nether Reactor: Revisited (CCPacks)\"]", "color": "green"}


#   Set constants/variables
execute unless score #loaded n-r-r = #loaded n-r-r run function nether-reactor-revisited:.conf/default

scoreboard players set #24000 n-r-r 24000

scoreboard players set #10000 n-r-r 10000

scoreboard players set #1000 n-r-r 1000

scoreboard players set #100 n-r-r 100

scoreboard players set #20 n-r-r 20

scoreboard players set #10 n-r-r 10

scoreboard players set #1 n-r-r 1

scoreboard players set #-1 n-r-r -1

scoreboard players set #loaded n-r-r 1

scoreboard players set nether-reactor-revisited load.status 200


#   Re-initialize tick function
schedule function nether-reactor-revisited:private/tick 1t replace