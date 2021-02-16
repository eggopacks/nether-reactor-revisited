#> eggo.nrr:misc/raycast/forge/set_data
#
#   modify the data of the item stored in the data storage
#
# @within function eggo.nrr:misc/raycast/forge/modify


data modify storage eggo:nrr root.hellighter.tag.eggo.nrr.hellighter set value 1b

execute if data storage eggo:nrr root.hellighter.tag.display.Name unless data storage eggo:nrr root.hellighter.tag.display{Name: '{"text": "Hellighter", "color": "red", "italic": false}'} run data modify storage eggo:nrr root.hellighter.tag.display.Lore append value '{"text": "Hellighter", "color": "gray", "italic": false}' 

execute unless data storage eggo:nrr root.hellighter.tag.display.Name run data modify storage eggo:nrr root.hellighter.tag.display.Name set value '{"text": "Hellighter", "color": "red", "italic": false}'

execute unless data storage eggo:nrr root.hellighter.tag.Enchantments run data modify storage eggo:nrr root.hellighter.tag.Enchantments append value {}