#> nether-reactor-revisited:private/dhp
#
#   > This function file is for Datapack Helper Plus' declaration stuff. Don't run this lol
#
#@private


#   Display a message to the player that run this function
tellraw @s {"text": "You shouldn't be running this function :P", "color": "red"}


#   Scoreboard objectives!
#declare objective n-r-r
#declare objective n-r-r.forge_uses
#declare objective n-r-r.frames
#declare objective n-r-r.seconds
#declare objective n-r-r.ticks1
#declare objective n-r-r.ticks2


#   Score holders!
#declare score_holder #rng.result Outputs a value that resulted from the modulo operation
#declare score_holder #rng.range Determines the range for `#rng.result`
#declare score_holder $reconstruct_interval Determines the interval for changing the structure frame
#declare score_holder $deconstruct_interval Determines the interval for changing the structure frame
#declare score_holder $spawn_stuff_interval Determines the interval for spawning stuff
#declare score_holder $explode_after_ticks Make the core explode after the specified tick(s)
#declare score_holder $max_active_ticks Determines how long the core should be active
#declare score_holder $set_daytime_to Sets the daytime to this value upon successfully activating a normal/inactive core


#   Storages!
#declare storage eggohito:nether-reactor-revisited Stores the item data from the player's mainhand and offhand temporarily


#   Tags!
#declare tag nether-reactor-revisited.core Generalized tag for all Nether Reactor Core markers
#declare tag nether-reactor-revisited.normal A tag that determines that the core can be activated
#declare tag nether-reactor-revisited.active  A tag that determines that the core is currently active
#declare tag nether-reactor-revisited.stable A tag that determines if the active core is stable
#declare tag nether-reactor-revisited.unstable A tag that determines if the active core is unstable
#declare tag nether-reactor-revisited.inactive A tag that determines that the core can be reactivated
#declare tag nether-reactor-revisited.reconstructing A tag that states that the core is currently reconstructing its structure frame
#declare tag nether-reactor-revisited.deconstructing A tag that states that the core is currently deconstructing its structure frame