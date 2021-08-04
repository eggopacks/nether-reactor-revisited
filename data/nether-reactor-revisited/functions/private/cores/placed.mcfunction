#> nether-reactor-revisited:private/cores/placed
#
#   > Summon a core marker entity respective to the reactor core's type
#
#@within function *:private/cores/interacted/right_clicked


#   Summon marker entities according to the placed block
execute if block ~ ~ ~ nether-reactor-revisited:normal run summon marker ~ ~ ~ {Tags: ["nether-reactor-revisited.core", "nether-reactor-revisited.normal"], CustomName: '{"text": "Nether Reactor Core"}'}

execute if block ~ ~ ~ nether-reactor-revisited:active run summon marker ~ ~ ~ {Tags: ["nether-reactor-revisited.core", "nether-reactor-revisited.active"], CustomName: '{"text": "Nether Reactor Core"}'}

execute if block ~ ~ ~ nether-reactor-revisited:inactive run summon marker ~ ~ ~ {Tags: ["nether-reactor-revisited.core", "nether-reactor-revisited.inactive", "nether-reactor-revisited.set_data"], CustomName: '{"text": "Nether Reactor Core"}'}


#   Set the data of the newly placed inactive reactor core from the item in the mainhand/offhand
execute if data storage eggohito:nether-reactor-revisited root.player.offhand.tag.nether-reactor-revisited unless data storage eggohito:nether-reactor-revisited root.player.mainhand.tag.nether-reactor-revisited run data modify entity @e[tag = nether-reactor-revisited.set_data, limit = 1] data.eggohito.nether-reactor-revisited set from storage eggohito:nether-reactor-revisited root.player.offhand.tag.nether-reactor-revisited

execute if data storage eggohito:nether-reactor-revisited root.player.mainhand.tag.nether-reactor-revisited run data modify entity @e[tag = nether-reactor-revisited.set_data, limit = 1] data.eggohito.nether-reactor-revisited set from storage eggohito:nether-reactor-revisited root.player.mainhand.tag.nether-reactor-revisited

execute as @e[tag = nether-reactor-revisited.set_data, limit = 1] store result score @s n-r-r.forge_uses run data get entity @s data.eggohito.nether-reactor-revisited.forge_uses

tag @e remove nether-reactor-revisited.set_data