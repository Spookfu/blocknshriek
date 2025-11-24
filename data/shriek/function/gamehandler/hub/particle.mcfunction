execute if score functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function hub/particle.mcfunction","color":"white","bold":false}]
# Particles
    execute at @e[tag=teamers,limit=7,type=interaction] run particle firework ~ ~0.5 ~ 0.2 0.2 0.2 0 2 normal
    particle minecraft:small_flame -12.635 -60 40.60 .2 1 .2 0 5
    particle minecraft:small_flame -14.50 -57.50 38.50 .3 1 .3 0 5
    execute at @e[tag=sculkMap,type=interaction] run particle minecraft:sculk_soul ~ ~.5 ~ 0 0 0 0.1 5
    execute at @e[tag=stalkMap,type=interaction] run particle minecraft:infested ~ ~.5 ~ 0 0 0 0.1 5
    execute at @e[tag=creakMap,type=interaction,level=0] run particle minecraft:trial_spawner_detection_ominous ~ ~.3 ~ 0 0 0 0.1 5

    particle minecraft:enchant -14 -61 66 10 10 10 0 50
    particle minecraft:end_rod -13.5 -60 66.5 0 10 0 0 50

schedule function shriek:gamehandler/hub/particle 15t
