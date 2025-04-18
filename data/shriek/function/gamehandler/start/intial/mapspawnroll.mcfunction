# Rolls a d7 for each teams spawn, for Map #1.
execute if score map gameHandler matches 1 run execute store result score blueSpawn mapSpawn run random value 1..7
execute if score map gameHandler matches 1 run execute store result score redSpawn mapSpawn run random value 1..7
execute if score map gameHandler matches 1 run execute store result score yellowSpawn mapSpawn run random value 1..7
execute if score map gameHandler matches 1 run execute store result score orangeSpawn mapSpawn run random value 1..7
execute if score map gameHandler matches 1 run execute store result score greenSpawn mapSpawn run random value 1..7
execute if score map gameHandler matches 1 run execute store result score purpleSpawn mapSpawn run random value 1..7

# Rolls a d? for each teams spawn, for Map #2.
execute if score map gameHandler matches 2 run execute store result score blueSpawn mapSpawn run random value 1..7
execute if score map gameHandler matches 2 run execute store result score redSpawn mapSpawn run random value 1..7
execute if score map gameHandler matches 2 run execute store result score yellowSpawn mapSpawn run random value 1..7
execute if score map gameHandler matches 2 run execute store result score orangeSpawn mapSpawn run random value 1..7
execute if score map gameHandler matches 2 run execute store result score greenSpawn mapSpawn run random value 1..7
execute if score map gameHandler matches 2 run execute store result score purpleSpawn mapSpawn run random value 1..7


# Rolls a d? for each teams spawn, for Map #3.
execute if score map gameHandler matches 3 run execute store result score blueSpawn mapSpawn run random value 1..7
execute if score map gameHandler matches 3 run execute store result score redSpawn mapSpawn run random value 1..7
execute if score map gameHandler matches 3 run execute store result score yellowSpawn mapSpawn run random value 1..7
execute if score map gameHandler matches 3 run execute store result score orangeSpawn mapSpawn run random value 1..7
execute if score map gameHandler matches 3 run execute store result score greenSpawn mapSpawn run random value 1..7
execute if score map gameHandler matches 3 run execute store result score purpleSpawn mapSpawn run random value 1..7

# Rerolls if the same, else run the start game functon.
execute if score blueSpawn mapSpawn = redSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score blueSpawn mapSpawn = yellowSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score blueSpawn mapSpawn = orangeSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score blueSpawn mapSpawn = greenSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score blueSpawn mapSpawn = purpleSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll

execute if score redSpawn mapSpawn = blueSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score redSpawn mapSpawn = yellowSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score redSpawn mapSpawn = orangeSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score redSpawn mapSpawn = greenSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score redSpawn mapSpawn = purpleSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll

execute if score yellowSpawn mapSpawn = redSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score yellowSpawn mapSpawn = blueSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score yellowSpawn mapSpawn = orangeSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score yellowSpawn mapSpawn = greenSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score yellowSpawn mapSpawn = purpleSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll

execute if score orangeSpawn mapSpawn = redSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score orangeSpawn mapSpawn = yellowSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score orangeSpawn mapSpawn = blueSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score orangeSpawn mapSpawn = greenSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score orangeSpawn mapSpawn = purpleSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll

execute if score greenSpawn mapSpawn = redSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score greenSpawn mapSpawn = yellowSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score greenSpawn mapSpawn = orangeSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score greenSpawn mapSpawn = blueSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score greenSpawn mapSpawn = purpleSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll

execute if score purpleSpawn mapSpawn = redSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score purpleSpawn mapSpawn = yellowSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score purpleSpawn mapSpawn = orangeSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score purpleSpawn mapSpawn = greenSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll
execute if score purpleSpawn mapSpawn = blueSpawn mapSpawn run return run function shriek:gamehandler/start/intial/mapspawnroll

function shriek:gamehandler/start/intial/start
