#> eggo.nrr:uninstall
# @user


# disable announcement
tellraw @a {"text": "[Datapack \"eggo's Nether Reactor: Revisited\" disabled]", "italic": false, "color": "red", "hoverEvent": {"action": "show_text", "contents": {"translate": "Version 1.0, from %s", "color": "gray", "with": [{"text": "https://github.com/eggopacks", "color": "blue", "underlined": true}]}}}


# convert placed reactor cores to scrap; also convert reactor cores in inventory to scrap
execute as @a run function eggo.nrr:misc/convert_item

function eggo.nrr:misc/convert_block


# remove objectives, and remove data storage
data remove storage eggo:nrr root

scoreboard objectives remove eggo.nrr
scoreboard objectives remove eggo.nrr.s
scoreboard objectives remove eggo.nrr.t1
scoreboard objectives remove eggo.nrr.t2
scoreboard objectives remove eggo.nrr.cfs
scoreboard objectives remove eggo.nrr.pr
scoreboard objectives remove eggo.nrr.pr1
scoreboard objectives remove eggo.nrr.pr2

scoreboard objectives remove mrcd_x0
scoreboard objectives remove mrcd_y0
scoreboard objectives remove mrcd_z0
scoreboard objectives remove mrcd_system


# disable datapack
datapack disable "file/nether_reactor_revisited DEV"

datapack disable "file/nether_reactor_revisited DATAPACK.zip"