#> nether-reactor-revisited:private/events/daytime/start
#
#   > Restarts daytime cycle
#
#@within function *:private/events/daytime/stop


#   Display a message that a Nether Reactor structure frame has been tampered with
tellraw @a {"text": "Daylight cycle has been resumed", "color": "green"}


#   Re-enable the `doDaylightCycle` gamerule
gamerule doDaylightCycle true