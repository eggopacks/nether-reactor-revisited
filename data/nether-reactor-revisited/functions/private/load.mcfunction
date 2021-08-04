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
execute unless score nether-reactor-revisited load.status = nether-reactor-revisited load.status run function nether-reactor-revisited:.conf/default

execute unless score nether-reactor-revisited load.status = nether-reactor-revisited load.status run tellraw @a {"text": "[+ Loaded \"Nether Reactor: Revisited (CCPacks)\"]", "color": "green"}

execute if score nether-reactor-revisited load.status = nether-reactor-revisited load.status run tellraw @a[tag = nether-reactor-revisited.debugger] {"text": "[+ Reloaded \"Nether Reactor: Revisited (CCPacks)\"]", "color": "green"}


scoreboard players set #max_ticks n-r-r 20

scoreboard players set nether-reactor-revisited load.status 100


#   Re-initialize tick function
schedule function nether-reactor-revisited:private/tick 1t replace