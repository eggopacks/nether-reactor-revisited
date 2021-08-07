#> nether-reactor-revisited:private/cores/tick
#
#   > Tick `nether-reactor-revisited.core` marker entities
#
#@within function *:private/tick


#   Check if the marker entity doesn't have a base block
execute unless block ~ ~ ~ #nether-reactor-revisited:cores run function nether-reactor-revisited:private/cores/mined


#   If the reactor core is active:
    ##  Increase the active ticks of the marker entity, and add the `nether-reactor-revisited.deconstructing` tag if it reaches the max tick threshold
    scoreboard players add @s[tag = nether-reactor-revisited.active, tag = !nether-reactor-revisited.unstable] n-r-r.ticks1 1

    execute if score @s[tag = nether-reactor-revisited.active, tag = nether-reactor-revisited.stable] n-r-r.ticks1 >= $max_active_ticks n-r-r run function nether-reactor-revisited:private/events/structure_frame/deconstruct


    ##  Add the `nether-reactor-revisited.empower` tag to nearby mobs that has the `nether-reactor-revisited.old_pigman` tag
    execute if entity @s[tag = nether-reactor-revisited.active] positioned ~-7 ~-1 ~-7 run tag @e[tag = nether-reactor-revisited.old_pigman, dx = 14, dy = 3, dz = 14] add nether-reactor-revisited.empower


    ##  Spawn zombified piglins!
    execute if entity @s[tag = nether-reactor-revisited.active, tag = nether-reactor-revisited.stable, tag = !nether-reactor-revisited.mined, tag = !nether-reactor-revisited.reconstructing] run function nether-reactor-revisited:private/events/spawn_stuff


    ##  Countdown explosion timer!
    execute if entity @s[tag = nether-reactor-revisited.active, tag = nether-reactor-revisited.unstable, tag = !nether-reactor-revisited.mined, tag = !nether-reactor-revisited.reconstructing] run function nether-reactor-revisited:private/events/explosion_timer


#   If the structure frame has been tampered with whilst reconstructing/active, call `nether-reactor-revisited:private/events/structure_frame/tampered`
execute if entity @s[tag = nether-reactor-revisited.active, tag = nether-reactor-revisited.stable, tag = nether-reactor-revisited.reconstructing] if predicate nether-reactor-revisited:structure_frame/hybrid/incomplete run function nether-reactor-revisited:private/events/structure_frame/tampered

execute if entity @s[tag = nether-reactor-revisited.active, tag = nether-reactor-revisited.stable, tag = !nether-reactor-revisited.reconstructing] if predicate nether-reactor-revisited:structure_frame/active/incomplete run function nether-reactor-revisited:private/events/structure_frame/tampered


#   Reconstruct or deconstruct the structure frame
execute if entity @s[tag = nether-reactor-revisited.reconstructing] run function nether-reactor-revisited:private/events/structure_frame/reconstruct/tick

execute if entity @s[tag = nether-reactor-revisited.deconstructing] run function nether-reactor-revisited:private/events/structure_frame/deconstruct/tick