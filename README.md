# Nether Reactor: Revisited
A datapack that recreates the Nether Reactor from Pocket Edition, with tweaks and extra features.


## Features
* You can reactivate an Inactive Reactor Core by mimicking the structure of activating a Nether Reactor, but replacing cobblestone with obsidian.

* Configurable activity duration; used for spawning mobs and items inside The Nether spire. Can be toggled by setting the score of the `*activity_duration` score holder in the `eggo.nrr` objective, default value is 45.

* Configurable explosion countdown; used for interrupted active reactor cores. Can be toggled by setting the score of the `*explosion_countdown` score holder in the `eggo.nrr` objective, default value is 5.


## Extra
By default, these extra features are disabled. You can toggle these extra features by setting the score of the `*extra_enabled` score holder in the `eggo.nrr` objective to 0 (false) or 1 (true).


* Configurable Nether portal restriction; can restrict players from entering/exiting The Nether dimension.
    * Restriction for entering a nether portal can be toggled by setting the score of the `*enter_nether` score holder in the `eggo.nrr` objective, default value is 0 (false).

    * Restriction for exiting a nether portal can be toggled by setting the score of the `*exit_nether` score holder in the `eggo.nrr` objective, default value is 1 (true).

* Configurable max uses for forging a Flint and Steel item. A forged Flint and Steel can override the portal restrictions. You can forge one by interacting with an Inactive Reactor Core. You can set the reactor core's max forge uses by setting the score of the `*max_forge_uses` score holder in the `eggo.nrr` objective, default value is 3.