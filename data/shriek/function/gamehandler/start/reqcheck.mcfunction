function shriek:gamehandler/shared/text-buffer
scoreboard players set game gameHandler 0
execute if score activePlayers teams matches ..0 run scoreboard players set game gameHandler -1
execute if score activePlayers teams matches ..0 run tellraw @a ["",{"text":" NOT ENOUGH PLAYERS.","color":"red","bold":true},{"text":" At least two players are needed."}]

execute if score activePlayers teams matches 1 run scoreboard players set game gameHandler -1
execute if score activePlayers teams matches 1 run tellraw @a ["",{"text":" NOT ENOUGH PLAYERS.","color":"red","bold":true},{"text":" At least one more player is needed!"}]

execute if score total mapVoting matches 0 run scoreboard players set game gameHandler -1
execute if score total mapVoting matches 0 run tellraw @a ["",{"text":" CHOOSE A MAP FIRST.","color":"red","bold":true},{"text":" At least one person must vote for a map!"}]

execute as @a at @a run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1

execute if score game gameHandler matches -1 run return run setblock -14 -60 54 minecraft:oak_button[powered=false,face=floor]

setblock -14 -60 54 minecraft:pale_oak_button[powered=false,face=floor]
title @a times 0t 10t 10s

tellraw @a {"text":" ꜱᴛᴀʀᴛɪɴɢ ɢᴀᴍᴇ . . .","color":"gray"}
tellraw @a " "
tellraw @a " "
execute unless score red teams matches 0 run tellraw @a [{"text":"Team Red ","color":"red"},{"text":"| ","color":"gray"},{"selector":"@a[team=Red]"}]
execute unless score orange teams matches 0 run tellraw @a [{"text":"Team Orange ","color":"gold"},{"text":"| ","color":"gray"},{"selector":"@a[team=Orange]"}]
execute unless score yellow teams matches 0 run tellraw @a [{"text":"Team Yellow ","color":"yellow"},{"text":"| ","color":"gray"},{"selector":"@a[team=Yellow]"}]
execute unless score green teams matches 0 run tellraw @a [{"text":"Team Green ","color":"green"},{"text":"| ","color":"gray"},{"selector":"@a[team=Green]"}]
execute unless score blue teams matches 0 run tellraw @a [{"text":"Team Blue ","color":"blue"},{"text":"| ","color":"gray"},{"selector":"@a[team=Blue]"}]
execute unless score purple teams matches 0 run tellraw @a [{"text":"Team Purple ","color":"light_purple"},{"text":"| ","color":"gray"},{"selector":"@a[team=Purple]"}]

tellraw @a [{"text":"Spectators ","color":"gray"},{"text":"| ","color":"gray"},{"selector":"@a[team=Spectators]"}]

function shriek:gamehandler/start/display-map/title
