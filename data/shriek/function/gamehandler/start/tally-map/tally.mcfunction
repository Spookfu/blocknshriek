execute if score sculk mapVoting > none mapVoting run execute if score sculk mapVoting > stalking mapVoting run scoreboard players set win mapVoting 1
execute if score sculk mapVoting > none mapVoting run execute if score sculk mapVoting > stalking mapVoting run scoreboard players set win mapVoting 1
execute if score stalking mapVoting > none mapVoting run execute if score stalking mapVoting > sculk mapVoting run scoreboard players set win mapVoting 2
execute if score stalking mapVoting > none mapVoting run execute if score stalking mapVoting > dungeon mapVoting run scoreboard players set win mapVoting 2
execute if score scdungeonulk mapVoting > none mapVoting run execute if score dungeon mapVoting > sculk mapVoting run scoreboard players set win mapVoting 3
execute if score dungeon mapVoting > none mapVoting run execute if score dungeon mapVoting > sculk mapVoting run scoreboard players set win mapVoting 3

execute if score sculk mapVoting > none mapVoting run execute if score sculk mapVoting = stalking mapVoting run scoreboard players set win mapVoting 4
execute if score sculk mapVoting > none mapVoting run execute if score sculk mapVoting = dungeon mapVoting run scoreboard players set win mapVoting 5
execute if score stalking mapVoting > none mapVoting run execute if score stalking mapVoting = dungeon mapVoting run scoreboard players set win mapVoting 6

execute if score win mapVoting > base mapVoting run title @a title [{"text":"MAP VOTING TIED","color":"red","bold":true}]
execute if score win mapVoting matches 4 run title @a subtitle {"text":"Sculk Institute vs Stalking Forest","color":"gray","bold":false}
execute if score win mapVoting matches 5 run title @a subtitle {"text":"Sculk Institute vs Creaking Crypts","color":"gray","bold":false}
execute if score win mapVoting matches 6 run title @a subtitle {"text":"Stalking Forest vs Creaking Crypts","color":"gray","bold":false}

execute if score win mapVoting <= base mapVoting run title @a title {"text":"Chosen Map","color":"green","bold":true}
execute if score win mapVoting matches 1 run title @a subtitle {"text":"Sculk Institute","color":"dark_aqua","bold":false}
execute if score win mapVoting matches 2 run title @a subtitle {"text":"Stalking Forest","color":"gray","bold":false}
execute if score win mapVoting matches 3 run title @a subtitle {"text":"Creaking Crypts","color":"red","bold":false}
execute as @a at @a run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 0 1

execute if score win mapVoting > base mapVoting run return run function shriek:gamehandler/start/fight-map/handler

schedule function shriek:gamehandler/start/display-game/title 5s


