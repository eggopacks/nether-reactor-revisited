#> eggo.nrr:event/stop_day_cycle
#
#   stops the day cycle
#
# @within
#   function eggo.nrr:block/core/self
#   function eggo.nrr:block/core/destroy


# announce to players the day cycle is paused
tellraw @a {"text": "The day cycle has been halted for interrupting an active Reactor!", "color": "red"}

gamerule doDaylightCycle false

function eggo.nrr:block/core/interrupt