# Keeps all the Handlers continously running as long as the game is active.
execute if score game gameHandler matches 1 run function shriek:gamehandler/baser

# Hub Stuff
execute at @e[tag=teamers] run particle minecraft:electric_spark ~ ~0.5 ~ 0.2 0.2 0.2 0 1 normal
particle minecraft:small_flame -12.635 -60 40.60 .2 1 .2 0 1
particle minecraft:small_flame -14.50 -57.50 38.50 .3 1 .3 0 1
execute at @e[tag=sculkMap] run particle minecraft:sculk_soul ~ ~.5 ~ 0 0 0 0.1 1
execute at @e[tag=stalkMap] run particle minecraft:infested ~ ~.5 ~ 0 0 0 0.1 1
execute at @e[tag=creakMap] run particle minecraft:trial_spawner_detection_ominous ~ ~.3 ~ 0 0 0 0.1 1

execute if block -14 -60 54 minecraft:oak_button[powered=true] run function shriek:gamehandler/start/reqcheck
execute if block -14 -60 54 minecraft:oak_button[powered=true,face=floor] run setblock -14 -60 54 minecraft:oak_button[powered=false,face=floor]
particle minecraft:end_rod -13.5 -60 66.5 0 10 0 0 1
