#> eggo.nrr:misc/portal_restrict/revert_dmg/mainhand
# @within function eggo.nrr:misc/portal_restrict/destroy


data modify storage eggo:nrr root.hellighter.fix.mainhand set from entity @s SelectedItem

execute store result score #hellighter_damage.mainhand eggo.nrr.pr run data get storage eggo:nrr root.hellighter.fix.mainhand.tag.Damage

execute if score #hellighter_damage.mainhand eggo.nrr.pr matches 1.. run scoreboard players remove #hellighter_damage.mainhand eggo.nrr.pr 1

execute store result storage eggo:nrr root.hellighter.fix.mainhand.tag.Damage int 1 run scoreboard players get #hellighter_damage.mainhand eggo.nrr.pr

data modify block -30000000 0 1602 Items append from storage eggo:nrr root.hellighter.fix.mainhand

loot replace entity @s weapon.mainhand 1 mine -30000000 0 1602 air{drop_contents: 1b}