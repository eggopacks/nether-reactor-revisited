#> eggo.nrr:load
#
#   main load function for the `eggo.nrr` namespace
#
# @within tag/function minecraft:load


# add scoreboard objectives
scoreboard objectives add eggo.nrr dummy {"text": "EGGO.NRR", "color": "red", "bold": true}

scoreboard objectives add eggo.nrr.s dummy {"text": "EGGO.NRR: seconds", "color": "red", "bold": true}

scoreboard objectives add eggo.nrr.t1 dummy {"text": "EGGO.NRR: ticks (cores)", "color": "red", "bold": true}

scoreboard objectives add eggo.nrr.t2 dummy {"text": "EGGO.NRR: ticks (old pigmen)", "color": "red", "bold": true}

scoreboard objectives add eggo.nrr.cfs dummy {"text": "EGGO.NRR: core former state", "color": "red", "bold": true}

scoreboard objectives add eggo.nrr.pr dummy {"text": "EGGO.NRR: portal restrict", "color": "red", "bold": true}

scoreboard objectives add eggo.nrr.pr1 dummy {"text": "EGGO.NRR: portal restrict (enter)", "color": "red", "bold": true}

scoreboard objectives add eggo.nrr.pr2 dummy {"text": "EGGO.NRR: portal restrict (exit)", "color": "red", "bold": true}


# load announcement
execute unless score #load eggo.nrr = #load eggo.nrr run tellraw @a {"text": "[Datapack \"eggo's Nether Reactor: Revisited\" loaded]", "italic": false, "color": "green", "hoverEvent": {"action": "show_text", "contents": {"translate": "Version 1.0, from %s", "color": "gray", "with": [{"text": "https://github.com/eggopacks", "color": "blue", "underlined": true}]}}}

execute if score #load eggo.nrr = #load eggo.nrr run tellraw @a[tag = eggo.admin] {"text": "[Datapack \"eggo's Nether Reactor: Revisited\" loaded]", "italic": true, "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"translate": "Version 1.0, from %s", "color": "gray", "with": [{"text": "https://github.com/eggopacks", "color": "blue", "underlined": true}]}}}


# set variables; forceload a chunk
function eggo.nrr:misc/lcg/setup

forceload remove -30000000 1600

forceload add -30000000 1600

execute unless block -30000000 0 1602 yellow_shulker_box run setblock -30000000 0 1602 yellow_shulker_box

execute unless score #load eggo.nrr = #load eggo.nrr run function eggo.nrr:.cfg/default

scoreboard players set #load eggo.nrr 1


# initialize tick function
schedule function eggo.nrr:tick 1t replace