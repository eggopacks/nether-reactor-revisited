#> eggo.nrr:block/core/normal/place
#
#   setblock the base block, and merge new data to placeholder entity
#
# @within function eggo.nrr:block/core/place


# base block
setblock ~ ~ ~ light_blue_shulker_box[facing = down]{CustomName: '{"text": "Nether Reactor Core"}', Items: [{id: "minecraft:egg", Count: 1b, Slot: 13b, tag: {eggo: {nrr: {block: 1b}}, display: {Name: '{"text": "You shouldn\'t be seeing this", "italic": false}', Lore: ['{"text": "If you\'re seeing this, there", "color": "gray", "italic": false}', '{"text": "is a problem!", "color": "gray", "italic": false}']}}}], Lock: "U|1OwB0Ld$lA$1dDeN(3$7istonyst@R@|L5terin5!aTc#ifirK$pU(H4rITab4"}


# new data
data merge entity @s[tag = !eggo.nrr.reactor_core.dummy] {Tags: ["eggo.nrr.reactor_core", "eggo.nrr.reactor_core.normal"]}

data merge entity @s[tag = eggo.nrr.reactor_core.dummy] {Tags: ["eggo.nrr.reactor_core", "eggo.nrr.reactor_core.normal", "eggo.nrr.reactor_core.dummy"]}

data modify entity @s Item.tag.CustomModelData set value 1