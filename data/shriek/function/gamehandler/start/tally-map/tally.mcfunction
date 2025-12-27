execute if score .functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function start/tally-map/tally.mcfunction","color":"white","bold":false}]

execute if score .sculkVotes mapVoting = .stalkingVotes mapVoting run scoreboard players set .mapSelected mapVoting 4
execute if score .sculkVotes mapVoting = .cryptVotes mapVoting run scoreboard players set .mapSelected mapVoting 5
execute if score .stalkingVotes mapVoting = .cryptVotes mapVoting run scoreboard players set .mapSelected mapVoting 6

execute if score .sculkVotes mapVoting = .stalkingVotes mapVoting if score .stalkingVotes mapVoting = .cryptVotes mapVoting run scoreboard players set .mapSelected mapVoting 7

execute if score .sculkVotes mapVoting > .stalkingVotes mapVoting if score .sculkVotes mapVoting > .cryptVotes mapVoting run scoreboard players set .mapSelected mapVoting 1
execute if score .cryptVotes mapVoting > .stalkingVotes mapVoting if score .cryptVotes mapVoting > .sculkVotes mapVoting run scoreboard players set .mapSelected mapVoting 3
execute if score .stalkingVotes mapVoting > .cryptVotes mapVoting if score .stalkingVotes mapVoting > .sculkVotes mapVoting run scoreboard players set .mapSelected mapVoting 2

execute if score .mapSelected mapVoting > .mapNoTie mapVoting run title @a title [{"text":"MAP VOTING TIED","color":"red","bold":true}]
execute if score .mapSelected mapVoting matches 4 run title @a subtitle {"text":".Sculk Institute vs .Stalking Forest","color":"gray","bold":false}
execute if score .mapSelected mapVoting matches 5 run title @a subtitle {"text":".Sculk Institute vs Creaking Crypts","color":"gray","bold":false}
execute if score .mapSelected mapVoting matches 6 run title @a subtitle {"text":".Stalking Forest vs Creaking Crypts","color":"gray","bold":false}
execute if score .mapSelected mapVoting matches 7 run title @a subtitle {"text":".Sculk Institute vs Stalking Forest vs Creaking Crypts","color":"gray","bold":false}

execute if score .mapSelected mapVoting <= .mapNoTie mapVoting run title @a title {"text":"Chosen Map","color":"green","bold":true}
execute if score .mapSelected mapVoting matches 1 run title @a subtitle {"text":".Sculk Institute","color":"dark_aqua","bold":false}
execute if score .mapSelected mapVoting matches 2 run title @a subtitle {"text":".Stalking Forest","color":"gray","bold":false}
execute if score .mapSelected mapVoting matches 3 run title @a subtitle {"text":"Creaking Crypts","color":"red","bold":false}
execute as @a at @a run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 0 1

execute if score .mapSelected mapVoting > .mapNoTie mapVoting run return run function shriek:gamehandler/start/fight-map/handler

schedule function shriek:gamehandler/start/display-game/title 5s


