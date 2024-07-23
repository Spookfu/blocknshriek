advancement revoke @s only shriek:mapping-rightc

tag @s add mapping
execute at @a run playsound minecraft:ui.cartography_table.take_result master @a ~ ~ ~ 1 0.1 1
execute at @a run particle minecraft:poof ~ ~ ~ 0 1 0 1 50 normal
execute at @a run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.1 1

execute as @e[type=interaction,tag=sculkMap] on target run scoreboard players set map gameHandler 1
execute as @e[type=interaction,tag=infestMap] on target run scoreboard players set map gameHandler 2
execute as @e[type=interaction,tag=creakMap] on target run scoreboard players set map gameHandler 3

execute as @e[type=interaction,tag=sculkMap] on target run execute at @a run playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1 0.1 1
execute as @e[type=interaction,tag=infestMap] on target run execute at @a run playsound minecraft:entity.skeleton_horse.death master @a ~ ~ ~ 1 0.1 1
execute as @e[type=interaction,tag=creakMap] on target run execute at @a run playsound minecraft:block.trial_spawner.ambient_charged master @a ~ ~ ~ 1 0.1 1

execute as @e[type=interaction,tag=sculkMap] on target run title @s actionbar ["",{"text":"You've selected the map: "},{"text":"SCULKED SCHOOL","color":"dark_aqua","bold":true}]
execute as @e[type=interaction,tag=infestMap] on target run title @s actionbar ["",{"text":"You've selected the map: "},{"text":"INFESTED FOREST","color":"gray","bold":true}]
execute as @e[type=interaction,tag=creakMap] on target run title @s actionbar ["",{"text":"You've selected the map: "},{"text":"CREAKING DUNGEON","color":"red","bold":true}]

execute as @e[type=interaction,tag=mappers] run data remove entity @s interaction

tag @s remove mapping