#> eggo.nrr:event/start_day_cycle
#
#   start the day cycle
#
# @within function eggo.nrr:event/stop_day_cycle


# announce to players the day cycle has resumed
tellraw @a {"text": "The day cycle is now resumed!", "color": "green"}

gamerule doDaylightCycle true