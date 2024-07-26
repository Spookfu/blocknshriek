# Rolls a d7 for each teams spawn, for Map #1.
execute if score map gameHandler matches 1 run execute store result score blueSpawn gameHandler run random value 1..7
execute if score map gameHandler matches 1 run execute store result score redSpawn gameHandler run random value 1..7

# Rolls a d? for each teams spawn, for Map #2.
execute if score map gameHandler matches 2 run execute store result score blueSpawn gameHandler run random value 1..7
execute if score map gameHandler matches 2 run execute store result score redSpawn gameHandler run random value 1..7

# Rolls a d? for each teams spawn, for Map #3.
execute if score map gameHandler matches 3 run execute store result score blueSpawn gameHandler run random value 1..7
execute if score map gameHandler matches 3 run execute store result score redSpawn gameHandler run random value 1..7

# Rerolls if the same, else run the start game functon.
execute if score redSpawn gameHandler = blueSpawn gameHandler run function shriek:gamehandler/start/basic/roll
execute unless score redSpawn gameHandler = blueSpawn gameHandler run function shriek:gamehandler/start/basic/start