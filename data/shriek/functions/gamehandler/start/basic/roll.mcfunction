execute if score map gameHandler matches 1 run execute store result score blueSpawn gameHandler run random value 1..7
execute if score map gameHandler matches 1 run execute store result score redSpawn gameHandler run random value 1..7
execute if score redSpawn gameHandler = blueSpawn gameHandler run function shriek:gamehandler/start/basic/roll
execute unless score redSpawn gameHandler = blueSpawn gameHandler run function shriek:gamehandler/start/basic/start