#> nether-reactor-revisited:private/events/daytime/stop
#
#   > Stops the daytime cycle temporarily
#
#@within function *:private/events/structure_frame/tampered


#   Display a message that a Nether Reactor structure frame has been tampered with
tellraw @a {"text": "Daylight cycle has been halted for a few days due to tampering an active Nether Reactor!", "color": "red"}


#   Set the `doDaylightCycle` gamerule to false
gamerule doDaylightCycle false


#   "Set" the time to $set_daytime_to
function nether-reactor-revisited:private/events/daytime/skip


#   Schedule a function that would re-enable the `doDaylightCycle` gamerule
schedule function nether-reactor-revisited:private/events/daytime/start 3d replace