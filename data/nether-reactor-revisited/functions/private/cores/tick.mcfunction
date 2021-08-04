#> nether-reactor-revisited:private/cores/tick
#
#   > Tick `nether-reactor-revisited.core` marker entities
#
#@within function *:private/tick


#   Check if the marker entity doesn't have a base block
execute unless block ~ ~ ~ #nether-reactor-revisited:cores run function nether-reactor-revisited:private/cores/mined


#   If the reactor core is active:
    ##  Increase its tick value, and add the `nether-reactor-revisited.deconstructing` tag if it reaches the max tick threshold
    scoreboard players add @s[tag = nether-reactor-revisited.active] n-r-r.ticks1 1

    execute if score @s[tag = nether-reactor-revisited.active] n-r-r.ticks1 = $max_live_ticks n-r-r run function nether-reactor-revisited:private/events/structure_frame/deconstruct


    ##  Spawn zombified piglins!
    execute if entity @s[tag = nether-reactor-revisited.active, tag = nether-reactor-revisited.stable, tag = !nether-reactor-revisited.reconstructing] run function nether-reactor-revisited:private/events/spawn_stuff


    ##   Explosion timer countdown!
    execute if entity @s[tag = nether-reactor-revisited.active, tag = nether-reactor-revisited.unstable, tag = !nether-reactor-revisited.reconstructing] run function nether-reactor-revisited:private/events/explosion_timer


#   If the structure frame has been tampered with whilst reconstructing/active, call `nether-reactor-revisited:private/events/structure_frame/tampered`
execute if entity @s[tag = nether-reactor-revisited.active_stable, tag = nether-reactor-revisited.reconstructing] if predicate nether-reactor-revisited:structure_frame/hybrid/incomplete run function nether-reactor-revisited:private/events/structure_frame/tampered

execute if entity @s[tag = nether-reactor-revisited.active_stable, tag = !nether-reactor-revisited.reconstructing] if predicate nether-reactor-revisited:structure_frame/active/incomplete run function nether-reactor-revisited:private/events/structure_frame/tampered


#   Reconstruct or deconstruct the structure frame
execute if entity @s[tag = nether-reactor-revisited.reconstructing] run function nether-reactor-revisited:private/events/structure_frame/reconstruct/tick

execute if entity @s[tag = nether-reactor-revisited.deconstructing] run function nether-reactor-revisited:private/events/structure_frame/deconstruct/tick