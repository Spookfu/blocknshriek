# Debug Functiomn
execute if score functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function start/reqcheck.mcfunction","color":"white","bold":false}]

function shriek:gamehandler/shared/text-buffer

# Check if conditions are right to start the game.
scoreboard players set game gameHandler 0
execute if score activePlayers teams matches ..0 run scoreboard players set game gameHandler -1
execute if score activePlayers teams matches ..0 run tellraw @a ["",{"text":" NOT ENOUGH PLAYERS.","color":"red","bold":true},{"text":" At least two players are needed."}]

execute if score activePlayers teams matches 1 run scoreboard players set game gameHandler -1
execute if score activePlayers teams matches 1 run tellraw @a ["",{"text":" NOT ENOUGH PLAYERS.","color":"red","bold":true},{"text":" At least one more player is needed!"}]

execute if score total mapVoting matches 0 run scoreboard players set game gameHandler -1
execute if score total mapVoting matches 0 run tellraw @a ["",{"text":" CHOOSE A MAP FIRST.","color":"red","bold":true},{"text":" At least one person must vote for a map!"}]

# Feedback Sound / Fail
execute as @a at @a run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1

execute if score game gameHandler matches -1 run return run setblock -14 -60 54 minecraft:oak_button[powered=false,face=floor]

# Run Start Game process
setblock -14 -60 54 minecraft:pale_oak_button[powered=false,face=floor]
function shriek:gamehandler/start/display-map/title
