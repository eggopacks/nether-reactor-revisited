#> eggo.nrr:misc/portal_restrict/revert_dmg/offhand
# @within function eggo.nrr:misc/portal_restrict/revert_dmg/offhand


data modify storage eggo:nrr root.hellighter.fix.offhand set from entity @s Inventory[{Slot: -106b}]

data remove storage eggo:nrr root.hellighter.fix.offhand.Slot

execute store result score #hellighter_damage.offhand eggo.nrr.pr run data get storage eggo:nrr root.hellighter.fix.offhand.tag.Damage

execute if score #hellighter_damage.offhand eggo.nrr.pr matches 1.. run scoreboard players remove #hellighter_damage.offhand eggo.nrr.pr 1

execute store result storage eggo:nrr root.hellighter.fix.offhand.tag.Damage int 1 run scoreboard players get #hellighter_damage.offhand eggo.nrr.pr

data modify block -30000000 0 1602 Items append from storage eggo:nrr root.hellighter.fix.offhand

loot replace entity @s weapon.offhand 1 mine -30000000 0 1602 air{drop_contents: 1b}