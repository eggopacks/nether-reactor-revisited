#> eggo.nrr:misc/convert_item
# @within function eggo.nrr:uninstall


execute store result score @s eggo.nrr run clear @s item_frame{eggo: {nrr: {placeholder: 1b}}} 0

execute if score @s eggo.nrr matches 1.. run clear @s item_frame{eggo: {nrr: {placeholder: 1b}}} 1

execute if score @s eggo.nrr matches 1.. run loot give @s loot eggo.nrr:scrap

execute if score @s eggo.nrr matches 1.. run function eggo.nrr:misc/convert_item