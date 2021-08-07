#> nether-reactor-revisited:private/events/explosion_timer/end
#
#   > End the explosion timer countdown
#
#@within function *:private/events/explosion_timer


kill @s

fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #nether-reactor-revisited:structure_frame/hybrid


summon tnt ~ ~-1 ~